#!/usr/bin/env python3
"""retier.py — recompute every ob3ect's ouroboricity tier from first principles and
rewrite every carrier so none shows a heuristic label.

The tier is the Grammar's own verdict: proof_scaffold.ouroboricity_tier =
cl8nk_navigator.assess_tier scored on the 12-primitive tuple the object's opcodes
procedurally imscribe. No first/last-token proxy, no hand-supplied tuple, no LLM
re-run — the opcodes (and per-step domain labels) come straight from the JSON.

For each digital/**/*_ob3ect.json it:
  * recomputes the tier,
  * re-renders the wiring diagram(s) — _diagram.svg and _diagram_pen.svg — with it,
  * regenerates the Lean scaffold (emit_scaffold, which now emits the assess_tier
    verdict) and rewrites _scaffold.lean and the JSON's stored lean_scaffold.

Usage:
  python3 retier.py            # rewrite all carriers
  python3 retier.py --dry      # report tier per object, write nothing
  python3 retier.py NAME ...   # restrict to objects whose path contains a NAME
"""
import json, os, sys, argparse
from collections import Counter
from pathlib import Path

DIGITAL = Path(__file__).resolve().parent / "digital"
IMSCRIB = DIGITAL.parent.parent / "IMSCRIBr"
for _p in (str(IMSCRIB), str(DIGITAL)):
    if _p not in sys.path:
        sys.path.insert(0, _p)

from tokens import Token
from wiring import imscr_wiring
from symbolic_diagram import render_wiring_svg_v3
from proof_scaffold import ouroboricity_tier
from proof_scaffold_ob3ect import ScaffoldOb3ect
from batch_diagrams import extract_opcodes

_SCAF = ScaffoldOb3ect()


def _tokens(ops):
    try:
        return tuple(Token[o] for o in ops)
    except KeyError:
        return None


def _siblings(json_path, suffixes):
    """Files in the object's dir sharing its stem prefix, by suffix. Tolerates the
    trailing-underscore variance between the auto.py and batch_diagrams namers."""
    d = os.path.dirname(json_path)
    base = os.path.basename(json_path)[: -len("_ob3ect.json")]
    prefixes = {base, base.rstrip("_")}
    hits = {s: [] for s in suffixes}
    for f in os.listdir(d):
        if not any(f.startswith(p) for p in prefixes):
            continue
        for s in suffixes:
            if f.endswith(s):
                hits[s].append(os.path.join(d, f))
    return base, hits


def process(json_path, dry=False):
    with open(json_path) as fh:
        d = json.load(fh)
    ops = extract_opcodes(d)
    if not ops:
        return ("no_ops", None, {})
    toks = _tokens(ops)
    if toks is None:
        return ("unknown_op", None, {})

    tier = ouroboricity_tier(ops)
    base, sib = _siblings(json_path, ("_diagram.svg", "_diagram_pen.svg", "_scaffold.lean"))
    desc = (d.get("phases", {}).get("phase_2", {}) or {}).get("split_element", "") or ""
    gname = (d.get("name") or base).replace(" ", "_")[:40]
    counts = {"diagram": 0, "scaffold": 0, "json": False}

    if not dry:
        for path, pen in ([(p, False) for p in sib["_diagram.svg"]]
                          + [(p, True) for p in sib["_diagram_pen.svg"]]):
            g = imscr_wiring(toks)
            g.name = gname
            g.description = desc
            svg = render_wiring_svg_v3(g, gname, tier, desc, "", pen_mode=pen)
            svg.save(Path(path))
            counts["diagram"] += 1

    steps = (d.get("phases", {}).get("phase_4", {}) or {}).get("steps", [])
    pl = {i: s.get("domain_action", "") for i, s in enumerate(steps)} if steps else None
    has_json_scaf = bool(d.get("lean_scaffold"))
    if sib["_scaffold.lean"] or has_json_scaf:
        new_scaf = _SCAF.run(ops, name=d.get("name") or base, position_labels=pl)
        if not dry:
            for lp in sib["_scaffold.lean"]:
                Path(lp).write_text(new_scaf, encoding="utf-8")
                counts["scaffold"] += 1
            if has_json_scaf and d.get("lean_scaffold") != new_scaf:
                d["lean_scaffold"] = new_scaf
                Path(json_path).write_text(json.dumps(d, indent=2), encoding="utf-8")
                counts["json"] = True
    return ("ok", tier, counts)


import re as _re


