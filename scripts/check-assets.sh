#!/usr/bin/env bash
# Fail the build if any HTML page references a local file that isn't there.
# A missing asset on a one-page site is the whole page, so this is worth a gate.
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root"

missing=0
checked=0

while IFS= read -r page; do
  # Pull src="..." / href="..." values, drop anything remote or non-file.
  while IFS= read -r ref; do
    [ -n "$ref" ] || continue
    case "$ref" in
      http://*|https://*|//*|mailto:*|tel:*|data:*|\#*) continue ;;
    esac
    ref="${ref%%\#*}"
    ref="${ref%%\?*}"
    [ -n "$ref" ] || continue

    checked=$((checked + 1))
    if [ ! -e "$ref" ]; then
      echo "MISSING  $page -> $ref"
      missing=$((missing + 1))
    fi
  done < <(grep -oE '(src|href)="[^"]*"' "$page" | sed -E 's/^(src|href)="//; s/"$//')
done < <(find . -name '*.html' -not -path './_site/*' -not -path './.git/*')

echo "checked $checked local reference(s)"

if [ "$missing" -gt 0 ]; then
  echo "FAILED: $missing missing asset(s)"
  exit 1
fi

echo "OK: all local references resolve"
