-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → FSPLIT → AFWD → EVALT → CLINK → EVALT → FFUSE → IFIX → AREV → EVALF → ENGAGR → AFWD → EVALT → EVALF → CLINK → IFIX → TANCH
-- Class: Phytoglyphic Medicine
-- Fingerprint: sig=(9,2,6,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=19
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑚  | forward morphism — bidirectional arrow
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [9] IFIX      prot   := 𐑭               𐑙 → 𐑗  | irreversible fixation — winding number
--   [10] AREV      pol    := 𐑗               𐑭 → 𐑖  | reverse morphism — parity flip
--   [11] EVALF     chir   := 𐑖               𐑗 → 𐑳  | evaluate-false — chirality check
--   [12] ENGAGR    stoi   := 𐑳               𐑖 → 𐑾  | engage paradox — B-state, both arms
--   [13] AFWD      rel    := 𐑾               𐑳 → ⊙  | forward morphism — bidirectional arrow
--   [14] EVALT     crit   := ⊙               𐑾 → 𐑖  | evaluate-true — criticality gate open
--   [15] EVALF     chir   := 𐑖               ⊙ → 𐑱  | evaluate-false — chirality check
--   [16] CLINK     fid    := 𐑱               𐑖 → 𐑭  | composition — regime coherence
--   [17] IFIX      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [18] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def phytoglyphic_medicine_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phytoglyphic_medicine_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phytoglyphic_medicine_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def phytoglyphic_medicine_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def phytoglyphic_medicine_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def phytoglyphic_medicine_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def phytoglyphic_medicine_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def phytoglyphic_medicine_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def phytoglyphic_medicine_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def phytoglyphic_medicine_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def phytoglyphic_medicine_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phytoglyphic_medicine_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def phytoglyphic_medicine_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def phytoglyphic_medicine_l13 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def phytoglyphic_medicine_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phytoglyphic_medicine_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phytoglyphic_medicine_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def phytoglyphic_medicine_protocol : IGProtocol phytoglyphic_medicine_s0 phytoglyphic_medicine_s18 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct phytoglyphic_medicine_s8 phytoglyphic_medicine_s8 = phytoglyphic_medicine_s8 (idempotent)
  (.seq (.arrow phytoglyphic_medicine_l0 phytoglyphic_medicine_s0 phytoglyphic_medicine_s1) (.seq (.arrow phytoglyphic_medicine_l1 phytoglyphic_medicine_s1 phytoglyphic_medicine_s2) (.seq (.arrow phytoglyphic_medicine_l2 phytoglyphic_medicine_s2 phytoglyphic_medicine_s3) (.seq (.prod (.arrow phytoglyphic_medicine_l3 phytoglyphic_medicine_s3 phytoglyphic_medicine_s8) (.arrow phytoglyphic_medicine_l3 phytoglyphic_medicine_s3 phytoglyphic_medicine_s8)) (.seq (.arrow phytoglyphic_medicine_l8 phytoglyphic_medicine_s8 phytoglyphic_medicine_s8) (.seq (.arrow phytoglyphic_medicine_l8 phytoglyphic_medicine_s8 phytoglyphic_medicine_s9) (.seq (.arrow phytoglyphic_medicine_l9 phytoglyphic_medicine_s9 phytoglyphic_medicine_s10) (.seq (.arrow phytoglyphic_medicine_l10 phytoglyphic_medicine_s10 phytoglyphic_medicine_s11) (.seq (.arrow phytoglyphic_medicine_l11 phytoglyphic_medicine_s11 phytoglyphic_medicine_s12) (.seq (.arrow phytoglyphic_medicine_l12 phytoglyphic_medicine_s12 phytoglyphic_medicine_s13) (.seq (.arrow phytoglyphic_medicine_l13 phytoglyphic_medicine_s13 phytoglyphic_medicine_s14) (.seq (.arrow phytoglyphic_medicine_l14 phytoglyphic_medicine_s14 phytoglyphic_medicine_s15) (.seq (.arrow phytoglyphic_medicine_l15 phytoglyphic_medicine_s15 phytoglyphic_medicine_s16) (.seq (.arrow phytoglyphic_medicine_l16 phytoglyphic_medicine_s16 phytoglyphic_medicine_s17) (.arrow phytoglyphic_medicine_l17 phytoglyphic_medicine_s17 phytoglyphic_medicine_s18)))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def phytoglyphic_medicine_true_arm : IGProtocol phytoglyphic_medicine_s0 phytoglyphic_medicine_s18 :=
  (phytoglyphic_medicine_protocol).restrictToEVALT

-- false arm
noncomputable def phytoglyphic_medicine_false_arm : IGProtocol phytoglyphic_medicine_s0 phytoglyphic_medicine_s18 :=
  (phytoglyphic_medicine_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def phytoglyphic_medicine_tier : OuroboricityTier := TierFunctor.obj phytoglyphic_medicine_s0
#eval phytoglyphic_medicine_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem phytoglyphic_medicine_frobenius :
    igFrobeniusAlg.mul phytoglyphic_medicine_s0 phytoglyphic_medicine_s0 = phytoglyphic_medicine_s0 :=
  igFrobAlg_self_fusion phytoglyphic_medicine_s0
