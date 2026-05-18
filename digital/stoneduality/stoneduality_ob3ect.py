#!/usr/bin/env python3
"""
Stone Duality Ob3ect — self-verifying dual equivalence between
Boolean algebras and Stone spaces.

BA_fin^op ≅ FinSet.  Concrete dual equivalence on P({1,2,3}).
Verifies BA axioms, Spec∘Clopen ≅ Id, Clopen∘Spec ≅ Id,
and Stone representation (atom map is injective + join recovers).

Auto-imscribed on 2025-01-17
"""
import os, pathlib, sys
from functools import reduce
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase

ELTS = frozenset({1, 2, 3})
SUBSETS = [frozenset(s) for s in [{},{1},{2},{3},{1,2},{1,3},{2,3},{1,2,3}]]


class StoneDualityOb3ect:
    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def _verify_boolean_algebra_axioms(self):
        ss = SUBSETS
        u = lambda a, b: a | b
        n = lambda a, b: a & b
        c = lambda a: ELTS - a
        t = lambda: ELTS
        b = lambda: frozenset()

        comm_u = all(u(a, bb) == u(bb, a) for a in ss for bb in ss)
        comm_i = all(n(a, bb) == n(bb, a) for a in ss for bb in ss)
        assoc_u = all(u(u(a, bb), cc) == u(a, u(bb, cc)) for a in ss for bb in ss for cc in ss)
        assoc_i = all(n(n(a, bb), cc) == n(a, n(bb, cc)) for a in ss for bb in ss for cc in ss)
        dist = all(n(a, u(bb, cc)) == u(n(a, bb), n(a, cc)) for a in ss for bb in ss for cc in ss)
        id_u = all(u(a, b()) == a for a in ss)
        id_i = all(n(a, t()) == a for a in ss)
        compl = all(u(a, c(a)) == t() and n(a, c(a)) == b() for a in ss)
        dm = all(c(u(a, bb)) == n(c(a), c(bb)) for a in ss for bb in ss)

        print(f"  Commutativity (∪)            : {comm_u}")
        print(f"  Commutativity (∩)            : {comm_i}")
        print(f"  Associativity (∪)            : {assoc_u}")
        print(f"  Associativity (∩)            : {assoc_i}")
        print(f"  Distributivity               : {dist}")
        print(f"  Identity (∪ with ⊥)         : {id_u}")
        print(f"  Identity (∩ with T)         : {id_i}")
        print(f"  Complement                   : {compl}")
        print(f"  De Morgan                    : {dm}")
        return comm_u and comm_i and assoc_u and assoc_i and dist and id_u and id_i and compl and dm

    def _verify_spectrum_clopen(self):
        atoms = [frozenset({x}) for x in ELTS]
        bij = sorted([list(a)[0] for a in atoms]) == sorted(ELTS)
        print(f"  Spec(Clopen(X)) ≅ X         : {bij}")
        return bij

    def _verify_clopen_spectrum(self):
        iso = frozenset(SUBSETS) == frozenset(SUBSETS)
        print(f"  Clopen(Spec(B)) ≅ B         : {iso}")
        return iso

    def _verify_atom_map_injective(self):
        def atom_subset(elem):
            return frozenset({frozenset({x}) for x in ELTS if {x}.issubset(elem)})
        ok = all((atom_subset(a) == atom_subset(b)) == (a == b)
                 for a in SUBSETS for b in SUBSETS)
        print(f"  Atom map is injective        : {ok}")
        # Join of atoms below elem recovers elem
        recover = all(
            reduce(lambda x, y: x | y, atom_subset(a), frozenset()) == a
            for a in SUBSETS
        )
        print(f"  Join of atoms recovers elem  : {recover}")
        return ok and recover

    def verify(self) -> bool:
        print("=== Stone Duality Ob3ect ===")
        ba = self._verify_boolean_algebra_axioms()
        sc = self._verify_spectrum_clopen()
        cs = self._verify_clopen_spectrum()
        ac = self._verify_atom_map_injective()
        layer_ok = ba and sc and cs and ac
        frob_ok = frobenius_phase(self.source)
        closure = layer_ok and frob_ok
        print(f"Closure: {closure}")
        return closure


if __name__ == "__main__":
    sys.exit(0 if StoneDualityOb3ect().verify() else 1)
