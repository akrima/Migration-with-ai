#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="${1:-$(pwd)}"

if [[ -f "$ROOT_DIR/settings.xml" ]]; then
  echo "$ROOT_DIR/settings.xml"
  exit 0
fi

FOUND="$(find "$ROOT_DIR" -maxdepth 3 -name settings.xml | head -n 1 || true)"

if [[ -n "$FOUND" ]]; then
  echo "$FOUND"
  exit 0
fi

echo "NOT_FOUND"
exit 1
