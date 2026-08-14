from core import as_opcode
#!/usr/bin/env python3
"""Regenerate all B&W pen wiring diagrams for every ob3ect in digital/.

Usage: python3 regenerate_svgs.py [--force]
Reads each ob3ect's JSON file, extracts IMASM opcodes from phase_1,
runs the SIXTEEN_3 trilattice trace, and renders the pen SVG diagram.
"""

import json
import os
import sys
from pathlib import Path

DIGITAL_DIR = Path(__file__).resolve().parent / "digital"
IMSCRIBR_DIR = Path(__file__).resolve().parents[1] / "IMSCRIBr"

sys.path.insert(0, str(IMSCRIBR_DIR))
sys.path.insert(0, str(DIGITAL_DIR))

from tokens import Token
from wiring import imscr_wiring
from symbolic_diagram import render_wiring_pen_svg
from digital.imasm16_3_core import (
    IMASM16_3_Machine, Sequence16_3Trace,
)

# 12-opcode → 16_3 opcode mapping (same as auto.py)
_IMASM12_TO_16_3 = {
    "VINIT":   "VINIT",
    "TANCH":   "TANCH",
    "AFWD":    "AFWD",
    "AREV":    "AREV",
    "CLINK":   "CLINK",
    "IMSCRIB": "IMSCRIB",
    "FSPLIT":  "FSPLIT3",
    "FFUSE":   "FFUSE3",
    "EVALT":   "EVALT",
    "EVALF":   "EVALF",
    "ENGAGR":  "EVALI",
    "IFIX":    "IFIX",
}


def _compute_16_3(ops_12):
    """Run the SIXTEEN_3 trilattice trace and return the JSON report."""
    try:
        ops_16 = [_IMASM12_TO_16_3.get(op, "IMSCRIB") for op in ops_12]
        mach = IMASM16_3_Machine()
        trace = Sequence16_3Trace(ops_16, machine=mach)
        trace.run()
        return trace.json_report()
    except Exception as e:
        print(f"    16_3 trace failed: {e}")
        return None


def regenerate_one(json_path: Path, force: bool = False):
    """Regenerate the pen SVG for a single ob3ect."""
    slug = json_path.parent.name
    pen_path = json_path.parent / f"{slug}_diagram_pen.svg"

    if pen_path.exists() and not force:
        print(f"  SKIP (exists): {pen_path.name}")
        return

    with open(json_path) as f:
        data = json.load(f)

    # Extract opcodes from phase_4 (the actual trace), falling back to phase_1
    # (the opcode catalog) only when no phase_4 exists. Phase_1 is the same
    # canonical 12-opcode set for every ob3ect — it is the palette, not the painting.
    phases = data.get("phases", {})
    ph4 = phases.get("phase_4", {})
    steps = ph4.get("steps", [])
    if steps:
        ops_12 = [as_opcode(s["opcode"]) for s in steps]
        print(f"    (extracted {len(ops_12)} opcodes from phase_4)")
    else:
        phase1 = phases.get("phase_1", {})
        if not phase1:
            print(f"  SKIP (no phase_4 and no phase_1): {slug}")
            return
        ops_12 = [as_opcode(k) for k in phase1.keys()]
        print(f"    (fallback: extracted {len(ops_12)} opcodes from phase_1 keys)")

    if not ops_12:
        print(f"  SKIP (no opcodes): {slug}")
        return

    # Build token list
    token_list = []
    for op in ops_12:
        try:
            token_list.append(Token[op])
        except KeyError:
            print(f"  WARN: unknown opcode {op!r} in {slug} — skipping")
            return

    # Generate wiring graph
    try:
        graph = imscr_wiring(tuple(token_list))
    except Exception as e:
        print(f"  FAIL (wiring): {slug} — {e}")
        return

    graph.name = data.get("name", slug).replace(" ", "_")[:40]
    graph.description = ""

    # Compute trilattice data
    tri_data = _compute_16_3(ops_12)

    # Render pen SVG
    try:
        svg = render_wiring_pen_svg(
            graph, graph.name, "", graph.description,
            trilattice_data=tri_data
        )
        svg.save(pen_path)
        word = (tri_data or {}).get("glyph_word", "?")
        print(f"  OK: {pen_path.name}  [{word}]")
    except Exception as e:
        print(f"  FAIL (render): {slug} — {e}")


def main():
    force = "--force" in sys.argv

    # Find all JSON ob3ect files
    json_files = sorted(DIGITAL_DIR.glob("*/*_ob3ect.json"))
    print(f"Found {len(json_files)} ob3ect JSON files in {DIGITAL_DIR}")
    print(f"{'Force' if force else 'Skip-existing'} mode. Regenerating pen SVGs...\n")

    ok = fail = skip = 0
    for jf in json_files:
        print(f"[{jf.parent.name}]")
        try:
            regenerate_one(jf, force=force)
            ok += 1
        except Exception as e:
            print(f"  FAIL: {e}")
            fail += 1

    print(f"\nDone: {ok} OK, {fail} FAIL, {skip} SKIP")


if __name__ == "__main__":
    main()