def _slug_json_map():
    """slug → json path, from every per-object JSON in a non-hidden dir."""
    m = {}
    for jp in DIGITAL.glob("**/*_ob3ect.json"):
        if any(part.startswith(".") for part in jp.parts):
            continue
        m[os.path.basename(str(jp))[: -len("_ob3ect.json")]] = str(jp)
    return m


def sweep_orphans(dry=False):
    """Fix tracked diagram/scaffold copies that have no sibling JSON (flat dumps like
    nodraw/ and zoom_cosmos/), mapping each by slug to its per-object JSON. Skips
    gitignored/hidden dirs (e.g. .vault) and unmapped slugs."""
    smap = _slug_json_map()
    done = Counter()
    unmapped = []
    for path in DIGITAL.glob("**/*"):
        if not path.is_file():
            continue
        parts = path.parts
        if any(p.startswith(".") for p in parts):
            continue
        name = path.name
        # slug is everything before _diagram/_scaffold; the optional trailing _N is a
        # dedup suffix (atom_diagram_1.svg) — NOT part of the slug (..._splitting_d_1).
        dm = _re.match(r"^(.+?)_diagram(_pen)?(?:_\d+)?\.svg$", name)
        sm = _re.match(r"^(.+?)_scaffold(?:_\d+)?\.lean$", name)
        if dm:
            kind, slug, pen = "diagram", dm.group(1), bool(dm.group(2))
        elif sm:
            kind, slug, pen = "scaffold", sm.group(1), False
        else:
            continue
        # skip artifacts that already sit next to their own JSON (handled by process())
        if list(path.parent.glob("*_ob3ect.json")):
            continue
        jp = smap.get(slug) or smap.get(slug.rstrip("_"))
        if not jp:
            unmapped.append(name)
            continue
        d = json.load(open(jp))
        ops = extract_opcodes(d)
        toks = _tokens(ops) if ops else None
        if not ops or toks is None:
            unmapped.append(name)
            continue
        tier = ouroboricity_tier(ops)
        if dry:
            done[kind] += 1
            continue
        if kind == "diagram":
            desc = (d.get("phases", {}).get("phase_2", {}) or {}).get("split_element", "") or ""
            gname = (d.get("name") or slug).replace(" ", "_")[:40]
            g = imscr_wiring(toks)
            g.name = gname
            g.description = desc
            svg = render_wiring_svg_v3(g, gname, tier, desc, "", pen_mode=pen)
            svg.save(path)
        else:
            steps = (d.get("phases", {}).get("phase_4", {}) or {}).get("steps", [])
            pl = {i: s.get("domain_action", "") for i, s in enumerate(steps)} if steps else None
            path.write_text(_SCAF.run(ops, name=d.get("name") or slug, position_labels=pl),
                            encoding="utf-8")
        done[kind] += 1
    print(f"Orphan sweep: {dict(done)}  unmapped/skipped: {len(unmapped)}")
    if unmapped:
        print("  unmapped:", unmapped[:12])


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--dry", action="store_true")
    ap.add_argument("--orphans", action="store_true",
                    help="also fix tracked flat-dump copies with no sibling JSON")
    ap.add_argument("name", nargs="*")
    args = ap.parse_args()

    if args.orphans:
        sweep_orphans(dry=args.dry)
        return

    jsons = sorted(DIGITAL.glob("**/*_ob3ect.json"))
    if args.name:
        jsons = [j for j in jsons if any(n in str(j) for n in args.name)]

    print(f"Found {len(jsons)} ob3ect JSON artifacts")
    tiers = Counter()
    status = Counter()
    tot = {"diagram": 0, "scaffold": 0, "json": 0}
    for i, jp in enumerate(jsons):
        try:
            st, tier, c = process(jp, dry=args.dry)
        except Exception as e:
            status["error"] += 1
            print(f"  ERROR {jp.parent.name[:50]}: {e}")
            continue
        status[st] += 1
        if st == "ok":
            tiers[tier] += 1
            for k in tot:
                tot[k] += int(c.get(k, 0))
        elif st != "ok":
            print(f"  {st.upper():>11}  {jp.parent.name[:60]}")

    print(f"\nStatus     : {dict(status)}")
    print(f"Tier (new) : {dict(sorted(tiers.items()))}")
    if not args.dry:
        print(f"Rewrote    : {tot['diagram']} diagrams, {tot['scaffold']} scaffolds, "
              f"{tot['json']} JSON scaffolds")


if __name__ == "__main__":
    main()
