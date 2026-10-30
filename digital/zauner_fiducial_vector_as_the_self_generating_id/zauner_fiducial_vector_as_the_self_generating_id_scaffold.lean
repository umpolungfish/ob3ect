-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → AFWD → EVALT → AREV → EVALF → FFUSE → FSPLIT → CLINK → EVALT → CLINK → EVALF → FFUSE → ENGAGR → FSPLIT → EVALT → EVALF → FFUSE → IFIX → IFIX → TANCH
-- Class: Zauner fiducial vector as the self-generating identity seed
-- Fingerprint: sig=(7,6,7,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=22
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 7), (8, 13), (15, 18)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑚  | identity — self-imscription
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [12] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [14] ENGAGR    stoi   := 𐑳               𐑙 → 𐑚  | engage paradox — B-state, both arms
--   [15] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [16] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [17] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [18] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [19] IFIX      prot   := 𐑭               𐑙 → 𐑭  | irreversible fixation — winding number
--   [20] IFIX      prot   := 𐑭               𐑭 → 𐑡  | irreversible fixation — winding number
--   [21] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def zauner_fiducial_vector_as_the_self_cb98b4_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def zauner_fiducial_vector_as_the_self_cb98b4_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def zauner_fiducial_vector_as_the_self_cb98b4_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def zauner_fiducial_vector_as_the_self_cb98b4_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_fiducial_vector_as_the_self_cb98b4_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def zauner_fiducial_vector_as_the_self_cb98b4_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def zauner_fiducial_vector_as_the_self_cb98b4_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def zauner_fiducial_vector_as_the_self_cb98b4_protocol : IGProtocol zauner_fiducial_vector_as_the_self_cb98b4_s0 zauner_fiducial_vector_as_the_self_cb98b4_s21 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct zauner_fiducial_vector_as_the_self_cb98b4_s7 zauner_fiducial_vector_as_the_self_cb98b4_s7 = zauner_fiducial_vector_as_the_self_cb98b4_s7 (idempotent)
  (.seq (.arrow zauner_fiducial_vector_as_the_self_cb98b4_l0 zauner_fiducial_vector_as_the_self_cb98b4_s0 zauner_fiducial_vector_as_the_self_cb98b4_s1) (.seq (.arrow zauner_fiducial_vector_as_the_self_cb98b4_l1 zauner_fiducial_vector_as_the_self_cb98b4_s1 zauner_fiducial_vector_as_the_self_cb98b4_s2) (.seq (.prod (.arrow zauner_fiducial_vector_as_the_self_cb98b4_l2 zauner_fiducial_vector_as_the_self_cb98b4_s2 zauner_fiducial_vector_as_the_self_cb98b4_s7) (.arrow zauner_fiducial_vector_as_the_self_cb98b4_l2 zauner_fiducial_vector_as_the_self_cb98b4_s2 zauner_fiducial_vector_as_the_self_cb98b4_s7)) (.seq (.arrow zauner_fiducial_vector_as_the_self_cb98b4_l7 zauner_fiducial_vector_as_the_self_cb98b4_s7 zauner_fiducial_vector_as_the_self_cb98b4_s7) (.seq (.arrow zauner_fiducial_vector_as_the_self_cb98b4_l7 zauner_fiducial_vector_as_the_self_cb98b4_s7 zauner_fiducial_vector_as_the_self_cb98b4_s8) (.seq (.arrow zauner_fiducial_vector_as_the_self_cb98b4_l8 zauner_fiducial_vector_as_the_self_cb98b4_s8 zauner_fiducial_vector_as_the_self_cb98b4_s9) (.seq (.arrow zauner_fiducial_vector_as_the_self_cb98b4_l9 zauner_fiducial_vector_as_the_self_cb98b4_s9 zauner_fiducial_vector_as_the_self_cb98b4_s10) (.seq (.arrow zauner_fiducial_vector_as_the_self_cb98b4_l10 zauner_fiducial_vector_as_the_self_cb98b4_s10 zauner_fiducial_vector_as_the_self_cb98b4_s11) (.seq (.arrow zauner_fiducial_vector_as_the_self_cb98b4_l11 zauner_fiducial_vector_as_the_self_cb98b4_s11 zauner_fiducial_vector_as_the_self_cb98b4_s12) (.seq (.arrow zauner_fiducial_vector_as_the_self_cb98b4_l12 zauner_fiducial_vector_as_the_self_cb98b4_s12 zauner_fiducial_vector_as_the_self_cb98b4_s13) (.seq (.arrow zauner_fiducial_vector_as_the_self_cb98b4_l13 zauner_fiducial_vector_as_the_self_cb98b4_s13 zauner_fiducial_vector_as_the_self_cb98b4_s14) (.seq (.arrow zauner_fiducial_vector_as_the_self_cb98b4_l14 zauner_fiducial_vector_as_the_self_cb98b4_s14 zauner_fiducial_vector_as_the_self_cb98b4_s15) (.seq (.arrow zauner_fiducial_vector_as_the_self_cb98b4_l15 zauner_fiducial_vector_as_the_self_cb98b4_s15 zauner_fiducial_vector_as_the_self_cb98b4_s16) (.seq (.arrow zauner_fiducial_vector_as_the_self_cb98b4_l16 zauner_fiducial_vector_as_the_self_cb98b4_s16 zauner_fiducial_vector_as_the_self_cb98b4_s17) (.seq (.arrow zauner_fiducial_vector_as_the_self_cb98b4_l17 zauner_fiducial_vector_as_the_self_cb98b4_s17 zauner_fiducial_vector_as_the_self_cb98b4_s18) (.seq (.arrow zauner_fiducial_vector_as_the_self_cb98b4_l18 zauner_fiducial_vector_as_the_self_cb98b4_s18 zauner_fiducial_vector_as_the_self_cb98b4_s19) (.seq (.arrow zauner_fiducial_vector_as_the_self_cb98b4_l19 zauner_fiducial_vector_as_the_self_cb98b4_s19 zauner_fiducial_vector_as_the_self_cb98b4_s20) (.arrow zauner_fiducial_vector_as_the_self_cb98b4_l20 zauner_fiducial_vector_as_the_self_cb98b4_s20 zauner_fiducial_vector_as_the_self_cb98b4_s21))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def zauner_fiducial_vector_as_the_self_cb98b4_true_arm : IGProtocol zauner_fiducial_vector_as_the_self_cb98b4_s0 zauner_fiducial_vector_as_the_self_cb98b4_s21 :=
  (zauner_fiducial_vector_as_the_self_cb98b4_protocol).restrictToEVALT

-- false arm
noncomputable def zauner_fiducial_vector_as_the_self_cb98b4_false_arm : IGProtocol zauner_fiducial_vector_as_the_self_cb98b4_s0 zauner_fiducial_vector_as_the_self_cb98b4_s21 :=
  (zauner_fiducial_vector_as_the_self_cb98b4_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def zauner_fiducial_vector_as_the_self_cb98b4_tier : OuroboricityTier := TierFunctor.obj zauner_fiducial_vector_as_the_self_cb98b4_s0
#eval zauner_fiducial_vector_as_the_self_cb98b4_tier  -- the Grammar's own verdict on its tier
