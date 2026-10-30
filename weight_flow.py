#!/usr/bin/env python3
"""Weight flow — where the weight moves, which the union throws away.

The trilattice machine holds each open fork as a Set[str] and closes it with
`reg | frozenset(closed)`. Union is idempotent and commutative, so by the time
a walk finishes it knows WHICH base values were touched and nothing else: not
how many times, not by which arm, not whether a value reached the end or was
cleared and re-emitted on the way. Every arm's values survive; no arm's
contribution does.

This records the contribution. It subclasses the machine rather than
reimplementing it, so the transition rules stay the ones the pipeline uses, and
only the bookkeeping is added:

  DEPOSIT   a touch puts weight into the register and into the innermost frame
  CLEAR     AREV and VINIT empty the REGISTER; open frames are untouched, so
            weight already banked in a frame survives a clear that destroys
            everything held in the open
  FUSE      FFUSE3 pops a frame and re-emits its weight into the register, and
            into the enclosing frame when nested

Which makes the interesting quantity visible: weight banked before a clear
comes back at the fuse, weight left in the register does not. The same word cut
at a different phase banks different amounts before its clears, and that is
what moves the landing register around the orbit.

Deterministic. No model, no network.

    python weight_flow.py "⊢⊙=>◇+×<⊞●×¬⊣"
    python weight_flow.py "⊢⊙=>◇+×<⊞●×¬⊣" --orbit
"""
from __future__ import annotations

import argparse
import sys
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent / "digital"))
from imasm16_3_core import (  # noqa: E402
    GLYPH, IMASM16_3_Machine, VINIT, AREV, AFWD, IMSCRIB, IFIX, FSPLIT3, FFUSE3,
    reg_name,
)
from lattice_cycler import parse_word, render  # noqa: E402


class WeightedMachine(IMASM16_3_Machine):
    """The machine, plus a ledger of every movement of weight."""

    def __init__(self):
        super().__init__()
        self.ledger = []            # (step, glyph, kind, detail)
        self.reg_weight = Counter()      # weight currently held in the open
        self.frame_weight = []           # parallel to split_stack
        self._step = 0

    # ── deposits ────────────────────────────────────────────────────────────
    def _touch(self, values):
        depth = len(self.split_stack)
        super()._touch(values)
        for v in values:
            self.reg_weight[v] += 1
            if self.frame_weight:
                self.frame_weight[-1][v] += 1
        self.ledger.append((self._step, None, "DEPOSIT",
                            {"values": sorted(values), "depth": depth}))

    # ── the rest ────────────────────────────────────────────────────────────
    def transition(self, token):
        self._step += 1
        before = Counter(self.reg_weight)

        # The base machine returns immediately once IFIX has fired: everything
        # but IFIX and IMSCRIB is inert after fixation. Recording a movement
        # here without the same guard reports clears, opens and fuses that the
        # machine never performed.
        if self.fixed and token not in (IFIX, IMSCRIB):
            self.ledger.append((self._step, GLYPH.get(token), "INERT",
                                {"after": "IFIX"}))
            return super().transition(token)

        if token == FSPLIT3:
            self.frame_weight.append(Counter())
            self.ledger.append((self._step, GLYPH.get(token), "OPEN",
                                {"depth": len(self.frame_weight)}))
        elif token == FFUSE3 and self.frame_weight:
            # The base machine fuses with `reg | closed`. Union is idempotent, so
            # a value already in the register is unaffected by being re-emitted.
            # The faithful lift of OR to weights is MAX, not sum: adding would
            # count every deposit twice, once when it landed in the register and
            # again when its frame closed. Under max the fuse RESTORES what a
            # clear destroyed and leaves everything else alone, and at weights
            # 0 and 1 the whole thing reduces to the set semantics exactly.
            closed = self.frame_weight.pop()
            restored = {}
            for v, w in closed.items():
                if w > self.reg_weight[v]:
                    restored[v] = w - self.reg_weight[v]
                    self.reg_weight[v] = w
                if self.frame_weight:
                    self.frame_weight[-1][v] = max(self.frame_weight[-1][v], w)
            self.ledger.append((self._step, GLYPH.get(token), "FUSE",
                                {"emitted": dict(closed),
                                 "restored": restored,
                                 "into_depth": len(self.frame_weight)}))
        elif token in (AFWD, IMSCRIB) and not self.reg:
            # These do not deposit. `if not self.reg: self.reg = frozenset('T')`
            # puts T in the register directly, so a walk can land in T carrying
            # no weight at all. Seeded, not carried, and the two look identical
            # in the final register unless the ledger separates them.
            self.ledger.append((self._step, GLYPH.get(token), "SEED",
                                {"value": "T"}))
        elif token in (AREV, VINIT):
            banked = sum(sum(f.values()) for f in self.frame_weight)
            self.ledger.append((self._step, GLYPH.get(token), "CLEAR",
                                {"lost": dict(before), "banked": banked}))
            self.reg_weight = Counter()
            if token == VINIT:
                self.frame_weight = []

        return super().transition(token)


