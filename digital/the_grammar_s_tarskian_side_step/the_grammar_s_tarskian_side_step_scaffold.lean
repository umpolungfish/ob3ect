-- IGProtocol scaffold: VINIT → FSPLIT → EVALT → EVALF → ENGAGR → CLINK → IMSCRIB → FFUSE → IFIX → TANCH
-- Class: The Grammar''s Tarskian Side-Step
-- Fingerprint: sig=(4,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=10
-- Expected tier: O₀
-- FSPLIT/FFUSE pairs: [(1, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [3] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [4] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [8] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [9] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_grammars_tarskian_side_step_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammars_tarskian_side_step_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammars_tarskian_side_step_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_grammars_tarskian_side_step_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_grammars_tarskian_side_step_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_grammars_tarskian_side_step_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_grammars_tarskian_side_step_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_grammars_tarskian_side_step_s7 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_grammars_tarskian_side_step_s8 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_grammars_tarskian_side_step_s9 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_grammars_tarskian_side_step_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammars_tarskian_side_step_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammars_tarskian_side_step_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_grammars_tarskian_side_step_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_grammars_tarskian_side_step_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_grammars_tarskian_side_step_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammars_tarskian_side_step_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammars_tarskian_side_step_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammars_tarskian_side_step_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_grammars_tarskian_side_step_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_grammars_tarskian_side_step_protocol : IGProtocol the_grammars_tarskian_side_step_s0 the_grammars_tarskian_side_step_s9 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_grammars_tarskian_side_step_s7 the_grammars_tarskian_side_step_s7 = the_grammars_tarskian_side_step_s7 (idempotent)
  (.seq (.arrow the_grammars_tarskian_side_step_l0 the_grammars_tarskian_side_step_s0 the_grammars_tarskian_side_step_s1) (.seq (.prod (.arrow the_grammars_tarskian_side_step_l1 the_grammars_tarskian_side_step_s1 the_grammars_tarskian_side_step_s7) (.arrow the_grammars_tarskian_side_step_l1 the_grammars_tarskian_side_step_s1 the_grammars_tarskian_side_step_s7)) (.seq (.arrow the_grammars_tarskian_side_step_l7 the_grammars_tarskian_side_step_s7 the_grammars_tarskian_side_step_s7) (.seq (.arrow the_grammars_tarskian_side_step_l7 the_grammars_tarskian_side_step_s7 the_grammars_tarskian_side_step_s8) (.arrow the_grammars_tarskian_side_step_l8 the_grammars_tarskian_side_step_s8 the_grammars_tarskian_side_step_s9)))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_grammars_tarskian_side_step_true_arm : IGProtocol the_grammars_tarskian_side_step_s0 the_grammars_tarskian_side_step_s9 :=
  (the_grammars_tarskian_side_step_protocol).restrictToEVALT

-- false arm
noncomputable def the_grammars_tarskian_side_step_false_arm : IGProtocol the_grammars_tarskian_side_step_s0 the_grammars_tarskian_side_step_s9 :=
  (the_grammars_tarskian_side_step_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₀.
def the_grammars_tarskian_side_step_tier : OuroboricityTier := TierFunctor.obj the_grammars_tarskian_side_step_s0
#eval the_grammars_tarskian_side_step_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_grammars_tarskian_side_step_frobenius :
    igFrobeniusAlg.mul the_grammars_tarskian_side_step_s0 the_grammars_tarskian_side_step_s0 = the_grammars_tarskian_side_step_s0 :=
  igFrobAlg_self_fusion the_grammars_tarskian_side_step_s0
