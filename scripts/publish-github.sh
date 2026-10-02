#!/usr/bin/env bash
set -euo pipefail
REPO="${1:-acsonbraz/yourdress-design-system}"
VISIBILITY="${2:---private}"
command -v gh >/dev/null 2>&1 || { echo "GitHub CLI (gh) não encontrado." >&2; exit 1; }
gh auth status >/dev/null
gh repo create "$REPO" "$VISIBILITY" --source . --remote origin --push
