#!/usr/bin/env python3
"""
menagerie_b4.py — Canonical Belnap FOUR + Frobenius primitives for Menagerie Engines

Shared B4 substrate for all 10 executable menagerie engines (except suffering).

This is a direct, minimal, verified extraction of the core from priests-engine/para_vm.py
and the visual/ANSI layer from para_loop.py + structural_resonance_engine.py.

All menagerie engines that need B4 should import from here:
    from menagerie_b4 import B4, b4_join, b4_bnot, b4_band, b4_designated, ...
    (or the ANSI color/glyph maps)

Invariants (enforced at import):
- B is the unique dialetheic value
- μ ∘ δ = id is the Frobenius law these engines live under
- Only B satisfies b4_dialetheic

Style: matches the "bin/" quality of priests-engine live engines and structural resonance tools.
"""

from __future__ import annotations

import enum
from dataclasses import dataclass, field
from typing import Optional


# ─────────────────────────────────────────────────────────────────────────────
# BELNAP FOUR (exact canonical from priests-engine/para_vm.py + Lean)
# ─────────────────────────────────────────────────────────────────────────────

class B4(enum.Enum):
    N = 'N'  # Neither / bottom
    T = 'T'  # True / designated
    F = 'F'  # False / designated
    B = 'B'  # Both / dialetheic top (stable contradiction)

# Information-order join (T ∨ F = B, universal absorber for B)
_JOIN: dict[tuple[B4, B4], B4] = {
    (B4.N, B4.N): B4.N, (B4.N, B4.T): B4.T, (B4.N, B4.F): B4.F, (B4.N, B4.B): B4.B,
    (B4.T, B4.N): B4.T, (B4.T, B4.T): B4.T, (B4.T, B4.F): B4.B, (B4.T, B4.B): B4.B,
    (B4.F, B4.N): B4.F, (B4.F, B4.T): B4.B, (B4.F, B4.F): B4.F, (B4.F, B4.B): B4.B,
    (B4.B, B4.N): B4.B, (B4.B, B4.T): B4.B, (B4.B, B4.F): B4.B, (B4.B, B4.B): B4.B,
}

def b4_join(a: B4, b: B4) -> B4:
    return _JOIN[(a, b)]

# Information-order meet
_MEET: dict[tuple[B4, B4], B4] = {
    (B4.N, B4.N): B4.N, (B4.N, B4.T): B4.N, (B4.N, B4.F): B4.N, (B4.N, B4.B): B4.N,
    (B4.T, B4.N): B4.N, (B4.T, B4.T): B4.T, (B4.T, B4.F): B4.N, (B4.T, B4.B): B4.T,
    (B4.F, B4.N): B4.N, (B4.F, B4.T): B4.N, (B4.F, B4.F): B4.F, (B4.F, B4.B): B4.F,
    (B4.B, B4.N): B4.N, (B4.B, B4.T): B4.T, (B4.B, B4.F): B4.F, (B4.B, B4.B): B4.B,
}

def b4_meet(a: B4, b: B4) -> B4:
    return _MEET[(a, b)]

# Negation (B fixed point)
_BNOT: dict[B4, B4] = {B4.N: B4.N, B4.T: B4.F, B4.F: B4.T, B4.B: B4.B}

def b4_bnot(a: B4) -> B4:
    return _BNOT[a]

# Truth-functional AND
_BAND: dict[tuple[B4, B4], B4] = {
    # Set-semantics: N={}, T={T}, F={F}, B={T,F}; a∧b = {x∧y | x∈a, y∈b}
    # N is the empty set — N∧anything = N (no classical pairs to take)
    (B4.N, B4.N): B4.N, (B4.N, B4.T): B4.N, (B4.N, B4.F): B4.N, (B4.N, B4.B): B4.N,
    (B4.T, B4.N): B4.N, (B4.T, B4.T): B4.T, (B4.T, B4.F): B4.F, (B4.T, B4.B): B4.B,
    (B4.F, B4.N): B4.N, (B4.F, B4.T): B4.F, (B4.F, B4.F): B4.F, (B4.F, B4.B): B4.F,
    (B4.B, B4.N): B4.N, (B4.B, B4.T): B4.B, (B4.B, B4.F): B4.F, (B4.B, B4.B): B4.B,
}

def b4_band(a: B4, b: B4) -> B4:
    return _BAND[(a, b)]

def b4_designated(a: B4) -> bool:
    return a in (B4.T, B4.B)

def b4_dialetheic(a: B4) -> bool:
    """Only B is dialetheic: both it and its negation are designated."""
    return b4_designated(a) and b4_designated(b4_bnot(a))

