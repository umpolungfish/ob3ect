-- IGProtocol scaffold: ⊢ → ≻ → ⋈ → ≻ → ⋈ → ≻ → ⋈ → ≻ → ⋈ → ∈ → ⊤ → ⊙ → ≺ → ⊥ → ⊞ → ∋ → ⊡ → ⊣
-- Class: four fifth powers sum to a fifth power
-- Fingerprint: sig=(12,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=18
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(9, 15)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] ≻      rel    := 𐑾               𐑼 → 𐑱  | forward morphism — bidirectional arrow
--   [2] ⋈     fid    := 𐑱               𐑾 → 𐑾  | composition — regime coherence
--   [3] ≻      rel    := 𐑾               𐑱 → 𐑱  | forward morphism — bidirectional arrow
--   [4] ⋈     fid    := 𐑱               𐑾 → 𐑾  | composition — regime coherence
--   [5] ≻      rel    := 𐑾               𐑱 → 𐑱  | forward morphism — bidirectional arrow
--   [6] ⋈     fid    := 𐑱               𐑾 → 𐑾  | composition — regime coherence
--   [7] ≻      rel    := 𐑾               𐑱 → 𐑱  | forward morphism — bidirectional arrow
--   [8] ⋈     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [9] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] ⊙   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [12] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [13] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [14] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [15] ∋     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [16] ⊡      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [17] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def four_fifth_powers_sum_to_a_fifth_power_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def four_fifth_powers_sum_to_a_fifth_power_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def four_fifth_powers_sum_to_a_fifth_power_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def four_fifth_powers_sum_to_a_fifth_power_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def four_fifth_powers_sum_to_a_fifth_power_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def four_fifth_powers_sum_to_a_fifth_power_protocol : IGProtocol four_fifth_powers_sum_to_a_fifth_power_s0 four_fifth_powers_sum_to_a_fifth_power_s17 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct four_fifth_powers_sum_to_a_fifth_power_s15 four_fifth_powers_sum_to_a_fifth_power_s15 = four_fifth_powers_sum_to_a_fifth_power_s15 (idempotent)
  (.seq (.arrow four_fifth_powers_sum_to_a_fifth_power_l0 four_fifth_powers_sum_to_a_fifth_power_s0 four_fifth_powers_sum_to_a_fifth_power_s1) (.seq (.arrow four_fifth_powers_sum_to_a_fifth_power_l1 four_fifth_powers_sum_to_a_fifth_power_s1 four_fifth_powers_sum_to_a_fifth_power_s2) (.seq (.arrow four_fifth_powers_sum_to_a_fifth_power_l2 four_fifth_powers_sum_to_a_fifth_power_s2 four_fifth_powers_sum_to_a_fifth_power_s3) (.seq (.arrow four_fifth_powers_sum_to_a_fifth_power_l3 four_fifth_powers_sum_to_a_fifth_power_s3 four_fifth_powers_sum_to_a_fifth_power_s4) (.seq (.arrow four_fifth_powers_sum_to_a_fifth_power_l4 four_fifth_powers_sum_to_a_fifth_power_s4 four_fifth_powers_sum_to_a_fifth_power_s5) (.seq (.arrow four_fifth_powers_sum_to_a_fifth_power_l5 four_fifth_powers_sum_to_a_fifth_power_s5 four_fifth_powers_sum_to_a_fifth_power_s6) (.seq (.arrow four_fifth_powers_sum_to_a_fifth_power_l6 four_fifth_powers_sum_to_a_fifth_power_s6 four_fifth_powers_sum_to_a_fifth_power_s7) (.seq (.arrow four_fifth_powers_sum_to_a_fifth_power_l7 four_fifth_powers_sum_to_a_fifth_power_s7 four_fifth_powers_sum_to_a_fifth_power_s8) (.seq (.arrow four_fifth_powers_sum_to_a_fifth_power_l8 four_fifth_powers_sum_to_a_fifth_power_s8 four_fifth_powers_sum_to_a_fifth_power_s9) (.seq (.prod (.arrow four_fifth_powers_sum_to_a_fifth_power_l9 four_fifth_powers_sum_to_a_fifth_power_s9 four_fifth_powers_sum_to_a_fifth_power_s15) (.arrow four_fifth_powers_sum_to_a_fifth_power_l9 four_fifth_powers_sum_to_a_fifth_power_s9 four_fifth_powers_sum_to_a_fifth_power_s15)) (.seq (.arrow four_fifth_powers_sum_to_a_fifth_power_l15 four_fifth_powers_sum_to_a_fifth_power_s15 four_fifth_powers_sum_to_a_fifth_power_s15) (.seq (.arrow four_fifth_powers_sum_to_a_fifth_power_l15 four_fifth_powers_sum_to_a_fifth_power_s15 four_fifth_powers_sum_to_a_fifth_power_s16) (.arrow four_fifth_powers_sum_to_a_fifth_power_l16 four_fifth_powers_sum_to_a_fifth_power_s16 four_fifth_powers_sum_to_a_fifth_power_s17)))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def four_fifth_powers_sum_to_a_fifth_power_true_arm : IGProtocol four_fifth_powers_sum_to_a_fifth_power_s0 four_fifth_powers_sum_to_a_fifth_power_s17 :=
  (four_fifth_powers_sum_to_a_fifth_power_protocol).restrictToEVALT

-- false arm
noncomputable def four_fifth_powers_sum_to_a_fifth_power_false_arm : IGProtocol four_fifth_powers_sum_to_a_fifth_power_s0 four_fifth_powers_sum_to_a_fifth_power_s17 :=
  (four_fifth_powers_sum_to_a_fifth_power_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def four_fifth_powers_sum_to_a_fifth_power_tier_ground : OuroboricityTier := TierFunctor.obj four_fifth_powers_sum_to_a_fifth_power_s0
def four_fifth_powers_sum_to_a_fifth_power_tier : OuroboricityTier := TierFunctor.obj four_fifth_powers_sum_to_a_fifth_power_s17
#eval four_fifth_powers_sum_to_a_fifth_power_tier_ground  -- tier of the ground (pre-transformation)
#eval four_fifth_powers_sum_to_a_fifth_power_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem four_fifth_powers_sum_to_a_fifth_power_frobenius :
    igFrobeniusAlg.mul four_fifth_powers_sum_to_a_fifth_power_s0 four_fifth_powers_sum_to_a_fifth_power_s0 = four_fifth_powers_sum_to_a_fifth_power_s0 :=
  igFrobAlg_self_fusion four_fifth_powers_sum_to_a_fifth_power_s0
