-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → IFIX → FSPLIT → EVALT → AFWD → CLINK → EVALF → AREV → FFUSE → ENGAGR → IFIX → IMSCRIB → TANCH
-- Class: the degree-2 quadratic tower becomes a computable degree-8 nested-radical tower over Q(sqrt(26)), adjoining sqrt(26) then sqrt(15 - 2 sqrt(26)), still List-based with native_decide-able multiplication and both conjugations
-- Fingerprint: sig=(8,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(4, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑭  | forward morphism — bidirectional arrow
--   [3] IFIX      prot   := 𐑭               𐑾 → 𐑚  | irreversible fixation — winding number
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [11] ENGAGR    stoi   := 𐑳               𐑙 → 𐑭  | engage paradox — B-state, both arms
--   [12] IFIX      prot   := 𐑭               𐑳 → 𐑠  | irreversible fixation — winding number
--   [13] IMSCRIB   gram   := 𐑠               𐑭 → 𐑡  | identity — self-imscription
--   [14] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_degree_2_quadratic_tower_becomes_a_28c128_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_2_quadratic_tower_becomes_a_28c128_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_2_quadratic_tower_becomes_a_28c128_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_2_quadratic_tower_becomes_a_28c128_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_degree_2_quadratic_tower_becomes_a_28c128_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_degree_2_quadratic_tower_becomes_a_28c128_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_degree_2_quadratic_tower_becomes_a_28c128_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_degree_2_quadratic_tower_becomes_a_28c128_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_degree_2_quadratic_tower_becomes_a_28c128_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_degree_2_quadratic_tower_becomes_a_28c128_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_degree_2_quadratic_tower_becomes_a_28c128_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_degree_2_quadratic_tower_becomes_a_28c128_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_degree_2_quadratic_tower_becomes_a_28c128_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_degree_2_quadratic_tower_becomes_a_28c128_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_degree_2_quadratic_tower_becomes_a_28c128_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_degree_2_quadratic_tower_becomes_a_28c128_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_2_quadratic_tower_becomes_a_28c128_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_2_quadratic_tower_becomes_a_28c128_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_2_quadratic_tower_becomes_a_28c128_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_degree_2_quadratic_tower_becomes_a_28c128_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_2_quadratic_tower_becomes_a_28c128_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_degree_2_quadratic_tower_becomes_a_28c128_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_2_quadratic_tower_becomes_a_28c128_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_2_quadratic_tower_becomes_a_28c128_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_degree_2_quadratic_tower_becomes_a_28c128_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_2_quadratic_tower_becomes_a_28c128_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_2_quadratic_tower_becomes_a_28c128_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_degree_2_quadratic_tower_becomes_a_28c128_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_degree_2_quadratic_tower_becomes_a_28c128_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_2_quadratic_tower_becomes_a_28c128_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_degree_2_quadratic_tower_becomes_a_28c128_protocol : IGProtocol the_degree_2_quadratic_tower_becomes_a_28c128_s0 the_degree_2_quadratic_tower_becomes_a_28c128_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_degree_2_quadratic_tower_becomes_a_28c128_s10 the_degree_2_quadratic_tower_becomes_a_28c128_s10 = the_degree_2_quadratic_tower_becomes_a_28c128_s10 (idempotent)
  (.seq (.arrow the_degree_2_quadratic_tower_becomes_a_28c128_l0 the_degree_2_quadratic_tower_becomes_a_28c128_s0 the_degree_2_quadratic_tower_becomes_a_28c128_s1) (.seq (.arrow the_degree_2_quadratic_tower_becomes_a_28c128_l1 the_degree_2_quadratic_tower_becomes_a_28c128_s1 the_degree_2_quadratic_tower_becomes_a_28c128_s2) (.seq (.arrow the_degree_2_quadratic_tower_becomes_a_28c128_l2 the_degree_2_quadratic_tower_becomes_a_28c128_s2 the_degree_2_quadratic_tower_becomes_a_28c128_s3) (.seq (.arrow the_degree_2_quadratic_tower_becomes_a_28c128_l3 the_degree_2_quadratic_tower_becomes_a_28c128_s3 the_degree_2_quadratic_tower_becomes_a_28c128_s4) (.seq (.prod (.arrow the_degree_2_quadratic_tower_becomes_a_28c128_l4 the_degree_2_quadratic_tower_becomes_a_28c128_s4 the_degree_2_quadratic_tower_becomes_a_28c128_s10) (.arrow the_degree_2_quadratic_tower_becomes_a_28c128_l4 the_degree_2_quadratic_tower_becomes_a_28c128_s4 the_degree_2_quadratic_tower_becomes_a_28c128_s10)) (.seq (.arrow the_degree_2_quadratic_tower_becomes_a_28c128_l10 the_degree_2_quadratic_tower_becomes_a_28c128_s10 the_degree_2_quadratic_tower_becomes_a_28c128_s10) (.seq (.arrow the_degree_2_quadratic_tower_becomes_a_28c128_l10 the_degree_2_quadratic_tower_becomes_a_28c128_s10 the_degree_2_quadratic_tower_becomes_a_28c128_s11) (.seq (.arrow the_degree_2_quadratic_tower_becomes_a_28c128_l11 the_degree_2_quadratic_tower_becomes_a_28c128_s11 the_degree_2_quadratic_tower_becomes_a_28c128_s12) (.seq (.arrow the_degree_2_quadratic_tower_becomes_a_28c128_l12 the_degree_2_quadratic_tower_becomes_a_28c128_s12 the_degree_2_quadratic_tower_becomes_a_28c128_s13) (.arrow the_degree_2_quadratic_tower_becomes_a_28c128_l13 the_degree_2_quadratic_tower_becomes_a_28c128_s13 the_degree_2_quadratic_tower_becomes_a_28c128_s14))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_degree_2_quadratic_tower_becomes_a_28c128_true_arm : IGProtocol the_degree_2_quadratic_tower_becomes_a_28c128_s0 the_degree_2_quadratic_tower_becomes_a_28c128_s14 :=
  (the_degree_2_quadratic_tower_becomes_a_28c128_protocol).restrictToEVALT

-- false arm
noncomputable def the_degree_2_quadratic_tower_becomes_a_28c128_false_arm : IGProtocol the_degree_2_quadratic_tower_becomes_a_28c128_s0 the_degree_2_quadratic_tower_becomes_a_28c128_s14 :=
  (the_degree_2_quadratic_tower_becomes_a_28c128_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_degree_2_quadratic_tower_becomes_a_28c128_tier : OuroboricityTier := TierFunctor.obj the_degree_2_quadratic_tower_becomes_a_28c128_s0
#eval the_degree_2_quadratic_tower_becomes_a_28c128_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_degree_2_quadratic_tower_becomes_a_28c128_frobenius :
    igFrobeniusAlg.mul the_degree_2_quadratic_tower_becomes_a_28c128_s0 the_degree_2_quadratic_tower_becomes_a_28c128_s0 = the_degree_2_quadratic_tower_becomes_a_28c128_s0 :=
  igFrobAlg_self_fusion the_degree_2_quadratic_tower_becomes_a_28c128_s0
