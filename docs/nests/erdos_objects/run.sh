#!/usr/bin/env bash
# Imscribe the twelve objects the Erdős corpus needs and does not have.
#
# The key stays in the environment and never in this file: a credential written
# into the tree is published the moment the tree is.
set -euo pipefail
cd "$(dirname "$0")/../.."          # ~/imsgct/ob3ect

# The lane comes from the environment. Pinning one here is what made this script
# fail when kilo's gateway went down: the batch is about the objects, not about
# which provider imscribes them.
: "${IG_PROVIDER:?export IG_PROVIDER and the matching key first}"
: "${IG_MODEL:?export IG_MODEL first}"

python3 auto.py -f nests/erdos_objects/erdos_objects.yaml \
  --provider "$IG_PROVIDER" --model "$IG_MODEL"

# Re-check against the corrected gates: Axiom C one-directional, Axiom A
# admitting both slow kinetics, the Frobenius verdict a B4 value. Without this a
# grounded object can still read invalid from a stale check.
mapfile -t built < <(ls -d digital/erdos_objects/* 2>/dev/null | xargs -r -n1 basename)
if [ "${#built[@]}" -gt 0 ]; then
  python3 revalidate_straus.py "${built[@]}"
fi
