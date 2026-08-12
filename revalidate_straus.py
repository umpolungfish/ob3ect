"""Re-check built ob3ects against the CORRECTED validators.

Two gates were stronger than the Grammar: Axiom C enforced as a biconditional,
and the Frobenius verdict demanded as PASS/FAIL. Artifacts designed under them
carry a stale `grounding_status` and a stale `is_valid_ob3ect`, while their
tuples and phases are unchanged. Re-running the checks is therefore the repair —
nothing is regenerated, and nothing is hand-edited.
"""
import json, pathlib, sys

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parent.parent))
sys.path.insert(0, str(pathlib.Path(__file__).resolve().parent))

from imscribing_grammar.agents.imscribe_generator_agent import validate_structural

# The canonical slot order, taken from the gate itself rather than retyped.
from imscribing_grammar.agents.imscribe_generator_agent import _CANON_VALUES
SLOTS = list(_CANON_VALUES)

def tuple_from_glyphs(word: str):
    glyphs = [c for c in word if c not in "⟨⟩"]
    return glyphs

def main(names):
    for n in names:
        p = pathlib.Path(f"digital/{n}/{n}_ob3ect.json")
        if not p.exists():
            print(f"{n}: not built"); continue
        d = json.loads(p.read_text())
        glyphs = tuple_from_glyphs(d.get("grounded_tuple", ""))
        if len(glyphs) != 12:
            print(f"{n}: tuple is {len(glyphs)} glyphs, left alone"); continue
        class _T:
            pass
        holder = _T()
        for slot, g in zip(SLOTS, glyphs):
            v = _T(); v.value = g
            setattr(holder, slot, v)
        errs = validate_structural(holder)
        phases = d.get("phases", {})
        ph2 = phases.get("phase_2", {})
        verdict = (ph2.get("frobenius_verdict") or "").strip().upper()
        verdict_ok = verdict in ("PASS", "FAIL", "T", "F", "B", "N")
        d["grounding_status"] = "full" if not errs else "failed"
        d["grounding_failed_primitives"] = errs
        d["is_valid_ob3ect"] = (not errs) and verdict_ok
        vals = d.get("validations", {})
        if verdict_ok:
            vals["phase_2"] = [e for e in vals.get("phase_2", [])
                               if "PASS/FAIL" not in e]
        d["validations"] = vals
        p.write_text(json.dumps(d, ensure_ascii=False, indent=2))
        print(f"{n}: grounding={d['grounding_status']} valid={d['is_valid_ob3ect']} "
              f"verdict={verdict} errs={errs}")

if __name__ == "__main__":
    import glob, os
    names = sys.argv[1:] or sorted(os.path.basename(p) for p in glob.glob("digital/straus_*"))
    main(names)
