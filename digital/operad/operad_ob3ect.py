#!/usr/bin/env python3
"""
Operad Ob3ect — self-verifying operad composition laws.

An operad consists of operations O(n) of arity n, with composition:
  γ : O(k) × O(n₁) × ... × O(nₖ) → O(n₁+...+nₖ)
satisfying associativity and unit laws.

We implement the planar operad of binary trees:
  O(1) = {leaf}, O(2) = {fork}, O(3) = {left_deeper, right_deeper}

Verified: sequential unit laws, two independent associativity paths.

Auto-imscribed on 2025-01-17
"""
import os, pathlib, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase

leaf = "leaf"

def fork(a, b):
    return ("fork", a, b)

def arity(t):
    if t == leaf:
        return 1
    if t[0] == "fork":
        return arity(t[1]) + arity(t[2])

def compose(f, subs):
    """Sequential composition: plug subtrees into leaves of f, left-to-right."""
    if f == leaf:
        return subs[0]
    if f[0] == "fork":
        left_leaves = arity(f[1])
        return fork(compose(f[1], subs[:left_leaves]),
                    compose(f[2], subs[left_leaves:]))


class OperadOb3ect:
    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def _verify_unit_laws(self):
        """γ(id; f) = f  and  γ(f; id,...,id) = f"""
        f_fork = fork(leaf, leaf)
        f_deep = fork(fork(leaf, leaf), leaf)

        left_unit_ok  = compose(leaf, [f_fork]) == f_fork
        left_unit2_ok = compose(leaf, [f_deep]) == f_deep
        right_unit_ok = compose(f_fork, [leaf, leaf]) == f_fork
        right_unit2_ok = compose(f_deep, [leaf, leaf, leaf]) == f_deep

        print(f"  Left unit  (γ(1; f)=f)        : {left_unit_ok and left_unit2_ok}")
        print(f"  Right unit (γ(f; 1,...,1)=f)   : {right_unit_ok and right_unit2_ok}")
        return left_unit_ok and left_unit2_ok and right_unit_ok and right_unit2_ok

    def _verify_associativity(self):
        """γ(f; γ(g₁; h⃗₁), ..., γ(gₖ; h⃗ₖ)) = γ(γ(f; g₁,...,gₖ); h⃗₁,...,h⃗ₖ)"""

        # Test 1: f(arity 2), g₁(2), g₂(1), all h trivial
        f  = fork(leaf, leaf)
        g1 = fork(leaf, leaf)
        g2 = leaf
        h11, h12 = leaf, leaf
        h21 = fork(leaf, leaf)

        inner1 = compose(g1, [h11, h12])
        inner2 = compose(g2, [h21])
        left1  = compose(f, [inner1, inner2])
        outer1 = compose(f, [g1, g2])
        right1 = compose(outer1, [h11, h12, h21])
        assoc1 = left1 == right1

        # Test 2: f(arity 3), g₁(1), g₂(3), g₃(1), mixed h
        f2  = fork(fork(leaf, leaf), leaf)        # left_deeper
        g1b = leaf
        g2b = fork(leaf, fork(leaf, leaf))         # right_deeper
        g3b = leaf
        h1b = fork(leaf, leaf)
        h2b = [leaf, leaf, leaf]
        h3b = fork(leaf, leaf)

        inner1b = compose(g1b, [h1b])
        inner2b = compose(g2b, h2b)
        inner3b = compose(g3b, [h3b])
        left2   = compose(f2, [inner1b, inner2b, inner3b])
        outer2  = compose(f2, [g1b, g2b, g3b])
        right2  = compose(outer2, [h1b] + h2b + [h3b])
        assoc2  = left2 == right2

        # Test 3: f(arity 2), g₁(3), g₂(2), all non-trivial h
        f3  = fork(leaf, leaf)
        g1c = fork(fork(leaf, leaf), leaf)         # left_deeper
        g2c = fork(leaf, leaf)
        h1c = [fork(leaf, leaf), leaf, leaf]
        h2c = [fork(fork(leaf, leaf), leaf), leaf]

        inner1c = compose(g1c, h1c)
        inner2c = compose(g2c, h2c)
        left3   = compose(f3, [inner1c, inner2c])
        outer3  = compose(f3, [g1c, g2c])
        right3  = compose(outer3, h1c + h2c)
        assoc3  = left3 == right3

        print(f"  Associativity (simple)        : {assoc1}")
        print(f"  Associativity (mixed arity)   : {assoc2}")
        print(f"  Associativity (deep trees)    : {assoc3}")
        return assoc1 and assoc2 and assoc3

    def verify(self) -> bool:
        print("=== Operad Ob3ect ===")
        u = self._verify_unit_laws()
        a = self._verify_associativity()
        layer_ok = u and a
        frob_ok = frobenius_phase(self.source)
        closure = layer_ok and frob_ok
        print(f"Closure: {closure}")
        return closure


if __name__ == "__main__":
    sys.exit(0 if OperadOb3ect().verify() else 1)
