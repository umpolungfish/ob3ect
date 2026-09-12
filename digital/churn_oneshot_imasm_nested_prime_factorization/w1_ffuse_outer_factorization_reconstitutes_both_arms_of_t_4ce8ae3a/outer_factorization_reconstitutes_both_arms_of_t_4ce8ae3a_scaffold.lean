-- IGProtocol scaffold: ∈ → ⊤ → ⊡ → ≻ → ∈ → ⊤ → ⊥ → ∋ → ⊞ → ⋈ → ⊥ → ⊙ → ≺ → ∋
-- Class: Outer factorization reconstitutes, both arms of the outer ∈ converge. The T-arm provides the factor list [d, q_factors], the F-arm provides the trivial factorization [n]. Conflicting arms rejoin to B.
-- Fingerprint: sig=(4,4,5,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=14
-- Expected tier: O₂
-- ∈/∋ pairs: [(4, 7), (0, 13)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [1] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [2] ⊡      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [3] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [8] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [10] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] ⊙   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [12] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [13] ∋     stoi   := 𐑙               𐑙 → 𐑚  | fuse μ — assembly mode

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def outer_factorization_reconstitutes_both_1daf03_s0 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def outer_factorization_reconstitutes_both_1daf03_s1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def outer_factorization_reconstitutes_both_1daf03_s2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def outer_factorization_reconstitutes_both_1daf03_s3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def outer_factorization_reconstitutes_both_1daf03_s4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def outer_factorization_reconstitutes_both_1daf03_s5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def outer_factorization_reconstitutes_both_1daf03_s6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def outer_factorization_reconstitutes_both_1daf03_s7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def outer_factorization_reconstitutes_both_1daf03_s8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def outer_factorization_reconstitutes_both_1daf03_s9 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def outer_factorization_reconstitutes_both_1daf03_s10 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def outer_factorization_reconstitutes_both_1daf03_s11 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def outer_factorization_reconstitutes_both_1daf03_s12 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def outer_factorization_reconstitutes_both_1daf03_s13 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def outer_factorization_reconstitutes_both_1daf03_l0 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def outer_factorization_reconstitutes_both_1daf03_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def outer_factorization_reconstitutes_both_1daf03_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def outer_factorization_reconstitutes_both_1daf03_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def outer_factorization_reconstitutes_both_1daf03_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def outer_factorization_reconstitutes_both_1daf03_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def outer_factorization_reconstitutes_both_1daf03_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def outer_factorization_reconstitutes_both_1daf03_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def outer_factorization_reconstitutes_both_1daf03_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def outer_factorization_reconstitutes_both_1daf03_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def outer_factorization_reconstitutes_both_1daf03_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def outer_factorization_reconstitutes_both_1daf03_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def outer_factorization_reconstitutes_both_1daf03_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def outer_factorization_reconstitutes_both_1daf03_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def outer_factorization_reconstitutes_both_1daf03_protocol : IGProtocol outer_factorization_reconstitutes_both_1daf03_s0 outer_factorization_reconstitutes_both_1daf03_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct outer_factorization_reconstitutes_both_1daf03_s7 outer_factorization_reconstitutes_both_1daf03_s7 = outer_factorization_reconstitutes_both_1daf03_s7 (idempotent)
  (.seq (.prod (.arrow outer_factorization_reconstitutes_both_1daf03_l0 outer_factorization_reconstitutes_both_1daf03_s0 outer_factorization_reconstitutes_both_1daf03_s7) (.arrow outer_factorization_reconstitutes_both_1daf03_l0 outer_factorization_reconstitutes_both_1daf03_s0 outer_factorization_reconstitutes_both_1daf03_s7)) (.seq (.arrow outer_factorization_reconstitutes_both_1daf03_l7 outer_factorization_reconstitutes_both_1daf03_s7 outer_factorization_reconstitutes_both_1daf03_s7) (.seq (.arrow outer_factorization_reconstitutes_both_1daf03_l7 outer_factorization_reconstitutes_both_1daf03_s7 outer_factorization_reconstitutes_both_1daf03_s8) (.seq (.arrow outer_factorization_reconstitutes_both_1daf03_l8 outer_factorization_reconstitutes_both_1daf03_s8 outer_factorization_reconstitutes_both_1daf03_s9) (.seq (.arrow outer_factorization_reconstitutes_both_1daf03_l9 outer_factorization_reconstitutes_both_1daf03_s9 outer_factorization_reconstitutes_both_1daf03_s10) (.seq (.arrow outer_factorization_reconstitutes_both_1daf03_l10 outer_factorization_reconstitutes_both_1daf03_s10 outer_factorization_reconstitutes_both_1daf03_s11) (.seq (.arrow outer_factorization_reconstitutes_both_1daf03_l11 outer_factorization_reconstitutes_both_1daf03_s11 outer_factorization_reconstitutes_both_1daf03_s12) (.arrow outer_factorization_reconstitutes_both_1daf03_l12 outer_factorization_reconstitutes_both_1daf03_s12 outer_factorization_reconstitutes_both_1daf03_s13))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def outer_factorization_reconstitutes_both_1daf03_true_arm : IGProtocol outer_factorization_reconstitutes_both_1daf03_s0 outer_factorization_reconstitutes_both_1daf03_s13 :=
  (outer_factorization_reconstitutes_both_1daf03_protocol).restrictToEVALT

-- false arm
noncomputable def outer_factorization_reconstitutes_both_1daf03_false_arm : IGProtocol outer_factorization_reconstitutes_both_1daf03_s0 outer_factorization_reconstitutes_both_1daf03_s13 :=
  (outer_factorization_reconstitutes_both_1daf03_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂.
def outer_factorization_reconstitutes_both_1daf03_tier_ground : OuroboricityTier := TierFunctor.obj outer_factorization_reconstitutes_both_1daf03_s0
def outer_factorization_reconstitutes_both_1daf03_tier : OuroboricityTier := TierFunctor.obj outer_factorization_reconstitutes_both_1daf03_s13
#eval outer_factorization_reconstitutes_both_1daf03_tier_ground  -- tier of the ground (pre-transformation)
#eval outer_factorization_reconstitutes_both_1daf03_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem outer_factorization_reconstitutes_both_1daf03_frobenius :
    igFrobeniusAlg.mul outer_factorization_reconstitutes_both_1daf03_s0 outer_factorization_reconstitutes_both_1daf03_s0 = outer_factorization_reconstitutes_both_1daf03_s0 :=
  igFrobAlg_self_fusion outer_factorization_reconstitutes_both_1daf03_s0
