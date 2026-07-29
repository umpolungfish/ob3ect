"""ob3ect/harness.py — put the CALLING agent in the ob3ect harness.

`auto_design` runs a loop: build a prompt, hand it to a provider, take JSON back,
mint it with `_build_artifact`, check the Frobenius verdict, and on failure feed
a precise reason back into the next attempt. Only one step of that needs a model,
and it is the one step the calling agent can do itself.

Delegating it to a second model is worse than unnecessary. The design comes back
as JSON and gets minted and reported as though the agent had reasoned it, which
launders another model's judgement into the agent's own transcript — precisely
the seam the golem rule exists to keep visible. An agent that must state only
what a tool returned should not be quietly attributing a stranger's design.

So this exposes the loop with the query removed:

    open_harness(description)          → the exact prompt the provider would get
    close_harness(description, design) → mint, verdict, and on FAIL the same
                                         retry_info the loop would have used

Same prompt, same mint, same feedback. Different speaker. The harness keeps the
part that certifies and gives up the part that invents, which is the LCF split:
free speech in the body, and only the kernel mints.
"""
from __future__ import annotations

import json
from pathlib import Path
from typing import Any, Dict, Optional

import auto as _auto


def _plain(obj):
    """Dataclasses and enums out of the artifact, JSON-safe. The tool layer
    serialises whatever it is handed, so an object that only reprs nicely fails
    at the boundary rather than in view."""
    from dataclasses import asdict, is_dataclass
    if obj is None or isinstance(obj, (str, int, float, bool)):
        return obj
    if is_dataclass(obj):
        return asdict(obj)
    if isinstance(obj, dict):
        return {k: _plain(v) for k, v in obj.items()}
    if isinstance(obj, (list, tuple)):
        return [_plain(v) for v in obj]
    return str(obj)


def open_harness(description: str, domain_type: Optional[str] = None,
                 context: Optional[str] = None,
                 retry_info: str = "") -> Dict[str, Any]:
    """Return what the designer must answer, without asking anyone else.

    `system` and `prompt` are byte-for-byte what `auto_design` would have sent to
    a provider, including catalog grounding, so a design produced here is subject
    to the same constraints as one produced there.
    """
    prompt = _auto._build_prompt(description, domain_type, retry_info,
                                 context=context)
    # The full task is ~17 KB. Returned inline it is truncated by the caller's
    # context manager mid-string, the JSON no longer parses, and the parse
    # failure then gets typed dialetheic and displayed as CLOSED — a false
    # closure manufactured entirely by payload size. So the task goes to a file
    # and the tool returns a pointer plus the part needed to start.
    import tempfile
    slug = _auto._make_unique_slug(description)
    task_dir = Path(tempfile.gettempdir()) / "ob3ect_harness"
    task_dir.mkdir(parents=True, exist_ok=True)
    task_path = task_dir / f"{slug}_task.md"
    task_path.write_text(
        f"# ob3ect design task — {description}\n\n"
        f"## SYSTEM\n\n{_auto._SYSTEM_PROMPT}\n\n## PROMPT\n\n{prompt}\n",
        encoding="utf-8")
    return {
        "status": "ok",
        "mode": "harness",
        "description": description,
        "task_file": str(task_path),
        "task_chars": len(_auto._SYSTEM_PROMPT) + len(prompt),
        "read_it": f"file_read path={task_path} (in chunks; it is long)",
        "then": ("design the ob3ect YOURSELF from that task, then call "
                 "ob3ect_close with description and your design JSON"),
        "design_must_contain": ["domain_type", "tokens", "boundary", "opcodes",
                                "frobenius", "registers", "sequence"],
        "frobenius_constraint": "FFUSE(FSPLIT(x)) = x must hold in the domain; "
                                "fuse_result must equal split_input",
    }


def close_harness(description: str, design: Dict[str, Any],
                  name: Optional[str] = None, scope: str = "local",
                  persist: bool = True) -> Dict[str, Any]:
    """Mint the agent's own design: build, verify, and persist on PASS.

    On FAIL nothing is written and `retry_info` comes back — the same text
    `auto_design` would have fed into its next attempt, naming which split/fuse
    pair broke and what would fix it. The agent re-enters with that, which is the
    loop it was previously outside of.
    """
    if isinstance(design, str):
        design = _auto._extract_json(design)
    artifact_name = name or description

    artifact = _auto._build_artifact(artifact_name, scope, design)

    sfr = artifact.split_fuse_report

    # `_build_artifact` takes the verdict from the designer's own JSON —
    # `fb.get("verdict", "PASS")` — and defaults to PASS when the field is
    # absent. Nothing there compares the fuse result to the split input, so a
    # design declaring split_input="{a,b}" and fuse_result="something else" is
    # stamped PASS. The mint must certify, not transcribe: μ∘δ = id is checked
    # here, and the designer's claim is reported beside it so a disagreement is
    # visible rather than resolved silently.
    claimed = sfr.frobenius_verdict
    _norm = lambda t: " ".join(str(t or "").lower().split())
    computed = "PASS" if (_norm(sfr.fuse_result) and
                          _norm(sfr.fuse_result) == _norm(sfr.split_input)) else "FAIL"
    if computed == "FAIL" and not sfr.failure_reason:
        sfr.failure_reason = (
            f"mu(delta(x)) returned {sfr.fuse_result!r}, not the split input "
            f"{sfr.split_input!r}")
    sfr.frobenius_verdict = computed
    verdict = computed
    out: Dict[str, Any] = {
        "status": "ok",
        "name": artifact_name,
        "frobenius_verdict": verdict,
        "frobenius_claimed": claimed,
        "verdict_source": ("computed here; auto.py would have accepted the "
                           "designer's own claim"),
        "topology": _plain(getattr(artifact, "topology_report", None)),
    }

    # the banked count is the second seal, mechanised: a PASS that never put
    # anything at risk is a free landing, and the caller should see that here
    # rather than discover it later
    steps = design.get("bootstrap", {}).get("steps") or design.get("steps") or []
    if steps:
        try:
            out["banked_count"] = _auto._banked_count_check(steps)
        except Exception:
            pass

    if verdict != "PASS":
        out["status"] = "open"
        out["retry_info"] = (
            f"Frobenius verdict: FAIL.\n"
            f"  FSPLIT {sfr.split_element!r}: {sfr.split_input!r} → {sfr.split_outputs}\n"
            f"  FFUSE  {sfr.fuse_element!r}: returned {sfr.fuse_result!r}\n"
            f"  Reason: {sfr.failure_reason}\n"
            f"  Fix: choose a split/fuse pair where FFUSE(FSPLIT(x)) = x holds "
            f"in the domain."
        )
        out["note"] = "nothing written; re-enter open_harness with retry_info"
        return out

    if persist:
        slug = _auto._make_unique_slug(artifact_name)
        out_dir = Path.home() / "ob3ect" / "digital" / slug
        out_dir.mkdir(parents=True, exist_ok=True)
        path = out_dir / f"{slug}_ob3ect.json"
        path.write_text(json.dumps(artifact.to_dict(), indent=2,
                                   ensure_ascii=False))
        out["slug"] = slug
        out["written"] = str(path)

    return out
