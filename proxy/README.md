# Lemon Pig identification proxy

A tiny Cloudflare Worker that holds the Anthropic API key server-side so the
iOS app never ships or stores it. The app POSTs a photo; the Worker adds the
key, calls Claude with a fixed prompt + schema, and streams the response back.

## Why

Anything bundled in an iOS binary is extractable. Putting the key behind this
Worker means a leaked build can't drain your Anthropic account, and the per-IP
daily cap stops one person from running up the bill.

## Deploy

```sh
cd proxy
npm install
npx wrangler login

# Secrets (never committed):
npx wrangler secret put ANTHROPIC_API_KEY   # your Anthropic key
npx wrangler secret put APP_TOKEN           # any long random string; the app sends it

# Optional but recommended — per-IP daily rate cap:
npx wrangler kv namespace create RATE_KV
#   paste the printed id into wrangler.toml under [[kv_namespaces]] and uncomment

npx wrangler deploy
```

`deploy` prints a URL like `https://lemonpig-identify.<subdomain>.workers.dev`.

## Point the app at it

The app reads two values from its Info.plist, which are supplied by a
git-ignored xcconfig so your Worker URL and token never get committed:

1. `cp LemonPig/LemonPig/Config/Secrets.local.example.xcconfig \`
   `   LemonPig/LemonPig/Config/Secrets.local.xcconfig`
2. Edit `Secrets.local.xcconfig` and fill in the two lines:
   - `LPIdentifyProxyURL` — your deploy URL with `/identify`, e.g.
     `https:/$()/lemonpig-identify.<subdomain>.workers.dev/identify`
     (the `$()` is required — xcconfig treats a literal `//` as a comment)
   - `LPIdentifyAppToken` — the same `APP_TOKEN` you set above
3. Rebuild.

`Secrets.local.xcconfig` is listed in the repo's `.gitignore`. The committed
`Config.xcconfig` optionally includes it and defaults both values to empty, so
a fresh clone (without the secrets file) builds cleanly in bring-your-own-key
mode. When the values are present, the app routes through the proxy and the
"Connect Claude" key prompt never appears.

The `APP_TOKEN` in the app is a soft gate — it discourages casual abuse of the
endpoint but, like any bundled string, is extractable. The real protection is
the per-IP daily cap plus a spend limit set in the Anthropic Console.

## Local test

```sh
echo 'ANTHROPIC_API_KEY = "sk-ant-..."' > .dev.vars
echo 'APP_TOKEN = "test-token"' >> .dev.vars
npx wrangler dev
# then POST { "image": "<base64 jpeg>", "catalog": ["Lemon","Mango"] }
#   to http://localhost:8787/identify with header x-lp-app-token: test-token
```
