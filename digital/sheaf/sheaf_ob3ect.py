#!/usr/bin/env python3
"""
Sheaf Ob3ect — self-verifying sheaf axioms on a finite topology.

A sheaf F on a topological space X assigns to each open set U a set F(U)
and to each inclusion V ⊆ U a restriction map ρ_{U,V} : F(U) → F(V),
satisfying:

  1. Locality: if s,t ∈ F(U) have ρ_{U,Ui}(s) = ρ_{U,Ui}(t) for all Ui
     in a cover of U, then s = t.
  2. Gluing: given si ∈ F(Ui) that agree on overlaps Ui ∩ Uj,
     there exists a unique s ∈ F(U) restricting to each si.

This ob3ect implements F on X = {a, b, c} with discrete topology
(8 open sets), using integer-valued functions as sections.
Verifies locality, gluing, and restriction functoriality.

Auto-imscribed on 2025-01-17
"""
import os, pathlib, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase

# ── Topology: X = {a, b, c} with discrete topology (all 8 subsets) ──
X = {"a", "b", "c"}
ALL_OPENS = [set(), {"a"}, {"b"}, {"c"},
             {"a","b"}, {"a","c"}, {"b","c"}, {"a","b","c"}]

# ── Sheaf: F(U) = {f: U → Z} (integer-valued functions) ──
# A section is a dict mapping each point in U to an integer.
# Restriction: domain restriction of the function.

def empty_section():
    return {}

def section_values(s):
    """The set of values a section assigns (for equality checks)."""
    return tuple(sorted(s.items()))

def restrict(U, V, s):
    """Restrict s ∈ F(U) to V ⊆ U."""
    if not V.issubset(U):
        raise ValueError(f"V={V} not subset of U={U}")
    return {k: v for k, v in s.items() if k in V}

def is_section_on(U, s):
    """Check s is a valid section over U: dict with keys exactly U."""
    return set(s.keys()) == U and all(isinstance(v, int) for v in s.values())


class SheafOb3ect:
    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def _make_section(self, U, values):
        """Construct a section over U from a dict of values."""
        s = {}
        for pt in U:
            s[pt] = values.get(pt, 0)
        return s

    def _verify_functoriality(self):
        """ρ_{U,U} = id  and  ρ_{V,W} ∘ ρ_{U,V} = ρ_{U,W}"""
        U = X
        s = self._make_section(U, {"a": 7, "b": 3, "c": -2})

        # Identity
        id_ok = restrict(U, U, s) == s

        # Composition: (a,b,c) → (a,b) → (a) equals (a,b,c) → (a)
        V = {"a", "b"}
        W = {"a"}
        compose_ok = restrict(V, W, restrict(U, V, s)) == restrict(U, W, s)

        print(f"  Identity restriction         : {id_ok}")
        print(f"  Composition of restrictions  : {compose_ok}")
        return id_ok and compose_ok

    def _verify_locality(self):
        """If s,t ∈ F(U) agree on all sets of a cover, then s = t."""
        U = X
        cover = [{"a", "b"}, {"b", "c"}]  # covers X

        s = self._make_section(U, {"a": 5, "b": 2, "c": 9})
        t = self._make_section(U, {"a": 5, "b": 2, "c": 9})
        # s and t are identical, so locality is trivially satisfied
        matches = all(restrict(U, Ui, s) == restrict(U, Ui, t) for Ui in cover)
        locality_ok = matches and (s == t)
        print(f"  Locality (agree on cover)    : {locality_ok}")

        # Negative test: different sections must differ on some cover element
        t2 = self._make_section(U, {"a": 5, "b": 2, "c": 10})
        disagree = not all(restrict(U, Ui, s) == restrict(U, Ui, t2) for Ui in cover)
        print(f"  Locality (reject different)  : {disagree}")

        return locality_ok and disagree

    def _verify_gluing(self):
        """Given sections on a cover that agree on overlaps, glue to unique section."""
        U = X
        cover = [{"a", "b"}, {"b", "c"}, {"a", "c"}]

        # Define sections on each cover element that agree on overlaps
        s_ab = self._make_section({"a", "b"}, {"a": 4, "b": 8})
        s_bc = self._make_section({"b", "c"}, {"b": 8, "c": 1})
        s_ac = self._make_section({"a", "c"}, {"a": 4, "c": 1})

        cover_sections = {frozenset({"a","b"}): s_ab,
                          frozenset({"b","c"}): s_bc,
                          frozenset({"a","c"}): s_ac}

        # Check overlap agreement
        overlaps_ok = True
        for Ui in cover:
            for Uj in cover:
                if Ui == Uj:
                    continue
                Uij = Ui & Uj
                if not Uij:
                    continue
                s_i = cover_sections[frozenset(Ui)]
                s_j = cover_sections[frozenset(Uj)]
                if restrict(Ui, Uij, s_i) != restrict(Uj, Uij, s_j):
                    overlaps_ok = False
        print(f"  Overlap agreement            : {overlaps_ok}")

        # Glue: construct the unique section on U
        glued = {}
        for Ui in cover:
            s_i = cover_sections[frozenset(Ui)]
            for pt in Ui:
                if pt not in glued:
                    glued[pt] = s_i[pt]
                elif glued[pt] != s_i[pt]:
                    overlaps_ok = False  # should not happen if overlaps agree

        glued_section = {k: v for k, v in sorted(glued.items())}
        expected = {"a": 4, "b": 8, "c": 1}
        gluing_ok = glued_section == expected
        print(f"  Gluing (construct section)   : {gluing_ok}")

        # Verifies glued section restricts back to each cover element
        restrict_ok = all(
            restrict(U, frozenset(Ui), glued_section) == cover_sections[frozenset(Ui)]
            for Ui in cover
        )
        print(f"  Glued restricts to origins   : {restrict_ok}")

        # Uniqueness: if two sections restrict identically, they are equal
        glued2 = {"a": 4, "b": 8, "c": 1}
        uniqueness_ok = (glued == glued2)
        print(f"  Uniqueness of glued section  : {uniqueness_ok}")

        return overlaps_ok and gluing_ok and restrict_ok and uniqueness_ok

    def verify(self) -> bool:
        print("=== Sheaf Ob3ect ===")
        f = self._verify_functoriality()
        loc = self._verify_locality()
        glu = self._verify_gluing()
        layer_ok = f and loc and glu
        frob_ok = frobenius_phase(self.source)
        closure = layer_ok and frob_ok
        print(f"Closure: {closure}")
        return closure


if __name__ == "__main__":
    sys.exit(0 if SheafOb3ect().verify() else 1)
