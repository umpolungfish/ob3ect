-- IGProtocol scaffold: VINIT → TANCH → AREV → AFWD → FSPLIT → EVALF → EVALT → FFUSE → CLINK → ENGAGR → AFWD → EVALT → IMSCRIB → IFIX → TANCH
-- Class: simple procedure for crafting a homunculus
-- Fingerprint: sig=(8,2,4,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(4, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑗  | terminal object — connectivity boundary
--   [2] AREV      pol    := 𐑗               𐑡 → 𐑾  | reverse morphism — parity flip
--   [3] AFWD      rel    := 𐑾               𐑗 → 𐑚  | forward morphism — bidirectional arrow
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] CLINK     fid    := 𐑱               𐑙 → 𐑳  | composition — regime coherence
--   [9] ENGAGR    stoi   := 𐑳               𐑱 → 𐑾  | engage paradox — B-state, both arms
--   [10] AFWD      rel    := 𐑾               𐑳 → ⊙  | forward morphism — bidirectional arrow
--   [11] EVALT     crit   := ⊙               𐑾 → 𐑠  | evaluate-true — criticality gate open
--   [12] IMSCRIB   gram   := 𐑠               ⊙ → 𐑭  | identity — self-imscription
--   [13] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [14] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def simple_procedure_for_crafting_a_cf4273_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def simple_procedure_for_crafting_a_cf4273_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def simple_procedure_for_crafting_a_cf4273_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_l10 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def simple_procedure_for_crafting_a_cf4273_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def simple_procedure_for_crafting_a_cf4273_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def simple_procedure_for_crafting_a_cf4273_protocol : IGProtocol simple_procedure_for_crafting_a_cf4273_s0 simple_procedure_for_crafting_a_cf4273_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct simple_procedure_for_crafting_a_cf4273_s7 simple_procedure_for_crafting_a_cf4273_s7 = simple_procedure_for_crafting_a_cf4273_s7 (idempotent)
  (.seq (.arrow simple_procedure_for_crafting_a_cf4273_l0 simple_procedure_for_crafting_a_cf4273_s0 simple_procedure_for_crafting_a_cf4273_s1) (.seq (.arrow simple_procedure_for_crafting_a_cf4273_l1 simple_procedure_for_crafting_a_cf4273_s1 simple_procedure_for_crafting_a_cf4273_s2) (.seq (.arrow simple_procedure_for_crafting_a_cf4273_l2 simple_procedure_for_crafting_a_cf4273_s2 simple_procedure_for_crafting_a_cf4273_s3) (.seq (.arrow simple_procedure_for_crafting_a_cf4273_l3 simple_procedure_for_crafting_a_cf4273_s3 simple_procedure_for_crafting_a_cf4273_s4) (.seq (.prod (.arrow simple_procedure_for_crafting_a_cf4273_l4 simple_procedure_for_crafting_a_cf4273_s4 simple_procedure_for_crafting_a_cf4273_s7) (.arrow simple_procedure_for_crafting_a_cf4273_l4 simple_procedure_for_crafting_a_cf4273_s4 simple_procedure_for_crafting_a_cf4273_s7)) (.seq (.arrow simple_procedure_for_crafting_a_cf4273_l7 simple_procedure_for_crafting_a_cf4273_s7 simple_procedure_for_crafting_a_cf4273_s7) (.seq (.arrow simple_procedure_for_crafting_a_cf4273_l7 simple_procedure_for_crafting_a_cf4273_s7 simple_procedure_for_crafting_a_cf4273_s8) (.seq (.arrow simple_procedure_for_crafting_a_cf4273_l8 simple_procedure_for_crafting_a_cf4273_s8 simple_procedure_for_crafting_a_cf4273_s9) (.seq (.arrow simple_procedure_for_crafting_a_cf4273_l9 simple_procedure_for_crafting_a_cf4273_s9 simple_procedure_for_crafting_a_cf4273_s10) (.seq (.arrow simple_procedure_for_crafting_a_cf4273_l10 simple_procedure_for_crafting_a_cf4273_s10 simple_procedure_for_crafting_a_cf4273_s11) (.seq (.arrow simple_procedure_for_crafting_a_cf4273_l11 simple_procedure_for_crafting_a_cf4273_s11 simple_procedure_for_crafting_a_cf4273_s12) (.seq (.arrow simple_procedure_for_crafting_a_cf4273_l12 simple_procedure_for_crafting_a_cf4273_s12 simple_procedure_for_crafting_a_cf4273_s13) (.arrow simple_procedure_for_crafting_a_cf4273_l13 simple_procedure_for_crafting_a_cf4273_s13 simple_procedure_for_crafting_a_cf4273_s14)))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def simple_procedure_for_crafting_a_cf4273_true_arm : IGProtocol simple_procedure_for_crafting_a_cf4273_s0 simple_procedure_for_crafting_a_cf4273_s14 :=
  (simple_procedure_for_crafting_a_cf4273_protocol).restrictToEVALT

-- false arm
noncomputable def simple_procedure_for_crafting_a_cf4273_false_arm : IGProtocol simple_procedure_for_crafting_a_cf4273_s0 simple_procedure_for_crafting_a_cf4273_s14 :=
  (simple_procedure_for_crafting_a_cf4273_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def simple_procedure_for_crafting_a_cf4273_tier : OuroboricityTier := TierFunctor.obj simple_procedure_for_crafting_a_cf4273_s0
#eval simple_procedure_for_crafting_a_cf4273_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem simple_procedure_for_crafting_a_cf4273_frobenius :
    igFrobeniusAlg.mul simple_procedure_for_crafting_a_cf4273_s0 simple_procedure_for_crafting_a_cf4273_s0 = simple_procedure_for_crafting_a_cf4273_s0 :=
  igFrobAlg_self_fusion simple_procedure_for_crafting_a_cf4273_s0
