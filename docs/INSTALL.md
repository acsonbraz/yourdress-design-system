# Instalação

## Claude Code

Copie a pasta canônica para o projeto:

```bash
mkdir -p .claude/skills
cp -R skills/designyourdress .claude/skills/
```

Depois invoque `/designyourdress` quando a interface ou ativo visual precisar seguir o padrão YourDress.

## OpenAI Codex

Copie a pasta para `.agents/skills/`:

```bash
mkdir -p .agents/skills
cp -R skills/designyourdress .agents/skills/
```

O Codex pode selecionar a skill automaticamente pela descrição ou você pode pedir explicitamente para usar `designyourdress`.

## ChatGPT Skills

Gere o pacote com o script de empacotamento do repositório. O arquivo gerado contém uma única pasta de nível superior `designyourdress/` com `SKILL.md`, referências e assets.
