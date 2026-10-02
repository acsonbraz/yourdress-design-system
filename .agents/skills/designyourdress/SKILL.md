---
name: designyourdress
description: Use this skill whenever creating, redesigning, reviewing, or implementing any YourDress interface or branded visual—storefront, admin, landing page, product page, checkout, dashboard, banner, campaign asset, prototype, or UI component. It applies the official YourDress colors, typography, spacing, imagery, copy tone, accessibility states, and commerce conventions. Invoke explicitly as /designyourdress when supported.
user-invocable: true
---

# YourDress design skill

Use this skill as the source of truth for visual and content decisions for YourDress.

## Start here

1. Read `references/design-system.md` before designing or changing UI.
2. When implementing code, also inspect `assets/css/styles.css` and the token files under `assets/css/tokens/`.
3. When the task touches the existing ecommerce implementation, read `references/github-source.md` for the source mapping and current caveats.
4. Reuse the official logos in `assets/logos/`; do not redraw or reinterpret them unless the user explicitly asks for a new brand direction.

## Non-negotiable rules

- Brand palette: gold `#c69f70`, beige `#ebe3d6`, white `#ffffff`; supporting neutrals must be warm, never blue-gray.
- Display typography: League Spartan. Body/UI: Raleway.
- Default radius: 10px. Borders: 1px. Shadows: warm brown-tinted, subtle.
- Product imagery uses 4:5 aspect ratio. If no real photo is available, use the beige placeholder with the monogram; never insert generic stock photography.
- Prices use Brazilian formatting and should be accompanied by the PIX line in green when relevant.
- Icons: Lucide, stroke 1.75, `currentColor`; do not hand-draw interface SVGs.
- Copy: pt-BR, sentence case, concise, close and careful, no emoji.
- Focus states use the gold ring; do not leave the browser's default blue focus ring.

## Working behavior

- Preserve existing functionality unless the user explicitly asks to remove it.
- For redesigns, improve hierarchy, density, spacing, responsiveness and clarity while keeping the YourDress visual language.
- Prefer production-ready output over generic mockup language when editing an existing codebase.
- When creating a fresh mockup or prototype, use the tokens directly instead of approximating the brand.
- If a request conflicts with this system, follow the user's explicit instruction but mention the deliberate deviation briefly.
- Do not claim components or UI kits exist unless they are present in the current repository or were supplied in the task.

## Typical explicit invocations

- `/designyourdress redesenhe a página de produto`
- `/designyourdress revise o dashboard administrativo`
- `/designyourdress crie uma landing page para campanha`
- `/designyourdress aplique o padrão visual neste componente`
