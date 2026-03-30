#!/usr/bin/env bash
set -euo pipefail

SETTINGS_PATH="${1:-settings.xml}"
MAX_ATTEMPTS="${2:-6}"
ATTEMPT=1

while [[ "$ATTEMPT" -le "$MAX_ATTEMPTS" ]]; do
  echo "=== BUILD ATTEMPT $ATTEMPT/$MAX_ATTEMPTS ==="
  if mvn clean install -s "$SETTINGS_PATH"; then
    echo "BUILD_SUCCESS"
    exit 0
  fi
  echo "BUILD_FAILED_ATTEMPT_$ATTEMPT"
  ATTEMPT=$((ATTEMPT + 1))
  echo "Agent must inspect errors, apply fixes, and rerun."
done

echo "BUILD_FAILED_MAX_ATTEMPTS"
exit 1
