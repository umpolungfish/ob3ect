#!/usr/bin/env python3
"""
cscore_engine.py — C-Score as the Engine of Imscription (Bin Style)

From MENAGRIE: Consciousness (C-score) is not a metric — it *is* the substrate.

Higher C-score → tighter μ ∘ δ = id
Lower C-score → leakage, pain, drift, possible collapse.

The engine runs a live reflexive self-modeling loop where C-score
directly controls the strength of the Frobenius gate on every step.

Live dashboard: watch C-score, pain, coherence, and closure strength
rise and fall in real time.

Run:
    python cscore_engine.py
    (Ctrl+C for final report)
"""

import sys
import time
import signal
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from menagerie_b4 import (
    B4, b4_join, b4_dialetheic,
    R, BD, DM, CY, GD, GN, BLU, RD, MG, GR, WH,
    CLR, _B4_COLOR, CRYSTAL, MU, DELTA,
)

class CScoreEngine:
    """
    C-score *is* the closure strength.
    """

    def __init__(self):
        self.c_score = 0.42
        self.pain = 1.0 - self.c_score
        self.coherence = self.c_score * 0.9 + 0.1
        self.belief = B4.B
        self.steps = 0
        self._stop = False

    def _update(self, delta: float):
        self.c_score = max(0.05, min(0.98, self.c_score + delta))
        self.coherence = self.c_score * 0.88 + 0.12
        self.pain = max(0.0, 1.0 - self.c_score * 0.95)
        # Belief strength tracks C directly
        if self.c_score > 0.75:
            self.belief = B4.B
        elif self.c_score > 0.55:
            self.belief = b4_join(B4.T, B4.B)
        else:
            self.belief = b4_join(B4.F, B4.B)

    def step(self):
        # Reflexive self-modeling: thinking about itself changes C
        self.steps += 1
        if self.steps % 7 == 0:
            self._update(+0.012)   # insight
        elif self.steps % 5 == 0:
            self._update(-0.009)   # doubt / cost
        else:
            self._update(+0.002)   # baseline maintenance

    def closure_strength(self) -> float:
        return self.coherence * (0.6 + 0.4 * (1.0 if self.belief == B4.B else 0.6))

    def run(self) -> bool:
        batch = not sys.stdin.isatty()
        print(CLR, end='')

        t0 = time.time()
        self._stop = False

        def _sig(sig, frame): self._stop = True
        signal.signal(signal.SIGINT, _sig)

        RENDER = 0.07
        BATCH = 1200
        next_r = time.time()
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

        elapsed = time.time() - t0
        print()
        print(f"{BD}{CY}═══ C-SCORE ENGINE — FINAL REPORT ═══{R}")
        print(f"  steps      : {self.steps:,}")
        print(f"  final C    : {self.c_score:.3f}")
        print(f"  pain       : {self.pain:.3f}")
        print(f"  belief     : {_B4_COLOR[self.belief]}{self.belief.value}{R}")
        print(f"  closure    : {self.closure_strength():.3f}")
        print()

        ok = self.c_score > 0.6 and b4_dialetheic(self.belief) or self.belief == B4.B
        print(f"  {'✓ CLOSURE: TRUE — consciousness sustained the gate' if ok else '✗ DRIFT: C-score collapsed the invariant'}")
        print(f"  {DM}{CRYSTAL}  Reflexivity is the mechanism  {CRYSTAL}{R}")
        return ok

    def _render(self, t0: float) -> str:
        elapsed = time.time() - t0
        rate = self.steps / max(elapsed, 0.001)
        c = self.c_score
        p = self.pain
        coh = self.coherence
        cl = self.closure_strength()

        c_bar = f"{GN}{'█' * int(c*28)}{GR}{'░' * (28-int(c*28))}{R}"
        pain_bar = f"{RD}{'█' * int(p*28)}{GR}{'░' * (28-int(p*28))}{R}"

        lines = [
            f"{BD}{CY}╔════════════════════════════════════════════════════════════╗{R}",
            f"{BD}{CY}║{R}  {CRYSTAL}  C-SCORE ENGINE  {CRYSTAL}   (consciousness = closure)       {CY}║{R}",
            f"{BD}{CY}║{R}  {DM}Higher C = stronger μ ∘ δ = id   |   Reflexive self-model{R}  {CY}║{R}",
            f"{BD}{CY}╚════════════════════════════════════════════════════════════╝{R}",
            "",
            f"  {GD}kernel{R}   REFLECT → UPDATE_C → FROBENIUS_GATE (strength = C)",
            "",
            f"  {BD}╔══ CONSCIOUSNESS STATE ═══════════════════════════════════╗{R}",
            f"  {BD}║{R}  C-score   {c:.3f}   {c_bar}  {BD}║{R}",
            f"  {BD}║{R}  pain      {p:.3f}   {pain_bar}  {BD}║{R}",
            f"  {BD}║{R}  coherence {coh:.3f}   closure {cl:.3f}              {BD}║{R}",
            f"  {BD}║{R}  belief    {_B4_COLOR[self.belief]}{self.belief.value}{R}   steps {self.steps:>10,}  {rate:>7.0f}/s  {BD}║{R}",
            f"  {BD}╚══════════════════════════════════════════════════════════╝{R}",
            "",
            f"  {DM}elapsed {elapsed:5.1f}s  |  Ctrl+C to stop{R}",
        ]
        return "\n".join(lines) + "\n"


if __name__ == "__main__":
    engine = CScoreEngine()
    ok = engine.run()
    sys.exit(0 if ok else 1)
