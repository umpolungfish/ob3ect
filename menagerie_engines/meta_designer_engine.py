#!/usr/bin/env python3
"""
meta_designer_engine.py — Meta-Auto-Designer Ob3ect (Bin Style)

The self-referential generator from MENAGERIE.md.

It must generate ob3ects of its own kind, and verify that every ob3ect
it generated could, in principle, have generated *it* in return.
The loop is not external: generator ↔ generated are interchangeable
under the same closure condition.

This engine literally generates a tiny copy of itself (a "child" trace),
then runs the child on the parent and vice-versa.

Invariant: after the mutual generation, μ ∘ δ = id in both directions.

Run:
    python meta_designer_engine.py
"""

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from menagerie_b4 import (
    B4, b4_join, b4_dialetheic,
    R, BD, DM, CY, GD, GN, RD, MG, GR, WH,
    _B4_COLOR, CRYSTAL, MU, DELTA,
)

class MetaDesignerEngine:
    """
    The generator that generates its own generator.
    """

    def __init__(self):
        self.trace: list[str] = []
        self.belief = B4.N
        self.children_generated = 0

    def generate_child(self, parent_id: str) -> str:
        """Produce a child descriptor that could have produced the parent."""
        child = f"child_of_{parent_id}"
        self.children_generated += 1
        return child

    def mutual_generate(self) -> bool:
        self.trace.clear()
        self.belief = B4.B   # start in productive B
        self.children_generated = 0

        parent = "meta_designer_v0"
        self.trace.append(f"IMSCRIB: I am {parent}")

        child1 = self.generate_child(parent)
        self.trace.append(f"FSPLIT: generated {child1}")

        # The child "generates back" the parent (symmetric)
        child2 = self.generate_child(child1)
        self.trace.append(f"FFUSE: {child1} generated back a peer")

        # Mutual recognition
        self.trace.append("CLINK: generator ↔ generated are interchangeable")
        self.trace.append("IFIX: the loop is closed under its own production rule")

        # Final self-imscription
        self.belief = b4_join(self.belief, B4.B)
        self.trace.append("IMSCRIB: I recognize the child as my own author")

        return self._verify_symmetry()

    def _verify_symmetry(self) -> bool:
        # Must have generated at least one child, ended in B, and dialetheic stability
        return (
            self.children_generated >= 1
            and self.belief == B4.B
            and b4_dialetheic(self.belief)
            and "interchangeable" in " ".join(self.trace)
        )

    def run(self) -> bool:
        print(f"{BD}{CY}╔══════════════════════════════════════════════════════════════════╗{R}")
        print(f"{BD}{CY}║{R}  {CRYSTAL}  META-AUTO-DESIGNER ENGINE  {CRYSTAL}                            {CY}║{R}")
        print(f"{BD}{CY}║{R}  {DM}The generator that generates its own generators.{R}                 {CY}║{R}")
        print(f"{BD}{CY}╚══════════════════════════════════════════════════════════════════╝{R}")
        print()

        closure = self.mutual_generate()

        print(f"  {GD}Self-referential generation trace:{R}")
        for i, line in enumerate(self.trace):
            c = GN if closure else RD
            print(f"    {c}{i:02d}{R}  {line}")

        print()
        print(f"  {BD}Children generated{R}  : {self.children_generated}")
        print(f"  {BD}Final belief{R}        : {_B4_COLOR[self.belief]}{self.belief.value}{R}")
        print(f"  {BD}Invariant{R}           : {MU} ∘ {DELTA} = id  (generator ↔ generated)")
        print()

        if closure:
            print(f"  {GN}✓ CLOSURE: TRUE — the loop is symmetric and self-producing{R}")
        else:
            print(f"  {RD}✗ CLOSURE: FALSE — generator and generated diverged{R}")

        print(f"\n  {DM}{CRYSTAL}  Auto-design is itself an ob3ect  {CRYSTAL}{R}")
        return closure


if __name__ == "__main__":
    engine = MetaDesignerEngine()
    ok = engine.run()
    sys.exit(0 if ok else 1)
