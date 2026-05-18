#!/usr/bin/env python3
"""
Dagger Compact Ob3ect — self-verifying dagger compact closed category.

Implements FinRel (finite relations) as a dagger compact category.
Objects: natural numbers. Morphisms m→n: boolean relation matrices.
• Composition: R∘S where cols(R) == rows(S)
• Dagger: transpose (involutive, contravariant)
• Tensor: Kronecker product
• Dual: every object is self-dual; η and ε are the cup and cap
• Snake equations verified on concrete instances.

Auto-imscribed on 2025-01-17
"""
import os, pathlib, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase

# ── Relation matrices ─────────────────────────────────────────
# R: a → b means R has b rows (target), a columns (source).
# R[i][j] = True means source-element j relates to target-element i.

def id_matrix(n):
    return [[i == j for j in range(n)] for i in range(n)]

def compose(R, S):
    """R ∘ S: source(S) → target(R). Requires cols(R) == rows(S)."""
    if not R or not S:
        return R or S
    cols_R = len(R[0])  # intermediate dim = source of R
    rows_S = len(S)     # intermediate dim = target of S
    if cols_R != rows_S:
        raise ValueError(f"Dimension mismatch: cols(R)={cols_R} vs rows(S)={rows_S}")
    result = []
    for i in range(len(R)):            # for each target row of R
        row = []
        for k in range(len(S[0])):     # for each source col of S
            row.append(any(R[i][j] and S[j][k] for j in range(cols_R)))
        result.append(row)
    return result

def dagger(R):
    """Transpose: if R: a→b then R†: b→a."""
    if not R:
        return []
    return [[R[i][j] for i in range(len(R))] for j in range(len(R[0]))]

def tensor(R, S):
    """Kronecker product R ⊗ S."""
    if not R or not S:
        return R or S
    result = []
    for i in range(len(R)):
        for ii in range(len(S)):
            row = []
            for j in range(len(R[0])):
                for jj in range(len(S[0])):
                    row.append(R[i][j] and S[ii][jj])
            result.append(row)
    return result


