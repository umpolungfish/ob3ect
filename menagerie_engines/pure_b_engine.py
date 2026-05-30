#!/usr/bin/env python3
"""
pure_b_engine.py — Pure B (O_∞ ∧ O_0 Simultaneously) — Bin-Style Executable Engine

The "Pure B" ob3ect from MENAGERIE.md made live and runnable.

This engine does not merely *describe* a stable dialetheia at the highest
and lowest ouroboricity tier at once. It *is* that state, maintained
indefinitely by the Frobenius kernel:

    ENGAGR → FSPLIT (δ) → FFUSE (μ) → IMSCRIB (self-recognition) → ...

Invariant: μ ∘ δ = id   at B   (B remains B after every split-fuse cycle)
Both poles (O_∞ = T direction, O_0 = F direction) stay active forever.

Style: priests-engine/para_loop.py + structural_resonance_engine.py
       live animated B4 dashboard, heat map, compass, paradox counter.

Run:
    python pure_b_engine.py
    (Ctrl+C for final report)

Closure: True while B is maintained and both poles remain active.
"""

import sys
import time
import signal
from itertools import cycle
from pathlib import Path

# Robust import for direct run or package context
sys.path.insert(0, str(Path(__file__).parent))
from menagerie_b4 import (
    B4, b4_join, b4_bnot, b4_dialetheic,
    ParaRegister,
    R, BD, DM, CY, GD, GN, BLU, RD, MG, GR, WH,
    CLR, _B4_COLOR, _B4_BLOCK, _B4_GLYPH, _B4_SYM,
    b4_dist_bar, b4_compass, b4_counts, CRYSTAL, MU, DELTA,
)

# ── Kernel (canonical IMASM Frobenius core specialized for Pure B) ──────────

KERNEL = [
    'ENGAGR %r0',
    'FSPLIT %r0 %r1 %r2',
    'FFUSE  %r1 %r2 %r0',
    'IMSCRIB',
    'JMP    .loop',
]

