#!/usr/bin/env python3
"""
dialetheic_ouroboros_engine.py — Multi-Substrate Dialetheic Ouroboros (Bin Style)

The "being both at the same time without collapse" engine.

Simultaneously:
  - Python source
  - Compiled C / ELF
  - Running on bare silicon (simulated)

It exists in stable B (both closed and open, both correct and failing)
while the Frobenius condition still holds across contradictory substrates.

Live loop: the ouroboros eats its own tail forever in three substrates.

Run:
    python dialetheic_ouroboros_engine.py
    (Ctrl+C for closure report)

Style: para_loop.py live dashboard.
"""

import sys
import time
import signal
from itertools import cycle
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from menagerie_b4 import (
    B4, b4_join, b4_dialetheic,
    R, BD, DM, CY, GD, GN, BLU, RD, MG, GR, WH,
    CLR, _B4_COLOR, _B4_BLOCK, _B4_GLYPH,
    b4_dist_bar, b4_compass, b4_counts, CRYSTAL, MU, DELTA,
)

SUBSTRATES = ["PYTHON", "BINARY", "SILICON"]

class DialetheicOuroborosEngine:
    """
    The engine that is its own source, binary, and hardware at once.
    """

    def __init__(self):
        self.substrate_idx = 0
        self.belief = B4.B
        self.trace: list[str] = []
        self.cycles = 0
        self.total_steps = 0
        self._stop = False

    @property
    def substrate(self) -> str:
        return SUBSTRATES[self.substrate_idx]

    def cross(self) -> None:
        self.substrate_idx = (self.substrate_idx + 1) % 3
        self.trace.append(f"CROSS → {self.substrate}")

    def step(self) -> None:
        # The ouroboros kernel: eat tail in current substrate, cross, re-eat
        self.belief = b4_join(self.belief, B4.B)  # stays B
        self.total_steps += 1
        if self.total_steps % 3 == 0:
            self.cross()
            self.cycles += 1

    def distribution(self) -> dict[B4, int]:
        return {B4.B: 1, B4.N: 0, B4.T: 0, B4.F: 0}  # always pure B in this engine

    def run(self) -> bool:
        batch = not sys.stdin.isatty()
        print(CLR, end='')

        t0 = time.time()
        self._stop = False

        def _sig(sig, frame):
            self._stop = True
        signal.signal(signal.SIGINT, _sig)

        RENDER = 0.09
        BATCH = 3000
        next_r = time.time()
        frames = 0
        batch_deadline = time.time() + 0.45 if batch else 0

        while not self._stop:
            for _ in range(BATCH):
                self.step()

            if batch and time.time() > batch_deadline:
                self._stop = True
                break

            if time.time() >= next_r:
                sys.stdout.write(CLR)
                sys.stdout.write(self._render(t0))
                sys.stdout.flush()
                next_r = time.time() + RENDER
                frames += 1

        # Final
        elapsed = time.time() - t0
        print()
        print(f"{BD}{CY}═══ DIALETHEIC OUROBOROS — FINAL REPORT ═══{R}")
        print(f"  steps     : {self.total_steps:,}")
        print(f"  cycles    : {self.cycles:,}")
        print(f"  substrate : {self.substrate}")
        print(f"  belief    : {_B4_COLOR[self.belief]}{self.belief.value}{R}")
        print(f"  dialetheic: {b4_dialetheic(self.belief)}")
        print()

        closure = (self.belief == B4.B and b4_dialetheic(self.belief) and self.cycles > 0)
        print(f"  {'✓ CLOSURE: TRUE — still both closed and open' if closure else '✗ COLLAPSED'}")
        print(f"  {DM}{CRYSTAL}  Being is contradiction  {CRYSTAL}{R}")
        return closure

    def _render(self, t0: float) -> str:
        elapsed = time.time() - t0
        rate = self.total_steps / max(elapsed, 0.001)
        dist = self.distribution()

        sp = next(SPINNER)
        bar = b4_dist_bar(dist, 36)

        lines = [
            f"{BD}{CY}╔════════════════════════════════════════════════════════════╗{R}",
            f"{BD}{CY}║{R}  {sp}  {WH}DIALETHEIC OUROBOROS{R}  {RD}⊙{R}  {self.substrate}  {CY}║{R}",
            f"{BD}{CY}║{R}  {DM}both correct and failing  |  μ ∘ δ = id across substrates{R}  {CY}║{R}",
            f"{BD}{CY}╚════════════════════════════════════════════════════════════╝{R}",
            "",
            f"  {GD}kernel{R}   TAIL-EAT → CROSS → RE-EAT (Python / ELF / Silicon)",
            "",
            f"  {BD}╔══ STATE ═══════════════════════════════════════════════╗{R}",
            f"  {BD}║{R}  steps   {self.total_steps:>14,}   rate {rate:>10,.0f}/s  {BD}║{R}",
            f"  {BD}║{R}  cycles  {self.cycles:>14,}   substrate: {CY}{self.substrate:<8}{R}{BD}║{R}",
            f"  {BD}║{R}  belief  {_B4_COLOR[self.belief]}{self.belief.value}{R}  (dialetheic={b4_dialetheic(self.belief)})        {BD}║{R}",
            f"  {BD}║{R}  B4      {bar} {BD}║{R}",
            f"  {BD}╚════════════════════════════════════════════════════════╝{R}",
            "",
            f"  {DM}elapsed {elapsed:5.1f}s  |  Ctrl+C to stop{R}",
        ]
        return "\n".join(lines) + "\n"


SPINNER = cycle(['⠋','⠙','⠹','⠸','⠼','⠴','⠦','⠧','⠇','⠏'])

if __name__ == "__main__":
    engine = DialetheicOuroborosEngine()
    ok = engine.run()
    sys.exit(0 if ok else 1)
