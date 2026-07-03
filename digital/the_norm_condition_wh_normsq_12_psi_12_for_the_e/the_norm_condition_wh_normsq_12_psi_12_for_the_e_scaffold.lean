-- IGProtocol scaffold: VINIT → AFWD → IMSCRIB → FSPLIT → ENGAGR → CLINK → AREV → EVALT → EVALF → FFUSE → IFIX → TANCH
-- Class: the norm condition wh_normSq 12 psi = 12 for the exact d=12 fiducial becomes a machine-checkable equality in exact arithmetic over the number field, not floating point
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 9)]

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
--   [4] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [10] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [11] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_norm_condition_wh_normsq_12_psi_12_1b4891_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_norm_condition_wh_normsq_12_psi_12_1b4891_protocol : IGProtocol the_norm_condition_wh_normsq_12_psi_12_1b4891_s0 the_norm_condition_wh_normsq_12_psi_12_1b4891_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_norm_condition_wh_normsq_12_psi_12_1b4891_s9 the_norm_condition_wh_normsq_12_psi_12_1b4891_s9 = the_norm_condition_wh_normsq_12_psi_12_1b4891_s9 (idempotent)
  (.seq (.arrow the_norm_condition_wh_normsq_12_psi_12_1b4891_l0 the_norm_condition_wh_normsq_12_psi_12_1b4891_s0 the_norm_condition_wh_normsq_12_psi_12_1b4891_s1) (.seq (.arrow the_norm_condition_wh_normsq_12_psi_12_1b4891_l1 the_norm_condition_wh_normsq_12_psi_12_1b4891_s1 the_norm_condition_wh_normsq_12_psi_12_1b4891_s2) (.seq (.arrow the_norm_condition_wh_normsq_12_psi_12_1b4891_l2 the_norm_condition_wh_normsq_12_psi_12_1b4891_s2 the_norm_condition_wh_normsq_12_psi_12_1b4891_s3) (.seq (.prod (.arrow the_norm_condition_wh_normsq_12_psi_12_1b4891_l3 the_norm_condition_wh_normsq_12_psi_12_1b4891_s3 the_norm_condition_wh_normsq_12_psi_12_1b4891_s9) (.arrow the_norm_condition_wh_normsq_12_psi_12_1b4891_l3 the_norm_condition_wh_normsq_12_psi_12_1b4891_s3 the_norm_condition_wh_normsq_12_psi_12_1b4891_s9)) (.seq (.arrow the_norm_condition_wh_normsq_12_psi_12_1b4891_l9 the_norm_condition_wh_normsq_12_psi_12_1b4891_s9 the_norm_condition_wh_normsq_12_psi_12_1b4891_s9) (.seq (.arrow the_norm_condition_wh_normsq_12_psi_12_1b4891_l9 the_norm_condition_wh_normsq_12_psi_12_1b4891_s9 the_norm_condition_wh_normsq_12_psi_12_1b4891_s10) (.arrow the_norm_condition_wh_normsq_12_psi_12_1b4891_l10 the_norm_condition_wh_normsq_12_psi_12_1b4891_s10 the_norm_condition_wh_normsq_12_psi_12_1b4891_s11)))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_norm_condition_wh_normsq_12_psi_12_1b4891_true_arm : IGProtocol the_norm_condition_wh_normsq_12_psi_12_1b4891_s0 the_norm_condition_wh_normsq_12_psi_12_1b4891_s11 :=
  (the_norm_condition_wh_normsq_12_psi_12_1b4891_protocol).restrictToEVALT

-- false arm
noncomputable def the_norm_condition_wh_normsq_12_psi_12_1b4891_false_arm : IGProtocol the_norm_condition_wh_normsq_12_psi_12_1b4891_s0 the_norm_condition_wh_normsq_12_psi_12_1b4891_s11 :=
  (the_norm_condition_wh_normsq_12_psi_12_1b4891_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def the_norm_condition_wh_normsq_12_psi_12_1b4891_tier : OuroboricityTier := TierFunctor.obj the_norm_condition_wh_normsq_12_psi_12_1b4891_s0
#eval the_norm_condition_wh_normsq_12_psi_12_1b4891_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_norm_condition_wh_normsq_12_psi_12_1b4891_frobenius :
    igFrobeniusAlg.mul the_norm_condition_wh_normsq_12_psi_12_1b4891_s0 the_norm_condition_wh_normsq_12_psi_12_1b4891_s0 = the_norm_condition_wh_normsq_12_psi_12_1b4891_s0 :=
  igFrobAlg_self_fusion the_norm_condition_wh_normsq_12_psi_12_1b4891_s0
