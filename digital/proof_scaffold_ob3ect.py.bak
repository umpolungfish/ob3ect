#!/usr/bin/env python3
"""
proof_scaffold_ob3ect.py — IGProtocol Lean scaffold bridge for ob3ect.

Adapts ob3ect's string opcode sequences (VINIT/TANCH/AFWD/...) to
IMSCRIBr's Token enum, then calls imscr_wiring() + emit_scaffold() to
produce typed IGProtocol Lean term scaffolds.

ob3ect string opcodes → Token enum → WiredGraph → IGProtocol scaffold

Entry points:
  scaffold_sequence(ops, name)  — from string opcode list
  scaffold_canonical(class_name) — from IMSCRIBr canonical class name
  scaffold_all_canonical()       — all 12, returns dict[name → scaffold]
  ScaffoldOb3ect                 — ob3ect digital module wrapper
"""

from __future__ import annotations

import sys
import os
from typing import Dict, List, Optional, Tuple

# ── Path bootstrap: reach IMSCRIBr from ob3ect/digital/ ──────────────────────
_IMSCRIBR = os.path.join(
    os.path.dirname(__file__), "..", "..", "imsgct", "IMSCRIBr"
)
# ob3ect is at ~/ob3ect; IMSCRIBr is at ~/imsgct/IMSCRIBr
# from ob3ect/digital/: ../../imsgct/IMSCRIBr → correct
# Fallback to absolute path if relative resolution fails
if not os.path.isdir(os.path.abspath(_IMSCRIBR)):
    _IMSCRIBR = os.path.expanduser("~/imsgct/IMSCRIBr")
if _IMSCRIBR not in sys.path:
    sys.path.insert(0, os.path.abspath(_IMSCRIBR))

from tokens import Token
from wiring import imscr_wiring, match_pairs
from proof_scaffold import emit_scaffold
from classifier import CANONICAL_CLASSES, compute_fingerprint, match_canonical


# ── String opcode → Token adapter ────────────────────────────────────────────

_STR_TO_TOKEN: Dict[str, Token] = {
    "VINIT":   Token.VINIT,
    "TANCH":   Token.TANCH,
    "AFWD":    Token.AFWD,
    "AREV":    Token.AREV,
    "CLINK":   Token.CLINK,
    "IMSCRIB": Token.IMSCRIB,
    "FSPLIT":  Token.FSPLIT,
    "FFUSE":   Token.FFUSE,
    "EVALT":   Token.EVALT,
    "EVALF":   Token.EVALF,
    "ENGAGR":  Token.ENGAGR,
    "IFIX":    Token.IFIX,
}

_TOKEN_TO_STR: Dict[Token, str] = {v: k for k, v in _STR_TO_TOKEN.items()}


def ops_to_arr(ops: List[str]) -> Tuple[int, ...]:
    """Convert ob3ect string opcode list to IMSCRIBr integer tuple."""
    result = []
    for op in ops:
        tok = _STR_TO_TOKEN.get(op.upper())
        if tok is None:
            raise ValueError(f"Unknown opcode: {op!r}. Valid: {list(_STR_TO_TOKEN)}")
        result.append(tok.value)
    return tuple(result)


def arr_to_ops(arr: Tuple[int, ...]) -> List[str]:
    """Convert IMSCRIBr integer tuple to ob3ect string opcode list."""
    return [_TOKEN_TO_STR[Token(t)] for t in arr]


# ── Core scaffold functions ───────────────────────────────────────────────────

def scaffold_sequence(
    ops: List[str],
    name: Optional[str] = None,
    namespace: str = "Imscribing",
    opcode_map: Optional[Dict[str, str]] = None,
) -> str:
    """Generate IGProtocol scaffold from an ob3ect string opcode sequence."""
    arr = ops_to_arr(ops)
    canonical = match_canonical(arr)
    effective_name = name or canonical or "ob3ect_sequence"
    return emit_scaffold(arr, name=effective_name, namespace=namespace, opcode_map=opcode_map)


def scaffold_canonical(class_name: str, namespace: str = "Imscribing") -> str:
    """Generate scaffold for a named IMSCRIBr canonical class."""
    if class_name not in CANONICAL_CLASSES:
        available = list(CANONICAL_CLASSES.keys())
        raise ValueError(f"Unknown class {class_name!r}. Available: {available}")
    arr = CANONICAL_CLASSES[class_name]
    return emit_scaffold(arr, name=class_name, namespace=namespace)


def scaffold_all_canonical(namespace: str = "Imscribing") -> Dict[str, str]:
    """Generate scaffolds for all 12 canonical classes. Returns {name: scaffold}."""
    return {
        name: emit_scaffold(arr, name=name, namespace=namespace)
        for name, arr in CANONICAL_CLASSES.items()
    }


def fingerprint_ops(ops: List[str]) -> dict:
    """Return the structural fingerprint of an ob3ect opcode sequence."""
    arr = ops_to_arr(ops)
    fp = compute_fingerprint(arr)
    return {
        "signature": (fp.sig_L, fp.sig_F, fp.sig_D, fp.sig_X),
        "self_ref": fp.self_ref,
        "frobenius_order": fp.frobenius_order,
        "dialetheia_complete": fp.dialetheia_complete,
        "period": fp.period,
        "canonical": match_canonical(arr),
        "ops": arr_to_ops(arr),
    }