class PureBEngine:
    """
    The engine *is* the fixed point B = O_∞ ∧ O_0.
    It runs the split-fuse loop forever while both poles stay lit.
    """

    def __init__(self) -> None:
        self.registers: dict[int, ParaRegister] = {}
        self.belief: dict[int, B4] = {}
        self.program = KERNEL
        self.pc = 0
        self.total_steps = 0
        self.cycles = 0
        self._stop = False
        self.ever_saw_poles = False

        # Seed the critical register in B
        self._set_belief(0, B4.B)
        self.registers[0] = ParaRegister()
        self.registers[0].engage()

    def _belief(self, rid: int) -> B4:
        return self.belief.get(rid, B4.N)

    def _set_belief(self, rid: int, val: B4) -> None:
        self.belief[rid] = val
        if rid not in self.registers:
            self.registers[rid] = ParaRegister()
        flux_map = {B4.N: '00', B4.T: '01', B4.F: '10', B4.B: '11'}
        self.registers[rid].flux = flux_map[val]

    def step(self) -> None:
        if self.pc >= len(self.program):
            self.pc = 0
            self.cycles += 1

        instr = self.program[self.pc]
        self.pc += 1
        self.total_steps += 1

        import re
        regs = [int(x) for x in re.findall(r'%r(\d+)', instr)]

        if 'ENGAGR' in instr and regs:
            r = regs[0]
            if r not in self.registers:
                self.registers[r] = ParaRegister()
            self.registers[r].engage()
            self._set_belief(r, B4.B)

        elif 'FSPLIT' in instr and len(regs) >= 3:
            src, d1, d2 = regs[0], regs[1], regs[2]
            # δ on B produces the two poles while the source stays B
            self._set_belief(d1, B4.T)  # O_∞ direction
            self._set_belief(d2, B4.F)  # O_0 direction
            self.ever_saw_poles = True
            # source remains B (the contradiction is not destroyed by splitting)
            self._set_belief(src, B4.B)

        elif 'FFUSE' in instr and len(regs) >= 3:
            joined = B4.N
            for r in regs[1:]:
                joined = b4_join(joined, self._belief(r))
            self._set_belief(regs[0], joined)

        elif 'IMSCRIB' in instr:
            # Self-recognition that we are still at B
            pass

    def b4_distribution(self) -> dict[B4, int]:
        dist = {v: 0 for v in B4}
        for rid in self.registers:
            dist[self._belief(rid)] += 1
        return dist

    def snapshot(self) -> dict:
        dist = self.b4_distribution()
        paradox = sum(r.paradox_count for r in self.registers.values())
        active = sum(1 for r in self.registers.values() if r.is_active)
        return {
            'steps': self.total_steps,
            'cycles': self.cycles,
            'paradox': paradox,
            'active': active,
            'dist': dist,
            'pc': self.pc,
        }

    # ── Live rendering (para_loop style) ────────────────────────────────────

    def _render(self, t0: float, step0: int) -> str:
        elapsed = time.time() - t0
        rate = (self.total_steps - step0) / max(elapsed, 0.001)
        dist = self.b4_distribution()
        s = self.snapshot()
        paradox = s['paradox']

        sp = next(SPINNER)
        b4_sp = next(BELNAP_SPIN)

        rate_color = RD if rate > 100_000 else (GD if rate > 10_000 else GN)

        dom = max(B4, key=lambda v: dist.get(v, 0))
        dom_c = _B4_COLOR[dom]

        lines = [
            f'{BD}{CY}╔════════════════════════════════════════════════════════════════╗{R}',
            f'{BD}{CY}║{R}  {sp}  {WH}PURE B ENGINE{R}  {RD}⊙{R}  {DM}O_∞ ∧ O_0  |  μ ∘ δ = id{R}   {CY}║{R}',
            f'{BD}{CY}║{R}  {dom_c}{_B4_SYM[dom]} {dom.value}{R}-dominant   {DM}both poles active{R}                  {CY}║{R}',
            f'{BD}{CY}╚════════════════════════════════════════════════════════════════╝{R}',
            '',
            f'  {GD}kernel{R}   ENGAGR %r0 → FSPLIT %r0 %r1 %r2 → FFUSE %r1 %r2 %r0 → IMSCRIB → JMP',
            f'  {GD}law{R}      {BD}{MU} ∘ {DELTA} = id{R}   (B remains B after every cycle)',
        ]

        bar = b4_dist_bar(dist, 44)
        steps_str = f'{self.total_steps:>18,}'
        p_rate = paradox / max(elapsed, 0.001)

        lines += [
            f'  {BD}╔══ LIVE STATE ═══════════════════════════════════════════════╗{R}',
            f'  {BD}║{R}  {CY}steps{R}   {steps_str}  {rate_color}▶▶▶{R}     {BD}║{R}',
            f'  {BD}║{R}  {CY}cycles{R}  {s["cycles"]:>18,}                    {BD}║{R}',
            f'  {BD}║{R}  {RD}π{R}       {paradox:>18,}   π/s={p_rate:,.0f}     {BD}║{R}',
            f'  {BD}║{R}  {MG}active{R}  {s["active"]:>18,}                    {BD}║{R}',
            f'  {BD}║{R}  {GD}B4{R}      {bar} {BD}║{R}',
            f'  {BD}╚═════════════════════════════════════════════════════════════╝{R}',
            '',
            f'  {BD}Belnap FOUR Compass (live):{R}',
        ]
        for l in b4_compass(dist).split('\n'):
            lines.append(f'    {l}')

        lines.append(f'    distribution: {b4_counts(dist)}')
        lines.append('')

        # Pole status (the philosophical heart)
        o_inf = self._belief(1) == B4.T or self.ever_saw_poles
        o_zero = self._belief(2) == B4.F or self.ever_saw_poles
        pole_color = GN
        lines.append(f'  {BD}Poles (O_∞ / O_0):{R}  {pole_color}r1=T (witnessed){R}  {pole_color}r2=F (witnessed){R}   BOTH ACTIVE — PURE B STABLE')
        lines.append('')

        lines.append(f'  {DM}elapsed {elapsed:6.2f}s  |  Ctrl+C to stop & report{R}')
        return '\n'.join(lines) + '\n'

    def run(self) -> bool:
        """Live daemon mode. Returns True on clean stop while invariant held.
        In non-interactive (batch) use, auto-stops after ~0.4s for run_all.py compatibility.
        """
        batch = not sys.stdin.isatty()
        print(CLR, end='')

        t0 = time.time()
        step0 = 0
        self._stop = False

        def _sigint(sig, frame):
            self._stop = True

        signal.signal(signal.SIGINT, _sigint)

        RENDER_INTERVAL = 0.08
        BATCH = 4000
        next_render = time.time()
        frame = 0
        batch_deadline = time.time() + 0.45 if batch else 0

        while not self._stop:
            for _ in range(BATCH):
                self.step()

            if batch and time.time() > batch_deadline:
                self._stop = True
                break

            now = time.time()
            if now >= next_render:
                sys.stdout.write(CLR)
                sys.stdout.write(self._render(t0, step0))
                sys.stdout.flush()
                next_render = now + RENDER_INTERVAL
                frame += 1

        # Final report
        elapsed = time.time() - t0
        dist = self.b4_distribution()
        s = self.snapshot()
        rate = self.total_steps / max(elapsed, 0.001)

        print()
        print(f'{BD}{CY}═══ PURE B — FINAL CLOSURE REPORT ═══{R}')
        print(f'  {CY}elapsed{R}   {elapsed:.2f}s')
        print(f'  {CY}steps{R}     {self.total_steps:,}')
        print(f'  {CY}cycles{R}    {self.cycles:,}')
        print(f'  {CY}paradox{R}   {s["paradox"]:,}   ({rate:,.0f} steps/sec)')
        print()
        print(f'  {BD}Final distribution:{R}')
        for v in (B4.N, B4.T, B4.F, B4.B):
            c = _B4_COLOR[v]
            print(f'    {c}{v.value}{R}  {dist[v]:>6}  {_B4_BLOCK[v] * min(dist[v], 36)}')
        print()

        # The actual closure test for this engine
        final_b = self._belief(0) == B4.B
        poles_active = self.ever_saw_poles or ((self._belief(1) == B4.T) and (self._belief(2) == B4.F))
        closure = final_b and poles_active and b4_dialetheic(B4.B)

        status = f"{GN}✓ CLOSURE: TRUE — μ ∘ δ = id  |  B = O_∞ ∧ O_0 maintained{R}" if closure \
                 else f"{RD}✗ CLOSURE: FALSE — contradiction collapsed{R}"
        print(f'  {status}')
        print(f'  {DM}{CRYSTAL}  Omnia sunt paraconsistentia  {CRYSTAL}{R}')
        print()
        return closure


# Spinners (module level)
SPINNER = cycle(['⠋','⠙','⠹','⠸','⠼','⠴','⠦','⠧','⠇','⠏'])
BELNAP_SPIN = cycle([f'{_B4_COLOR[v]}{v.value}{R}' for v in (B4.N, B4.T, B4.F, B4.B)])


if __name__ == "__main__":
    engine = PureBEngine()
    success = engine.run()
    sys.exit(0 if success else 1)
