-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → FSPLIT → CLINK → CLINK → CLINK → FFUSE → AREV → FSPLIT → EVALF → AREV → EVALT → FFUSE → ENGAGR → AFWD → IFIX → IFIX → IMSCRIB → TANCH
-- Class: the degree-288 ray class field of Q(sqrt13) becomes a PARI nfinit object with a reduced integral basis, so every fiducial coordinate and modulus is expressed as exact integer coordinates in that basis instead of an ill-conditioned power-basis lindep
-- Fingerprint: sig=(11,4,3,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=20
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 7), (9, 13)]

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
--   [4] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [8] AREV      pol    := 𐑗               𐑙 → 𐑚  | reverse morphism — parity flip
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [12] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [14] ENGAGR    stoi   := 𐑳               𐑙 → 𐑾  | engage paradox — B-state, both arms
--   [15] AFWD      rel    := 𐑾               𐑳 → 𐑭  | forward morphism — bidirectional arrow
--   [16] IFIX      prot   := 𐑭               𐑾 → 𐑭  | irreversible fixation — winding number
--   [17] IFIX      prot   := 𐑭               𐑭 → 𐑠  | irreversible fixation — winding number
--   [18] IMSCRIB   gram   := 𐑠               𐑭 → 𐑡  | identity — self-imscription
--   [19] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_degree_288_ray_class_field_of_q_b61526_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_degree_288_ray_class_field_of_q_b61526_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_degree_288_ray_class_field_of_q_b61526_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_degree_288_ray_class_field_of_q_b61526_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_degree_288_ray_class_field_of_q_b61526_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_l15 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_degree_288_ray_class_field_of_q_b61526_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_degree_288_ray_class_field_of_q_b61526_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_ray_class_field_of_q_b61526_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_degree_288_ray_class_field_of_q_b61526_protocol : IGProtocol the_degree_288_ray_class_field_of_q_b61526_s0 the_degree_288_ray_class_field_of_q_b61526_s19 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_degree_288_ray_class_field_of_q_b61526_s7 the_degree_288_ray_class_field_of_q_b61526_s7 = the_degree_288_ray_class_field_of_q_b61526_s7 (idempotent)
  (.seq (.arrow the_degree_288_ray_class_field_of_q_b61526_l0 the_degree_288_ray_class_field_of_q_b61526_s0 the_degree_288_ray_class_field_of_q_b61526_s1) (.seq (.arrow the_degree_288_ray_class_field_of_q_b61526_l1 the_degree_288_ray_class_field_of_q_b61526_s1 the_degree_288_ray_class_field_of_q_b61526_s2) (.seq (.arrow the_degree_288_ray_class_field_of_q_b61526_l2 the_degree_288_ray_class_field_of_q_b61526_s2 the_degree_288_ray_class_field_of_q_b61526_s3) (.seq (.prod (.arrow the_degree_288_ray_class_field_of_q_b61526_l3 the_degree_288_ray_class_field_of_q_b61526_s3 the_degree_288_ray_class_field_of_q_b61526_s7) (.arrow the_degree_288_ray_class_field_of_q_b61526_l3 the_degree_288_ray_class_field_of_q_b61526_s3 the_degree_288_ray_class_field_of_q_b61526_s7)) (.seq (.arrow the_degree_288_ray_class_field_of_q_b61526_l7 the_degree_288_ray_class_field_of_q_b61526_s7 the_degree_288_ray_class_field_of_q_b61526_s7) (.seq (.arrow the_degree_288_ray_class_field_of_q_b61526_l7 the_degree_288_ray_class_field_of_q_b61526_s7 the_degree_288_ray_class_field_of_q_b61526_s8) (.seq (.arrow the_degree_288_ray_class_field_of_q_b61526_l8 the_degree_288_ray_class_field_of_q_b61526_s8 the_degree_288_ray_class_field_of_q_b61526_s9) (.seq (.arrow the_degree_288_ray_class_field_of_q_b61526_l9 the_degree_288_ray_class_field_of_q_b61526_s9 the_degree_288_ray_class_field_of_q_b61526_s10) (.seq (.arrow the_degree_288_ray_class_field_of_q_b61526_l10 the_degree_288_ray_class_field_of_q_b61526_s10 the_degree_288_ray_class_field_of_q_b61526_s11) (.seq (.arrow the_degree_288_ray_class_field_of_q_b61526_l11 the_degree_288_ray_class_field_of_q_b61526_s11 the_degree_288_ray_class_field_of_q_b61526_s12) (.seq (.arrow the_degree_288_ray_class_field_of_q_b61526_l12 the_degree_288_ray_class_field_of_q_b61526_s12 the_degree_288_ray_class_field_of_q_b61526_s13) (.seq (.arrow the_degree_288_ray_class_field_of_q_b61526_l13 the_degree_288_ray_class_field_of_q_b61526_s13 the_degree_288_ray_class_field_of_q_b61526_s14) (.seq (.arrow the_degree_288_ray_class_field_of_q_b61526_l14 the_degree_288_ray_class_field_of_q_b61526_s14 the_degree_288_ray_class_field_of_q_b61526_s15) (.seq (.arrow the_degree_288_ray_class_field_of_q_b61526_l15 the_degree_288_ray_class_field_of_q_b61526_s15 the_degree_288_ray_class_field_of_q_b61526_s16) (.seq (.arrow the_degree_288_ray_class_field_of_q_b61526_l16 the_degree_288_ray_class_field_of_q_b61526_s16 the_degree_288_ray_class_field_of_q_b61526_s17) (.seq (.arrow the_degree_288_ray_class_field_of_q_b61526_l17 the_degree_288_ray_class_field_of_q_b61526_s17 the_degree_288_ray_class_field_of_q_b61526_s18) (.arrow the_degree_288_ray_class_field_of_q_b61526_l18 the_degree_288_ray_class_field_of_q_b61526_s18 the_degree_288_ray_class_field_of_q_b61526_s19)))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_degree_288_ray_class_field_of_q_b61526_true_arm : IGProtocol the_degree_288_ray_class_field_of_q_b61526_s0 the_degree_288_ray_class_field_of_q_b61526_s19 :=
  (the_degree_288_ray_class_field_of_q_b61526_protocol).restrictToEVALT

-- false arm
noncomputable def the_degree_288_ray_class_field_of_q_b61526_false_arm : IGProtocol the_degree_288_ray_class_field_of_q_b61526_s0 the_degree_288_ray_class_field_of_q_b61526_s19 :=
  (the_degree_288_ray_class_field_of_q_b61526_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_degree_288_ray_class_field_of_q_b61526_tier : OuroboricityTier := TierFunctor.obj the_degree_288_ray_class_field_of_q_b61526_s0
#eval the_degree_288_ray_class_field_of_q_b61526_tier  -- the Grammar's own verdict on its tier
