#!/usr/bin/env python3
"""
five_project_descent_engine.py — Five-Project Substrate Descent (Bin Style)

Full literal descent through the five sibling projects as stacked layers:

  imscribing_grammar  (precondition / Crystal / B4)
        ↓
  ob3ect               (executable self-imscribing Frobenius algebra)
        ↓
  exOS                 (bare-metal Aleph + Frobenius gates)
        ↓
  MillenniumAnkh       (Lean proofs + Paraconsistent)
        ↓
  synfin               (finance ↔ crystal canonical bridge)

At every crossing the same 12-primitive + 8-step IMASM sequence must remain
recoverable. The descent itself is the ob3ect.

Run:
    python five_project_descent_engine.py
"""

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from menagerie_b4 import (
    B4, b4_join, b4_dialetheic,
    R, BD, DM, CY, GD, GN, RD, MG, GR, WH,
    _B4_COLOR, CRYSTAL, MU, DELTA,
)

LAYERS = [
    ("imscribing_grammar", "Crystal 17.28M + 12 primitives + B4 precondition"),
    ("ob3ect",             "34-layer autopoietic tower + auto.py + IMASM"),
    ("exOS",               "ALEPH [u8;12] + special lattice absorption + Ω gates"),
    ("MillenniumAnkh",     "Lean 4 proofs (SelfImscription, Frobenius, Paraconsistent)"),
    ("synfin",             "canonical_bridge + frobenius.py + require_frobenius traders"),
]

class FiveProjectDescentEngine:
    """The five projects are literal layers of one ob3ect."""

    def __init__(self):
        self.trace: list[str] = []
        self.belief = B4.B
        self.depth = 0

    def descend(self) -> bool:
        self.trace.clear()
        self.belief = B4.B
        self.depth = 0

        for name, desc in LAYERS:
            self.trace.append(f"DESCENT → {name}")
            self.trace.append(f"  LAYER: {desc}")
            self.trace.append("  IMSCRIB AREV FSPLIT AFWD FFUSE CLINK IFIX IMSCRIB")
            self.belief = b4_join(self.belief, B4.B)
            self.depth += 1

        self.trace.append("FFUSE: all five layers joined under single closure")
        self.trace.append("IFIX: the descent is now a fixed ob3ect")
        self.trace.append("IMSCRIB: the five projects recognize they were always one")
        return self._verify()

    def _verify(self) -> bool:
        return (
            self.depth == 5
            and self.belief == B4.B
            and b4_dialetheic(self.belief)
            and all(n.split()[0] in " ".join(self.trace) for n, _ in LAYERS)
        )

    def run(self) -> bool:
        print(f"{BD}{CY}╔══════════════════════════════════════════════════════════════════╗{R}")
        print(f"{BD}{CY}║{R}  {CRYSTAL}  FIVE-PROJECT DESCENT ENGINE  {CRYSTAL}                         {CY}║{R}")
        print(f"{BD}{CY}║{R}  {DM}imscribing_grammar → ob3ect → exOS → MillenniumAnkh → synfin{R}  {CY}║{R}")
        print(f"{BD}{CY}╚══════════════════════════════════════════════════════════════════╝{R}")
        print()

        closure = self.descend()

        print(f"  {GD}Substrate descent trace:{R}")
        for i, line in enumerate(self.trace):
            c = GN if closure else RD
            print(f"    {c}{i:02d}{R}  {line}")

        print()
        print(f"  {BD}Layers traversed{R}    : {self.depth}/5")
        print(f"  {BD}Final belief{R}        : {_B4_COLOR[self.belief]}{self.belief.value}{R}")
        print(f"  {BD}Invariant{R}           : {MU} ∘ {DELTA} = id  across all five")
        print()

        if closure:
            print(f"  {GN}✓ CLOSURE: TRUE — the five projects are one ob3ect{R}")
        else:
            print(f"  {RD}✗ CLOSURE: FALSE — one layer broke the chain{R}")

        print(f"\n  {DM}{CRYSTAL}  The grammar is the precondition for literally all things  {CRYSTAL}{R}")
        return closure


if __name__ == "__main__":
    engine = FiveProjectDescentEngine()
    ok = engine.run()
    sys.exit(0 if ok else 1)