def run(steps):
    m = WeightedMachine()
    m.reset()
    m.reg_weight = Counter()
    m.frame_weight = []
    m.ledger = []
    m._step = 0
    for tok in steps:
        m.transition(tok)
    return m


def report(steps) -> str:
    m = run(steps)
    lines = [f"word   : {render(steps)}",
             f"final  : {reg_name(m.reg)}",
             "",
             "  movement:"]
    for step, glyph, kind, d in m.ledger:
        g = glyph or GLYPH.get(steps[step - 1], "?")
        if kind == "DEPOSIT":
            lines.append(f"   {step:>3} {g}  deposit {'+'.join(d['values'])}"
                         f"   into depth {d['depth']}")
        elif kind == "OPEN":
            lines.append(f"   {step:>3} {g}  open frame at depth {d['depth']}")
        elif kind == "FUSE":
            emitted = ", ".join(f"{v}×{w}" for v, w in sorted(d["emitted"].items()))
            rest = ", ".join(f"{v}×{w}" for v, w in sorted(d["restored"].items()))
            lines.append(f"   {step:>3} {g}  fuse holds {emitted or 'nothing'}"
                         f"   restores {rest or 'nothing'}   into depth {d['into_depth']}")
        elif kind == "INERT":
            lines.append(f"   {step:>3} {g}  inert, the register is fixed")
        elif kind == "SEED":
            lines.append(f"   {step:>3} {g}  SEED {d['value']} into an empty "
                         f"register, no weight")
        elif kind == "CLEAR":
            lost = ", ".join(f"{v}×{w}" for v, w in sorted(d["lost"].items()))
            lines.append(f"   {step:>3} {g}  CLEAR loses {lost or 'nothing'}"
                         f"   ({d['banked']} still banked in frames)")

    lines.append("")
    lines.append(f"  weight surviving in the register: "
                 + (", ".join(f"{v}×{w}" for v, w in sorted(m.reg_weight.items()))
                    or "none"))
    stranded = sum(sum(f.values()) for f in m.frame_weight)
    if stranded:
        lines.append(f"  weight stranded in frames never fused: {stranded}")
    total_dep = sum(1 for _, _, k, _ in m.ledger if k == "DEPOSIT")
    lost = sum(sum(d["lost"].values()) for _, _, k, d in m.ledger if k == "CLEAR")
    lines.append(f"  deposits: {total_dep}   cleared from register: {lost}")
    return "\n".join(lines)


def orbit_report(steps) -> str:
    """Where the weight goes at every cut."""
    n = len(steps)
    lines = [f"  {'k':>3}  {'final':<6} {'banked→fused':<13} {'cleared':<8} "
             f"{'surviving':<20} word"]
    for k in range(n):
        rot = steps[k:] + steps[:k]
        m = run(rot)
        fused = sum(sum(d["restored"].values())
                    for _, _, kind, d in m.ledger if kind == "FUSE")
        cleared = sum(sum(d["lost"].values())
                      for _, _, kind, d in m.ledger if kind == "CLEAR")
        seeded = sum(1 for _, _, kind, _ in m.ledger if kind == "SEED")
        surv = ", ".join(f"{v}×{w}" for v, w in sorted(m.reg_weight.items()))
        if not surv:
            surv = f"seeded ×{seeded}" if seeded else "-"
        lines.append(f"  {k:>3}  {reg_name(m.reg):<6} {fused:<9} {cleared:<8} "
                     f"{surv:<20} {render(rot)}")
    return "\n".join(lines)


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("word", help="IMASM word as glyphs")
    ap.add_argument("--orbit", action="store_true",
                    help="weight accounting at every rotation")
    args = ap.parse_args()

    steps, unknown = parse_word(args.word)
    if unknown:
        ap.error(f"not in the alphabet: {' '.join(unknown)}")
    print(report(steps))
    if args.orbit:
        print()
        print("weight by cut:")
        print(orbit_report(steps))


if __name__ == "__main__":
    main()
