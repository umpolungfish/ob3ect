-- IGProtocol scaffold: VINIT → IMSCRIB → CLINK → AFWD → FSPLIT → EVALT → ENGAGR → FFUSE → CLINK → FSPLIT → EVALT → FFUSE → AFWD → CLINK → FSPLIT → EVALT → AREV → FFUSE → IFIX → IFIX → IFIX → IFIX → TANCH
-- Class: ob3ect_sequence
-- Fingerprint: sig=(9,6,4,4)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=23
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(4, 7), (9, 11), (14, 17)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑱  | identity — self-imscription
--   [2] CLINK     fid    := 𐑱               𐑠 → 𐑾  | composition — regime coherence
--   [3] AFWD      rel    := 𐑾               𐑱 → 𐑚  | forward morphism — bidirectional arrow
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] CLINK     fid    := 𐑱               𐑙 → 𐑚  | composition — regime coherence
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [12] AFWD      rel    := 𐑾               𐑙 → 𐑱  | forward morphism — bidirectional arrow
--   [13] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [14] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [15] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [16] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [17] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [18] IFIX      prot   := 𐑭               𐑙 → 𐑭  | irreversible fixation — winding number
--   [19] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [20] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [21] IFIX      prot   := 𐑭               𐑭 → 𐑡  | irreversible fixation — winding number
--   [22] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def ob3ect_sequence_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def ob3ect_sequence_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def ob3ect_sequence_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def ob3ect_sequence_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def ob3ect_sequence_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def ob3ect_sequence_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def ob3ect_sequence_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def ob3ect_sequence_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l12 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ob3ect_sequence_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ob3ect_sequence_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ob3ect_sequence_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ob3ect_sequence_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def ob3ect_sequence_protocol : IGProtocol ob3ect_sequence_s0 ob3ect_sequence_s22 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct ob3ect_sequence_s7 ob3ect_sequence_s7 = ob3ect_sequence_s7 (idempotent)
  (.seq (.arrow ob3ect_sequence_l0 ob3ect_sequence_s0 ob3ect_sequence_s1) (.seq (.arrow ob3ect_sequence_l1 ob3ect_sequence_s1 ob3ect_sequence_s2) (.seq (.arrow ob3ect_sequence_l2 ob3ect_sequence_s2 ob3ect_sequence_s3) (.seq (.arrow ob3ect_sequence_l3 ob3ect_sequence_s3 ob3ect_sequence_s4) (.seq (.prod (.arrow ob3ect_sequence_l4 ob3ect_sequence_s4 ob3ect_sequence_s7) (.arrow ob3ect_sequence_l4 ob3ect_sequence_s4 ob3ect_sequence_s7)) (.seq (.arrow ob3ect_sequence_l7 ob3ect_sequence_s7 ob3ect_sequence_s7) (.seq (.arrow ob3ect_sequence_l7 ob3ect_sequence_s7 ob3ect_sequence_s8) (.seq (.arrow ob3ect_sequence_l8 ob3ect_sequence_s8 ob3ect_sequence_s9) (.seq (.arrow ob3ect_sequence_l9 ob3ect_sequence_s9 ob3ect_sequence_s10) (.seq (.arrow ob3ect_sequence_l10 ob3ect_sequence_s10 ob3ect_sequence_s11) (.seq (.arrow ob3ect_sequence_l11 ob3ect_sequence_s11 ob3ect_sequence_s12) (.seq (.arrow ob3ect_sequence_l12 ob3ect_sequence_s12 ob3ect_sequence_s13) (.seq (.arrow ob3ect_sequence_l13 ob3ect_sequence_s13 ob3ect_sequence_s14) (.seq (.arrow ob3ect_sequence_l14 ob3ect_sequence_s14 ob3ect_sequence_s15) (.seq (.arrow ob3ect_sequence_l15 ob3ect_sequence_s15 ob3ect_sequence_s16) (.seq (.arrow ob3ect_sequence_l16 ob3ect_sequence_s16 ob3ect_sequence_s17) (.seq (.arrow ob3ect_sequence_l17 ob3ect_sequence_s17 ob3ect_sequence_s18) (.seq (.arrow ob3ect_sequence_l18 ob3ect_sequence_s18 ob3ect_sequence_s19) (.seq (.arrow ob3ect_sequence_l19 ob3ect_sequence_s19 ob3ect_sequence_s20) (.seq (.arrow ob3ect_sequence_l20 ob3ect_sequence_s20 ob3ect_sequence_s21) (.arrow ob3ect_sequence_l21 ob3ect_sequence_s21 ob3ect_sequence_s22)))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def ob3ect_sequence_true_arm : IGProtocol ob3ect_sequence_s0 ob3ect_sequence_s22 :=
  (ob3ect_sequence_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def ob3ect_sequence_tier : OuroboricityTier := TierFunctor.obj ob3ect_sequence_s0
#eval ob3ect_sequence_tier  -- the Grammar's own verdict on its tier
