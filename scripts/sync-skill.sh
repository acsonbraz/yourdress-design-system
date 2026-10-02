#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$ROOT/skills/designyourdress"
for DEST in "$ROOT/.claude/skills/designyourdress" "$ROOT/.agents/skills/designyourdress"; do
  rm -rf "$DEST"
  mkdir -p "$(dirname "$DEST")"
  cp -R "$SRC" "$DEST"
done
echo "designyourdress synchronized for Claude and OpenAI/Codex."
