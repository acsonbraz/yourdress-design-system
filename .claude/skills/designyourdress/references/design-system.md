# YourDress — Design System (pacote de handoff)

> Fonte de verdade visual da YourDress para agentes e implementações: regras de marca, tokens CSS, logos e convenções de interface.
> Este pacote não inclui componentes React nem UI kits; não assuma que eles existem sem verificar o projeto-alvo.

**YourDress** é um e-commerce de moda feminina brasileiro (vestidos, blusas, saias, alfaiataria),
com atendimento próximo por WhatsApp, desconto no PIX e frete para todo o Brasil. Este design
system cobre a loja (storefront) em desktop e mobile.

## Fontes usadas para construir este sistema

| Fonte | O que foi extraído |
| --- | --- |
| `https://github.com/acsonbraz/ecommerce-yourdress` (privado, branch `main`) | Estrutura real da loja: rotas, componentes de storefront, contratos de dados, copy em português, regras de negócio (PIX, frete, cupom, checkout em 5 etapas). Ver `github.md`. |
| `uploads/logo-yourdress.png`, `uploads/Logo bege site (1).png` | Logos oficiais (monograma "yd" e wordmark "yourDress"). |
| `uploads/clothing-store-app-01..07` | UI kit de referência "Clothes Store Mobile App" — usado **apenas** como guia de layout/estilo mobile (cards 4:5, tab bar escura flutuante, chips de filtro). Não é material da marca. |
| Briefing do time | Paleta oficial: `#c69f70` / `#ebe3d6` / `#ffffff`; variações brancas do logo autorizadas. |

O repositório é privado — se você tiver acesso, vale explorar `apps/web/src/` (storefront),
`apps/admin/` (painel) e `docs/` para aprofundar qualquer decisão de produto antes de desenhar.

> **Nota importante sobre o repositório:** o tema CSS do storefront hoje é o padrão do shadcn/ui
> (`baseColor: slate`, azulado) — ou seja, **o código ainda não tem a marca aplicada**. A estrutura,
> as medidas e a copy vêm do código; as cores e a tipografia vêm do briefing e dos logos. Quando o
> repositório for rebrandizado, os valores deste sistema são a referência.

---

## CONTENT FUNDAMENTALS

- **Idioma:** português do Brasil, sempre. Nomes de rota em português (`/produtos`, `/carrinho`,
  `/checkout`, `/pedido`, `/conta`).
- **Pessoa:** fala-se **com** a cliente, na segunda pessoa informal — "Seu carrinho", "Confira os
  dados e finalize seu pedido", "Enviamos um código de acesso para o seu e-mail". A marca usa "nós"
  implícito, quase nunca "eu".
- **Tom:** próximo e cuidadoso, sem gírias e sem euforia de varejo. A frase institucional é
  *"Moda feminina com atendimento próximo e cuidado em cada detalhe."*
- **Caixa:** sentence case em tudo — títulos, botões, labels. Caixa alta só em eyebrows curtos
  ("NOVA COLEÇÃO") com tracking 0.18em.
- **Botões:** verbo no infinitivo, curto — "Adicionar ao carrinho", "Finalizar compra", "Continuar",
  "Calcular", "Aplicar", "Confirmar pedido", "Ver coleção".
- **Feedback:** sucesso com exclamação ("Produto adicionado ao carrinho!", "Cupom aplicado!"); erro
  seco e sem culpa ("Cupom inválido.", "Não foi possível adicionar ao carrinho.").
- **Vazio:** afirma o estado e oferece saída — "Seu carrinho está vazio" + "Continuar comprando".
- **Preço:** sempre `Intl.NumberFormat("pt-BR", BRL)` → `R$ 189,90`. A linha do PIX acompanha todo
  preço: *"R$ 170,91 no PIX (10% off)"*, em verde.
- **Atributos de variante:** unidos por " · " → "M · Areia".
- **Emoji:** nunca. Nem em copy, nem em UI.

## VISUAL FOUNDATIONS

**Cor.** Três valores oficiais: gold `#c69f70`, bege `#ebe3d6`, branco `#ffffff`. Em volta deles
foi construída uma escala gold 50–900 e uma escala de neutros **quentes** (base marrom `#2b2620`) —
nunca cinzas azulados. O gold é cor de ação (botão primário, estado selecionado, badge de promoção);
o bege é superfície editorial (hero, rodapé, placeholder de imagem); o branco é a página. Verde
`#3f7d62` é reservado ao PIX e a estados de sucesso; `#25d366` só no botão de WhatsApp. No máximo
duas superfícies tingidas por página.

**Tipografia.** Duas famílias, com papéis bem separados:

- **League Spartan** (`--font-display`) — títulos (peso 600) e **números em destaque**: preço
  principal, total do pedido, valores de hero (peso 700, `--font-numeric-strong`).
- **Raleway** (`--font-body`) — corpo e UI: **Light 300** em textos longos/editoriais, **Regular
  400** no padrão, **Bold 700** para destaques dentro do texto e para números de pouco destaque
  (tamanho, frete, parcelas, linha do PIX — `--font-numeric-soft`).

Escala 11 → 64px. Títulos com tracking −0.01em; corpo 16/1.5; apoio 14px em `--text-muted`.

