# Archean — Website Templates

Two single-page landing concepts for Archean, an AI lab. Both share one brand
system (the Archean mark, the brand teal `#2D595A`, a bone background) and the
same copy. They differ in how the page carries itself.

## Templates

- **`manifesto.html`** — White-page restraint, modeled on early Anthropic / OpenAI.
  Logo and wordmark top-left, a single Contact link, one declarative sentence set
  large, quiet metadata along the bottom edge.
- **`specimen.html`** — A more ceremonial hybrid. The mark is centered as the hero,
  the statement sits beneath it, and four corners carry faint metadata.

Open `index.html` for a launcher linking to both.

## Copy

- Statement: *We are an AI lab investing in our future.*
- Purpose line: *Predicting the future*
- Location: *San Francisco, CA*

The Contact link points to `hello@archean.ai` — update to the real address.

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
