-- IGProtocol scaffold: VINIT → AFWD → IMSCRIB → FSPLIT → EVALT → EVALF → ENGAGR → FFUSE → CLINK → AREV → FSPLIT → EVALT → EVALF → FFUSE → TANCH → IFIX → FSPLIT → EVALT → EVALF → FFUSE → IMSCRIB → CLINK → TANCH → IFIX
-- Class: Apply ⊙ Criticality absorbing element entering Belnap BOTH paradice state
-- Fingerprint: sig=(9,6,7,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=24
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 7), (10, 13), (16, 19)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑠  | forward morphism — bidirectional arrow
--   [2] IMSCRIB   gram   := 𐑠               𐑾 → 𐑚  | identity — self-imscription
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] CLINK     fid    := 𐑱               𐑙 → 𐑗  | composition — regime coherence
--   [9] AREV      pol    := 𐑗               𐑱 → 𐑚  | reverse morphism — parity flip
--   [10] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [12] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [14] TANCH     top    := 𐑡               𐑙 → 𐑭  | terminal object — connectivity boundary
--   [15] IFIX      prot   := 𐑭               𐑡 → 𐑚  | irreversible fixation — winding number
--   [16] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [17] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [18] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [19] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [20] IMSCRIB   gram   := 𐑠               𐑙 → 𐑱  | identity — self-imscription
--   [21] CLINK     fid    := 𐑱               𐑠 → 𐑡  | composition — regime coherence
--   [22] TANCH     top    := 𐑡               𐑱 → 𐑭  | terminal object — connectivity boundary
--   [23] IFIX      prot   := 𐑭               𐑡 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def apply_criticality_absorbing_element_52ec93_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def apply_criticality_absorbing_element_52ec93_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def apply_criticality_absorbing_element_52ec93_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def apply_criticality_absorbing_element_52ec93_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def apply_criticality_absorbing_element_52ec93_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def apply_criticality_absorbing_element_52ec93_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def apply_criticality_absorbing_element_52ec93_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def apply_criticality_absorbing_element_52ec93_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def apply_criticality_absorbing_element_52ec93_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def apply_criticality_absorbing_element_52ec93_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def apply_criticality_absorbing_element_52ec93_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def apply_criticality_absorbing_element_52ec93_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_criticality_absorbing_element_52ec93_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def apply_criticality_absorbing_element_52ec93_protocol : IGProtocol apply_criticality_absorbing_element_52ec93_s0 apply_criticality_absorbing_element_52ec93_s23 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct apply_criticality_absorbing_element_52ec93_s7 apply_criticality_absorbing_element_52ec93_s7 = apply_criticality_absorbing_element_52ec93_s7 (idempotent)
  (.seq (.arrow apply_criticality_absorbing_element_52ec93_l0 apply_criticality_absorbing_element_52ec93_s0 apply_criticality_absorbing_element_52ec93_s1) (.seq (.arrow apply_criticality_absorbing_element_52ec93_l1 apply_criticality_absorbing_element_52ec93_s1 apply_criticality_absorbing_element_52ec93_s2) (.seq (.arrow apply_criticality_absorbing_element_52ec93_l2 apply_criticality_absorbing_element_52ec93_s2 apply_criticality_absorbing_element_52ec93_s3) (.seq (.prod (.arrow apply_criticality_absorbing_element_52ec93_l3 apply_criticality_absorbing_element_52ec93_s3 apply_criticality_absorbing_element_52ec93_s7) (.arrow apply_criticality_absorbing_element_52ec93_l3 apply_criticality_absorbing_element_52ec93_s3 apply_criticality_absorbing_element_52ec93_s7)) (.seq (.arrow apply_criticality_absorbing_element_52ec93_l7 apply_criticality_absorbing_element_52ec93_s7 apply_criticality_absorbing_element_52ec93_s7) (.seq (.arrow apply_criticality_absorbing_element_52ec93_l7 apply_criticality_absorbing_element_52ec93_s7 apply_criticality_absorbing_element_52ec93_s8) (.seq (.arrow apply_criticality_absorbing_element_52ec93_l8 apply_criticality_absorbing_element_52ec93_s8 apply_criticality_absorbing_element_52ec93_s9) (.seq (.arrow apply_criticality_absorbing_element_52ec93_l9 apply_criticality_absorbing_element_52ec93_s9 apply_criticality_absorbing_element_52ec93_s10) (.seq (.arrow apply_criticality_absorbing_element_52ec93_l10 apply_criticality_absorbing_element_52ec93_s10 apply_criticality_absorbing_element_52ec93_s11) (.seq (.arrow apply_criticality_absorbing_element_52ec93_l11 apply_criticality_absorbing_element_52ec93_s11 apply_criticality_absorbing_element_52ec93_s12) (.seq (.arrow apply_criticality_absorbing_element_52ec93_l12 apply_criticality_absorbing_element_52ec93_s12 apply_criticality_absorbing_element_52ec93_s13) (.seq (.arrow apply_criticality_absorbing_element_52ec93_l13 apply_criticality_absorbing_element_52ec93_s13 apply_criticality_absorbing_element_52ec93_s14) (.seq (.arrow apply_criticality_absorbing_element_52ec93_l14 apply_criticality_absorbing_element_52ec93_s14 apply_criticality_absorbing_element_52ec93_s15) (.seq (.arrow apply_criticality_absorbing_element_52ec93_l15 apply_criticality_absorbing_element_52ec93_s15 apply_criticality_absorbing_element_52ec93_s16) (.seq (.arrow apply_criticality_absorbing_element_52ec93_l16 apply_criticality_absorbing_element_52ec93_s16 apply_criticality_absorbing_element_52ec93_s17) (.seq (.arrow apply_criticality_absorbing_element_52ec93_l17 apply_criticality_absorbing_element_52ec93_s17 apply_criticality_absorbing_element_52ec93_s18) (.seq (.arrow apply_criticality_absorbing_element_52ec93_l18 apply_criticality_absorbing_element_52ec93_s18 apply_criticality_absorbing_element_52ec93_s19) (.seq (.arrow apply_criticality_absorbing_element_52ec93_l19 apply_criticality_absorbing_element_52ec93_s19 apply_criticality_absorbing_element_52ec93_s20) (.seq (.arrow apply_criticality_absorbing_element_52ec93_l20 apply_criticality_absorbing_element_52ec93_s20 apply_criticality_absorbing_element_52ec93_s21) (.seq (.arrow apply_criticality_absorbing_element_52ec93_l21 apply_criticality_absorbing_element_52ec93_s21 apply_criticality_absorbing_element_52ec93_s22) (.arrow apply_criticality_absorbing_element_52ec93_l22 apply_criticality_absorbing_element_52ec93_s22 apply_criticality_absorbing_element_52ec93_s23)))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def apply_criticality_absorbing_element_52ec93_true_arm : IGProtocol apply_criticality_absorbing_element_52ec93_s0 apply_criticality_absorbing_element_52ec93_s23 :=
  (apply_criticality_absorbing_element_52ec93_protocol).restrictToEVALT

-- false arm
noncomputable def apply_criticality_absorbing_element_52ec93_false_arm : IGProtocol apply_criticality_absorbing_element_52ec93_s0 apply_criticality_absorbing_element_52ec93_s23 :=
  (apply_criticality_absorbing_element_52ec93_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def apply_criticality_absorbing_element_52ec93_tier : OuroboricityTier := TierFunctor.obj apply_criticality_absorbing_element_52ec93_s0
#eval apply_criticality_absorbing_element_52ec93_tier  -- the Grammar's own verdict on its tier
