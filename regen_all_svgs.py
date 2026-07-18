#!/usr/bin/env python3
"""Regenerate ALL ob3ect SVGs — both naming patterns (_diagram and _ob3ect_diagram),
color + pen, plus drawdoc/nodraw copies, plus canonicals and novels."""
import json, sys, shutil
from pathlib import Path

OB3ECT = Path(__file__).resolve().parent
IMSCRIB = OB3ECT.parent / "IMSCRIBr"
if str(IMSCRIB) not in sys.path:
    sys.path.insert(0, str(IMSCRIB))
if str(OB3ECT) not in sys.path:
    sys.path.insert(0, str(OB3ECT))

from tokens import Token
from wiring import imscr_wiring
from symbolic_diagram import render_wiring_svg_v3, generate_all_diagrams_v3
from proof_scaffold import ouroboricity_tier

# 16_3 trilattice trace for glyph words
try:
    from digital.imasm16_3_core import (
        IMASM16_3_Machine, Sequence16_3Trace,
    )
    _IMASM12_TO_16_3 = {
        "VINIT": "VINIT", "TANCH": "TANCH", "AFWD": "AFWD", "AREV": "AREV",
        "CLINK": "CLINK", "IMSCRIB": "IMSCRIB", "FSPLIT": "FSPLIT3", "FFUSE": "FFUSE3",
        "EVALT": "EVALT", "EVALF": "EVALF", "ENGAGR": "EVALI", "IFIX": "IFIX",
    }
    _HAS_16_3 = True
except ImportError:
    _HAS_16_3 = False


def _compute_trilattice(ops):
    if not _HAS_16_3:
        return None
    try:
        ops_16 = [_IMASM12_TO_16_3.get(op, "IMSCRIB") for op in ops]
        mach = IMASM16_3_Machine()
        trace = Sequence16_3Trace(ops_16, machine=mach)
        trace.run()
        return trace.json_report()
    except Exception:
        return None

DIGITAL = OB3ECT / "digital"

def extract_opcodes(artifact: dict):
    bs = artifact.get("bootstrap_sequence")
    if bs and isinstance(bs, dict) and "steps" in bs:
        return [s["opcode"] for s in bs["steps"]]
    ph4 = artifact.get("phases", {}).get("phase_4", {})
    steps = ph4.get("steps", [])
    if steps:
        return [s["opcode"] for s in steps]
    ph1 = artifact.get("phases", {}).get("phase_1", {})
    if ph1:
        return list(ph1.keys())
    return []

def regen_one(jp, name, graph, tier, desc, ops):
    """Regenerate all SVG variants for one ob3ect."""
    paths_written = []
    base = jp.parent
    
    # Compute trilattice data for glyph word
    tri_data = _compute_trilattice(ops)
    
    # Pattern 1: {name}_diagram.svg / {name}_diagram_pen.svg
    for suffix, pen in [("_diagram.svg", False), ("_diagram_pen.svg", True)]:
        svg = render_wiring_svg_v3(graph, name, tier, desc, "", pen_mode=pen, trilattice_data=tri_data)
        p = base / f"{name}{suffix}"
        svg.save(p)
        paths_written.append(p)
    
    # Pattern 2: {name}_ob3ect_diagram.svg / {name}_ob3ect_diagram_pen.svg
    for suffix, pen in [("_ob3ect_diagram.svg", False), ("_ob3ect_diagram_pen.svg", True)]:
        svg = render_wiring_svg_v3(graph, name, tier, desc, "", pen_mode=pen, trilattice_data=tri_data)
        p = base / f"{name}{suffix}"
        svg.save(p)
        paths_written.append(p)
    
    # drawdoc/nodraw copies
    for subdir in ["drawdoc", "nodraw"]:
        sd = base / subdir
        if sd.exists():
            for p in paths_written:
                dst = sd / p.name
                if dst.exists() or (sd / p.name.replace(f"{name}_", f"{name}_")).exists():
                    shutil.copy2(p, sd / p.name)
    
    return len(paths_written)

def regen_digital():
    stats = {"ok": 0, "skip": 0, "fail": 0, "files": 0}
    jsons = sorted(DIGITAL.glob("*/*_ob3ect.json"))
    print(f"Digital ob3ect JSONs: {len(jsons)}")
    for i, jp in enumerate(jsons):
        try:
            with open(jp) as f:
                art = json.load(f)
        except:
            stats["fail"] += 1
            continue
        ops = extract_opcodes(art)
        if not ops:
            stats["skip"] += 1
            continue
        token_list = []
        unknown = False
        for op in ops:
            try:
                token_list.append(Token[op])
            except KeyError:
                unknown = True
                break
        if unknown:
            stats["skip"] += 1
            continue
        tokens = tuple(token_list)
        try:
            graph = imscr_wiring(tokens)
            name = jp.stem.replace("_ob3ect", "").rstrip("_")
            tier = ouroboricity_tier(ops)
            desc = ""
            sfr = art.get("split_fuse_report")
            if isinstance(sfr, dict):
                desc = sfr.get("split_element", "")
            n = regen_one(jp, name, graph, tier, desc, ops)
            stats["ok"] += 1
            stats["files"] += n
        except Exception as e:
            print(f"  FAIL {jp.parent.name}: {e}")
            stats["fail"] += 1
        if (i+1) % 100 == 0:
            print(f"  ...{i+1}/{len(jsons)}")
    return stats

def regen_canonicals_novels():
    print("\nCanonical + Novel diagrams:")
    n = generate_all_diagrams_v3()
    print(f"  {n} canonical+novel diagrams regenerated")
    return n

if __name__ == "__main__":
    s = regen_digital()
    print(f"\nDigital: {s['ok']} ok, {s['skip']} skipped, {s['fail']} failed, {s['files']} SVGs written")
    regen_canonicals_novels()
    print("\nAll done!")
