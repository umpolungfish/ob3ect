#!/usr/bin/env python3
"""Lattice cycler — walk a word around its ROTAT orbit and report what moves.

A word is a ring and ROTAT is the cyclic shift, so every rotation is the same
object. The audits already say which readouts are invariant under that shift
and which are not, and across every object seen so far the answer is the same:
the verdict, the closed-walk flag and the topology class hold for the whole
orbit, and the FINAL REGISTER is the one thing that moves.

That makes the phase the only handle on where a word comes to rest. This walks
the orbit and prints the map, so the handle can be read rather than guessed:

    k -> final register

and, with --insert, what happens when a token is placed at every position of
every rotation, which is the same question asked of an operation rather than of
a word. A ring has no end, so appending needs a seam and the seam is the phase;
inserting at index i means a different thing at every k. The pipeline makes
that choice and then forgets it. This records it.

Deterministic. No model, no network, no kernel.

    python lattice_cycler.py "⊢⊙=>◇+×<⊞●×¬⊣"
    python lattice_cycler.py "⊢⊙=>◇+×<⊞●×¬⊣" --insert ⊞
    python lattice_cycler.py --entry <ob3ect.json>
"""
from __future__ import annotations

import argparse
import json
import sys
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent / "digital"))
from imasm16_3_core import (  # noqa: E402
    GLYPH, NAME_FROM_GLYPH, IMASM16_3_Machine, Sequence16_3Trace, reg_name,
)


# The 12-op alphabet writes the split and the fuse as ◇ and ●; the trilattice
# core writes them as ∈ and ∋. A word copied from a bootstrap report is in the
# first, the machine reads the second. Dropping the unrecognised character
# silently is what a tool built to catch that must not do.
_ALIAS = {"◇": "∈", "●": "∋", "⊗": "∈", "⊕": "∋"}


def parse_word(text: str):
    """Glyphs to token names. Anything outside the alphabet is returned, not eaten."""
    out, unknown = [], []
    for ch in text:
        if ch.isspace():
            continue
        g = _ALIAS.get(ch, ch)
        tok = NAME_FROM_GLYPH.get(g)
        if tok is None:
            unknown.append(ch)
        else:
            out.append(tok)
    return out, unknown


def render(steps) -> str:
    return "".join(GLYPH.get(t, "?") for t in steps)


def walk(steps) -> dict:
    """One pass of the trilattice machine over `steps`."""
    trace = Sequence16_3Trace(list(steps), machine=IMASM16_3_Machine())
    final = trace.run()
    verdict, msg = trace.tri_ancestral_verdict()
    rep = trace.json_report()
    return {
        "final_register": reg_name(final),
        "verdict": verdict,
        "closed_walk": rep.get("closed_walk"),
        "message": msg,
    }


def orbit(steps):
    """Every rotation, in order, with its readouts."""
    n = len(steps)
    rows = []
    for k in range(n):
        rot = steps[k:] + steps[:k]
        r = walk(rot)
        r["k"] = k
        r["word"] = render(rot)
        rows.append(r)
    return rows


def report_orbit(steps) -> str:
    rows = orbit(steps)
    n = len(rows)
    lines = [
        f"word    : {render(steps)}",
        f"length  : {n}   (orbit size {n})",
        "",
        f"  {'k':>3}  {'final':<6} {'verdict':<8} {'closed':<7} word",
    ]
    for r in rows:
        lines.append(f"  {r['k']:>3}  {r['final_register']:<6} {r['verdict']:<8} "
                     f"{str(r['closed_walk']):<7} {r['word']}")

    lines.append("")
    for field in ("verdict", "closed_walk", "final_register"):
        vals = {r[field] for r in rows}
        if len(vals) == 1:
            lines.append(f"  {field:<15} INVARIANT under ROTAT  ({rows[0][field]})")
        else:
            counts = Counter(r[field] for r in rows)
            spread = "  ".join(f"{v}×{c}" for v, c in counts.most_common())
            lines.append(f"  {field:<15} PHASE-BEARING          {spread}")

    # The map the whole thing exists for: which cut lands you where.
    landings = {}
    for r in rows:
        landings.setdefault(r["final_register"], []).append(r["k"])
    lines.append("")
    lines.append("  landing register by cut:")
    for reg, ks in sorted(landings.items()):
        lines.append(f"    {reg:<6} at k = {', '.join(str(k) for k in ks)}")
    return "\n".join(lines)


def report_insertions(steps, glyph: str) -> str:
    """Place one token at every position of every rotation.

    Appending is insertion at the seam, so the seam is a column of this table
    and not a separate operation. What the table shows is whether the placement
    of a token is a phase question or a position question: if a row is constant
    the rotation does not matter, if a column is constant the index does not.
    """
    tok = NAME_FROM_GLYPH.get(glyph)
    if tok is None:
        return f"'{glyph}' is not in the alphabet: {' '.join(GLYPH.values())}"
    n = len(steps)
    grid = []
    for k in range(n):
        rot = steps[k:] + steps[:k]
        row = []
        for i in range(len(rot) + 1):
            placed = rot[:i] + [tok] + rot[i:]
            row.append(walk(placed)["final_register"])
        grid.append(row)

    width = max(len(c) for row in grid for c in row) + 1
    head = "     " + "".join(f"{i:>{width}}" for i in range(n + 1))
    lines = [f"inserting {glyph} ({tok}) at every index of every rotation",
             "", head]
    for k, row in enumerate(grid):
        lines.append(f"  k={k:<2}" + "".join(f"{c:>{width}}" for c in row))

    lines.append("")
    rows_const = [k for k, row in enumerate(grid) if len(set(row)) == 1]
    cols = list(zip(*grid))
    cols_const = [i for i, col in enumerate(cols) if len(set(col)) == 1]
    lines.append(f"  rotations where the index makes no difference : "
                 f"{rows_const if rows_const else 'none'}")
    lines.append(f"  indices where the rotation makes no difference: "
                 f"{cols_const if cols_const else 'none'}")
    distinct = {c for row in grid for c in row}
    lines.append(f"  registers reachable by placing one {glyph}: "
                 f"{', '.join(sorted(distinct))}")
    return "\n".join(lines)


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("word", nargs="?", help="IMASM word as glyphs")
    ap.add_argument("--entry", metavar="PATH",
                    help="read the word from an ob3ect JSON instead")
    ap.add_argument("--insert", metavar="GLYPH",
                    help="also place this token at every index of every rotation")
    args = ap.parse_args()

    if args.entry:
        data = json.loads(Path(args.entry).read_text(encoding="utf-8"))
        seq = (data.get("phases", {}).get("phase_4", {}) or {}).get("steps", [])
        steps = [s["opcode"] for s in seq]
        if not steps:
            ap.error(f"no bootstrap sequence found in {args.entry}")
    elif args.word:
        steps, unknown = parse_word(args.word)
        if unknown:
            ap.error(f"not in the alphabet: {' '.join(unknown)}\n"
                     f"known: {' '.join(GLYPH.values())}  "
                     f"(◇ and ● are accepted for ∈ and ∋)")
        if not steps:
            ap.error("no IMASM glyphs in that word")
    else:
        ap.error("give a word, or --entry PATH")

    print(report_orbit(steps))
    if args.insert:
        print()
        print(report_insertions(steps, args.insert))


if __name__ == "__main__":
    main()
