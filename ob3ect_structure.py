#!/usr/bin/env python3
"""Read the STRUCTURAL view out of an ob3ect JSON — the same information the
output diagram renders visually but that the bare route string hides:

  - the Frobenius arm decomposition (phase_2: split → arms → fuse),
  - per-step domain actions (phase_4) with FSPLIT/FFUSE arm nesting shown,
  - each IFIX classified as IN-ARM (a branch-local fixed point, committed before
    fusion) vs MAIN-TRACK (a single terminal commit),
  - the bulk/boundary registers (phase_3: void/true/false/both).

The IN-ARM vs MAIN-TRACK split is the difficulty signature: exotic targets push
fixations into the branches; mechanical ones commit once at the end.

Usage:  python3 ob3ect_structure.py <ob3ect_dir_or_json> [more ...]
        python3 ob3ect_structure.py digital/*/    # whole batch summary
"""
import json, sys, os, glob

def load(path):
    if os.path.isdir(path):
        js = glob.glob(os.path.join(path, "*_ob3ect.json"))
        if not js: return None
        path = js[0]
    if not path.endswith("_ob3ect.json"): return None
    return json.load(open(path, encoding="utf-8"))

def arm_spans(steps):
    """Pair FSPLIT→FFUSE around the step list read as a LOOP; return the set of
    step_nums lying strictly inside some arm.

    The word is a cycle and ROTAT is the cyclic shift, so a region whose FFUSE
    wrapped past the start still has the interior it had before the cut. Pairing
    straight through from the first step drops exactly those regions.
    """
    n = len(steps)
    if not n:
        return set(), []
    splits = [i for i, s in enumerate(steps) if s.get("opcode") == "FSPLIT"]
    fuses = [i for i, s in enumerate(steps) if s.get("opcode") == "FFUSE"]
    shift = 0
    if splits and len(splits) == len(fuses):
        for start in [0] + splits:
            depth = 0
            for off in range(n):
                op = steps[(start + off) % n].get("opcode")
                if op == "FSPLIT":
                    depth += 1
                elif op == "FFUSE":
                    depth -= 1
                    if depth < 0:
                        break
            else:
                if depth == 0:
                    shift = start
                    break
    stack, spans, inside = [], [], set()
    for off in range(n):
        i = (shift + off) % n
        op = steps[i].get("opcode")
        if op == "FSPLIT":
            stack.append(i)
        elif op == "FFUSE" and stack:
            lo = stack.pop()
            spans.append((steps[lo]["step_num"], steps[i]["step_num"]))
            for j in range(1, (i - lo) % n):
                inside.add(steps[(lo + j) % n]["step_num"])
    return inside, spans

def analyze(d):
    ph = d.get("phases", {})
    steps = ph.get("phase_4", {}).get("steps", [])
    inside, spans = arm_spans(steps)
    ifix = [s for s in steps if s.get("opcode") == "IFIX"]
    in_arm = [s for s in ifix if s["step_num"] in inside]
    main   = [s for s in ifix if s["step_num"] not in inside]
    return steps, inside, spans, in_arm, main

def show(d, verbose=True):
    name = d.get("name", "?")
    steps, inside, spans, in_arm, main = analyze(d)
    print(f"■ {name[:70]}")
    print(f"   arms: {spans}   IFIX in-arm: {len(in_arm)}  main-track: {len(main)}")
    if verbose:
        ph = d.get("phases", {})
        p2 = ph.get("phase_2", {})
        print(f"   Frobenius: split '{p2.get('split_element','?')}' → {p2.get('split_outputs',[])}"
              f"  ⇒ fuse '{p2.get('fuse_element','?')}'  [{p2.get('frobenius_verdict','?')}]")
        depth = 0
        for s in steps:
            op = s.get("opcode"); n = s["step_num"]
            if op == "FFUSE": depth = max(0, depth - 1)
            tag = ""
            if op == "IFIX":
                tag = "  ◀ IN-ARM FIX" if n in inside else "  ◀ main-track fix"
            bar = "│ " * depth
            print(f"     {n:2d} {bar}{op:8s} {s.get('domain_action','')[:52]}{tag}")
            if op == "FSPLIT": depth += 1
        p3 = ph.get("phase_3", {})
        print(f"   registers  bulk/boundary:")
        for k in ("void_description","true_description","false_description","both_description"):
            if p3.get(k): print(f"     {k.split('_')[0]:6s}: {p3[k][:66]}")

def main(argv):
    paths = []
    for a in argv:
        paths += glob.glob(a) if any(c in a for c in "*?[") else [a]
    ds = [(p, load(p)) for p in paths]
    ds = [(p, d) for p, d in ds if d]
    verbose = len(ds) == 1
    for p, d in ds:
        show(d, verbose=verbose)
        if not verbose: print()

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(__doc__); sys.exit(1)
    main(sys.argv[1:])
