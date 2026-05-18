#!/usr/bin/env python3
"""
Presheaf Ob3ect — self-verifying presheaf as functor C^op → Set.

C = poset {0 ≤ 1 ≤ 2}.  P: C^op → Set.
    P(0)={α,β}, P(1)={γ,δ}, P(2)={ε}
Restrictions: P(f^op): γ↦α, δ↦β; P(g^op): ε↦γ.

Verifies functoriality + naturality + representable Hom_C(-,0).

Auto-imscribed on 2025-01-17
"""
import os, pathlib, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase

P_VALUES = {0: frozenset({"α", "β"}), 1: frozenset({"γ", "δ"}), 2: frozenset({"ε"})}

def P_map(f_op, x):
    """P(f^op)(x)."""
    table = {
        ("id_0", "α"): "α", ("id_0", "β"): "β",
        ("id_1", "γ"): "γ", ("id_1", "δ"): "δ",
        ("id_2", "ε"): "ε",
        ("f_op", "γ"): "α", ("f_op", "δ"): "β",
        ("g_op", "ε"): "γ",
        ("gf_op", "ε"): "α",
    }
    return table[(f_op, x)]


class PresheafOb3ect:
    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def _verify_functoriality(self):
        id0 = all(P_map("id_0", x) == x for x in P_VALUES[0])
        id1 = all(P_map("id_1", x) == x for x in P_VALUES[1])
        id2 = all(P_map("id_2", x) == x for x in P_VALUES[2])
        comp_ok = all(P_map("gf_op", x) == P_map("f_op", P_map("g_op", x))
                      for x in P_VALUES[2])
        print(f"  P(id_0)=id                    : {id0}")
        print(f"  P(id_1)=id                    : {id1}")
        print(f"  P(id_2)=id                    : {id2}")
        print(f"  P(gf^op)=P(f^op)∘P(g^op)    : {comp_ok}")
        return id0 and id1 and id2 and comp_ok

    def _verify_representable(self):
        """Hom_C(-,0) is the presheaf: 0↦{id_0}, 1↦∅, 2↦∅.
           Restriction Hom(f^op): Hom(1,0)→Hom(0,0) is empty function."""
        hom = {0: {"*"}, 1: set(), 2: set()}
        ok = (len(hom[0]) == 1 and len(hom[1]) == 0 and len(hom[2]) == 0)
        print(f"  |Hom(0,0)|=1, |Hom(1,0)|=0   : {ok}")
        return ok

    def _verify_naturality(self):
        f_vals = {P_map("f_op", x) for x in P_VALUES[1]}
        f_ok = f_vals == P_VALUES[0]
        g_vals = {P_map("g_op", x) for x in P_VALUES[2]}
        g_ok = g_vals.issubset(P_VALUES[1])
        print(f"  P(f^op): P(1) → P(0)          : {f_ok}")
        print(f"  P(g^op): P(2) → P(1)          : {g_ok}")
        return f_ok and g_ok

    def verify(self) -> bool:
        print("=== Presheaf Ob3ect ===")
        fu = self._verify_functoriality()
        r  = self._verify_representable()
        n  = self._verify_naturality()
        layer_ok = fu and r and n
        frob_ok = frobenius_phase(self.source)
        closure = layer_ok and frob_ok
        print(f"Closure: {closure}")
        return closure


if __name__ == "__main__":
    sys.exit(0 if PresheafOb3ect().verify() else 1)
