-- IGProtocol scaffold: ⊢ → ⊙ → ≻ → ∈ → ⊤ → ⊥ → ⊞ → ⊡ → ⋈ → ∈ → ⊤ → ⊥ → ∋ → ≺ → ⊣
-- Class: general number field sieve
-- Fingerprint: sig=(6,3,5,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(9, 12)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] ⊙   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] ≻      rel    := 𐑾               𐑠 → 𐑚  | forward morphism — bidirectional arrow
--   [3] ∈    gran   := 𐑚               𐑾 → ⊙  | split δ — range decomposition
--   [4] ⊤     crit   := ⊙               𐑚 → 𐑖  | evaluate-true — criticality gate open
--   [5] ⊥     chir   := 𐑖               ⊙ → 𐑳  | evaluate-false — chirality check
--   [6] ⊞    stoi   := 𐑳               𐑖 → 𐑭  | engage paradox — B-state, both arms
--   [7] ⊡      prot   := 𐑭               𐑳 → 𐑱  | irreversible fixation — winding number
--   [8] ⋈     fid    := 𐑱               𐑭 → 𐑚  | composition — regime coherence
--   [9] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [12] ∋     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [13] ≺      pol    := 𐑗               𐑙 → 𐑡  | reverse morphism — parity flip
--   [14] ⊣     top    := 𐑡               𐑗 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def general_number_field_sieve_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_number_field_sieve_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_number_field_sieve_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_number_field_sieve_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_number_field_sieve_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def general_number_field_sieve_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def general_number_field_sieve_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def general_number_field_sieve_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def general_number_field_sieve_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def general_number_field_sieve_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def general_number_field_sieve_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def general_number_field_sieve_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def general_number_field_sieve_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def general_number_field_sieve_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def general_number_field_sieve_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def general_number_field_sieve_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_number_field_sieve_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_number_field_sieve_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_number_field_sieve_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_number_field_sieve_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def general_number_field_sieve_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def general_number_field_sieve_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def general_number_field_sieve_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def general_number_field_sieve_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_number_field_sieve_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_number_field_sieve_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def general_number_field_sieve_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def general_number_field_sieve_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_number_field_sieve_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_number_field_sieve_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def general_number_field_sieve_protocol : IGProtocol general_number_field_sieve_s0 general_number_field_sieve_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct general_number_field_sieve_s12 general_number_field_sieve_s12 = general_number_field_sieve_s12 (idempotent)
  (.seq (.arrow general_number_field_sieve_l0 general_number_field_sieve_s0 general_number_field_sieve_s1) (.seq (.arrow general_number_field_sieve_l1 general_number_field_sieve_s1 general_number_field_sieve_s2) (.seq (.arrow general_number_field_sieve_l2 general_number_field_sieve_s2 general_number_field_sieve_s3) (.seq (.arrow general_number_field_sieve_l3 general_number_field_sieve_s3 general_number_field_sieve_s4) (.seq (.arrow general_number_field_sieve_l4 general_number_field_sieve_s4 general_number_field_sieve_s5) (.seq (.arrow general_number_field_sieve_l5 general_number_field_sieve_s5 general_number_field_sieve_s6) (.seq (.arrow general_number_field_sieve_l6 general_number_field_sieve_s6 general_number_field_sieve_s7) (.seq (.arrow general_number_field_sieve_l7 general_number_field_sieve_s7 general_number_field_sieve_s8) (.seq (.arrow general_number_field_sieve_l8 general_number_field_sieve_s8 general_number_field_sieve_s9) (.seq (.prod (.arrow general_number_field_sieve_l9 general_number_field_sieve_s9 general_number_field_sieve_s12) (.arrow general_number_field_sieve_l9 general_number_field_sieve_s9 general_number_field_sieve_s12)) (.seq (.arrow general_number_field_sieve_l12 general_number_field_sieve_s12 general_number_field_sieve_s12) (.seq (.arrow general_number_field_sieve_l12 general_number_field_sieve_s12 general_number_field_sieve_s13) (.arrow general_number_field_sieve_l13 general_number_field_sieve_s13 general_number_field_sieve_s14)))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def general_number_field_sieve_true_arm : IGProtocol general_number_field_sieve_s0 general_number_field_sieve_s14 :=
  (general_number_field_sieve_protocol).restrictToEVALT

-- false arm
noncomputable def general_number_field_sieve_false_arm : IGProtocol general_number_field_sieve_s0 general_number_field_sieve_s14 :=
  (general_number_field_sieve_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def general_number_field_sieve_tier_ground : OuroboricityTier := TierFunctor.obj general_number_field_sieve_s0
def general_number_field_sieve_tier : OuroboricityTier := TierFunctor.obj general_number_field_sieve_s14
#eval general_number_field_sieve_tier_ground  -- tier of the ground (pre-transformation)
#eval general_number_field_sieve_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem general_number_field_sieve_frobenius :
    igFrobeniusAlg.mul general_number_field_sieve_s0 general_number_field_sieve_s0 = general_number_field_sieve_s0 :=
  igFrobAlg_self_fusion general_number_field_sieve_s0
