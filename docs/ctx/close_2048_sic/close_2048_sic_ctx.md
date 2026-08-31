# close-2048-sic — frozen context

Close `SICPOVM_Exists 2048` — the single open plank left by the ring2048-bridge
campaign, i.e. the Zauner conjecture for `d = 2¹¹ = 2048`. Construct an exact
fiducial `ψ : Fin 2048 → ℂ` with `IsSICPOVM 2048 ψ`, by the same ExistenceRing
method that turned `crystal_forces_d12_sic` from axiom into theorem for d=12, then
transport it along a ring hom to ℂ. This is a genuinely frontier-scale build; the
batch stages it into decidable planks and is HONEST that the endpoint may be a
floor-certified numerical fiducial (as d=12 was at cont.10) rather than a full
in-Lean axiom drop — either is a finding, per the founding principle (no walls;
the deep-vanish floor is the admission gate).

## The exact target (in-tree, real)

`Imscribing/Millennium/SIC_POVM_Stark.lean`:
```lean
structure IsSICPOVM (d) [NeZero d] (fiducial : Fin d → ℂ) : Prop where
  norm_eq     : wh_normSq d fiducial = 1
  equiangular : ∀ (a b : Fin d), (a, b) ≠ (0, 0) →
    ((d:ℝ) + 1) * ‖wh_inner d fiducial (D_ah d a b 0 fiducial)‖ ^ 2 = 1
def SICPOVM_Exists (d) [NeZero d] : Prop := ∃ fiducial, IsSICPOVM d fiducial
```
So `SICPOVM_Exists 2048` = one unit-norm ψ whose `2048² − 1 = 4 194 303`
Weyl–Heisenberg overlaps `⟨ψ|D_{a,b}ψ⟩` all have `‖·‖² = 1/(d+1) = 1/2049`.
`ZaunerBridge 11 = SICPOVM_Exists 2048` (`Ring2048_Bridge.lean`); closing it makes
`zauner_bridge_11`'s RHS a theorem, discharges the capstone's open clause, and lets
`main_theorem_2048_ring` (BelnapRing2048) go unconditional.

## Base field (computed)

Appleby SIC discriminant `m_d = (d−3)(d+1) = 2045·2049 = 4 190 205 = 3·5·409·683`
(squarefree). Base field `K = ℚ(√4190205)` — real quadratic, class/regulator large.
The fiducial lives in the **magnitude-extended (Dual-Link) tower** over the
totally-real moduli subfield of the ray class field of K, NOT in the ray class
field alone (the magnitude √N_k is a ramified double cover — the Dual mirror).

## THE METHOD (verbatim from the d=12 win — mirror it)

1. **Numerical recovery.** Recover ψ to deep precision (PARI/gp, Gauss–Newton over
   all overlap conditions), exploiting the order-3 **Zauner symmetry** (the
   canonical Clifford element F_z with F_z ψ = ψ up to phase) to cut the free DOF
   from 2048 complex to ≈ d/3 and to orbit the overlaps. Seed from the
   Appleby–Grassl exact-SIC data if a d=2048 (or 2^11-tower) fiducial exists there;
   otherwise flow it. This is the d=12 "1500-digit fiducial" step.
2. **Field skeleton.** Totally-real moduli subfield (the K16 analog): moduli
   `N_k = |z_k|²` as exact **S-units** of K (ramified only at primes of m_d),
   square-class basis pinned at the witness branch. Phases as folds of solvable
   palindromic min-polys / roots of unity (the D4-quartic / cyclotomic mechanism:
   phase u on the unit circle ⇒ self-reciprocal min poly ⇒ fold w=uᵐ,
   c=w+1/w=2cos ⇒ radical). Organize the coordinates as a **fusion orbit** under the
   ray class group (the SIC ↔ affine-Kac-Moody/WZW isomorph: characters split under
   a finite abelian fusion group via modular S,T data) rather than a monolith.
