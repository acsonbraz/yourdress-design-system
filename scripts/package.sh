#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DIST="$ROOT/dist"
rm -rf "$DIST"
mkdir -p "$DIST"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
cp -R "$ROOT/skills/designyourdress" "$TMP/designyourdress"
(
  cd "$TMP"
  zip -qr "$DIST/designyourdress-skill.zip" designyourdress
)
(
  cd "$ROOT"
  zip -qr "$DIST/yourdress-design-system-plugin.zip" plugin.json skills
)
echo "Packages created in $DIST"