**Espaçamento e layout.** Base 4px (4 → 96). Container 1152px com padding 16 (mobile) / 32
(desktop). Grid de produtos: 2 colunas no mobile, 3 em ≥640px, 4 em ≥1024px, gap 16. Toda imagem de
produto é **4:5**. Seções separadas por 48px.

**Fundos.** Predominantemente branco. Hero: gradiente vertical bege→branco, ou foto full-bleed com o
neutro escuro por trás (opacidade 0.75) e logo branco por cima. Sem padrões, sem texturas, sem
gradientes coloridos. Rodapé em bege sólido.

**Cantos.** Raio padrão 10px (`--radius`, herdado do tema do storefront: `0.625rem`). Botões e
inputs 8px, cards 10px, modais 14px, chips/avatares/ícones-botão pill.

**Cards.** Fundo branco, borda hairline `#e7e3dc`, raio 10px, **sem sombra em repouso**; no hover
sobem para `--shadow-md`. Cards de produto têm a imagem sangrando até a borda superior (raio 0 na
imagem, overflow hidden no card) e 12px de padding no texto.

**Sombras.** Quentes, com base marrom `rgba(43,38,32,…)`, nunca preto puro. Quatro níveis: xs
(hairline de apoio), sm (inputs/botões), md (hover de card), lg (drawer, modal, toast, botão
flutuante). Sem sombra interna, exceto o hairline `--shadow-inset-hairline`.

**Transparência e blur.** Só em duas situações: cabeçalho fixo (`rgba(255,255,255,.95)` +
`saturate(160%) blur(10px)`) e barra de ação fixa no mobile. Scrim de modal/drawer:
`rgba(28,24,21,.45)` — marrom, não preto.

**Movimento.** Rápido e discreto: 120ms (foco, cor de link), 200ms (hover, toggle, drawer), 300ms
(zoom da imagem do produto, `scale(1.05)`). Easing único: `cubic-bezier(.4,0,.2,1)`. Sem bounce,
sem parallax, sem animação de entrada em scroll.

**Hover.** Botão primário escurece um passo (gold 500 → 600); ghost/outline ganham fundo
`--surface-muted`; links vão para gold 700 → 800 com sublinhado a 3px de distância; card de produto
ganha sombra md e a foto dá zoom. **Press:** `scale(.98)`, sem mudança extra de cor.
**Foco:** borda gold + anel `0 0 0 3px rgba(198,159,112,.35)` — nunca o anel azul do navegador.

**Bordas.** 1px é o único peso. `--border-subtle` para divisórias e campos em repouso,
`--border-strong` para controles interativos (botão outline, swatch), gold para selecionado.

**Imagens.** Luz quente, fundos neutros, tons terrosos — nada frio, nada preto e branco, sem grão.
**Não há banco de fotos neste sistema:** onde falta foto, renderize o placeholder bege com o
monograma (`ProductImage` sem `src`). Nunca insira stock genérico.

**Elementos fixos.** Cabeçalho sticky no topo; botão de WhatsApp fixo no canto inferior direito
(56px); no mobile, barra de ação inferior no produto e tab bar escura flutuante na home.

## ICONOGRAPHY

- **Lucide** é a biblioteca oficial da loja (`apps/web/components.json → "iconLibrary": "lucide"`).
  Carregada via CDN (`unpkg.com/lucide@0.544.0`) e exposta pelo componente `Icon`.
- Traço **1.75**, tamanhos 16 (UI), 20 (cabeçalho/mobile), 24 (destaque). Sempre `currentColor`.
- Ícones usados no storefront real: `search`, `shopping-bag`, `user`, `minus`, `plus`, `x`.
  Extensões usadas nos kits: `heart`, `truck`, `shield-check`, `qr-code`, `sliders-horizontal`,
  `chevron-left/right`, `check`, `clock`, `message-circle`, `home`.
- **Sem emoji. Sem unicode como ícone** (exceções herdadas do código: "−"/"+" no stepper e "×" para
  remover item, que são glifos de texto propositalmente).
- O glifo do WhatsApp é um SVG de marca próprio, copiado verbatim do repositório — é o único SVG
  desenhado à mão neste sistema.
- Não há icon font nem sprite próprios no repositório; nada além dos logos foi encontrado em
  `apps/web/public/` (só `favicon.ico`).


---

## Arquivos disponíveis nesta skill

| Caminho | Conteúdo |
| --- | --- |
| `SKILL.md` | Regras de ativação e comportamento da skill. |
| `references/design-system.md` | Este guia completo de marca e interface. |
| `references/github-source.md` | Mapa do design system para o repositório original da YourDress. |
| `assets/css/styles.css` | Entrada CSS que importa todos os tokens. |
| `assets/css/tokens/` | Cores, tipografia, espaçamento, radius, elevação, movimento e base. |
| `assets/logos/` | Wordmark e monograma oficiais, em gold e branco. |

## Uso esperado por agentes

Ao criar ou revisar interfaces, o agente deve consultar este documento e aplicar os tokens literalmente, sem substituir a paleta por cinzas frios, tipografias genéricas ou componentes visualmente incompatíveis. Em código existente, deve preservar as regras funcionais e mapear o visual para a stack do projeto-alvo.
