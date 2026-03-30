#!/usr/bin/env bash
set -euo pipefail

echo "=== pom files ==="
find . -name pom.xml

echo "=== probable lambda handlers ==="
grep -R "RequestHandler\|RequestStreamHandler" src . || true

echo "=== probable spring boot apps ==="
grep -R "@SpringBootApplication" src . || true

echo "=== ci files ==="
find . -path "*/.github/workflows/*" -o -name "Jenkinsfile" -o -name "azure-pipelines.yml"
