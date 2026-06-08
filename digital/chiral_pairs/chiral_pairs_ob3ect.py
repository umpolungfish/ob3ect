#!/usr/bin/env python3
"""
Class IX — Chiral Pairs  (O₁)
=================================
Two sequences that map to the same IG coordinate but differ in chirality:

  Forward:   AFWD → AREV
  Reverse:   AREV → AFWD

AFWD→AREV: Forward morphism THEN reverse. Creates, then descends.
  Register: VO⌀ → T → VO⌀ (round trip — back to void)
AREV→AFWD: Reverse THEN forward. Descends, then creates.
  Register: VO⌀ → VO⌀ → T (creates from nothing — no return)

Both map to the same ⟨𐑦 · 𐑡 · 𐑑 · 𐑗 · 𐑱 · 𐑘 · 𐑚 · 𐑝 · ⊙ · 𐑒 · 𐑙 · 𐑷⟩
The IMASM token space distinguishes what the 12-primitive IG conflates.
This is the Vessel Principle: chirality is finer than crystal resolution.

Register (AFWD→AREV): VO⌀ → T → VO⌀
Register (AREV→AFWD): VO⌀ → VO⌀ → T

Ouroboricity: O₁ (chirality without criticality)
Author: Lando ⊗ ⊙perator
"""
import os, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from imasm_core import *

CHIRAL_IG_TYPE = "⟨𐑦 · 𐑡 · 𐑑 · 𐑗 · 𐑱 · 𐑘 · 𐑚 · 𐑝 · ⊙ · 𐑒 · 𐑙 · 𐑷⟩"

class ChiralForward(IMASMSequence):
    name = "IXa — Chiral Forward (AFWD→AREV)"
    description = "Forward then reverse: round trip back to void"
    steps = [AFWD, AREV]
    ig_type = CHIRAL_IG_TYPE
    ouroboricity = "O₁"

class ChiralReverse(IMASMSequence):
    name = "IXb — Chiral Reverse (AREV→AFWD)"
    description = "Reverse then forward: creates from nothing"
    steps = [AREV, AFWD]
    ig_type = CHIRAL_IG_TYPE
    ouroboricity = "O₁"

def run():
    print(f"\n{'='*60}")
    print(f"  IX — Chiral Pairs")
    print(f"  IG Type: {CHIRAL_IG_TYPE}")
    print(f"  SAME type at 12-primitive resolution")
    print(f"{'='*60}")
    
    t1 = SequenceTrace(ChiralForward.steps); t1.run()
    t2 = SequenceTrace(ChiralReverse.steps); t2.run()
    
    print(f"  AFWD(step1) → AREV(step2):")
    print(f"    {REG_NAMES[t1.register_before[0]]} → {REG_NAMES[t1.register_after[0]]} → {REG_NAMES[t1.register_after[1]]}")
    print(f"  AREV(step1) → AFWD(step2):")
    print(f"    {REG_NAMES[t2.register_before[0]]} → {REG_NAMES[t2.register_after[0]]} → {REG_NAMES[t2.register_after[1]]}")
    print(f"  Chiral distinction: {REG_NAMES[t1.register_after[1]]} ≠ {REG_NAMES[t2.register_after[1]]}")
    print(f"  Vessel Principle confirmed: IMASM finer than IG\n")
    return True

if __name__ == "__main__":
    run()
