#!/usr/bin/env python3
"""
Galois Connection Ob3ect — self-verifying adjoint pair between posets.

A Galois connection between (P, ≤) and (Q, ⊑) is a pair of monotone maps
f: P→Q, g: Q→P satisfying: f(p) ⊑ q ⇔ p ≤ g(q).

This ob3ect implements the powerset-complement Galois connection:
  P = (P({1,2,3}), ⊆)
  Q = (P({1,2,3}), ⊇)    — reverse inclusion
  f(S) = complement of S
  g(T) = complement of T

f(S) ⊇ T means T ⊆ f(S) = S^c, i.e., S ∩ T = ∅.
S ⊆ g(T) means S ⊆ T^c, i.e., S ∩ T = ∅.

Also verifies the antitone form on a single poset:
  If a ≤ b then f(b) ≤ f(a).

Auto-imscribed on 2025-01-17
"""
import os, pathlib, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase

U = frozenset({1, 2, 3})
SUBSETS = [frozenset(s) for s in [{},{1},{2},{3},{1,2},{1,3},{2,3},{1,2,3}]]


class GaloisOb3ect:
    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def f(self, S):
        """Left adjoint: complement."""
        return U - S

    def g(self, T):
        """Right adjoint: complement."""
        return U - T

    def leq_P(self, a, b):
        """a ≤_P b iff a ⊆ b."""
        return a.issubset(b)

    def leq_Q(self, x, y):
        """x ⊑_Q y iff y ⊆ x (reverse inclusion)."""
        return y.issubset(x)

    def _verify_monotonicity(self):
        """f: P→Q monotone: a⊆b ⇒ f(a) ⊑ f(b) i.e. f(b)⊆f(a).
           g: Q→P monotone: x⊑y (y⊆x) ⇒ g(x)⊆g(y)."""
        f_ok = all(self.leq_Q(self.f(a), self.f(b))
                   for a in SUBSETS for b in SUBSETS if self.leq_P(a, b))
        g_ok = all(self.leq_P(self.g(x), self.g(y))
                   for x in SUBSETS for y in SUBSETS if self.leq_Q(x, y))
        print(f"  f monotone (P→Q)             : {f_ok}")
        print(f"  g monotone (Q→P)             : {g_ok}")
        return f_ok and g_ok

    def _verify_galois_equivalence(self):
        """f(S) ⊑ T ⇔ S ⊆ g(T). Both equivalent to S∩T=∅."""
        ok = all(
            self.leq_Q(self.f(S), T) == self.leq_P(S, self.g(T))
            for S in SUBSETS for T in SUBSETS
        )
        # Check equivalence with S∩T=∅
        eq_ok = all(
            self.leq_Q(self.f(S), T) == (len(S & T) == 0)
            for S in SUBSETS for T in SUBSETS
        )
        print(f"  f(S)⊑T ⇔ S⊆g(T)            : {ok}")
        print(f"  Both ⇔ S∩T=∅                : {eq_ok}")
        return ok and eq_ok

    def _verify_closure(self):
        """g∘f is a closure operator: S ⊆ g(f(S)) and idempotent.
           f∘g is an interior operator: f(g(T)) ⊑ T (i.e. T ⊆ f(g(T)))."""
        gf_infl = all(self.leq_P(S, self.g(self.f(S))) for S in SUBSETS)
        gf_idm  = all(self.g(self.f(self.g(self.f(S)))) == self.g(self.f(S)) for S in SUBSETS)
        fg_int  = all(self.leq_Q(self.f(self.g(T)), T) for T in SUBSETS)
        fg_idm  = all(self.f(self.g(self.f(self.g(T)))) == self.f(self.g(T)) for T in SUBSETS)
        print(f"  S ⊆ g(f(S))  (inflation)     : {gf_infl}")
        print(f"  gf(gf(S)) = gf(S) (idemp)    : {gf_idm}")
        print(f"  f(g(T)) ⊑ T  (interior)      : {fg_int}")
        print(f"  fg(fg(T)) = fg(T) (idemp)    : {fg_idm}")
        return gf_infl and gf_idm and fg_int and fg_idm

    def _verify_antitone(self):
        """On single poset (P,⊆): a⊆b ⇒ f(b)⊆f(a)."""
        anti = all(self.leq_P(self.f(b), self.f(a))
                   for a in SUBSETS for b in SUBSETS if self.leq_P(a, b))
        print(f"  Antitone: a⊆b ⇒ f(b)⊆f(a)   : {anti}")
        return anti

    def verify(self) -> bool:
        print("=== Galois Connection Ob3ect ===")
        m  = self._verify_monotonicity()
        ge = self._verify_galois_equivalence()
        c  = self._verify_closure()
        a  = self._verify_antitone()
        layer_ok = m and ge and c and a
        frob_ok = frobenius_phase(self.source)
        closure = layer_ok and frob_ok
        print(f"Closure: {closure}")
        return closure


if __name__ == "__main__":
    sys.exit(0 if GaloisOb3ect().verify() else 1)
