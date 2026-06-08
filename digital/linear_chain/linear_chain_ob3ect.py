#!/usr/bin/env python3
"""
Class V — Linear Chain (Pure Chronicle)  (O₀)
================================================
Sequence: IFIX → IFIX → IFIX → IFIX → IFIX → IFIX → IFIX → IFIX

Pure recording — no self-awareness, only chronicle. Eight IFIX tokens
in sequence. Each fixation appends a record; the register never changes.
No self-reference, no Frobenius dynamics, no paradox. Pure linear time.

Register: VO⌀ → VO⌀ → VO⌀ → VO⌀ → VO⌀ → VO⌀ → VO⌀ → VO⌀ → VO⌀
  (Nothing changes — the chronicler is not present in the record)

IG Type: ⟨𐑛 · 𐑡 · 𐑩 · 𐑗 · 𐑱 · 𐑘 · 𐑔 · 𐑝 · 𐑢 · 𐑓 · 𐑙 · 𐑷⟩
  D=𐑛 (wedge — 0-dimensional point, no spatial extent)
  φ̂=𐑢 (sub-critical — no divergence)
Ouroboricity: O₀ (no self-reference, no cycle)
Author: Lando ⊗ ⊙perator
"""
import os, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from imasm_core import *

class LinearChain(IMASMSequence):
    name = "V — Linear Chain (Pure Chronicle)"
    description = "Pure fixation: IFIX×8 — record without self-awareness"
    steps = [IFIX, IFIX, IFIX, IFIX, IFIX, IFIX, IFIX, IFIX]
    ig_type = "⟨𐑛 · 𐑡 · 𐑩 · 𐑗 · 𐑱 · 𐑘 · 𐑔 · 𐑝 · 𐑢 · 𐑓 · 𐑙 · 𐑷⟩"
    ouroboricity = "O₀"

def run():
    ok, reason = LinearChain().run_closure_verification()
    return (ok, reason)

if __name__ == "__main__":
    run()