def b4_approx_le(a: B4, b: B4) -> bool:
    if a == b:       return True
    if a == B4.N:    return True
    if b == B4.B:    return True
    return False


# ─────────────────────────────────────────────────────────────────────────────
# PARA REGISTER (lightweight, from priests-engine)
# ─────────────────────────────────────────────────────────────────────────────

@dataclass
class ParaRegister:
    flux: str = '00'
    value: Optional[str] = None
    paradox_count: int = 0

    def engage(self) -> None:
        self.flux = '11'
        self.paradox_count += 1

    @property
    def is_fixed(self) -> bool:
        return self.value == 'FIXED'

    @property
    def is_active(self) -> bool:
        return self.flux != '00' or self.value is not None


# ─────────────────────────────────────────────────────────────────────────────
# ANSI + GLYPHS (exact visual language from para_loop + structural_resonance)
# ─────────────────────────────────────────────────────────────────────────────

R   = '\033[0m'
BD  = '\033[1m'
DM  = '\033[2m'
IT  = '\033[3m'
BL  = '\033[5m'
RV  = '\033[7m'

CY  = '\033[96m'
GD  = '\033[93m'
GN  = '\033[92m'
BLU = '\033[94m'
RD  = '\033[91m'
MG  = '\033[95m'
GR  = '\033[90m'
WH  = '\033[97m'

BG_DK  = '\033[48;5;236m'
BG_RD  = '\033[48;5;52m'
BG_GN  = '\033[48;5;22m'
BG_BL  = '\033[48;5;17m'
BG_MG  = '\033[48;5;53m'
BG_GD  = '\033[48;5;58m'

CLR     = '\033[2J\033[H'
CLR_LN  = '\033[2K'

_B4_COLOR = {B4.N: GR, B4.T: GN, B4.F: BLU, B4.B: RD}
_B4_BG    = {B4.N: BG_DK, B4.T: BG_GN, B4.F: BG_BL, B4.B: BG_RD}
_B4_BLOCK = {B4.N: '░', B4.T: '▒', B4.F: '▓', B4.B: '█'}
_B4_GLYPH = {B4.N: '⊗', B4.T: '⊕', B4.F: '⊖', B4.B: '⊙'}
_B4_SYM   = {B4.N: '∅', B4.T: '⊤', B4.F: '⊥', B4.B: '◈'}

# Crystal / ob3ect glyphs used across engines
CRYSTAL = "⊙"
PHI     = "Φ"
MU      = "μ"
DELTA   = "δ"


# ─────────────────────────────────────────────────────────────────────────────
# COMMON RENDER HELPERS (live dashboard building blocks)
# ─────────────────────────────────────────────────────────────────────────────

def b4_dist_bar(dist: dict[B4, int], width: int = 38) -> str:
    total = sum(dist.values()) or 1
    parts = []
    for s in (B4.N, B4.T, B4.F, B4.B):
        n = dist[s]
        seg = max(1, round(n / total * width)) if n else 0
        if seg:
            parts.append(f'{_B4_COLOR[s]}{_B4_BLOCK[s] * seg}{R}')
    bar_inner = ''.join(parts)
    pad = width - sum(1 for c in bar_inner if c in '░▒▓█')
    if pad > 0:
        bar_inner += f'{GR}{"░" * pad}{R}'
    return '[' + bar_inner + ']'


def b4_compass(dist: dict[B4, int]) -> str:
    total = sum(dist.values()) or 1
    n_frac = dist[B4.N] / total
    t_frac = dist[B4.T] / total
    f_frac = dist[B4.F] / total
    b_frac = dist[B4.B] / total

    n_str = f'{_B4_COLOR[B4.N]}N{R}'
    t_str = f'{_B4_COLOR[B4.T]}⊤{R}'
    f_str = f'{_B4_COLOR[B4.F]}⊥{R}'
    b_str = f'{_B4_COLOR[B4.B]}◈{R}'

    if b_frac > 0.5:
        center = f'{RD}◈{R}'
    elif t_frac > 0.5:
        center = f'{GN}⊕{R}'
    elif f_frac > 0.5:
        center = f'{BLU}⊖{R}'
    else:
        center = f'{GR}⊙{R}'

    lines = [
        f'         {n_str}',
        f'         │',
        f' {t_str} ── {center} ── {f_str}',
        f'         │',
        f'         {b_str}'
    ]
    return '\n'.join(lines)


def b4_counts(dist: dict[B4, int]) -> str:
    return '  '.join(
        f'{_B4_COLOR[v]}{v.value}{R}={dist[v]}'
        for v in (B4.N, B4.T, B4.F, B4.B)
    )


