-- IGProtocol scaffold: VINIT → CLINK → CLINK → CLINK → AFWD → IMSCRIB → FSPLIT → EVALT → AFWD → EVALF → AREV → FFUSE → EVALF → ENGAGR → AFWD → CLINK → AREV → IMSCRIB → IFIX → IFIX → TANCH → IMSCRIB
-- Class: ob3ect_sequence
-- Fingerprint: sig=(14,2,4,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=22
-- Expected tier: O₂dag
-- FSPLIT/FFUSE pairs: [(6, 11)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑱  | initial object — ground of distinction
--   [1] CLINK     fid    := 𐑱               𐑼 → 𐑱  | composition — regime coherence
--   [2] CLINK     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [3] CLINK     fid    := 𐑱               𐑱 → 𐑾  | composition — regime coherence
--   [4] AFWD      rel    := 𐑾               𐑱 → 𐑠  | forward morphism — bidirectional arrow
--   [5] IMSCRIB   gram   := 𐑠               𐑾 → 𐑚  | identity — self-imscription
--   [6] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [9] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑖  | fuse μ — assembly mode
--   [12] EVALF     chir   := 𐑖               𐑙 → 𐑳  | evaluate-false — chirality check
--   [13] ENGAGR    stoi   := 𐑳               𐑖 → 𐑾  | engage paradox — B-state, both arms
--   [14] AFWD      rel    := 𐑾               𐑳 → 𐑱  | forward morphism — bidirectional arrow
--   [15] CLINK     fid    := 𐑱               𐑾 → 𐑗  | composition — regime coherence
--   [16] AREV      pol    := 𐑗               𐑱 → 𐑠  | reverse morphism — parity flip
--   [17] IMSCRIB   gram   := 𐑠               𐑗 → 𐑭  | identity — self-imscription
--   [18] IFIX      prot   := 𐑭               𐑠 → 𐑭  | irreversible fixation — winding number
--   [19] IFIX      prot   := 𐑭               𐑭 → 𐑡  | irreversible fixation — winding number
--   [20] TANCH     top    := 𐑡               𐑭 → 𐑠  | terminal object — connectivity boundary
--   [21] IMSCRIB   gram   := 𐑠               𐑡 → 𐑼  | identity — self-imscription

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def ob3ect_sequence_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def ob3ect_sequence_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def ob3ect_sequence_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def ob3ect_sequence_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def ob3ect_sequence_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def ob3ect_sequence_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def ob3ect_sequence_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def ob3ect_sequence_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def ob3ect_sequence_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def ob3ect_sequence_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def ob3ect_sequence_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def ob3ect_sequence_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def ob3ect_sequence_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def ob3ect_sequence_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def ob3ect_sequence_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def ob3ect_sequence_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def ob3ect_sequence_l14 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ob3ect_sequence_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ob3ect_sequence_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def ob3ect_sequence_protocol : IGProtocol ob3ect_sequence_s0 ob3ect_sequence_s21 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct ob3ect_sequence_s11 ob3ect_sequence_s11 = ob3ect_sequence_s11 (idempotent)
  (.seq (.arrow ob3ect_sequence_l0 ob3ect_sequence_s0 ob3ect_sequence_s1) (.seq (.arrow ob3ect_sequence_l1 ob3ect_sequence_s1 ob3ect_sequence_s2) (.seq (.arrow ob3ect_sequence_l2 ob3ect_sequence_s2 ob3ect_sequence_s3) (.seq (.arrow ob3ect_sequence_l3 ob3ect_sequence_s3 ob3ect_sequence_s4) (.seq (.arrow ob3ect_sequence_l4 ob3ect_sequence_s4 ob3ect_sequence_s5) (.seq (.arrow ob3ect_sequence_l5 ob3ect_sequence_s5 ob3ect_sequence_s6) (.seq (.prod (.arrow ob3ect_sequence_l6 ob3ect_sequence_s6 ob3ect_sequence_s11) (.arrow ob3ect_sequence_l6 ob3ect_sequence_s6 ob3ect_sequence_s11)) (.seq (.arrow ob3ect_sequence_l11 ob3ect_sequence_s11 ob3ect_sequence_s11) (.seq (.arrow ob3ect_sequence_l11 ob3ect_sequence_s11 ob3ect_sequence_s12) (.seq (.arrow ob3ect_sequence_l12 ob3ect_sequence_s12 ob3ect_sequence_s13) (.seq (.arrow ob3ect_sequence_l13 ob3ect_sequence_s13 ob3ect_sequence_s14) (.seq (.arrow ob3ect_sequence_l14 ob3ect_sequence_s14 ob3ect_sequence_s15) (.seq (.arrow ob3ect_sequence_l15 ob3ect_sequence_s15 ob3ect_sequence_s16) (.seq (.arrow ob3ect_sequence_l16 ob3ect_sequence_s16 ob3ect_sequence_s17) (.seq (.arrow ob3ect_sequence_l17 ob3ect_sequence_s17 ob3ect_sequence_s18) (.seq (.arrow ob3ect_sequence_l18 ob3ect_sequence_s18 ob3ect_sequence_s19) (.seq (.arrow ob3ect_sequence_l19 ob3ect_sequence_s19 ob3ect_sequence_s20) (.arrow ob3ect_sequence_l20 ob3ect_sequence_s20 ob3ect_sequence_s21))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def ob3ect_sequence_true_arm : IGProtocol ob3ect_sequence_s0 ob3ect_sequence_s21 :=
  (ob3ect_sequence_protocol).restrictToEVALT

-- false arm
noncomputable def ob3ect_sequence_false_arm : IGProtocol ob3ect_sequence_s0 ob3ect_sequence_s21 :=
  (ob3ect_sequence_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def ob3ect_sequence_tier : OuroboricityTier := TierFunctor.obj ob3ect_sequence_s0
#eval ob3ect_sequence_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem ob3ect_sequence_frobenius :
    igFrobeniusAlg.mul ob3ect_sequence_s0 ob3ect_sequence_s0 = ob3ect_sequence_s0 :=
  igFrobAlg_self_fusion ob3ect_sequence_s0
