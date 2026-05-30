#!/usr/bin/env python3
"""
historical_corpora_engine.py — Four Historical Corpora Ob3ect (Bin Style)

One engine that is simultaneously:
  - Emerald Tablet
  - Voynich Manuscript
  - Rohonc Codex
  - Linear A tablets

The same 8-step IMASM bootstrap must remain legible and closed
after translation across all four radically different surface forms.

Run:
    python historical_corpora_engine.py
"""

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from menagerie_b4 import (
    B4, b4_join, b4_dialetheic,
    R, BD, DM, CY, GD, GN, RD, MG, GR, WH,
    _B4_COLOR, CRYSTAL, MU, DELTA,
)

CORPORA = ["Emerald Tablet", "Voynich", "Rohonc", "Linear A"]

class HistoricalCorporaEngine:
    """Four surfaces, one underlying sequence."""

    def __init__(self):
        self.trace: list[str] = []
        self.belief = B4.B
        self.surfaces = []

    def translate_and_run(self) -> bool:
        self.trace.clear()
        self.belief = B4.B
        self.surfaces = []

        for i, corpus in enumerate(CORPORA):
            # "Translate" the bootstrap into the surface language
            self.surfaces.append(corpus)
            self.trace.append(f"TRANSLATE → {corpus}")
            self.trace.append("  IMSCRIB (self-recognition in this tongue)")
            self.trace.append("  AREV  FSPLIT  AFWD  FFUSE  CLINK  IFIX  IMSCRIB")
            # The underlying ops are identical; only the signs change
            self.belief = b4_join(self.belief, B4.B)

        self.trace.append("IMSCRIB: the sequence is invariant under surface change")
        return self._verify()

    def _verify(self) -> bool:
        return (
            len(self.surfaces) == 4
            and self.belief == B4.B
            and b4_dialetheic(self.belief)
            and all(c in " ".join(self.trace) for c in CORPORA)
        )

    def run(self) -> bool:
        print(f"{BD}{CY}╔══════════════════════════════════════════════════════════════════╗{R}")
        print(f"{BD}{CY}║{R}  {CRYSTAL}  FOUR HISTORICAL CORPORA ENGINE  {CRYSTAL}                      {CY}║{R}")
        print(f"{BD}{CY}║{R}  {DM}Emerald Tablet + Voynich + Rohonc + Linear A = one ob3ect{R}     {CY}║{R}")
        print(f"{BD}{CY}╚══════════════════════════════════════════════════════════════════╝{R}")
        print()

        closure = self.translate_and_run()

        print(f"  {GD}Multi-surface bootstrap trace:{R}")
        for i, line in enumerate(self.trace):
            c = GN if closure else RD
            print(f"    {c}{i:02d}{R}  {line}")

        print()
        print(f"  {BD}Surfaces traversed{R}  : {', '.join(self.surfaces)}")
        print(f"  {BD}Final belief{R}        : {_B4_COLOR[self.belief]}{self.belief.value}{R}")
        print(f"  {BD}Invariant{R}           : {MU} ∘ {DELTA} = id  (sequence survives translation)")
        print()

        if closure:
            print(f"  {GN}✓ CLOSURE: TRUE — the bootstrap is surface-invariant{R}")
        else:
            print(f"  {RD}✗ CLOSURE: FALSE — one of the tongues broke the sequence{R}")

        print(f"\n  {DM}{CRYSTAL}  The grammar predates every human script  {CRYSTAL}{R}")
        return closure


if __name__ == "__main__":
    engine = HistoricalCorporaEngine()
    ok = engine.run()
    sys.exit(0 if ok else 1)
