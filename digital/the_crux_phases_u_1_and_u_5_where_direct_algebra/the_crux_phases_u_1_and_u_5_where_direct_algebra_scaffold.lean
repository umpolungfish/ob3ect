-- IGProtocol scaffold: VINIT → IMSCRIB → IFIX → FSPLIT → EVALF → AREV → CLINK → ENGAGR → AFWD → EVALT → FFUSE → CLINK → IFIX → IMSCRIB → TANCH
-- Class: the crux phases u_1 and u_5, where direct algebraic-dependence recovery returns only artifact degrees, become recovered as an orbit of the ray-class fusion group [6,6,2,2] acting by modular S and T data through the established structural isomorphism SIC-Galois-tensor equals WZW model equals affine-Kac-Moody, so each crux phase is read from a finite abelian character sum rather than from an unstable least-dependence
-- Fingerprint: sig=(8,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑭  | identity — self-imscription
--   [2] IFIX      prot   := 𐑭               𐑠 → 𐑚  | irreversible fixation — winding number
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [8] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [11] CLINK     fid    := 𐑱               𐑙 → 𐑭  | composition — regime coherence
--   [12] IFIX      prot   := 𐑭               𐑱 → 𐑠  | irreversible fixation — winding number
--   [13] IMSCRIB   gram   := 𐑠               𐑭 → 𐑡  | identity — self-imscription
--   [14] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_crux_phases_u_1_and_u_5_where_ae275a_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_crux_phases_u_1_and_u_5_where_ae275a_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_crux_phases_u_1_and_u_5_where_ae275a_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_crux_phases_u_1_and_u_5_where_ae275a_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_crux_phases_u_1_and_u_5_where_ae275a_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def the_crux_phases_u_1_and_u_5_where_ae275a_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def the_crux_phases_u_1_and_u_5_where_ae275a_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def the_crux_phases_u_1_and_u_5_where_ae275a_s7 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := up, prot := ah }
private def the_crux_phases_u_1_and_u_5_where_ae275a_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := up, prot := ah }
private def the_crux_phases_u_1_and_u_5_where_ae275a_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_crux_phases_u_1_and_u_5_where_ae275a_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_crux_phases_u_1_and_u_5_where_ae275a_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_crux_phases_u_1_and_u_5_where_ae275a_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_crux_phases_u_1_and_u_5_where_ae275a_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_crux_phases_u_1_and_u_5_where_ae275a_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_crux_phases_u_1_and_u_5_where_ae275a_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_crux_phases_u_1_and_u_5_where_ae275a_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_crux_phases_u_1_and_u_5_where_ae275a_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_crux_phases_u_1_and_u_5_where_ae275a_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_crux_phases_u_1_and_u_5_where_ae275a_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_crux_phases_u_1_and_u_5_where_ae275a_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_crux_phases_u_1_and_u_5_where_ae275a_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_crux_phases_u_1_and_u_5_where_ae275a_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_crux_phases_u_1_and_u_5_where_ae275a_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_crux_phases_u_1_and_u_5_where_ae275a_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_crux_phases_u_1_and_u_5_where_ae275a_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_crux_phases_u_1_and_u_5_where_ae275a_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_crux_phases_u_1_and_u_5_where_ae275a_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_crux_phases_u_1_and_u_5_where_ae275a_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_crux_phases_u_1_and_u_5_where_ae275a_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_crux_phases_u_1_and_u_5_where_ae275a_protocol : IGProtocol the_crux_phases_u_1_and_u_5_where_ae275a_s0 the_crux_phases_u_1_and_u_5_where_ae275a_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_crux_phases_u_1_and_u_5_where_ae275a_s10 the_crux_phases_u_1_and_u_5_where_ae275a_s10 = the_crux_phases_u_1_and_u_5_where_ae275a_s10 (idempotent)
  (.seq (.arrow the_crux_phases_u_1_and_u_5_where_ae275a_l0 the_crux_phases_u_1_and_u_5_where_ae275a_s0 the_crux_phases_u_1_and_u_5_where_ae275a_s1) (.seq (.arrow the_crux_phases_u_1_and_u_5_where_ae275a_l1 the_crux_phases_u_1_and_u_5_where_ae275a_s1 the_crux_phases_u_1_and_u_5_where_ae275a_s2) (.seq (.arrow the_crux_phases_u_1_and_u_5_where_ae275a_l2 the_crux_phases_u_1_and_u_5_where_ae275a_s2 the_crux_phases_u_1_and_u_5_where_ae275a_s3) (.seq (.prod (.arrow the_crux_phases_u_1_and_u_5_where_ae275a_l3 the_crux_phases_u_1_and_u_5_where_ae275a_s3 the_crux_phases_u_1_and_u_5_where_ae275a_s10) (.arrow the_crux_phases_u_1_and_u_5_where_ae275a_l3 the_crux_phases_u_1_and_u_5_where_ae275a_s3 the_crux_phases_u_1_and_u_5_where_ae275a_s10)) (.seq (.arrow the_crux_phases_u_1_and_u_5_where_ae275a_l10 the_crux_phases_u_1_and_u_5_where_ae275a_s10 the_crux_phases_u_1_and_u_5_where_ae275a_s10) (.seq (.arrow the_crux_phases_u_1_and_u_5_where_ae275a_l10 the_crux_phases_u_1_and_u_5_where_ae275a_s10 the_crux_phases_u_1_and_u_5_where_ae275a_s11) (.seq (.arrow the_crux_phases_u_1_and_u_5_where_ae275a_l11 the_crux_phases_u_1_and_u_5_where_ae275a_s11 the_crux_phases_u_1_and_u_5_where_ae275a_s12) (.seq (.arrow the_crux_phases_u_1_and_u_5_where_ae275a_l12 the_crux_phases_u_1_and_u_5_where_ae275a_s12 the_crux_phases_u_1_and_u_5_where_ae275a_s13) (.arrow the_crux_phases_u_1_and_u_5_where_ae275a_l13 the_crux_phases_u_1_and_u_5_where_ae275a_s13 the_crux_phases_u_1_and_u_5_where_ae275a_s14)))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_crux_phases_u_1_and_u_5_where_ae275a_true_arm : IGProtocol the_crux_phases_u_1_and_u_5_where_ae275a_s0 the_crux_phases_u_1_and_u_5_where_ae275a_s14 :=
  (the_crux_phases_u_1_and_u_5_where_ae275a_protocol).restrictToEVALT

-- false arm
noncomputable def the_crux_phases_u_1_and_u_5_where_ae275a_false_arm : IGProtocol the_crux_phases_u_1_and_u_5_where_ae275a_s0 the_crux_phases_u_1_and_u_5_where_ae275a_s14 :=
  (the_crux_phases_u_1_and_u_5_where_ae275a_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def the_crux_phases_u_1_and_u_5_where_ae275a_tier : OuroboricityTier := TierFunctor.obj the_crux_phases_u_1_and_u_5_where_ae275a_s0
#eval the_crux_phases_u_1_and_u_5_where_ae275a_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_crux_phases_u_1_and_u_5_where_ae275a_frobenius :
    igFrobeniusAlg.mul the_crux_phases_u_1_and_u_5_where_ae275a_s0 the_crux_phases_u_1_and_u_5_where_ae275a_s0 = the_crux_phases_u_1_and_u_5_where_ae275a_s0 :=
  igFrobAlg_self_fusion the_crux_phases_u_1_and_u_5_where_ae275a_s0
