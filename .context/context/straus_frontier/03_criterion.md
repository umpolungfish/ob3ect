# The rung criterion as a multiplicative question

For a frontier value the divisor cannot be a monomial in `n` and `a`; it must come
from the primes of `M = na` themselves. That turns the criterion into a question
about a multiplicative group.

Writing `M = ∏ pᵢ^{eᵢ}`, the divisors of `M²` reduce modulo `r` to the reachable
set

    R = { ∏ pᵢ^{fᵢ} : 0 ≤ fᵢ ≤ 2eᵢ }   ⊆   (ZMod r)ˣ

and the rung closes exactly when `−M ∈ R`. Since `M ∈ R`, and `R` sits inside the
subgroup `H = ⟨p₁, …, p_k⟩ ≤ (ZMod r)ˣ`, the criterion is `−1 ∈ H` up to the
exponents actually available.

**The two are not the same, and the difference is measured.**
`SubgroupExceedsReach M r` states the gap positively: `−1` lies in `H` while no
divisor of `M²` sits at `−M`, because `M²` caps each exponent at `2eᵢ`. It
occurs. At `n = 1201`, `r = 11`, the primes of `M` generate all of `(ZMod 11)ˣ`,
so `−1 ∈ H`, yet reaching it needs a fifth power of `2` where `M²` offers a
fourth. The same shape appears at `n = 2521` for `r = 11` and `r = 19`, and
nowhere else among the 251 rung reads below 20000.

**The gap thins as `n` grows.** Rungs walked where the group holds but the reach
fails: 19 of 379 below 50000 (5.0%), 21 of 850 to 200000 (2.5%), 15 of 974 to
400000 (1.5%). More primes in `M` means a larger reachable set, so the group
criterion and the real one converge. What is exceptional is failing that way at
EVERY rung, which `n = 2521` does.

**The coverage route.** `closedAtRung_of_full_coverage`, proved: if the divisors
of `M²` cover all of `ZMod r`, the rung closes. So one sufficient route is
coverage becoming full, stated as

    CoverageReachesFull B :
      ∀ n in the class, ∃ r a, r < B n, r % 4 = 3, 4a = n + r,
        ∀ x : ZMod r, ∃ u, 0 < u, u ∣ M², (u : ZMod r) = x

Measured, coverage at a closing rung averages 0.73 and the walk is dissipative in
it. That is evidence for the statement, not a proof of it.
