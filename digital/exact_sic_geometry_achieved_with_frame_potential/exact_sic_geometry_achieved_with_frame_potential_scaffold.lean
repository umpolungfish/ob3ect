-- IGProtocol scaffold: VINIT → TANCH → CLINK → IMSCRIB → FSPLIT → AFWD → EVALT → FFUSE → FSPLIT → EVALT → FFUSE → FSPLIT → CLINK → EVALT → FFUSE → AREV → ENGAGR → IFIX → IFIX → IFIX → TANCH
-- Class: Exact SIC geometry achieved with frame potential F = 0.846154 (T-arm anchor)
-- Fingerprint: sig=(8,6,4,3)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=21
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(4, 7), (8, 10), (11, 14)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑱  | terminal object — connectivity boundary
--   [2] CLINK     fid    := 𐑱               𐑡 → 𐑠  | composition — regime coherence
--   [3] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [11] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [12] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [13] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [14] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [15] AREV      pol    := 𐑗               𐑙 → 𐑳  | reverse morphism — parity flip
--   [16] ENGAGR    stoi   := 𐑳               𐑗 → 𐑭  | engage paradox — B-state, both arms
--   [17] IFIX      prot   := 𐑭               𐑳 → 𐑭  | irreversible fixation — winding number
--   [18] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [19] IFIX      prot   := 𐑭               𐑭 → 𐑡  | irreversible fixation — winding number
--   [20] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def exact_sic_geometry_achieved_with_frame_459aaa_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def exact_sic_geometry_achieved_with_frame_459aaa_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def exact_sic_geometry_achieved_with_frame_459aaa_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def exact_sic_geometry_achieved_with_frame_459aaa_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def exact_sic_geometry_achieved_with_frame_459aaa_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def exact_sic_geometry_achieved_with_frame_459aaa_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def exact_sic_geometry_achieved_with_frame_459aaa_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def exact_sic_geometry_achieved_with_frame_459aaa_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def exact_sic_geometry_achieved_with_frame_459aaa_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def exact_sic_geometry_achieved_with_frame_459aaa_protocol : IGProtocol exact_sic_geometry_achieved_with_frame_459aaa_s0 exact_sic_geometry_achieved_with_frame_459aaa_s20 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct exact_sic_geometry_achieved_with_frame_459aaa_s7 exact_sic_geometry_achieved_with_frame_459aaa_s7 = exact_sic_geometry_achieved_with_frame_459aaa_s7 (idempotent)
  (.seq (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l0 exact_sic_geometry_achieved_with_frame_459aaa_s0 exact_sic_geometry_achieved_with_frame_459aaa_s1) (.seq (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l1 exact_sic_geometry_achieved_with_frame_459aaa_s1 exact_sic_geometry_achieved_with_frame_459aaa_s2) (.seq (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l2 exact_sic_geometry_achieved_with_frame_459aaa_s2 exact_sic_geometry_achieved_with_frame_459aaa_s3) (.seq (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l3 exact_sic_geometry_achieved_with_frame_459aaa_s3 exact_sic_geometry_achieved_with_frame_459aaa_s4) (.seq (.prod (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l4 exact_sic_geometry_achieved_with_frame_459aaa_s4 exact_sic_geometry_achieved_with_frame_459aaa_s7) (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l4 exact_sic_geometry_achieved_with_frame_459aaa_s4 exact_sic_geometry_achieved_with_frame_459aaa_s7)) (.seq (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l7 exact_sic_geometry_achieved_with_frame_459aaa_s7 exact_sic_geometry_achieved_with_frame_459aaa_s7) (.seq (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l7 exact_sic_geometry_achieved_with_frame_459aaa_s7 exact_sic_geometry_achieved_with_frame_459aaa_s8) (.seq (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l8 exact_sic_geometry_achieved_with_frame_459aaa_s8 exact_sic_geometry_achieved_with_frame_459aaa_s9) (.seq (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l9 exact_sic_geometry_achieved_with_frame_459aaa_s9 exact_sic_geometry_achieved_with_frame_459aaa_s10) (.seq (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l10 exact_sic_geometry_achieved_with_frame_459aaa_s10 exact_sic_geometry_achieved_with_frame_459aaa_s11) (.seq (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l11 exact_sic_geometry_achieved_with_frame_459aaa_s11 exact_sic_geometry_achieved_with_frame_459aaa_s12) (.seq (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l12 exact_sic_geometry_achieved_with_frame_459aaa_s12 exact_sic_geometry_achieved_with_frame_459aaa_s13) (.seq (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l13 exact_sic_geometry_achieved_with_frame_459aaa_s13 exact_sic_geometry_achieved_with_frame_459aaa_s14) (.seq (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l14 exact_sic_geometry_achieved_with_frame_459aaa_s14 exact_sic_geometry_achieved_with_frame_459aaa_s15) (.seq (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l15 exact_sic_geometry_achieved_with_frame_459aaa_s15 exact_sic_geometry_achieved_with_frame_459aaa_s16) (.seq (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l16 exact_sic_geometry_achieved_with_frame_459aaa_s16 exact_sic_geometry_achieved_with_frame_459aaa_s17) (.seq (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l17 exact_sic_geometry_achieved_with_frame_459aaa_s17 exact_sic_geometry_achieved_with_frame_459aaa_s18) (.seq (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l18 exact_sic_geometry_achieved_with_frame_459aaa_s18 exact_sic_geometry_achieved_with_frame_459aaa_s19) (.arrow exact_sic_geometry_achieved_with_frame_459aaa_l19 exact_sic_geometry_achieved_with_frame_459aaa_s19 exact_sic_geometry_achieved_with_frame_459aaa_s20)))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def exact_sic_geometry_achieved_with_frame_459aaa_true_arm : IGProtocol exact_sic_geometry_achieved_with_frame_459aaa_s0 exact_sic_geometry_achieved_with_frame_459aaa_s20 :=
  (exact_sic_geometry_achieved_with_frame_459aaa_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def exact_sic_geometry_achieved_with_frame_459aaa_tier : OuroboricityTier := TierFunctor.obj exact_sic_geometry_achieved_with_frame_459aaa_s0
#eval exact_sic_geometry_achieved_with_frame_459aaa_tier  -- the Grammar's own verdict on its tier
