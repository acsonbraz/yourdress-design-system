repo: acsonbraz/ecommerce-yourdress
branch: main
path: apps/web

## Last sync

date: 2026-09-15T02:10:43Z

### Updated in this project

- Tokens derivados da paleta oficial (#c69f70 / #ebe3d6 / #ffffff) sobre a estrutura do storefront.
- Componentes recriados a partir de `apps/web/src/components/` (storefront + shadcn usados).
- UI kits desktop e mobile cobrindo home, produto, carrinho, checkout e pedido.
- Copy em pt-BR extraída das rotas reais.

## Screen map

| Tela deste projeto | Arquivos do repositório |
| --- | --- |
| `ui_kits/storefront-web/HomeScreen.jsx` | `apps/web/src/routes/index.tsx`, `components/storefront/header.tsx`, `components/storefront/footer.tsx`, `components/storefront/product-card.tsx` |
| `ui_kits/storefront-web/ProductScreen.jsx` | `apps/web/src/routes/produtos/$slug.tsx` |
| `ui_kits/storefront-web/CheckoutScreen.jsx` | `apps/web/src/routes/checkout.tsx` |
| `ui_kits/storefront-web/OrderScreen.jsx` | `apps/web/src/routes/pedido/$publicToken.tsx` |
| `ui_kits/storefront-web/App.jsx` (cart drawer) | `apps/web/src/components/storefront/cart-drawer.tsx`, `routes/carrinho.tsx` |
| `ui_kits/storefront-mobile/MobileScreens.jsx` | mesmas rotas acima, em 390px |
| `components/core/*`, `components/forms/*` | `apps/web/src/components/ui/{button,input,label,badge,card,select,checkbox,switch,separator,skeleton}.tsx` |
| `components/feedback/*` | `apps/web/src/components/ui/{alert,dialog,sheet,sonner}.tsx` |
| `tokens/*` | `apps/web/src/styles.css` (radius 0.625rem, estrutura de aliases semânticos) |
