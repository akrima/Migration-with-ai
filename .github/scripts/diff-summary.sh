#!/usr/bin/env bash
set -euo pipefail

git diff --stat HEAD
printf "\n===== FILES CHANGED =====\n"
git diff --name-only HEAD
