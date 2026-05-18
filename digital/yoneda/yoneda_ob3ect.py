#!/usr/bin/env python3
"""
Yoneda Lemma Ob3ect — self-verifying natural isomorphism.

The Yoneda Lemma: for any locally small category C, object A in C,
and functor F: C → Set, there is a natural bijection
    Nat(Hom(A, -), F) ≅ F(A).

This ob3ect constructs a small finite category (3-object poset),
defines Hom(A, -) as a functor to Set, defines a concrete presheaf F,
and verifies the Yoneda bijection along with naturality squares.

Auto-imscribed on 2025-01-17
"""
import os, pathlib, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase

# ── Small Category: poset {0, 1, 2} with 0 ≤ 1 ≤ 2 ──────────
# Objects: 0, 1, 2
# Morphisms: identity on each, plus 0→1, 1→2, 0→2
# Composition: (1→2) ∘ (0→1) = (0→2); all identities compose trivially.

MORPHISMS = {
    (0, 0): "id_0", (1, 1): "id_1", (2, 2): "id_2",
    (0, 1): "f_01", (1, 2): "f_12", (0, 2): "f_02",
}

def compose(g, f):
    """Composition table: compose(g: y→z, f: x→y) = g∘f: x→z."""
    # identity compositions
    if f.startswith("id_"):
        return g
    if g.startswith("id_"):
        return f
    # f_12 ∘ f_01 = f_02
    if f == "f_01" and g == "f_12":
        return "f_02"
    raise ValueError(f"Cannot compose {g} ∘ {f}")

def hom(a, x):
    """Hom(a, x) — all morphisms from a to x."""
    if a == 0:
        return {"id_0"} if x == 0 else {"f_01"} if x == 1 else {"f_02"}
    elif a == 1:
        return {"id_1"} if x == 1 else {"f_12"} if x == 2 else set()
    elif a == 2:
        return {"id_2"} if x == 2 else set()

def hom_map(a, f_xy):
    """Hom(a, -)(f: x→y) : Hom(a, x) → Hom(a, y) by post-composition."""
    return lambda h: compose(f_xy, h)

# ── Concrete presheaf F: C → Set ──────────────────────────────
# F(0) = {α, β} (2 elements)
# F(1) = {γ}     (1 element)
# F(2) = {δ, ε, ζ} (3 elements)
# F(f_01)(α) = γ, F(f_01)(β) = γ
# F(f_12)(γ) = δ
# F(f_02) = F(f_12) ∘ F(f_01): α↦δ, β↦δ

F_VALUES = {0: {"α", "β"}, 1: {"γ"}, 2: {"δ", "ε", "ζ"}}

def F_map(f):
    """F(f) as a set map."""
    if f == "f_01":
        return lambda x: "γ"
    elif f == "f_12":
        return lambda x: "δ"
    elif f == "f_02":
        return lambda x: "δ"
    elif f.startswith("id_"):
        return lambda x: x
    raise ValueError(f"Unknown morphism {f}")


class YonedaOb3ect:
    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def _yoneda_bijection(self, A, F_vals, F_maps):
        """Verify Yoneda bijection for object A and presheaf F."""
        objects = [0, 1, 2]
        FA = F_vals[A]

        # Yoneda map: y_A,F : F(A) → Nat(Hom(A, -), F)
        # For x ∈ F(A), define natural transformation α^x where
        # α^x_X : Hom(A, X) → F(X), α^x_X(f) = F(f)(x)
        def yoneda_forward(x):
            def component(X):
                return lambda f: F_maps(f)(x)
            return {X: component(X) for X in objects}

        # Inverse: Nat(Hom(A, -), F) → F(A) by evaluating at id_A
        def yoneda_backward(alpha):
            return alpha[A]("id_" + str(A))

        # Verify round-trips for all x in F(A)
        forward_ok = all(
            yoneda_backward(yoneda_forward(x)) == x
            for x in FA
        )

        # For the reverse direction, we'd need to compare natural transformations
        # pointwise. We verify: for each x, the constructed α^x is natural.
        def check_naturality(alpha, A_obj):
            """Check naturality: F(f) ∘ α_X = α_Y ∘ Hom(A,f) for all f: X→Y."""
            for (x, y), f in MORPHISMS.items():
                if x == y:
                    continue  # identities are trivial
                hom_f = hom_map(A_obj, f)
                F_f = F_maps(f)
                for h in hom(A_obj, x):
                    lhs = F_f(alpha[x](h))
                    rhs = alpha[y](hom_f(h))
                    if lhs != rhs:
                        return False, (x, y, h, lhs, rhs)
            return True, None

        # Verify naturality for all x-derived transformations
        naturality_checks = []
        for x in FA:
            alpha = yoneda_forward(x)
            ok, detail = check_naturality(alpha, A)
            naturality_checks.append((x, ok, detail))

        all_natural = all(ok for _, ok, _ in naturality_checks)

        print(f"  Yoneda for A={A}, |F(A)|={len(FA)}")
        print(f"    Forward→Backward identity : {forward_ok}")
        print(f"    Naturality squares        : {all_natural}")
        for x, ok, detail in naturality_checks:
            if not ok:
                print(f"      FAIL at x={x}: {detail}")

        return forward_ok and all_natural

    def verify(self) -> bool:
        print("=== Yoneda Lemma Ob3ect ===")
        # Verify Yoneda for each object A
        results = []
        for A in [0, 1, 2]:
            results.append(self._yoneda_bijection(A, F_VALUES, F_map))
        layer_ok = all(results)
        frob_ok = frobenius_phase(self.source)
        closure = layer_ok and frob_ok
        print(f"  All objects verified : {layer_ok}")
        print(f"Closure: {closure}")
        return closure


if __name__ == "__main__":
    sys.exit(0 if YonedaOb3ect().verify() else 1)
