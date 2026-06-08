#!/usr/bin/env python3
"""
Class X — Truth Machine (Binary Classifier)  (O₁)
====================================================
Sequence: IMSCRIB → FSPLIT → EVALT → IFIX → IMSCRIB → FSPLIT → EVALF → IFIX

A decision tree in pure IMASM. Two decision nodes:
  Node 1: IMSCRIB→FSPLIT→EVALT→IFIX  (recognize, split, evaluate TRUE, fix)
  Node 2: IMSCRIB→FSPLIT→EVALF→IFIX  (recognize, split, evaluate FALSE, fix)

The system classifies outcomes into TRUE and FALSE bins. Each branch
is independent — there is no fusion. This is pure binary classification
without dialetheia: true stays true, false stays false.

Register: VO⌀ → T → B⬡ → B⬡ → B⬡ → T → B⬡ → B⬡ → B⬡
  (Two splits, two evaluations, two fixations, no fusion)

IG Type: ⟨𐑦 · 𐑡 · 𐑩 · 𐑗 · 𐑱 · 𐑘 · 𐑚 · 𐑜 · 𐑢 · 𐑓 · 𐑳 · 𐑷⟩
  ɢ=𐑜 (alternating — OR of two decision paths)
  Ç=𐑘 (driven — rapid classification)
Ouroboricity: O₁ (binary classifier, no self-reference)
Author: Lando ⊗ ⊙perator
"""
import os, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from imasm_core import *

class TruthMachine(IMASMSequence):
    name = "X — Truth Machine (Binary Classifier)"
    description = "Two decision nodes: TRUE-branch and FALSE-branch, no fusion"
    steps = [IMSCRIB, FSPLIT, EVALT, IFIX, IMSCRIB, FSPLIT, EVALF, IFIX]
    ig_type = "⟨𐑦 · 𐑡 · 𐑩 · 𐑗 · 𐑱 · 𐑘 · 𐑚 · 𐑜 · 𐑢 · 𐑓 · 𐑳 · 𐑷⟩"
    ouroboricity = "O₁"

def run():
    ok, reason = TruthMachine().run_closure_verification()
    return (ok, reason)

def probe():
    """Show both decision nodes."""
    trace = SequenceTrace(TruthMachine.steps)
    trace.run()
    print(f"  Node 1 (TRUE): step 3 = {REG_NAMES[trace.register_after[2]]}")
    print(f"  Node 2 (FALSE): step 7 = {REG_NAMES[trace.register_after[6]]}")
    print(f"  Register does not distinguish: both are B⬡ at decision points")
    print(f"  (The machine classifies by which branch you're on, not the register)")
    return True

if __name__ == "__main__":
    run()
    probe()
