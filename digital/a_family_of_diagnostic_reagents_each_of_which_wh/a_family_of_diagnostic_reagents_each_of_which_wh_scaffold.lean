-- IGProtocol scaffold: VINIT → IMSCRIB → CLINK → FSPLIT → EVALT → AFWD → IFIX → AREV → EVALF → FFUSE → IMSCRIB → ENGAGR → CLINK → TANCH
-- Class: A family of diagnostic reagents, each of which when applied to a unit or a set makes visible only those units carrying one specific structural feature and stays dark on the rest; a selective detector keyed to a single chosen feature, reporting which units it reveals, so a feature that is invisible in the bare description is made to show.
-- Fingerprint: sig=(8,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=14
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑱  | identity — self-imscription
--   [2] CLINK     fid    := 𐑱               𐑠 → 𐑚  | composition — regime coherence
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [10] IMSCRIB   gram   := 𐑠               𐑙 → 𐑳  | identity — self-imscription
--   [11] ENGAGR    stoi   := 𐑳               𐑠 → 𐑱  | engage paradox — B-state, both arms
--   [12] CLINK     fid    := 𐑱               𐑳 → 𐑡  | composition — regime coherence
--   [13] TANCH     top    := 𐑡               𐑱 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_family_of_diagnostic_reagents_each_of_ddb6c8_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def a_family_of_diagnostic_reagents_each_of_ddb6c8_protocol : IGProtocol a_family_of_diagnostic_reagents_each_of_ddb6c8_s0 a_family_of_diagnostic_reagents_each_of_ddb6c8_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct a_family_of_diagnostic_reagents_each_of_ddb6c8_s9 a_family_of_diagnostic_reagents_each_of_ddb6c8_s9 = a_family_of_diagnostic_reagents_each_of_ddb6c8_s9 (idempotent)
  (.seq (.arrow a_family_of_diagnostic_reagents_each_of_ddb6c8_l0 a_family_of_diagnostic_reagents_each_of_ddb6c8_s0 a_family_of_diagnostic_reagents_each_of_ddb6c8_s1) (.seq (.arrow a_family_of_diagnostic_reagents_each_of_ddb6c8_l1 a_family_of_diagnostic_reagents_each_of_ddb6c8_s1 a_family_of_diagnostic_reagents_each_of_ddb6c8_s2) (.seq (.arrow a_family_of_diagnostic_reagents_each_of_ddb6c8_l2 a_family_of_diagnostic_reagents_each_of_ddb6c8_s2 a_family_of_diagnostic_reagents_each_of_ddb6c8_s3) (.seq (.prod (.arrow a_family_of_diagnostic_reagents_each_of_ddb6c8_l3 a_family_of_diagnostic_reagents_each_of_ddb6c8_s3 a_family_of_diagnostic_reagents_each_of_ddb6c8_s9) (.arrow a_family_of_diagnostic_reagents_each_of_ddb6c8_l3 a_family_of_diagnostic_reagents_each_of_ddb6c8_s3 a_family_of_diagnostic_reagents_each_of_ddb6c8_s9)) (.seq (.arrow a_family_of_diagnostic_reagents_each_of_ddb6c8_l9 a_family_of_diagnostic_reagents_each_of_ddb6c8_s9 a_family_of_diagnostic_reagents_each_of_ddb6c8_s9) (.seq (.arrow a_family_of_diagnostic_reagents_each_of_ddb6c8_l9 a_family_of_diagnostic_reagents_each_of_ddb6c8_s9 a_family_of_diagnostic_reagents_each_of_ddb6c8_s10) (.seq (.arrow a_family_of_diagnostic_reagents_each_of_ddb6c8_l10 a_family_of_diagnostic_reagents_each_of_ddb6c8_s10 a_family_of_diagnostic_reagents_each_of_ddb6c8_s11) (.seq (.arrow a_family_of_diagnostic_reagents_each_of_ddb6c8_l11 a_family_of_diagnostic_reagents_each_of_ddb6c8_s11 a_family_of_diagnostic_reagents_each_of_ddb6c8_s12) (.arrow a_family_of_diagnostic_reagents_each_of_ddb6c8_l12 a_family_of_diagnostic_reagents_each_of_ddb6c8_s12 a_family_of_diagnostic_reagents_each_of_ddb6c8_s13)))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def a_family_of_diagnostic_reagents_each_of_ddb6c8_true_arm : IGProtocol a_family_of_diagnostic_reagents_each_of_ddb6c8_s0 a_family_of_diagnostic_reagents_each_of_ddb6c8_s13 :=
  (a_family_of_diagnostic_reagents_each_of_ddb6c8_protocol).restrictToEVALT

-- false arm
noncomputable def a_family_of_diagnostic_reagents_each_of_ddb6c8_false_arm : IGProtocol a_family_of_diagnostic_reagents_each_of_ddb6c8_s0 a_family_of_diagnostic_reagents_each_of_ddb6c8_s13 :=
  (a_family_of_diagnostic_reagents_each_of_ddb6c8_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def a_family_of_diagnostic_reagents_each_of_ddb6c8_tier : OuroboricityTier := TierFunctor.obj a_family_of_diagnostic_reagents_each_of_ddb6c8_s0
#eval a_family_of_diagnostic_reagents_each_of_ddb6c8_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem a_family_of_diagnostic_reagents_each_of_ddb6c8_frobenius :
    igFrobeniusAlg.mul a_family_of_diagnostic_reagents_each_of_ddb6c8_s0 a_family_of_diagnostic_reagents_each_of_ddb6c8_s0 = a_family_of_diagnostic_reagents_each_of_ddb6c8_s0 :=
  igFrobAlg_self_fusion a_family_of_diagnostic_reagents_each_of_ddb6c8_s0
