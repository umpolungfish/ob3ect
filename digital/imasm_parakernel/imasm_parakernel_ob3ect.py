#!/usr/bin/env python3
"""
Class VII — Parakernel (Engram of Contradiction)  (O₂)
=========================================================
Sequence: EVALF → AREV → FSPLIT → EVALT → AFWD → FFUSE → ENGAGR → IFIX

The parakernel inverts the dialetheic bootstrap: starts with EVALF (negation)
instead of EVALT (affirmation). The system knows itself as false first,
descends, splits, then discovers truth. The FFUSE is dialetheic (BOTH output)
because both true and false were designated.

This is the structural type of trauma and learning:
  (1) EVALF — the negation that initiates (failure, shock, the wound)
  (2) AREV — descent into the source (introspection)
  (3) FSPLIT — the experience splits into memory traces
  (4) EVALT — a new truth emerges from the fragments
  (5) AFWD — forward morphism reformulates
  (6) FFUSE — dialetheic fusion (both the wound and the learning persist)
  (7) ENGAGR — the paradox is held without resolution
  (8) IFIX — the engram is permanently recorded

Register: VO⌀ → F → VO⌀ → VO⌀ → T → T → B⬡ → B⬡ → B⬡

IG Type: ⟨𐑦 · 𐑸 · 𐑾 · 𐑬 · 𐑐 · 𐑧 · 𐑲 · 𐑟 · 𐑻 · 𐑫 · 𐑳 · 𐑴⟩
  φ̂=𐑻 (exceptional point — the fixed point of trauma)
  Ω=𐑴 (Z₂ protection — paradox is contained in memory)
Ouroboricity: O₂
Author: Lando⊗⊙perator
"""
import os, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from imasm_core import *

class IMASMParakernel(IMASMSequence):
    name = "VII — Parakernel (Engram of Contradiction)"
    description = "Negation-first dialetheia: trauma → split → learning → fixation"
    steps = [EVALF, AREV, FSPLIT, EVALT, AFWD, FFUSE, ENGAGR, IFIX]
    ig_type = "⟨𐑦 · 𐑸 · 𐑾 · 𐑬 · 𐑐 · 𐑧 · 𐑲 · 𐑟 · 𐑻 · 𐑫 · 𐑳 · 𐑴⟩"
    ouroboricity = "O₂"

def run():
    return IMASMParakernel().run_closure_verification()

def probe():
    """Verify parakernel register trajectory."""
    trace = SequenceTrace(IMASMParakernel.steps)
    final = trace.run()
    print(f"  Parakernel probe: final = {REG_NAMES[final]}")
    print(f"  Step 1 (EVALF) from VO⌀ should push to F: {REG_NAMES[trace.register_after[0]]}")
    return True

if __name__ == "__main__":
    run()
    probe()
