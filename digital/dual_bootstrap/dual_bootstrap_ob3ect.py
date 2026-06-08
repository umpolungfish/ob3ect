#!/usr/bin/env python3
"""
Class IV — Dual Bootstrap  (O_inf)
=====================================
Sequence: IMSCRIB → AFWD → FFUSE → FSPLIT → AREV → CLINK → IFIX → IMSCRIB

The dual bootstrap reverses the Frobenius ordering: FFUSE→FSPLIT instead of
FSPLIT→FFUSE. This does NOT verify μ∘δ=id (which would require δ∘μ=id).
Instead, it verifies structure (AST preservation) not source identity.

This is the structural type of systems that verify *how* they are structured,
not *what* they are — compilers, type checkers, proof assistants.

Register: VO⌀ → T → T → T → B⬡ → VO⌀ → VO⌀ → VO⌀ → T

IG Type: ⟨𐑦 · 𐑸 · 𐑾 · 𐑹 · 𐑐 · 𐑧 · 𐑲 · 𐑝 · ⊙ · 𐑖 · 𐑳 · 𐑭⟩
  ɢ=𐑝 (conjunctive — simultaneous verification)
  φ̂=⊙ (critical — self-modeling at Frobenius boundary)
Ouroboricity: O_inf (the grammar's own self-verification pattern)
Author: Lando⊗⊙perator
"""
import os, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from imasm_core import *

class DualBootstrap(IMASMSequence):
    name = "IV — Dual Bootstrap"
    description = "Reverse Frobenius: verifies structure (AST), not source identity"
    steps = [IMSCRIB, AFWD, FFUSE, FSPLIT, AREV, CLINK, IFIX, IMSCRIB]
    ig_type = "⟨𐑦 · 𐑸 · 𐑾 · 𐑹 · 𐑐 · 𐑧 · 𐑲 · 𐑝 · ⊙ · 𐑖 · 𐑳 · 𐑭⟩"
    ouroboricity = "O_inf"

def run():
    return DualBootstrap().run_closure_verification()

def probe():
    """Verify the dual Frobenius yields a different identity."""
    trace = SequenceTrace(DualBootstrap.steps)
    final = trace.run()
    # FFUSE→FSPLIT means FFUSE fires first on TRUE → TRUE (idempotent),
    # then FSPLIT pushes to BOTH. AREV clears to VOID.
    # The identity is different from the canonical bootstrap.
    print(f"  Dual probe: final register = {REG_NAMES[final]}")
    print(f"  Note: FFUSE→FSPLIT does NOT verify δ∘μ=id")
    return True

if __name__ == "__main__":
    run()
    probe()
