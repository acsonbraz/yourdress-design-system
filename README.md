# YourDress Design System — `/designyourdress`

Repositório portátil do design system da **YourDress**, empacotado como skill reutilizável para Claude Code, OpenAI Codex/ChatGPT Skills e outros agentes que entendam `SKILL.md`.

## O que a skill padroniza

- Cores oficiais e neutros quentes.
- League Spartan em títulos e números fortes; Raleway no corpo e interface.
- Espaçamento, radius, bordas, sombras e movimento.
- Regras para cards, produtos, checkout, PIX, WhatsApp e navegação.
- Tom de voz em pt-BR e convenções de microcopy.
- Logos oficiais e tokens CSS prontos para implementação.

## Estrutura

```text
skills/designyourdress/                 # fonte portátil da skill
  SKILL.md
  references/
  assets/

.claude/skills/designyourdress/         # cópia pronta para Claude Code
.agents/skills/designyourdress/         # cópia pronta para OpenAI Codex
plugin.json                              # pacote portátil OpenAI/plugin
CLAUDE.md                                # instrução de descoberta no Claude
AGENTS.md                                # instrução de descoberta no Codex/agentes
scripts/sync-skill.sh                    # sincroniza as 3 cópias
scripts/package.sh                       # gera ZIPs de instalação
scripts/publish-github.sh                # cria/publica o repo via GitHub CLI
```

## Claude Code

Ao clonar este repositório dentro de um projeto, a skill fica disponível em `.claude/skills/designyourdress/` e pode ser chamada como:

```text
/designyourdress redesenhe esta página mantendo todas as funcionalidades
```

Para instalar a skill em outro repositório:

```bash
mkdir -p .claude/skills
cp -R skills/designyourdress .claude/skills/
```

## OpenAI Codex

A cópia em `.agents/skills/designyourdress/` segue o formato de skills do Codex. Você pode pedir explicitamente:

```text
Use a skill designyourdress para revisar esta interface.
```

## ChatGPT Skills

O diretório `skills/designyourdress/` também segue o formato portátil de skills da OpenAI: um `SKILL.md` com `name`/`description`, mais referências e assets. O script de empacotamento gera `dist/designyourdress-skill.zip`, pronto para upload em superfícies do ChatGPT que aceitem Skills.

## Desenvolvimento

Edite apenas `skills/designyourdress/` como fonte canônica e rode:

```bash
./scripts/sync-skill.sh
```

Isso atualiza as cópias de Claude e OpenAI/Codex. A CI valida que elas permanecem idênticas.

## Licença

Material de marca proprietário da YourDress. Consulte `LICENSE.md`.

## Publicar no GitHub

Com GitHub CLI autenticado, na raiz deste repositório:

```bash
./scripts/publish-github.sh
```

O padrão cria `acsonbraz/yourdress-design-system` como repositório privado e envia a branch `main`.