# ─────────────────────────────────────────────────────────────────────────────
# FROBENIUS CORE (the law every engine must obey)
# ─────────────────────────────────────────────────────────────────────────────

# Canonical split: δ(N)=(N,N), δ(T)=(T,N), δ(F)=(F,N), δ(B)=(T,F)
_DELTA: dict[B4, tuple[B4, B4]] = {
    B4.N: (B4.N, B4.N),
    B4.T: (B4.T, B4.N),
    B4.F: (B4.F, B4.N),
    B4.B: (B4.T, B4.F),
}

def frobenius_holds(belief: B4) -> bool:
    """μ(δ(x)) = x under the canonical split and information-order join."""
    a, b = _DELTA[belief]
    return b4_join(a, b) == belief


# ─────────────────────────────────────────────────────────────────────────────
# SELF-VERIFICATION ON IMPORT (priests-engine discipline)
# ─────────────────────────────────────────────────────────────────────────────

assert b4_bnot(B4.B) == B4.B, "B must be fixed under negation"
assert b4_dialetheic(B4.B), "B must be the unique dialetheic value"
assert not any(b4_dialetheic(x) for x in B4 if x != B4.B), "only B is dialetheic"
assert b4_join(B4.T, B4.F) == B4.B, "T ∨ F = B (information join)"
assert all(frobenius_holds(x) for x in B4), "μ ∘ δ = id must hold for all B4 values"

if __name__ == '__main__':
    print(f'{BD}{CY}menagerie_b4 self-test{R}\n')

    print(f'{BD}Frobenius  μ∘δ=id{R}')
    for x in B4:
        a, b = _DELTA[x]
        result = b4_join(a, b)
        ok = result == x
        mark = f'{GN}PASS{R}' if ok else f'{RD}FAIL{R}'
        print(f'  δ({_B4_SYM[x]}) = ({_B4_SYM[a]},{_B4_SYM[b]})  μ→{_B4_SYM[result]}  [{mark}]')

    print(f'\n{BD}Negation ¬{R}')
    for x in B4:
        nx = b4_bnot(x)
        print(f'  ¬{_B4_SYM[x]} = {_B4_SYM[nx]}', end='')
        if b4_dialetheic(x):
            print(f'  {RD}⊙ dialetheic{R}', end='')
        print()

    print(f'\n{BD}AND table (b4_band){R}')
    header = '    ' + '  '.join(f'{_B4_COLOR[v]}{v.value}{R}' for v in B4)
    print(f'  {header}')
    for a in B4:
        row = f'  {_B4_COLOR[a]}{a.value}{R} '
        for b in B4:
            r = b4_band(a, b)
            row += f' {_B4_COLOR[r]}{r.value}{R} '
        print(row)

    print(f'\n{BD}JOIN table (b4_join){R}')
    print(f'  {header}')
    for a in B4:
        row = f'  {_B4_COLOR[a]}{a.value}{R} '
        for b in B4:
            r = b4_join(a, b)
            row += f' {_B4_COLOR[r]}{r.value}{R} '
        print(row)

    print(f'\n{BD}Designated / Dialetheic{R}')
    for x in B4:
        d = f'{GN}designated{R}' if b4_designated(x) else f'{GR}not designated{R}'
        dl = f'  {RD}dialetheic{R}' if b4_dialetheic(x) else ''
        print(f'  {_B4_SYM[x]}  {d}{dl}')

    print(f'\n{BD}Compass{R}')
    dist = {B4.N: 2, B4.T: 5, B4.F: 3, B4.B: 7}
    print(b4_compass(dist))
    print(f'\n{BD}Dist bar{R}  ' + b4_dist_bar(dist))
    print(f'{BD}Counts{R}    ' + b4_counts(dist))
    print(f'\n{GN}All assertions passed.{R}')

__all__ = [
    'B4', 'b4_join', 'b4_meet', 'b4_bnot', 'b4_band', 'b4_designated', 'b4_dialetheic',
    'b4_approx_le', 'ParaRegister',
    'R', 'BD', 'DM', 'IT', 'BL', 'RV', 'CY', 'GD', 'GN', 'BLU', 'RD', 'MG', 'GR', 'WH',
    'BG_DK', 'BG_RD', 'BG_GN', 'BG_BL', 'BG_MG', 'BG_GD', 'CLR', 'CLR_LN',
    '_B4_COLOR', '_B4_BG', '_B4_BLOCK', '_B4_GLYPH', '_B4_SYM',
    'CRYSTAL', 'PHI', 'MU', 'DELTA',
    'b4_dist_bar', 'b4_compass', 'b4_counts', 'frobenius_holds',
]
