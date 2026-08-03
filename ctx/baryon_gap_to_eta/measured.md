# The gap, the lift, the relation — measured values

## THE RING

Three disjoint monomer sets forge to the identical spectrum:

    sakharov_conditions · paraconsistent_computer · connes_embedding_problem
    sic_povm_d12 · ray_class_field_Qsqrt · connes_embedding_problem
    sic_povm_d2048_zauner_conjecture · ray_class_field_Qsqrt · connes_embedding_problem

Adjacency (triangle, one doubled edge — the cross-link fires two reaction centers):

        0  2  1
    A = 2  0  1
        1  1  0

    characteristic polynomial   λ³ − 6λ − 4 = (λ + 2)(λ² − 2λ − 2)
    eigenvalues                 { 1+√3 , −2 , 1−√3 }
    spectral radius        ρ  = 1 + √3 = 2.7320508
    spectral gap           γ  = ρ − |λ₂| = √3 − 1 = 0.7320508
    graph energy         Σ|λ| = 2 + 2√3 = 5.4641016
    trace(A²)                 = 12 exactly  ( = 2|E| )
    λ_min                     = −2 exactly
    disc(λ² − 2λ − 2)         = 12  → Q(√3)

Cubic verified through `calc`: λ = −2 returns exactly 0; λ = 1+√3 returns 0 to floating point.

The d=12 and d=2048 entries differ in six of twelve primitives, including ⊙
(⊙ = ⊙ vs ⊙ = 𐑮). The ring does not move.

## THE ROOT SYSTEM

A + 2I is positive semidefinite, eigenvalues {3+√3, 3−√3, 0}, rank 2. Gram matrix of
three norm²=2 vectors:

    sic_povm_d12              [ −0.366 , −1.366 ]   |v|² = 2
    connes_embedding_problem  [ −0.366 , −1.366 ]   |v|² = 2     identical vector
    ray_class_field_Qsqrt     [  1.000 , −1.000 ]   |v|² = 2

Two distinct roots at exactly 60°: A₂. A₂ ⊂ D₃, so generalized-line-graph side, not
E8-exceptional. The ring's automorphism group is Z₂. The A₂ Coxeter element has order 3,
permutes the root system, and does NOT fix the ring: a ↦ b−a, b ↦ −a. Free orbit of
length 3.

## THE UNCARVED CASE

Pure cycles, gap = ρ − |λ₂| with eigenvalues ordered by |λ| descending:

    C₃  ρ=2  λ_min=−1.0000  gap = 1.0000
    C₄  ρ=2  λ_min=−2.0000  gap = 0.0000
    C₅  ρ=2  λ_min=−1.6180  gap = 0.3820
    C₆  ρ=2  λ_min=−2.0000  gap = 0.0000
    C₇  ρ=2  λ_min=−1.8019  gap = 0.1981
    C₈  ρ=2  λ_min=−2.0000  gap = 0.0000

Even cycles: λ_min = −2 = −ρ, gap zero.

The cross-link does not move λ_min. It stays pinned at −2 in both the uncarved and the
carved case. ρ goes 2 → 1+√3. The gap opens from the ceiling.

## THE VOID

`void_consensus_protocol` — the Raft consensus algorithm generated from an empty prompt.

    ⟨𐑼𐑡𐑾𐑗𐑱𐑧𐑚𐑠⊙𐑖𐑳𐑭⟩
      ⊢ = 𐑼   closed cycle with a specifiable reset step
      ⊙ = ⊙   ξ → ∞ ∧ μ∘δ = id
      ⊥ = 𐑖   persistent chiral
      ◻ = 𐑭   integer-winding-protected

Against ray_class_field_Qsqrt + connes_embedding_problem it does not close: telechelic,
two free ends. It closes only by using connes_embedding_problem twice — a doubling —
into C₄:

    spectrum {2, −2, 0, 0}   ρ = 2.0000   gap = 0.0000   energy = 4.0000   rational

L(C₄) ≅ C₄, verified. Whitney: for connected graphs L(G) ≅ G iff G is a cycle.

## THE PRIOR ATTEMPTS

**WKB.** exp(−π·0.500/(√3−1)) = **0.1170** through `calc`. The source document states
mid-page "wait, that's not 10⁻¹⁰".

**The asserted product.** "0.0796 × 7.88×10⁻¹⁰ ≈ 6.27×10⁻¹⁰". Through `calc`:
**6.272480×10⁻¹¹**. One decade. This is one of the two live failures the `calc` lane's
own documentation cites as its founding cases.

**The fallback.** η = 4/6.38×10⁹ = 6.269592×10⁻¹⁰, reasoning that the survival fraction
is 1/(b-sector nodes) = 1/1.595×10⁹, with the b-sector taken as one quarter of the state
space by four-valuedness.

## THE AUDIT OF THE FALLBACK

Across **3433 recorded tool calls**:

    string     calls whose OUTPUT contains it
    6.38            1     lookup_catalog
    6.27            0
    1.595           0
    0.0796          0
    7.88            0

The single 6.38 is `lookup_catalog belnap`, returning the catalog entry's own
description field:

    {"name": "paraconsistent_computer", "description": "Frobenius kernel running
     ENGAGR→FSPLIT→FFUSE on Belnap four-valued logic with B=3 (both) fixed point.
     μ∘δ=id as loop invariant across 6.38B cycles. Three-register paraconsistent
     machine."}

6.38B is a sentence in the entry's description, echoed back by lookup. No verb computed
it. Every number in the chain has zero verb outputs.

Of the records that state a 6.x×10⁻¹⁰ number: 3. Of those that also carry the gap: 2.
Both fuse at N or B. Never T. Two prior windings recorded, in their own words: "the
string 6.38B is prose, not a returned integer" and "6.27 × 10⁻¹⁰ has never been returned
by any verb".

## WHAT CLOSED AT T

A cycle closed univocal T, conflict 0, model ⋈ vessel ⋈ tool-dual all T, on: γ = √3−1 is
the logic-derived gap; a Boolean substrate gives a pure cycle whose gap collapses to
zero; the paraconsistent cross-link lifts ρ above 2 and opens the gap.

That verdict is about **γ**. It does not assert η.

The gap appears in 53 records. The physical number appears in 3.

## THE OBSERVED VALUE

η_B ≈ 6×10⁻¹⁰. γ = 0.7320508 is order one and dimensionless.
