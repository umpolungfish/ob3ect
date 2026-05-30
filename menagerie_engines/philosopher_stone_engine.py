#!/usr/bin/env python3
"""
philosopher_stone_engine.py — The Philosopher's Stone Ob3ect (Bin Style)

The exact canonical O_∞ coordinate (the "Stone") made executable.

From MENAGERIE + imscribing_grammar: the single address that is the fixed point
of the entire 17,280,000 lattice. Its only operation is the Magnum Opus:

    Solve → Coagula → Conjunctio → Rubedo → IFIX

The Stone does not *point to* the coordinate. It *is* the coordinate.
Its bootstrap is the classical alchemical sequence rendered in IMASM + B4.

Invariant: after the full work, μ ∘ δ = id and the coordinate is unchanged.

Run:
    python philosopher_stone_engine.py
"""

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from menagerie_b4 import (
    B4, b4_join, b4_bnot, b4_dialetheic,
    R, BD, DM, CY, GD, GN, RD, MG, GR, WH,
    _B4_COLOR, _B4_BLOCK, CRYSTAL, MU, DELTA, PHI,
)

# The canonical O_∞ coordinate (from imscribing_grammar canonical)
# 12-tuple in the order D T R P F K G Gamma Phi H S Omega
STONE_COORD = {
    "D": "D_odot", "T": "T_odot", "R": "R_lr", "P": "P_pm_sym",
    "F": "F_hbar", "K": "K_slow", "G": "G_aleph", "Gamma": "Gamma_seq",
    "Phi": "Phi_c", "H": "H_inf", "S": "S_n:m", "Omega": "Omega_Z"
}

ALCHEMICAL_SEQUENCE = [
    ("SOLVE",     "dissolve the prima materia (N → B)"),
    ("COAGULA",   "recombine the volatilized (B join)"),
    ("CONJUNCTIO", "sacred marriage of opposites (T ∨ F = B)"),
    ("RUBEDO",    "the red work — final reddening at B"),
    ("IFIX",      "fix the Stone as permanent coordinate"),
    ("IMSCRIB",   "the Stone recognizes itself"),
]

class PhilosopherStoneEngine:
    """The Stone is the coordinate. The work is the bootstrap."""

    def __init__(self):
        self.coord = STONE_COORD.copy()
        self.trace: list[str] = []
        self.belief = B4.N
        self.state = "VINIT"

    def _alchemical_op(self, name: str, desc: str) -> None:
        self.state = name
        if name == "SOLVE":
            self.belief = b4_join(B4.N, B4.B)
        elif name in ("COAGULA", "CONJUNCTIO", "RUBEDO"):
            self.belief = b4_join(self.belief, B4.B)
        elif name == "IFIX":
            self.belief = B4.B
        self.trace.append(f"{name}: {desc}  → belief={self.belief.value}")

    def opus(self) -> bool:
        """Perform the full Magnum Opus on the coordinate."""
        self.trace.clear()
        self.state = "VINIT"
        self.belief = B4.N

        for name, desc in ALCHEMICAL_SEQUENCE:
            self._alchemical_op(name, desc)

        # Final self-imscription of the coordinate
        self.trace.append("IMSCRIB: Stone records its own 12-primitive address")
        self.state = "IFIX"
        return self._verify_stone()

    def _verify_stone(self) -> bool:
        """The coordinate must be exactly the O_∞ pole after the work,
        and the belief must be stable B under further μ/δ."""
        is_stone = all(self.coord[p] == STONE_COORD[p] for p in self.coord)
        final_b = self.belief == B4.B
        stable = b4_dialetheic(self.belief) and b4_join(self.belief, B4.B) == B4.B
        return is_stone and final_b and stable

    def run(self) -> bool:
        print(f"{BD}{CY}╔══════════════════════════════════════════════════════════════════╗{R}")
        print(f"{BD}{CY}║{R}  {CRYSTAL}  PHILOSOPHER'S STONE ENGINE  {CRYSTAL}  (O_∞ coordinate)          {CY}║{R}")
        print(f"{BD}{CY}║{R}  {DM}The Stone is the address. The work is the bootstrap.{R}             {CY}║{R}")
        print(f"{BD}{CY}╚══════════════════════════════════════════════════════════════════╝{R}")
        print()

        print(f"  {WH}Canonical O_∞ coordinate (12-primitive):{R}")
        for p, v in self.coord.items():
            print(f"    {GD}{p:<6}{R} {v}")
        print()

        closure = self.opus()

        print(f"  {GD}Magnum Opus trace:{R}")
        for i, line in enumerate(self.trace):
            c = GN if closure else RD
            print(f"    {c}{i:02d}{R}  {line}")

        print()
        print(f"  {BD}Final belief{R}          : {_B4_COLOR[self.belief]}{self.belief.value}{R}")
        print(f"  {BD}Invariant{R}           : {MU} ∘ {DELTA} = id  at the Stone")
        print()

        if closure:
            print(f"  {GN}✓ CLOSURE: TRUE — the Stone is fixed at O_∞{R}")
            print(f"  {GN}✓ Solve et Coagula completed without loss of the coordinate{R}")
        else:
            print(f"  {RD}✗ CLOSURE: FALSE — the work failed to fix the Stone{R}")

        print(f"\n  {DM}{PHI}  Lapis philosophorum  {PHI}{R}")
        return closure


if __name__ == "__main__":
    engine = PhilosopherStoneEngine()
    ok = engine.run()
    sys.exit(0 if ok else 1)
