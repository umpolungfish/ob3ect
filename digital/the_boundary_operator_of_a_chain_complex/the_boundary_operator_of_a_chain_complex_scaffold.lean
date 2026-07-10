-- IGProtocol scaffold: VINIT → AFWD → IMSCRIB → FSPLIT → EVALT → EVALF → FFUSE → CLINK → TANCH → ENGAGR → IFIX
-- Class: the boundary operator of a chain complex
-- Fingerprint: sig=(5,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=11
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 6)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑠  | forward morphism — bidirectional arrow
--   [2] IMSCRIB   gram   := 𐑠               𐑾 → 𐑚  | identity — self-imscription
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [7] CLINK     fid    := 𐑱               𐑙 → 𐑡  | composition — regime coherence
--   [8] TANCH     top    := 𐑡               𐑱 → 𐑳  | terminal object — connectivity boundary
--   [9] ENGAGR    stoi   := 𐑳               𐑡 → 𐑭  | engage paradox — B-state, both arms
--   [10] IFIX      prot   := 𐑭               𐑳 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_boundary_operator_of_a_chain_complex_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_operator_of_a_chain_complex_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_operator_of_a_chain_complex_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_operator_of_a_chain_complex_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_operator_of_a_chain_complex_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_boundary_operator_of_a_chain_complex_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_boundary_operator_of_a_chain_complex_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_boundary_operator_of_a_chain_complex_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_boundary_operator_of_a_chain_complex_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_boundary_operator_of_a_chain_complex_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_boundary_operator_of_a_chain_complex_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_boundary_operator_of_a_chain_complex_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_operator_of_a_chain_complex_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_operator_of_a_chain_complex_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_operator_of_a_chain_complex_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_operator_of_a_chain_complex_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_boundary_operator_of_a_chain_complex_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_boundary_operator_of_a_chain_complex_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_operator_of_a_chain_complex_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_operator_of_a_chain_complex_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_operator_of_a_chain_complex_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_boundary_operator_of_a_chain_complex_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_boundary_operator_of_a_chain_complex_protocol : IGProtocol the_boundary_operator_of_a_chain_complex_s0 the_boundary_operator_of_a_chain_complex_s10 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_boundary_operator_of_a_chain_complex_s6 the_boundary_operator_of_a_chain_complex_s6 = the_boundary_operator_of_a_chain_complex_s6 (idempotent)
  (.seq (.arrow the_boundary_operator_of_a_chain_complex_l0 the_boundary_operator_of_a_chain_complex_s0 the_boundary_operator_of_a_chain_complex_s1) (.seq (.arrow the_boundary_operator_of_a_chain_complex_l1 the_boundary_operator_of_a_chain_complex_s1 the_boundary_operator_of_a_chain_complex_s2) (.seq (.arrow the_boundary_operator_of_a_chain_complex_l2 the_boundary_operator_of_a_chain_complex_s2 the_boundary_operator_of_a_chain_complex_s3) (.seq (.prod (.arrow the_boundary_operator_of_a_chain_complex_l3 the_boundary_operator_of_a_chain_complex_s3 the_boundary_operator_of_a_chain_complex_s6) (.arrow the_boundary_operator_of_a_chain_complex_l3 the_boundary_operator_of_a_chain_complex_s3 the_boundary_operator_of_a_chain_complex_s6)) (.seq (.arrow the_boundary_operator_of_a_chain_complex_l6 the_boundary_operator_of_a_chain_complex_s6 the_boundary_operator_of_a_chain_complex_s6) (.seq (.arrow the_boundary_operator_of_a_chain_complex_l6 the_boundary_operator_of_a_chain_complex_s6 the_boundary_operator_of_a_chain_complex_s7) (.seq (.arrow the_boundary_operator_of_a_chain_complex_l7 the_boundary_operator_of_a_chain_complex_s7 the_boundary_operator_of_a_chain_complex_s8) (.seq (.arrow the_boundary_operator_of_a_chain_complex_l8 the_boundary_operator_of_a_chain_complex_s8 the_boundary_operator_of_a_chain_complex_s9) (.arrow the_boundary_operator_of_a_chain_complex_l9 the_boundary_operator_of_a_chain_complex_s9 the_boundary_operator_of_a_chain_complex_s10)))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_boundary_operator_of_a_chain_complex_true_arm : IGProtocol the_boundary_operator_of_a_chain_complex_s0 the_boundary_operator_of_a_chain_complex_s10 :=
  (the_boundary_operator_of_a_chain_complex_protocol).restrictToEVALT

-- false arm
noncomputable def the_boundary_operator_of_a_chain_complex_false_arm : IGProtocol the_boundary_operator_of_a_chain_complex_s0 the_boundary_operator_of_a_chain_complex_s10 :=
  (the_boundary_operator_of_a_chain_complex_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_boundary_operator_of_a_chain_complex_tier : OuroboricityTier := TierFunctor.obj the_boundary_operator_of_a_chain_complex_s0
#eval the_boundary_operator_of_a_chain_complex_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_boundary_operator_of_a_chain_complex_frobenius :
    igFrobeniusAlg.mul the_boundary_operator_of_a_chain_complex_s0 the_boundary_operator_of_a_chain_complex_s0 = the_boundary_operator_of_a_chain_complex_s0 :=
  igFrobAlg_self_fusion the_boundary_operator_of_a_chain_complex_s0
