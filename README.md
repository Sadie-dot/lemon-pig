# Lemon Pig 🐷🍋

A playful iOS fruit encyclopedia. Browse fruits by taste, read food-writer-style
profiles and recipes, or point your camera at any fruit and have it identified —
and, for fruits outside the built-in catalog, get a full profile generated live.

> Built with Claude (Anthropic) and Claude Design under my creative direction.
> See [AI Disclosure](LemonPig/README.md) for exactly what's AI-produced and the
> caveats that come with it — including that recipe and live-identification output
> is not fact-checked and shouldn't be your sole guide to whether a fruit is safe
> to eat.

## What it does

- **Browse by taste** — 49 fruits across six taste families (Sweet-sour, Tropical,
  Tart, Sweet, Creamy, Citrusy), each with a photo, snapshot, "reasons to love,"
  how-to-enjoy notes, and four recipes.
- **Search** — jump straight to a fruit by name.
- **Identify from a photo** — snap or upload a photo; Claude names the fruit. If
  it's in the catalog you land on its page; if it isn't, a complete profile
  (including recipes) is generated on the fly, with your photo as the hero image.
- **Accessibility** — VoiceOver labels and announcements, Dynamic Type, Reduce
  Motion handling, and generous tap targets throughout.

## Repository layout

| Path | What's there |
|---|---|
| `LemonPig/` | The Xcode project — SwiftUI app (19 source files, 245 attributed photos). |
| `LemonPig/README.md` | AI disclosure and authorship notes. |
| `proxy/` | A Cloudflare Worker that proxies fruit identification to the Anthropic API, keeping the API key server-side. |

## Building the app

Open `LemonPig/LemonPig.xcodeproj` in Xcode and run on an iOS simulator or device.

Live identification needs a Claude API key, and there are two ways to supply one:

1. **Bring-your-own-key (default).** With no proxy configured, the app prompts
   each user for their own Anthropic key on the camera screen and stores it in the
   device Keychain. Nothing to set up — it just works on a fresh checkout.

2. **Hosted proxy (ship no key).** Deploy the Worker in `proxy/` (it holds your
   key), then point the app at it by filling in a git-ignored xcconfig:

   ```sh
   cp LemonPig/LemonPig/Config/Secrets.local.example.xcconfig \
      LemonPig/LemonPig/Config/Secrets.local.xcconfig
   # edit that file with your Worker URL + app token, then rebuild
   ```

   When the proxy is configured, the key prompt never appears. See
   [`proxy/README.md`](proxy/README.md) for the full deploy walkthrough. Your real
   `Secrets.local.xcconfig` is git-ignored and never committed.

## Tech

- **SwiftUI**, targeting recent iOS. No third-party dependencies.
- **Anthropic Messages API** (Claude Opus 4.8) with structured JSON output for
  identification.
- **Cloudflare Workers** for the optional key-hiding proxy.
- Fonts: [Geist / Geist Mono](https://github.com/vercel/geist-font) (OFL) and
  [Pacifico](https://fonts.google.com/specimen/Pacifico) (OFL).

## Credits

Catalog photography comes from Wikimedia Commons contributors under CC0, public
domain, CC BY, and CC BY-SA licenses — each image is attributed in the app's
in-app Photo Credits screen (backed by `LemonPig/LemonPig/Models/PhotoCredits.swift`).

The mascot and home-screen hero image were created with ChatGPT. Most app content
and code were produced with Claude — see [AI Disclosure](LemonPig/README.md).
