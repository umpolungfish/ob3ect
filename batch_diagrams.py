#!/usr/bin/env python3
"""Batch generator: creates v3 wiring diagrams for all ob3ect JSON artifacts
in ob3ect/digital/ that lack them.  Uses IMSCRIBr's symbolic_diagram module.
"""
import json, os, sys
from pathlib import Path

DIGITAL = Path(__file__).resolve().parent / "digital"
IMSCRIB = DIGITAL.parent.parent / "IMSCRIBr"

if str(IMSCRIB) not in sys.path:
    sys.path.insert(0, str(IMSCRIB))

from tokens import Token
from wiring import imscr_wiring
from symbolic_diagram import render_wiring_svg_v3


def extract_opcodes(artifact: dict):
    """Extract ordered opcode list from artifact JSON."""
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


def tier_from_ops(ops: list) -> str:
    """Guess ouroboricity tier from opcode sequence."""
    if not ops:
        return "O\u2080"
    has_frob = "FSPLIT" in ops and "FFUSE" in ops
    self_ref = (ops[0] == ops[-1])
    if self_ref and has_frob:
        return "O_\u221e"
    elif has_frob:
        return "O\u2082"
    else:
        return "O\u2081"


def gen_one(json_path: Path, dry: bool = False, force: bool = False):
    """Generate diagram for one ob3ect JSON. Returns (status, msg)."""
    name = json_path.stem.replace("_ob3ect", "")
    if name.endswith("_"):
        name = name[:-1]
    svg_path = json_path.parent / f"{name}_diagram.svg"

    if svg_path.exists() and not dry and not force:
        return ("skip_exists", str(svg_path))

    try:
        with open(json_path) as f:
            art = json.load(f)
    except Exception as e:
        return ("bad_json", str(e))

    ops = extract_opcodes(art)
    if not ops:
        return ("no_ops", "")

    token_list = []
    unknown = False
    for op in ops:
        try:
            token_list.append(Token[op])
        except KeyError:
            unknown = True
            break
    if unknown:
        return ("unknown_opcode", str(ops[:8]))

    tokens = tuple(token_list)
    if dry:
        print(f"  [{name[:55]}] {len(ops)} ops -> tier {tier_from_ops(ops)}")
        return ("dry_ok", str(svg_path))

    try:
        graph = imscr_wiring(tokens)
        graph.name = name.replace(" ", "_")[:40]
        tier = tier_from_ops(ops)
        svg = render_wiring_svg_v3(graph, name, tier, "", "")
        svg.save(svg_path)
        sz = svg_path.stat().st_size
        return ("ok", f"{svg_path.name}  ({sz:,} bytes)")
    except Exception as e:
        return ("render_fail", f"{e}")


def main():
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument("--dry", action="store_true")
    ap.add_argument("--force", action="store_true")
    ap.add_argument("--limit", type=int, default=0)
    ap.add_argument("name", nargs="*")
    args = ap.parse_args()

    jsons = sorted(DIGITAL.glob("*/*_ob3ect.json"))
    if args.name:
        jsons = [j for j in jsons if any(n in str(j) for n in args.name)]

    print(f"Found {len(jsons)} ob3ect JSON artifacts")
    stats = {"ok": 0, "skip": 0, "fail": 0, "no_ops": 0}

    for i, jp in enumerate(jsons):
        status, msg = gen_one(jp, dry=args.dry, force=args.force)
        if status == "ok":
            print(f"  [{i+1}/{len(jsons)}] OK    {msg}")
            stats["ok"] += 1
        elif status == "dry_ok":
            stats["ok"] += 1
        elif status.startswith("skip"):
            stats["skip"] += 1
        else:
            print(f"  [{i+1}/{len(jsons)}] {status.upper():>11}  {jp.parent.name[:55]}: {msg[:100]}")
            if status == "no_ops":
                stats["no_ops"] += 1
            else:
                stats["fail"] += 1

        if args.limit and i + 1 >= args.limit:
            break

    print(f"\nDone: {stats['ok']} generated, {stats['skip']} skipped, "
          f"{stats['no_ops']} no-opcodes, {stats['fail']} failed")


if __name__ == "__main__":
    main()
