-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALF → AREV → IMSCRIB → IFIX → FFUSE → AFWD → FSPLIT → ENGAGR → CLINK → IFIX → FFUSE → AFWD → IFIX → TANCH
-- Class: the dimensions d=2 and d=3, where the SIC discriminant (d-3)(d+1) is non-positive, become the degenerate boundary of the arithmetic regime, the tetrahedron and the continuous equilateral family that need no Stark unit and mark where the real quadratic story begins
-- Fingerprint: sig=(8,4,2,3)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=17
-- Expected tier: O₀
-- FSPLIT/FFUSE pairs: [(2, 7), (9, 13)]

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
--   [3] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [4] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [5] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [6] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [8] AFWD      rel    := 𐑾               𐑙 → 𐑚  | forward morphism — bidirectional arrow
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [11] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [12] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [14] AFWD      rel    := 𐑾               𐑙 → 𐑭  | forward morphism — bidirectional arrow
--   [15] IFIX      prot   := 𐑭               𐑾 → 𐑡  | irreversible fixation — winding number
--   [16] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := up, prot := ah }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := up, prot := ah }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := up, prot := ah }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_l14 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_dimensions_d_2_and_d_3_where_the_63f3d9_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_dimensions_d_2_and_d_3_where_the_63f3d9_protocol : IGProtocol the_dimensions_d_2_and_d_3_where_the_63f3d9_s0 the_dimensions_d_2_and_d_3_where_the_63f3d9_s16 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_dimensions_d_2_and_d_3_where_the_63f3d9_s7 the_dimensions_d_2_and_d_3_where_the_63f3d9_s7 = the_dimensions_d_2_and_d_3_where_the_63f3d9_s7 (idempotent)
  (.seq (.arrow the_dimensions_d_2_and_d_3_where_the_63f3d9_l0 the_dimensions_d_2_and_d_3_where_the_63f3d9_s0 the_dimensions_d_2_and_d_3_where_the_63f3d9_s1) (.seq (.arrow the_dimensions_d_2_and_d_3_where_the_63f3d9_l1 the_dimensions_d_2_and_d_3_where_the_63f3d9_s1 the_dimensions_d_2_and_d_3_where_the_63f3d9_s2) (.seq (.prod (.arrow the_dimensions_d_2_and_d_3_where_the_63f3d9_l2 the_dimensions_d_2_and_d_3_where_the_63f3d9_s2 the_dimensions_d_2_and_d_3_where_the_63f3d9_s7) (.arrow the_dimensions_d_2_and_d_3_where_the_63f3d9_l2 the_dimensions_d_2_and_d_3_where_the_63f3d9_s2 the_dimensions_d_2_and_d_3_where_the_63f3d9_s7)) (.seq (.arrow the_dimensions_d_2_and_d_3_where_the_63f3d9_l7 the_dimensions_d_2_and_d_3_where_the_63f3d9_s7 the_dimensions_d_2_and_d_3_where_the_63f3d9_s7) (.seq (.arrow the_dimensions_d_2_and_d_3_where_the_63f3d9_l7 the_dimensions_d_2_and_d_3_where_the_63f3d9_s7 the_dimensions_d_2_and_d_3_where_the_63f3d9_s8) (.seq (.arrow the_dimensions_d_2_and_d_3_where_the_63f3d9_l8 the_dimensions_d_2_and_d_3_where_the_63f3d9_s8 the_dimensions_d_2_and_d_3_where_the_63f3d9_s9) (.seq (.arrow the_dimensions_d_2_and_d_3_where_the_63f3d9_l9 the_dimensions_d_2_and_d_3_where_the_63f3d9_s9 the_dimensions_d_2_and_d_3_where_the_63f3d9_s10) (.seq (.arrow the_dimensions_d_2_and_d_3_where_the_63f3d9_l10 the_dimensions_d_2_and_d_3_where_the_63f3d9_s10 the_dimensions_d_2_and_d_3_where_the_63f3d9_s11) (.seq (.arrow the_dimensions_d_2_and_d_3_where_the_63f3d9_l11 the_dimensions_d_2_and_d_3_where_the_63f3d9_s11 the_dimensions_d_2_and_d_3_where_the_63f3d9_s12) (.seq (.arrow the_dimensions_d_2_and_d_3_where_the_63f3d9_l12 the_dimensions_d_2_and_d_3_where_the_63f3d9_s12 the_dimensions_d_2_and_d_3_where_the_63f3d9_s13) (.seq (.arrow the_dimensions_d_2_and_d_3_where_the_63f3d9_l13 the_dimensions_d_2_and_d_3_where_the_63f3d9_s13 the_dimensions_d_2_and_d_3_where_the_63f3d9_s14) (.seq (.arrow the_dimensions_d_2_and_d_3_where_the_63f3d9_l14 the_dimensions_d_2_and_d_3_where_the_63f3d9_s14 the_dimensions_d_2_and_d_3_where_the_63f3d9_s15) (.arrow the_dimensions_d_2_and_d_3_where_the_63f3d9_l15 the_dimensions_d_2_and_d_3_where_the_63f3d9_s15 the_dimensions_d_2_and_d_3_where_the_63f3d9_s16)))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- false arm
noncomputable def the_dimensions_d_2_and_d_3_where_the_63f3d9_false_arm : IGProtocol the_dimensions_d_2_and_d_3_where_the_63f3d9_s0 the_dimensions_d_2_and_d_3_where_the_63f3d9_s16 :=
  (the_dimensions_d_2_and_d_3_where_the_63f3d9_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₀.
def the_dimensions_d_2_and_d_3_where_the_63f3d9_tier : OuroboricityTier := TierFunctor.obj the_dimensions_d_2_and_d_3_where_the_63f3d9_s0
#eval the_dimensions_d_2_and_d_3_where_the_63f3d9_tier  -- the Grammar's own verdict on its tier
