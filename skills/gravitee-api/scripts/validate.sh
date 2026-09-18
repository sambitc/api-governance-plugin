#!/usr/bin/env bash
set -euo pipefail

FILE="${1:-}"

if [[ -z "$FILE" ]]; then
  echo "Usage: validate.sh <yaml-file>"
  exit 2
fi

if [[ ! -f "$FILE" ]]; then
  echo "ERROR: file not found: $FILE"
  exit 2
fi

echo "Validating: $FILE"

# Starter checks. Replace/extend with your real deterministic validators:
# - yq
# - kubeconform
# - kubectl apply --dry-run=client
# - Spectral
# - organization-specific policy tests

if grep -qE '^[[:space:]]*apiVersion:' "$FILE"; then
  echo "OK: apiVersion present"
else
  echo "ERROR: apiVersion missing"
  exit 1
fi

if grep -qE '^[[:space:]]*kind:' "$FILE"; then
  echo "OK: kind present"
else
  echo "ERROR: kind missing"
  exit 1
fi

if grep -qE '^[[:space:]]*metadata:' "$FILE"; then
  echo "OK: metadata present"
else
  echo "ERROR: metadata missing"
  exit 1
fi

if grep -qE '^[[:space:]]*spec:' "$FILE"; then
  echo "OK: spec present"
else
  echo "ERROR: spec missing"
  exit 1
fi

echo "Validation completed successfully."