def wiring_summary(ops: List[str]) -> str:
    """Return a human-readable wiring summary for an ob3ect opcode sequence."""
    arr = ops_to_arr(ops)
    graph = imscr_wiring(tuple(Token(t) for t in arr))
    pairs = match_pairs(tuple(Token(t) for t in arr))
    cross = graph.cross_branch_wires()
    lines = [
        f"Sequence : {' → '.join(arr_to_ops(arr))}",
        f"Pairs    : {[(p[0], p[1]) for p in pairs]}",
        f"Wires    : {len(graph.wires)} total",
        f"Cross    : {len(cross)} cross-branch wire(s)",
        f"Layers   : {len(graph.topological_layers())} topological layers",
    ]
    if cross:
        for w in cross:
            src = arr_to_ops(arr)[w.src_node] if w.src_node < len(arr) else "?"
            dst = arr_to_ops(arr)[w.dst_node] if w.dst_node < len(arr) else "?"
            lines.append(f"           {src}[{w.src_node}].{w.src_port} → {dst}[{w.dst_node}].{w.dst_port}")
    return "\n".join(lines)


# ── ScaffoldOb3ect digital module wrapper ─────────────────────────────────────

class ScaffoldOb3ect:
    """
    ob3ect digital module: IGProtocol scaffold generator.

    Layer: 29 (paraconsistent digital — proof translation).
    Token: IMSCRIB (self-imscription — scaffold reflects the sequence back
           as a typed proof term).

    Usage:
      s = ScaffoldOb3ect()
      print(s.run(["IMSCRIB", "EVALT", "FSPLIT", "EVALF", "FFUSE", "ENGAGR", "IFIX", "IMSCRIB"]))
      print(s.canonical("I_Dialetheic_Bootstrap"))
      print(s.all_scaffolds())
    """

    LAYER = 29
    TOKEN = "IMSCRIB"
    DESCRIPTION = (
        "Generates typed IGProtocol Lean term scaffolds from IMASM opcode sequences. "
        "Bridges ob3ect string opcodes → IMSCRIBr WiredGraph → IGProtocol .seq/.prod terms "
        "with annotated sorry slots and verification obligations."
    )

    def run(self, ops: List[str], name: Optional[str] = None,
            opcode_map: Optional[Dict[str, str]] = None) -> str:
        """Scaffold from opcode list."""
        return scaffold_sequence(ops, name=name, opcode_map=opcode_map)

    def canonical(self, class_name: str) -> str:
        """Scaffold for a named canonical class."""
        return scaffold_canonical(class_name)

    def all_scaffolds(self, out_dir: Optional[str] = None) -> Dict[str, str]:
        """
        Scaffold all 12 canonical classes.
        If out_dir given, write .lean files there and return {name: path}.
        Otherwise return {name: scaffold_text}.
        """
        scaffolds = scaffold_all_canonical()
        if out_dir:
            import os
            os.makedirs(out_dir, exist_ok=True)
            paths = {}
            for name, text in scaffolds.items():
                safe = name.replace(" ", "_").lower()
                path = os.path.join(out_dir, f"{safe}.lean")
                with open(path, "w") as f:
                    f.write(text)
                paths[name] = path
            return paths
        return scaffolds

    def fingerprint(self, ops: List[str]) -> dict:
        """Structural fingerprint for a sequence."""
        return fingerprint_ops(ops)

    def wiring(self, ops: List[str]) -> str:
        """Human-readable wiring summary."""
        return wiring_summary(ops)

    def verify(self) -> None:
        """Print module status."""
        print(f"=== ScaffoldOb3ect — Layer {self.LAYER} / Token {self.TOKEN} ===")
        print(f"IMSCRIBr path : {os.path.abspath(_IMSCRIBR)}")
        print(f"Canonical classes : {len(CANONICAL_CLASSES)}")
        print()
        print("── Adapter ──────────────────────────────────────────────────")
        print(f"  ob3ect str opcodes → Token enum → WiredGraph → IGProtocol scaffold")
        print(f"  Supported opcodes  : {list(_STR_TO_TOKEN.keys())}")
        print()
        print("── Bridge ───────────────────────────────────────────────────")
        print("  imscr_wiring()  → port-level WiredGraph (full branch topology)")
        print("  emit_scaffold() → .seq/.prod/.withGram terms + sorry annotations")
        print("  Verification obligations → IGFunctor/IGMorphism axioms by name")
        print()
        print("── Canonical classes ─────────────────────────────────────────")
        for name, arr in CANONICAL_CLASSES.items():
            fp = compute_fingerprint(arr)
            tier = ("O_inf" if fp.self_ref and fp.frobenius_order in (1, 2)
                    else "O₂" if fp.self_ref or fp.frobenius_order in (1, 2) or fp.dialetheia_complete
                    else "O₁" if fp.period < fp.length else "O₀")
            ops_str = " → ".join(arr_to_ops(arr))
            print(f"  {name:35s} {tier:6s}  {ops_str}")


# ── CLI ───────────────────────────────────────────────────────────────────────

def main() -> None:
    import sys

    s = ScaffoldOb3ect()

    if len(sys.argv) < 2 or sys.argv[1] == "--verify":
        s.verify()
        return

    if sys.argv[1] == "--all":
        out_dir = sys.argv[2] if len(sys.argv) > 2 else "ob3ect_scaffolds"
        paths = s.all_scaffolds(out_dir=out_dir)
        print(f"Generated {len(paths)} scaffolds → {out_dir}/")
        for name, path in paths.items():
            print(f"  {path}")
        return

    if sys.argv[1] == "--canonical":
        class_name = sys.argv[2] if len(sys.argv) > 2 else "I_Dialetheic_Bootstrap"
        print(s.canonical(class_name))
        return

    if sys.argv[1] == "--wiring":
        ops = sys.argv[2:]
        print(s.wiring(ops))
        return

    # Default: treat args as opcode sequence
    ops = sys.argv[1:]
    print(s.run(ops))


if __name__ == "__main__":
    main()
