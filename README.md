# Archean — Website Templates

Two single-page landing concepts for Archean, an AI lab. Both share one brand
system (the Archean mark, the brand teal `#2D595A`, a bone background) and the
same copy. They differ in how the page carries itself.

## Templates

- **`index.html`** — *Live homepage.* The ceremonial hybrid ("Specimen"): the mark
  centered as the hero, the statement beneath it, four corners of faint metadata.
- **`manifesto.html`** — Alternate concept, kept for reference and reachable by
  direct URL. White-page restraint, modeled on early Anthropic / OpenAI: logo and
  wordmark top-left, a single Contact link, one declarative sentence set large,
  quiet metadata along the bottom edge.

## Deployment

Pushing to `master` triggers `.github/workflows/deploy.yml`, which validates that
every local asset reference resolves (`scripts/check-assets.sh`), assembles
`_site/`, and publishes to GitHub Pages. A missing asset fails the build and the
previous version stays live.

## Copy

- Statement: *We are an AI lab investing in our future.*
- Purpose line: *Predicting the future*
- Location: *San Francisco, CA*

The Contact link points to `hello@the-archean.com`.

## Brand

| Token        | Value      |
|--------------|------------|
| Teal         | `#2D595A`  |
| Bone         | `#F3F1E9`  |
| Ink          | `#33403C`  |
| Teal (soft)  | `#5F8281`  |
| Mist         | `#9AA79F`  |

Display: Cormorant (light). UI / labels: Inter (light). Both loaded from Google Fonts.

## Assets

- `assets/archean-mark.png` — the circular landscape mark, on transparent background (used by both pages).
- `assets/archean-logo-full.png` — full lockup (mark + wordmark), bone background.
- `assets/archean-logo-dark.png` — full lockup on dark background.

## Local preview

```bash
python3 -m http.server 8000
# then open http://localhost:8000
```
