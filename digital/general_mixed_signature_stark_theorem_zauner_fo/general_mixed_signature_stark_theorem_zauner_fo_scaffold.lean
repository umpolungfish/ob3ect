-- IGProtocol scaffold: VINIT → AFWD → ENGAGR → CLINK → FSPLIT → EVALT → IMSCRIB → FFUSE → IFIX → FSPLIT → AFWD → CLINK → ENGAGR → EVALT → FFUSE → IFIX → AREV → TANCH
-- Class: general mixed-signature Stark Theorem, Zauner for all d=2ⁿ
-- Fingerprint: sig=(8,4,4,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=18
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(4, 7), (9, 14)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑳  | forward morphism — bidirectional arrow
--   [2] ENGAGR    stoi   := 𐑳               𐑾 → 𐑱  | engage paradox — B-state, both arms
--   [3] CLINK     fid    := 𐑱               𐑳 → 𐑚  | composition — regime coherence
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [8] IFIX      prot   := 𐑭               𐑙 → 𐑚  | irreversible fixation — winding number
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [11] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [12] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [13] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [14] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [15] IFIX      prot   := 𐑭               𐑙 → 𐑗  | irreversible fixation — winding number
--   [16] AREV      pol    := 𐑗               𐑭 → 𐑡  | reverse morphism — parity flip
--   [17] TANCH     top    := 𐑡               𐑗 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def general_mixed_signature_stark_theorem_8bb72b_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := up, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def general_mixed_signature_stark_theorem_8bb72b_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def general_mixed_signature_stark_theorem_8bb72b_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def general_mixed_signature_stark_theorem_8bb72b_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def general_mixed_signature_stark_theorem_8bb72b_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def general_mixed_signature_stark_theorem_8bb72b_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def general_mixed_signature_stark_theorem_8bb72b_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def general_mixed_signature_stark_theorem_8bb72b_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def general_mixed_signature_stark_theorem_8bb72b_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def general_mixed_signature_stark_theorem_8bb72b_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def general_mixed_signature_stark_theorem_8bb72b_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def general_mixed_signature_stark_theorem_8bb72b_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_l10 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def general_mixed_signature_stark_theorem_8bb72b_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def general_mixed_signature_stark_theorem_8bb72b_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def general_mixed_signature_stark_theorem_8bb72b_protocol : IGProtocol general_mixed_signature_stark_theorem_8bb72b_s0 general_mixed_signature_stark_theorem_8bb72b_s17 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct general_mixed_signature_stark_theorem_8bb72b_s7 general_mixed_signature_stark_theorem_8bb72b_s7 = general_mixed_signature_stark_theorem_8bb72b_s7 (idempotent)
  (.seq (.arrow general_mixed_signature_stark_theorem_8bb72b_l0 general_mixed_signature_stark_theorem_8bb72b_s0 general_mixed_signature_stark_theorem_8bb72b_s1) (.seq (.arrow general_mixed_signature_stark_theorem_8bb72b_l1 general_mixed_signature_stark_theorem_8bb72b_s1 general_mixed_signature_stark_theorem_8bb72b_s2) (.seq (.arrow general_mixed_signature_stark_theorem_8bb72b_l2 general_mixed_signature_stark_theorem_8bb72b_s2 general_mixed_signature_stark_theorem_8bb72b_s3) (.seq (.arrow general_mixed_signature_stark_theorem_8bb72b_l3 general_mixed_signature_stark_theorem_8bb72b_s3 general_mixed_signature_stark_theorem_8bb72b_s4) (.seq (.prod (.arrow general_mixed_signature_stark_theorem_8bb72b_l4 general_mixed_signature_stark_theorem_8bb72b_s4 general_mixed_signature_stark_theorem_8bb72b_s7) (.arrow general_mixed_signature_stark_theorem_8bb72b_l4 general_mixed_signature_stark_theorem_8bb72b_s4 general_mixed_signature_stark_theorem_8bb72b_s7)) (.seq (.arrow general_mixed_signature_stark_theorem_8bb72b_l7 general_mixed_signature_stark_theorem_8bb72b_s7 general_mixed_signature_stark_theorem_8bb72b_s7) (.seq (.arrow general_mixed_signature_stark_theorem_8bb72b_l7 general_mixed_signature_stark_theorem_8bb72b_s7 general_mixed_signature_stark_theorem_8bb72b_s8) (.seq (.arrow general_mixed_signature_stark_theorem_8bb72b_l8 general_mixed_signature_stark_theorem_8bb72b_s8 general_mixed_signature_stark_theorem_8bb72b_s9) (.seq (.arrow general_mixed_signature_stark_theorem_8bb72b_l9 general_mixed_signature_stark_theorem_8bb72b_s9 general_mixed_signature_stark_theorem_8bb72b_s10) (.seq (.arrow general_mixed_signature_stark_theorem_8bb72b_l10 general_mixed_signature_stark_theorem_8bb72b_s10 general_mixed_signature_stark_theorem_8bb72b_s11) (.seq (.arrow general_mixed_signature_stark_theorem_8bb72b_l11 general_mixed_signature_stark_theorem_8bb72b_s11 general_mixed_signature_stark_theorem_8bb72b_s12) (.seq (.arrow general_mixed_signature_stark_theorem_8bb72b_l12 general_mixed_signature_stark_theorem_8bb72b_s12 general_mixed_signature_stark_theorem_8bb72b_s13) (.seq (.arrow general_mixed_signature_stark_theorem_8bb72b_l13 general_mixed_signature_stark_theorem_8bb72b_s13 general_mixed_signature_stark_theorem_8bb72b_s14) (.seq (.arrow general_mixed_signature_stark_theorem_8bb72b_l14 general_mixed_signature_stark_theorem_8bb72b_s14 general_mixed_signature_stark_theorem_8bb72b_s15) (.seq (.arrow general_mixed_signature_stark_theorem_8bb72b_l15 general_mixed_signature_stark_theorem_8bb72b_s15 general_mixed_signature_stark_theorem_8bb72b_s16) (.arrow general_mixed_signature_stark_theorem_8bb72b_l16 general_mixed_signature_stark_theorem_8bb72b_s16 general_mixed_signature_stark_theorem_8bb72b_s17))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def general_mixed_signature_stark_theorem_8bb72b_true_arm : IGProtocol general_mixed_signature_stark_theorem_8bb72b_s0 general_mixed_signature_stark_theorem_8bb72b_s17 :=
  (general_mixed_signature_stark_theorem_8bb72b_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def general_mixed_signature_stark_theorem_8bb72b_tier : OuroboricityTier := TierFunctor.obj general_mixed_signature_stark_theorem_8bb72b_s0
#eval general_mixed_signature_stark_theorem_8bb72b_tier  -- the Grammar's own verdict on its tier