3. **Existence ring.** Assemble R = (totally-real moduli field)(√N-covers, i,
   phase generators), the d=2048 analog of `R = K16(s0,s1,s3,s9,i,c5,u1)` (d=12 was
   dim 2048/ℚ — the d=2048 ring will be far larger). Every component a genuine SIC
   point ⇒ any ring hom R→ℂ yields a SIC fiducial (conj-compatibility automatic).
4. **Lean, decidable.** Flat `List ℚ` power-basis engine (NEVER nested records —
   they overflow the elaborator; flat reduces θ^N under native_decide). Reduce the
   4 194 303 overlaps to **Galois/WH orbit representatives** (d=12 collapsed 143→31
   orbits sharing one (p,q) pair; d=2048's WH + Zauner symmetry collapses 4M into a
   tractable orbit set — this reduction is load-bearing, native_decide cannot see 4M
   identities). `norm_sum` (ΣN_k=1) + per-orbit `O·Ō=1/2049` + magnitude S-unit
   `C_k²=N_kN_i`, each native_decide. Generators re-verify in Python fractions
   before emit; never hand-enter (see gen_lean_*.py pattern in d12_sic_build).
5. **Embedding capstone.** One ring hom R→ℂ: real root g0 of the defining poly via
   rational IVT/interval arithmetic, positive √N_k(g0), witnessed phase embeddings,
   tower involution ↔ complex conjugation. `IsSICPOVM 2048 ψ` transfers along the
   hom ⇒ `SICPOVM_Exists 2048` is a theorem.

## SCALE REALITY — read before promising closure

d=2048 is orders of magnitude past d=12. The ray class field degree, coordinate
heights, and orbit count may be astronomically large; native_decide over the
orbit-reduced set may be intractable even if decidable. An exact d=2048 SIC may not
exist in the literature at all. So the honest first deliverables are: (i) the
Zauner-symmetry-reduced numerical fiducial at a deep floor, (ii) the base/ray-class
field skeleton, (iii) the decidable-plank decomposition with a real cost estimate.
Full in-Lean discharge is the horizon, not a promised near-term. Do NOT report
closure until the threefold gate passes (witness reproduced to the floor; every
in-tower identity native_decide-true; each overlap min-poly = its pinned poly).

## REGISTER SEPARATION (keep explicit)

This constructs the **F-arm** — the Stark-conditional exact ℂ^2048 fiducial (the
empirical shadow). The **T-arm** (Belnap multilattice structural SIC for d=2ⁿ) is
already proved UNCONDITIONALLY (`SIC_Multilattice_Proof.lean`). The character
obstruction (`BelnapRing2048.wh_char_two_valued`) proves the F-arm cannot be read
off the T-arm's WH(2)¹¹ orbit (its characters are ±1; the ℂ SIC needs the 2¹¹-th
roots of `WH(2¹¹) ≅ Z_{2048}²`). So the F-arm is a genuine Zauner construction, not
a re-labelling of the skeleton. The two registers never borrow each other's
authority.

## Prior art to reuse (do not redo)

`~/imsgct/d12_sic_build/` — the whole d=12 workspace (FINDINGS.md, refine*.py,
overlap/field/S-unit GP scripts, gen_lean_*.py). `SIC_D12_Embedding.lean` (frozen
here) is the exemplar ExistenceRing + embedding. The d=2 base case is proved in
`Ring2048_Bridge.lean` (`D2`) — the smallest worked instance of the same shape.

## Files frozen here
- `Ring2048_Bridge.lean` — the target predicate, the d=2 exemplar, the reduction.
- `SIC_POVM_Stark.lean` — `IsSICPOVM`/`SICPOVM_Exists` + the shadow-register header.
- `SIC_D12_Embedding.lean` — the ExistenceRing + embedding-capstone template.
- `SIC_Multilattice_Proof.lean` — the unconditional T-arm skeleton.
