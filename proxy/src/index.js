// Lemon Pig identification proxy.
//
// Holds the Anthropic API key server-side so the iOS app never ships or
// stores it. The app POSTs { image, catalog } to /identify; the prompt,
// model, and output schema live HERE so the endpoint can't be repurposed
// as a general Claude proxy. Responses are passed through in the Anthropic
// Messages format the app already parses.
//
// Secrets (set with `npx wrangler secret put <NAME>`):
//   ANTHROPIC_API_KEY  — required
//   APP_TOKEN          — recommended; the app sends it as x-lp-app-token
// Optional bindings/vars (see wrangler.toml):
//   RATE_KV            — KV namespace enabling the per-IP daily cap
//   DAILY_CAP          — scans per IP per day (default 40)

const MODEL = "claude-opus-4-8";
const MAX_TOKENS = 16000;

export default {
  async fetch(request, env) {
    const url = new URL(request.url);
    if (request.method !== "POST" || url.pathname !== "/identify") {
      return json({ error: { message: "Not found." } }, 404);
    }
    if (env.APP_TOKEN && request.headers.get("x-lp-app-token") !== env.APP_TOKEN) {
      return json({ error: { message: "Unauthorized." } }, 401);
    }

    // Per-IP daily cap (skipped gracefully when no KV namespace is bound).
    if (env.RATE_KV) {
      const ip = request.headers.get("cf-connecting-ip") || "unknown";
      const key = `rl:${ip}:${new Date().toISOString().slice(0, 10)}`;
      const used = parseInt((await env.RATE_KV.get(key)) || "0", 10);
      const cap = parseInt(env.DAILY_CAP || "40", 10);
      if (used >= cap) {
        return json({ error: { message: "Daily scan limit reached — try again tomorrow." } }, 429);
      }
      await env.RATE_KV.put(key, String(used + 1), { expirationTtl: 90000 });
    }

    let body;
    try {
      body = await request.json();
    } catch {
      return json({ error: { message: "Body must be JSON." } }, 400);
    }

    const image = body.image;
    if (typeof image !== "string" || image.length < 100 || image.length > 8_000_000) {
      return json({ error: { message: "Missing or oversized image." } }, 400);
    }
    if (!/^[A-Za-z0-9+/]+={0,2}$/.test(image.slice(0, 4000))) {
      return json({ error: { message: "Image must be base64 JPEG." } }, 400);
    }

    // Catalog names come from the app but are strictly validated so the
    // field can't be used to smuggle instructions into the prompt.
    const catalog = (Array.isArray(body.catalog) ? body.catalog : [])
      .filter((n) => typeof n === "string" && /^[A-Za-z0-9' -]{1,40}$/.test(n))
      .slice(0, 120);

    const upstream = await fetch("https://api.anthropic.com/v1/messages", {
      method: "POST",
      headers: {
        "content-type": "application/json",
        "x-api-key": env.ANTHROPIC_API_KEY,
        "anthropic-version": "2023-06-01",
      },
      body: JSON.stringify(anthropicRequest(image, catalog)),
    });

    return new Response(upstream.body, {
      status: upstream.status,
      headers: { "content-type": "application/json" },
    });
  },
};

function json(obj, status) {
  return new Response(JSON.stringify(obj), {
    status,
    headers: { "content-type": "application/json" },
  });
}

// Mirrors FruitIdentifier.swift — keep the two in sync when the prompt or
// schema changes.
function anthropicRequest(imageBase64, catalog) {
  const prompt = `Identify the fruit in this photo for a playful fruit-encyclopedia app.

The app's built-in catalog contains exactly these fruits: ${catalog.join(", ")}.

Rules:
- If the photo does not clearly show a fruit (or fruit-forward food), set is_fruit false and put a short description of what you see in name.
- If the fruit is in the catalog list, use the catalog's exact name, set in_catalog true, and set profile to null.
- Otherwise set in_catalog false and generate a complete profile in the app's voice: warm, sensory, a little cheeky, food-writer energy. Facts must be accurate; never invent safety claims. Include 4 realistic recipes at the quality of a good food blog.
- pull_quote_highlight must be an exact substring of pull_quote.
- confidence is 0-100.`;

  return {
    model: MODEL,
    max_tokens: MAX_TOKENS,
    output_config: { format: { type: "json_schema", schema: identificationSchema() } },
    messages: [
      {
        role: "user",
        content: [
          { type: "image", source: { type: "base64", media_type: "image/jpeg", data: imageBase64 } },
          { type: "text", text: prompt },
        ],
      },
    ],
  };
}

function identificationSchema() {
  const str = { type: "string" };
  const strArray = { type: "array", items: str };
  const ingredient = {
    type: "object",
    properties: { qty: { type: "number" }, unit: str, name: str },
    required: ["qty", "unit", "name"],
    additionalProperties: false,
  };
  const step = {
    type: "object",
    properties: { title: str, body: str },
    required: ["title", "body"],
    additionalProperties: false,
  };
  const recipe = {
    type: "object",
    properties: {
      name: str,
      time: { type: "string", description: 'e.g. "20 min" or "2 hr"' },
      level: { type: "string", enum: ["Easy", "Medium", "Hard"] },
      cal: { type: "string", description: "calories per serving, digits only" },
      lede: str,
      ingredients: { type: "array", items: ingredient },
      steps: { type: "array", items: step },
      tips: strArray,
      base_yield_value: { type: "number" },
      base_yield_unit: str,
      base_servings: { type: "integer" },
    },
    required: ["name", "time", "level", "cal", "lede", "ingredients", "steps",
               "tips", "base_yield_value", "base_yield_unit", "base_servings"],
    additionalProperties: false,
  };
  const profile = {
    type: "object",
    properties: {
      latin_name: str,
      pull_quote: str,
      pull_quote_highlight: str,
      flavors: {
        type: "array",
        items: { type: "string", enum: ["Sweet-sour", "Tropical", "Tart", "Sweet", "Creamy", "Citrusy"] },
      },
      snapshot: str,
      love_body: str,
      love_bullets: strArray,
      how_to_enjoy: {
        type: "object",
        properties: { eat: str, look_for: str, store: str },
        required: ["eat", "look_for", "store"],
        additionalProperties: false,
      },
      recipes: { type: "array", items: recipe },
    },
    required: ["latin_name", "pull_quote", "pull_quote_highlight", "flavors",
               "snapshot", "love_body", "love_bullets", "how_to_enjoy", "recipes"],
    additionalProperties: false,
  };
  return {
    type: "object",
    properties: {
      is_fruit: { type: "boolean" },
      name: str,
      confidence: { type: "integer" },
      in_catalog: { type: "boolean" },
      profile: { anyOf: [{ type: "null" }, profile] },
    },
    required: ["is_fruit", "name", "confidence", "in_catalog", "profile"],
    additionalProperties: false,
  };
}
