-- IGProtocol scaffold: VINIT → AREV → FSPLIT → EVALT → IMSCRIB → EVALF → ENGAGR → FFUSE → AREV → AFWD → CLINK → IMSCRIB → IFIX → TANCH
-- Class: each coordinate z_k becomes a single algebraic element built and expressed directly in the degree-288 ray class field basis rather than as a real magnitude times a unit phase, because the polar factorization is not closed inside the field: the phase u_5 has gated degree 64 which does not divide 288 and so exits the coordinate field, while u_1 has degree 32 which divides it, so magnitude-times-phase is not a valid decomposition of a field element
-- Fingerprint: sig=(8,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=14
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑗  | initial object — ground of distinction
--   [1] AREV      pol    := 𐑗               𐑼 → 𐑚  | reverse morphism — parity flip
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [8] AREV      pol    := 𐑗               𐑙 → 𐑾  | reverse morphism — parity flip
--   [9] AFWD      rel    := 𐑾               𐑗 → 𐑱  | forward morphism — bidirectional arrow
--   [10] CLINK     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [11] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [12] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [13] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def each_coordinate_z_k_becomes_a_single_a6d63b_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_s7 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_s8 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def each_coordinate_z_k_becomes_a_single_a6d63b_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def each_coordinate_z_k_becomes_a_single_a6d63b_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_l9 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_coordinate_z_k_becomes_a_single_a6d63b_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def each_coordinate_z_k_becomes_a_single_a6d63b_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def each_coordinate_z_k_becomes_a_single_a6d63b_protocol : IGProtocol each_coordinate_z_k_becomes_a_single_a6d63b_s0 each_coordinate_z_k_becomes_a_single_a6d63b_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct each_coordinate_z_k_becomes_a_single_a6d63b_s7 each_coordinate_z_k_becomes_a_single_a6d63b_s7 = each_coordinate_z_k_becomes_a_single_a6d63b_s7 (idempotent)
  (.seq (.arrow each_coordinate_z_k_becomes_a_single_a6d63b_l0 each_coordinate_z_k_becomes_a_single_a6d63b_s0 each_coordinate_z_k_becomes_a_single_a6d63b_s1) (.seq (.arrow each_coordinate_z_k_becomes_a_single_a6d63b_l1 each_coordinate_z_k_becomes_a_single_a6d63b_s1 each_coordinate_z_k_becomes_a_single_a6d63b_s2) (.seq (.prod (.arrow each_coordinate_z_k_becomes_a_single_a6d63b_l2 each_coordinate_z_k_becomes_a_single_a6d63b_s2 each_coordinate_z_k_becomes_a_single_a6d63b_s7) (.arrow each_coordinate_z_k_becomes_a_single_a6d63b_l2 each_coordinate_z_k_becomes_a_single_a6d63b_s2 each_coordinate_z_k_becomes_a_single_a6d63b_s7)) (.seq (.arrow each_coordinate_z_k_becomes_a_single_a6d63b_l7 each_coordinate_z_k_becomes_a_single_a6d63b_s7 each_coordinate_z_k_becomes_a_single_a6d63b_s7) (.seq (.arrow each_coordinate_z_k_becomes_a_single_a6d63b_l7 each_coordinate_z_k_becomes_a_single_a6d63b_s7 each_coordinate_z_k_becomes_a_single_a6d63b_s8) (.seq (.arrow each_coordinate_z_k_becomes_a_single_a6d63b_l8 each_coordinate_z_k_becomes_a_single_a6d63b_s8 each_coordinate_z_k_becomes_a_single_a6d63b_s9) (.seq (.arrow each_coordinate_z_k_becomes_a_single_a6d63b_l9 each_coordinate_z_k_becomes_a_single_a6d63b_s9 each_coordinate_z_k_becomes_a_single_a6d63b_s10) (.seq (.arrow each_coordinate_z_k_becomes_a_single_a6d63b_l10 each_coordinate_z_k_becomes_a_single_a6d63b_s10 each_coordinate_z_k_becomes_a_single_a6d63b_s11) (.seq (.arrow each_coordinate_z_k_becomes_a_single_a6d63b_l11 each_coordinate_z_k_becomes_a_single_a6d63b_s11 each_coordinate_z_k_becomes_a_single_a6d63b_s12) (.arrow each_coordinate_z_k_becomes_a_single_a6d63b_l12 each_coordinate_z_k_becomes_a_single_a6d63b_s12 each_coordinate_z_k_becomes_a_single_a6d63b_s13))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def each_coordinate_z_k_becomes_a_single_a6d63b_true_arm : IGProtocol each_coordinate_z_k_becomes_a_single_a6d63b_s0 each_coordinate_z_k_becomes_a_single_a6d63b_s13 :=
  (each_coordinate_z_k_becomes_a_single_a6d63b_protocol).restrictToEVALT

-- false arm
noncomputable def each_coordinate_z_k_becomes_a_single_a6d63b_false_arm : IGProtocol each_coordinate_z_k_becomes_a_single_a6d63b_s0 each_coordinate_z_k_becomes_a_single_a6d63b_s13 :=
  (each_coordinate_z_k_becomes_a_single_a6d63b_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def each_coordinate_z_k_becomes_a_single_a6d63b_tier : OuroboricityTier := TierFunctor.obj each_coordinate_z_k_becomes_a_single_a6d63b_s0
#eval each_coordinate_z_k_becomes_a_single_a6d63b_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem each_coordinate_z_k_becomes_a_single_a6d63b_frobenius :
    igFrobeniusAlg.mul each_coordinate_z_k_becomes_a_single_a6d63b_s0 each_coordinate_z_k_becomes_a_single_a6d63b_s0 = each_coordinate_z_k_becomes_a_single_a6d63b_s0 :=
  igFrobAlg_self_fusion each_coordinate_z_k_becomes_a_single_a6d63b_s0