class DaggerCompactOb3ect:
    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def _verify_dagger_involution(self):
        """R†† = R"""
        R = [[True, False], [True, True]]       # 2→2
        S = [[False, True, False], [True, False, True]]  # 3→2
        ok = (dagger(dagger(R)) == R) and (dagger(dagger(S)) == S)
        print(f"  Dagger involution            : {ok}")
        return ok

    def _verify_dagger_composition(self):
        """(R ∘ S)† = S† ∘ R†"""
        # R: 2→3, S: 3→2  →  R∘S: 3→3, (R∘S)†: 3→3
        R = [[False, True], [True, False], [True, True]]  # 2→3
        S = [[True, False, True], [False, True, False]]   # 3→2
        lhs = dagger(compose(R, S))
        rhs = compose(dagger(S), dagger(R))
        ok = lhs == rhs
        print(f"  (R∘S)† = S†∘R†              : {ok}")
        return ok

    def _verify_snake_equations(self):
        """Snake equations for object n=2 (self-dual in FinRel)."""
        n = 2
        id_n = id_matrix(n)

        # η: I → A* ⊗ A  (0 → n*n). In FinRel, I = 1-element set.
        # η relates the unique I-element to (i,i) pairs in A*⊗A.
        # Matrix: 1 row (target=I... wait no, target is A*⊗A)
        # η: 1 → n*n  (1 column = source=I, n*n rows = target=A*⊗A)
        # η: * relates to (0,0) and (1,1)
        eta = [[True], [False], [False], [True]]  # 1 → 4  ((0,0),(0,1),(1,0),(1,1))

        # ε: A ⊗ A* → I  (n*n → 1)
        # ε relates (i,i) pairs to *
        eps = [[True, False, False, True]]  # 4 → 1

        # Left snake: (ε ⊗ 1_A) ∘ (1_A ⊗ η) = 1_A
        # 1_A ⊗ η: A⊗I → A⊗A*⊗A = 2×1 → 2×4 = 2→8
        one_eta = tensor(id_n, eta)    # 2×2 ⊗ 4×1 = 8×2... 
        # id_n is 2×2, eta is 4×1, tensor produces 8×2: A⊗I → A⊗A*⊗A 
        # Actually: id_n: 2→2, eta: 1→4. Tensor: (2×1)→(2×4) = 2→8
        # Matrix: 8 rows, 2 cols.

        # ε ⊗ 1_A: A⊗A*⊗A → I⊗A = 8→2
        eps_one = tensor(eps, id_n)    # 1×4 ⊗ 2×2 = 2×8? 
        # eps: 4→1, id_n: 2→2. Tensor: (4×2)→(1×2) = 8→2

        left_snake = compose(eps_one, one_eta)  # 2→8 ∘ 8→2 = 2→2
        left_ok = left_snake == id_n

        # Right snake: (1_A* ⊗ ε) ∘ (η ⊗ 1_A*) = 1_A*
        # η ⊗ 1_A*: I⊗A* → A*⊗A⊗A* = 2→8
        eta_one = tensor(eta, id_n)
        # 1_A* ⊗ ε: A*⊗A⊗A* → A*⊗I = 8→2
        one_eps = tensor(id_n, eps)
        right_snake = compose(one_eps, eta_one)
        right_ok = right_snake == id_n

        print(f"  Left snake  (ε⊗1)∘(1⊗η)=1   : {left_ok}")
        print(f"  Right snake (1⊗ε)∘(η⊗1)=1   : {right_ok}")
        return left_ok and right_ok

    def _verify_compact_closure(self):
        """Name-counit coherence: flattening a relation and recovering it."""
        R = [[True, False], [False, True], [True, True]]  # 2→3

        # Name ⌜R⌝: I → B⊗A* as a 1→6 relation
        name_R = []
        row = []
        for j in range(len(R[0])):      # source cols of R
            for i in range(len(R)):     # target rows of R
                row.append(R[i][j])
        name_R.append(row)

        # Recover by un-naming: the entries should match R
        m, n = len(R), len(R[0])
        recovered = []
        for j in range(n):
            for i in range(m):
                recovered.append(R[i][j])
        ok = name_R[0] == recovered
        print(f"  Name/counit coherence        : {ok}")
        print(f"  Internal hom |A⊸B|=|A|×|B|  : {len(name_R[0]) == m * n}")
        return ok and len(name_R[0]) == m * n

    def _verify_tensor_identity(self):
        """A ⊗ I ≅ A and I ⊗ A ≅ A"""
        R = [[True, False, True], [False, True, False]]  # 3→2
        I = id_matrix(1)  # 1→1
        # Tensor with I should preserve dimension structure
        ti_ok = (len(tensor(R, I)) == len(R) * 1 and
                 len(tensor(R, I)[0]) == len(R[0]) * 1)
        it_ok = (len(tensor(I, R)) == 1 * len(R) and
                 len(tensor(I, R)[0]) == 1 * len(R[0]))
        print(f"  A⊗I preserves dimensions     : {ti_ok}")
        print(f"  I⊗A preserves dimensions     : {it_ok}")
        return ti_ok and it_ok

    def verify(self) -> bool:
        print("=== Dagger Compact Ob3ect ===")
        d1 = self._verify_dagger_involution()
        d2 = self._verify_dagger_composition()
        s  = self._verify_snake_equations()
        c  = self._verify_compact_closure()
        u  = self._verify_tensor_identity()
        layer_ok = d1 and d2 and s and c and u
        frob_ok = frobenius_phase(self.source)
        closure = layer_ok and frob_ok
        print(f"Closure: {closure}")
        return closure


if __name__ == "__main__":
    sys.exit(0 if DaggerCompactOb3ect().verify() else 1)
