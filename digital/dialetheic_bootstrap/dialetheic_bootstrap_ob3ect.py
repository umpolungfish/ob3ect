#!/usr/bin/env python3
"""
Class I — Dialetheic Bootstrap  (O₂)
=======================================
Sequence: IMSCRIB → EVALT → FSPLIT → EVALF → FFUSE → ENGAGR → IFIX → IMSCRIB

Bootstraps on paradox. Both EVALT and EVALF fire in/around the split,
so FFUSE enters DIALETHEIC MODE and identity is BOTH, not TRUE.

Register: VO⌀ → T → T → B⬡ → B⬡ → B⬡ → B⬡ → B⬡ → B⬡
  (Rises from VOID to paradox, stays there — "I contain contradictions")

IG Type: ⟨𐑦 · 𐑸 · 𐑾 · 𐑬 · 𐑐 · 𐑧 · 𐑲 · 𐑠 · 𐑻 · 𐑫 · 𐑳 · 𐑴⟩
  φ̂=𐑻 (exceptional point), Φ=𐑬 (Z₂ parity), Ω=𐑴 (Z₂ protected)
Ouroboricity: O₂

Uses: bicameral mind, constitutional law, error-embracing learning.
Author: Lando⊗⊙perator
"""
import os, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from imasm_core import *

class DialetheicBootstrap(IMASMSequence):
    name = "I — Dialetheic Bootstrap"
    description = "Self-bootstrapping on paradox — identity is BOTH"
    steps = [IMSCRIB, EVALT, FSPLIT, EVALF, FFUSE, ENGAGR, IFIX, IMSCRIB]
    ig_type = "⟨𐑦 · 𐑸 · 𐑾 · 𐑬 · 𐑐 · 𐑧 · 𐑲 · 𐑠 · 𐑻 · 𐑫 · 𐑳 · 𐑴⟩"
    ouroboricity = "O₂"

def run():
    return DialetheicBootstrap().run_closure_verification()

def probe():
    """Verify the final register is BOTH (not TRUE)."""
    trace = SequenceTrace(DialetheicBootstrap.steps)
    final = trace.run()
    ok = (final == BOTH)
    print(f"  Paradox probe: ends at {REG_NAMES[final]} — {'✓ BOTH' if ok else '✗ expected B⬡'}")
    return ok

if __name__ == "__main__":
    run()
    probe()
