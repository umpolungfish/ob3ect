#!/usr/bin/env bash
# check_proofs.sh — Gate: catch string-literal theorem types in Lean proof files.
# A theorem whose type is a String value is not a mathematical proposition.
# Run: bash scripts/check_proofs.sh
# Returns: exit 0 if clean, exit 1 with offending lines printed.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
PROOFS_DIR="$REPO_ROOT/proofs"
FAIL=0

echo "=== Lean proof gate: checking for string-literal theorem types ==="

while IFS= read -r -d '' f; do
  # Match: theorem <name> ... : "..." (string as the declared type)
  if grep -Pn 'theorem\s+\w[^:]*:\s*"' "$f" 2>/dev/null; then
    echo "  ^^^ $f: theorem type is a String literal, not a Prop"
    FAIL=1
  fi
done < <(find "$PROOFS_DIR" -name "*.lean" -print0)

if [ "$FAIL" -ne 0 ]; then
  echo ""
  echo "GATE FAILED: String-literal theorem types are not valid Lean propositions."
  echo "Replace the string with a mathematical Prop (∃, ∀, =, ∧, Nonempty ...)."
  exit 1
fi

echo "OK — no string-literal theorem types found."
