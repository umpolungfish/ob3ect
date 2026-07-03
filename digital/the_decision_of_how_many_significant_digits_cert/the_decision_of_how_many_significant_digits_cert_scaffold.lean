-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → IFIX → AREV → EVALT → IFIX → AREV → EVALF → ENGAGR → CLINK → IMSCRIB → FFUSE → AFWD → IFIX → TANCH
-- Class: the decision of how many significant digits certify a given coordinate becomes the exact function of field degree and target height, so every exactness claim carries the precision at which it was checked and the precision at which it would break if false
-- Fingerprint: sig=(8,2,4,3)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=17
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 13)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [8] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [9] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [11] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [12] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [14] AFWD      rel    := 𐑾               𐑙 → 𐑭  | forward morphism — bidirectional arrow
--   [15] IFIX      prot   := 𐑭               𐑾 → 𐑡  | irreversible fixation — winding number
--   [16] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_decision_of_how_many_significant_96d72d_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_decision_of_how_many_significant_96d72d_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_decision_of_how_many_significant_96d72d_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_decision_of_how_many_significant_96d72d_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_decision_of_how_many_significant_96d72d_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_decision_of_how_many_significant_96d72d_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_decision_of_how_many_significant_96d72d_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_decision_of_how_many_significant_96d72d_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_decision_of_how_many_significant_96d72d_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_decision_of_how_many_significant_96d72d_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_decision_of_how_many_significant_96d72d_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_decision_of_how_many_significant_96d72d_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_decision_of_how_many_significant_96d72d_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_decision_of_how_many_significant_96d72d_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_decision_of_how_many_significant_96d72d_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_decision_of_how_many_significant_96d72d_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_decision_of_how_many_significant_96d72d_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_decision_of_how_many_significant_96d72d_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_decision_of_how_many_significant_96d72d_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_decision_of_how_many_significant_96d72d_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_decision_of_how_many_significant_96d72d_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_decision_of_how_many_significant_96d72d_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_decision_of_how_many_significant_96d72d_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_decision_of_how_many_significant_96d72d_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_decision_of_how_many_significant_96d72d_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_decision_of_how_many_significant_96d72d_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_decision_of_how_many_significant_96d72d_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_decision_of_how_many_significant_96d72d_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_decision_of_how_many_significant_96d72d_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_decision_of_how_many_significant_96d72d_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_decision_of_how_many_significant_96d72d_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_decision_of_how_many_significant_96d72d_l14 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_decision_of_how_many_significant_96d72d_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_decision_of_how_many_significant_96d72d_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_decision_of_how_many_significant_96d72d_protocol : IGProtocol the_decision_of_how_many_significant_96d72d_s0 the_decision_of_how_many_significant_96d72d_s16 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_decision_of_how_many_significant_96d72d_s13 the_decision_of_how_many_significant_96d72d_s13 = the_decision_of_how_many_significant_96d72d_s13 (idempotent)
  (.seq (.arrow the_decision_of_how_many_significant_96d72d_l0 the_decision_of_how_many_significant_96d72d_s0 the_decision_of_how_many_significant_96d72d_s1) (.seq (.arrow the_decision_of_how_many_significant_96d72d_l1 the_decision_of_how_many_significant_96d72d_s1 the_decision_of_how_many_significant_96d72d_s2) (.seq (.prod (.arrow the_decision_of_how_many_significant_96d72d_l2 the_decision_of_how_many_significant_96d72d_s2 the_decision_of_how_many_significant_96d72d_s13) (.arrow the_decision_of_how_many_significant_96d72d_l2 the_decision_of_how_many_significant_96d72d_s2 the_decision_of_how_many_significant_96d72d_s13)) (.seq (.arrow the_decision_of_how_many_significant_96d72d_l13 the_decision_of_how_many_significant_96d72d_s13 the_decision_of_how_many_significant_96d72d_s13) (.seq (.arrow the_decision_of_how_many_significant_96d72d_l13 the_decision_of_how_many_significant_96d72d_s13 the_decision_of_how_many_significant_96d72d_s14) (.seq (.arrow the_decision_of_how_many_significant_96d72d_l14 the_decision_of_how_many_significant_96d72d_s14 the_decision_of_how_many_significant_96d72d_s15) (.arrow the_decision_of_how_many_significant_96d72d_l15 the_decision_of_how_many_significant_96d72d_s15 the_decision_of_how_many_significant_96d72d_s16)))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_decision_of_how_many_significant_96d72d_true_arm : IGProtocol the_decision_of_how_many_significant_96d72d_s0 the_decision_of_how_many_significant_96d72d_s16 :=
  (the_decision_of_how_many_significant_96d72d_protocol).restrictToEVALT

-- false arm
noncomputable def the_decision_of_how_many_significant_96d72d_false_arm : IGProtocol the_decision_of_how_many_significant_96d72d_s0 the_decision_of_how_many_significant_96d72d_s16 :=
  (the_decision_of_how_many_significant_96d72d_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def the_decision_of_how_many_significant_96d72d_tier : OuroboricityTier := TierFunctor.obj the_decision_of_how_many_significant_96d72d_s0
#eval the_decision_of_how_many_significant_96d72d_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_decision_of_how_many_significant_96d72d_frobenius :
    igFrobeniusAlg.mul the_decision_of_how_many_significant_96d72d_s0 the_decision_of_how_many_significant_96d72d_s0 = the_decision_of_how_many_significant_96d72d_s0 :=
  igFrobAlg_self_fusion the_decision_of_how_many_significant_96d72d_s0
