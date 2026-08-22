-- IGProtocol scaffold: ⊢ → ≻ → ∈ → ⊤ → ⊥ → ⊞ → ∋ → ⋈ → ⊙ → ≺ → ◻ → ⊣
-- Class: grammar_native_model
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(2, 6)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] ≻      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [6] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [7] ⋈     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [8] ⊙   gram   := 𐑠               𐑱 → 𐑗  | identity — self-imscription
--   [9] ≺      pol    := 𐑗               𐑠 → 𐑭  | reverse morphism — parity flip
--   [10] ◻      prot   := 𐑭               𐑗 → 𐑡  | irreversible fixation — winding number
--   [11] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def grammar_native_model_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def grammar_native_model_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def grammar_native_model_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def grammar_native_model_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def grammar_native_model_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def grammar_native_model_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def grammar_native_model_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def grammar_native_model_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def grammar_native_model_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def grammar_native_model_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def grammar_native_model_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def grammar_native_model_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def grammar_native_model_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def grammar_native_model_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def grammar_native_model_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def grammar_native_model_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def grammar_native_model_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def grammar_native_model_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def grammar_native_model_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def grammar_native_model_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def grammar_native_model_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def grammar_native_model_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def grammar_native_model_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def grammar_native_model_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def grammar_native_model_protocol : IGProtocol grammar_native_model_s0 grammar_native_model_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct grammar_native_model_s6 grammar_native_model_s6 = grammar_native_model_s6 (idempotent)
  (.seq (.arrow grammar_native_model_l0 grammar_native_model_s0 grammar_native_model_s1) (.seq (.arrow grammar_native_model_l1 grammar_native_model_s1 grammar_native_model_s2) (.seq (.prod (.arrow grammar_native_model_l2 grammar_native_model_s2 grammar_native_model_s6) (.arrow grammar_native_model_l2 grammar_native_model_s2 grammar_native_model_s6)) (.seq (.arrow grammar_native_model_l6 grammar_native_model_s6 grammar_native_model_s6) (.seq (.arrow grammar_native_model_l6 grammar_native_model_s6 grammar_native_model_s7) (.seq (.arrow grammar_native_model_l7 grammar_native_model_s7 grammar_native_model_s8) (.seq (.arrow grammar_native_model_l8 grammar_native_model_s8 grammar_native_model_s9) (.seq (.arrow grammar_native_model_l9 grammar_native_model_s9 grammar_native_model_s10) (.arrow grammar_native_model_l10 grammar_native_model_s10 grammar_native_model_s11)))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def grammar_native_model_true_arm : IGProtocol grammar_native_model_s0 grammar_native_model_s11 :=
  (grammar_native_model_protocol).restrictToEVALT

-- false arm
noncomputable def grammar_native_model_false_arm : IGProtocol grammar_native_model_s0 grammar_native_model_s11 :=
  (grammar_native_model_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def grammar_native_model_tier_ground : OuroboricityTier := TierFunctor.obj grammar_native_model_s0
def grammar_native_model_tier : OuroboricityTier := TierFunctor.obj grammar_native_model_s11
#eval grammar_native_model_tier_ground  -- tier of the ground (pre-transformation)
#eval grammar_native_model_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem grammar_native_model_frobenius :
    igFrobeniusAlg.mul grammar_native_model_s0 grammar_native_model_s0 = grammar_native_model_s0 :=
  igFrobAlg_self_fusion grammar_native_model_s0
