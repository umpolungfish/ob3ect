-- IGProtocol scaffold: ⊢ → ⊣ → ≻ → ∈ → ⊤ → ≻ → ⊥ → ≺ → ⋈ → ⊞ → ∋ → ⊙ → ◻ → ⋈ → ≻ → ⊣
-- Class: the Mertens sum passes outside the square-root bound at some height
-- Fingerprint: sig=(10,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=16
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(3, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] ⊣     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] ≻      rel    := 𐑾               𐑡 → 𐑚  | forward morphism — bidirectional arrow
--   [3] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [9] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [10] ∋     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [11] ⊙   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [12] ◻      prot   := 𐑭               𐑠 → 𐑱  | irreversible fixation — winding number
--   [13] ⋈     fid    := 𐑱               𐑭 → 𐑾  | composition — regime coherence
--   [14] ≻      rel    := 𐑾               𐑱 → 𐑡  | forward morphism — bidirectional arrow
--   [15] ⊣     top    := 𐑡               𐑾 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_mertens_sum_passes_outside_the_1f1828_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_mertens_sum_passes_outside_the_1f1828_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_mertens_sum_passes_outside_the_1f1828_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_mertens_sum_passes_outside_the_1f1828_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_mertens_sum_passes_outside_the_1f1828_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_mertens_sum_passes_outside_the_1f1828_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_l14 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_passes_outside_the_1f1828_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_mertens_sum_passes_outside_the_1f1828_protocol : IGProtocol the_mertens_sum_passes_outside_the_1f1828_s0 the_mertens_sum_passes_outside_the_1f1828_s15 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_mertens_sum_passes_outside_the_1f1828_s10 the_mertens_sum_passes_outside_the_1f1828_s10 = the_mertens_sum_passes_outside_the_1f1828_s10 (idempotent)
  (.seq (.arrow the_mertens_sum_passes_outside_the_1f1828_l0 the_mertens_sum_passes_outside_the_1f1828_s0 the_mertens_sum_passes_outside_the_1f1828_s1) (.seq (.arrow the_mertens_sum_passes_outside_the_1f1828_l1 the_mertens_sum_passes_outside_the_1f1828_s1 the_mertens_sum_passes_outside_the_1f1828_s2) (.seq (.arrow the_mertens_sum_passes_outside_the_1f1828_l2 the_mertens_sum_passes_outside_the_1f1828_s2 the_mertens_sum_passes_outside_the_1f1828_s3) (.seq (.prod (.arrow the_mertens_sum_passes_outside_the_1f1828_l3 the_mertens_sum_passes_outside_the_1f1828_s3 the_mertens_sum_passes_outside_the_1f1828_s10) (.arrow the_mertens_sum_passes_outside_the_1f1828_l3 the_mertens_sum_passes_outside_the_1f1828_s3 the_mertens_sum_passes_outside_the_1f1828_s10)) (.seq (.arrow the_mertens_sum_passes_outside_the_1f1828_l10 the_mertens_sum_passes_outside_the_1f1828_s10 the_mertens_sum_passes_outside_the_1f1828_s10) (.seq (.arrow the_mertens_sum_passes_outside_the_1f1828_l10 the_mertens_sum_passes_outside_the_1f1828_s10 the_mertens_sum_passes_outside_the_1f1828_s11) (.seq (.arrow the_mertens_sum_passes_outside_the_1f1828_l11 the_mertens_sum_passes_outside_the_1f1828_s11 the_mertens_sum_passes_outside_the_1f1828_s12) (.seq (.arrow the_mertens_sum_passes_outside_the_1f1828_l12 the_mertens_sum_passes_outside_the_1f1828_s12 the_mertens_sum_passes_outside_the_1f1828_s13) (.seq (.arrow the_mertens_sum_passes_outside_the_1f1828_l13 the_mertens_sum_passes_outside_the_1f1828_s13 the_mertens_sum_passes_outside_the_1f1828_s14) (.arrow the_mertens_sum_passes_outside_the_1f1828_l14 the_mertens_sum_passes_outside_the_1f1828_s14 the_mertens_sum_passes_outside_the_1f1828_s15))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_mertens_sum_passes_outside_the_1f1828_true_arm : IGProtocol the_mertens_sum_passes_outside_the_1f1828_s0 the_mertens_sum_passes_outside_the_1f1828_s15 :=
  (the_mertens_sum_passes_outside_the_1f1828_protocol).restrictToEVALT

-- false arm
noncomputable def the_mertens_sum_passes_outside_the_1f1828_false_arm : IGProtocol the_mertens_sum_passes_outside_the_1f1828_s0 the_mertens_sum_passes_outside_the_1f1828_s15 :=
  (the_mertens_sum_passes_outside_the_1f1828_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def the_mertens_sum_passes_outside_the_1f1828_tier_ground : OuroboricityTier := TierFunctor.obj the_mertens_sum_passes_outside_the_1f1828_s0
def the_mertens_sum_passes_outside_the_1f1828_tier : OuroboricityTier := TierFunctor.obj the_mertens_sum_passes_outside_the_1f1828_s15
#eval the_mertens_sum_passes_outside_the_1f1828_tier_ground  -- tier of the ground (pre-transformation)
#eval the_mertens_sum_passes_outside_the_1f1828_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_mertens_sum_passes_outside_the_1f1828_frobenius :
    igFrobeniusAlg.mul the_mertens_sum_passes_outside_the_1f1828_s0 the_mertens_sum_passes_outside_the_1f1828_s0 = the_mertens_sum_passes_outside_the_1f1828_s0 :=
  igFrobAlg_self_fusion the_mertens_sum_passes_outside_the_1f1828_s0
