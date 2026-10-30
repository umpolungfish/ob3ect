-- IGProtocol scaffold: VINIT → AFWD → CLINK → FSPLIT → EVALF → AREV → FFUSE → IMSCRIB → CLINK → FSPLIT → EVALT → FFUSE → IFIX → TANCH
-- Class: the least fixed point of a monotone operator
-- Fingerprint: sig=(7,4,2,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=14
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 6), (9, 11)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑱  | forward morphism — bidirectional arrow
--   [2] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [7] IMSCRIB   gram   := 𐑠               𐑙 → 𐑱  | identity — self-imscription
--   [8] CLINK     fid    := 𐑱               𐑠 → 𐑚  | composition — regime coherence
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [12] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [13] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_least_fixed_point_of_a_monotone_fe12c1_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_least_fixed_point_of_a_monotone_fe12c1_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_least_fixed_point_of_a_monotone_fe12c1_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_least_fixed_point_of_a_monotone_fe12c1_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_least_fixed_point_of_a_monotone_fe12c1_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_least_fixed_point_of_a_monotone_fe12c1_protocol : IGProtocol the_least_fixed_point_of_a_monotone_fe12c1_s0 the_least_fixed_point_of_a_monotone_fe12c1_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_least_fixed_point_of_a_monotone_fe12c1_s6 the_least_fixed_point_of_a_monotone_fe12c1_s6 = the_least_fixed_point_of_a_monotone_fe12c1_s6 (idempotent)
  (.seq (.arrow the_least_fixed_point_of_a_monotone_fe12c1_l0 the_least_fixed_point_of_a_monotone_fe12c1_s0 the_least_fixed_point_of_a_monotone_fe12c1_s1) (.seq (.arrow the_least_fixed_point_of_a_monotone_fe12c1_l1 the_least_fixed_point_of_a_monotone_fe12c1_s1 the_least_fixed_point_of_a_monotone_fe12c1_s2) (.seq (.arrow the_least_fixed_point_of_a_monotone_fe12c1_l2 the_least_fixed_point_of_a_monotone_fe12c1_s2 the_least_fixed_point_of_a_monotone_fe12c1_s3) (.seq (.prod (.arrow the_least_fixed_point_of_a_monotone_fe12c1_l3 the_least_fixed_point_of_a_monotone_fe12c1_s3 the_least_fixed_point_of_a_monotone_fe12c1_s6) (.arrow the_least_fixed_point_of_a_monotone_fe12c1_l3 the_least_fixed_point_of_a_monotone_fe12c1_s3 the_least_fixed_point_of_a_monotone_fe12c1_s6)) (.seq (.arrow the_least_fixed_point_of_a_monotone_fe12c1_l6 the_least_fixed_point_of_a_monotone_fe12c1_s6 the_least_fixed_point_of_a_monotone_fe12c1_s6) (.seq (.arrow the_least_fixed_point_of_a_monotone_fe12c1_l6 the_least_fixed_point_of_a_monotone_fe12c1_s6 the_least_fixed_point_of_a_monotone_fe12c1_s7) (.seq (.arrow the_least_fixed_point_of_a_monotone_fe12c1_l7 the_least_fixed_point_of_a_monotone_fe12c1_s7 the_least_fixed_point_of_a_monotone_fe12c1_s8) (.seq (.arrow the_least_fixed_point_of_a_monotone_fe12c1_l8 the_least_fixed_point_of_a_monotone_fe12c1_s8 the_least_fixed_point_of_a_monotone_fe12c1_s9) (.seq (.arrow the_least_fixed_point_of_a_monotone_fe12c1_l9 the_least_fixed_point_of_a_monotone_fe12c1_s9 the_least_fixed_point_of_a_monotone_fe12c1_s10) (.seq (.arrow the_least_fixed_point_of_a_monotone_fe12c1_l10 the_least_fixed_point_of_a_monotone_fe12c1_s10 the_least_fixed_point_of_a_monotone_fe12c1_s11) (.seq (.arrow the_least_fixed_point_of_a_monotone_fe12c1_l11 the_least_fixed_point_of_a_monotone_fe12c1_s11 the_least_fixed_point_of_a_monotone_fe12c1_s12) (.arrow the_least_fixed_point_of_a_monotone_fe12c1_l12 the_least_fixed_point_of_a_monotone_fe12c1_s12 the_least_fixed_point_of_a_monotone_fe12c1_s13))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_least_fixed_point_of_a_monotone_fe12c1_true_arm : IGProtocol the_least_fixed_point_of_a_monotone_fe12c1_s0 the_least_fixed_point_of_a_monotone_fe12c1_s13 :=
  (the_least_fixed_point_of_a_monotone_fe12c1_protocol).restrictToEVALT

-- false arm
noncomputable def the_least_fixed_point_of_a_monotone_fe12c1_false_arm : IGProtocol the_least_fixed_point_of_a_monotone_fe12c1_s0 the_least_fixed_point_of_a_monotone_fe12c1_s13 :=
  (the_least_fixed_point_of_a_monotone_fe12c1_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_least_fixed_point_of_a_monotone_fe12c1_tier : OuroboricityTier := TierFunctor.obj the_least_fixed_point_of_a_monotone_fe12c1_s0
#eval the_least_fixed_point_of_a_monotone_fe12c1_tier  -- the Grammar's own verdict on its tier
