-- IGProtocol scaffold: ⊢ → ⊙ → ≻ → ∈ → ⊤ → ⊥ → ⊞ → ∋ → ≺ → ⋈ → ⊡ → ⊣
-- Class: Imscribing Tarot Operation
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(3, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] ⊙   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] ≻      rel    := 𐑾               𐑠 → 𐑚  | forward morphism — bidirectional arrow
--   [3] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [7] ∋     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [8] ≺      pol    := 𐑗               𐑙 → 𐑱  | reverse morphism — parity flip
--   [9] ⋈     fid    := 𐑱               𐑗 → 𐑭  | composition — regime coherence
--   [10] ⊡      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [11] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def imscribing_tarot_operation_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_operation_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_operation_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_operation_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_operation_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_operation_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def imscribing_tarot_operation_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def imscribing_tarot_operation_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def imscribing_tarot_operation_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def imscribing_tarot_operation_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def imscribing_tarot_operation_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def imscribing_tarot_operation_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def imscribing_tarot_operation_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_operation_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_operation_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_operation_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_operation_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_operation_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def imscribing_tarot_operation_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def imscribing_tarot_operation_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_operation_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_operation_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_operation_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def imscribing_tarot_operation_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def imscribing_tarot_operation_protocol : IGProtocol imscribing_tarot_operation_s0 imscribing_tarot_operation_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct imscribing_tarot_operation_s7 imscribing_tarot_operation_s7 = imscribing_tarot_operation_s7 (idempotent)
  (.seq (.arrow imscribing_tarot_operation_l0 imscribing_tarot_operation_s0 imscribing_tarot_operation_s1) (.seq (.arrow imscribing_tarot_operation_l1 imscribing_tarot_operation_s1 imscribing_tarot_operation_s2) (.seq (.arrow imscribing_tarot_operation_l2 imscribing_tarot_operation_s2 imscribing_tarot_operation_s3) (.seq (.prod (.arrow imscribing_tarot_operation_l3 imscribing_tarot_operation_s3 imscribing_tarot_operation_s7) (.arrow imscribing_tarot_operation_l3 imscribing_tarot_operation_s3 imscribing_tarot_operation_s7)) (.seq (.arrow imscribing_tarot_operation_l7 imscribing_tarot_operation_s7 imscribing_tarot_operation_s7) (.seq (.arrow imscribing_tarot_operation_l7 imscribing_tarot_operation_s7 imscribing_tarot_operation_s8) (.seq (.arrow imscribing_tarot_operation_l8 imscribing_tarot_operation_s8 imscribing_tarot_operation_s9) (.seq (.arrow imscribing_tarot_operation_l9 imscribing_tarot_operation_s9 imscribing_tarot_operation_s10) (.arrow imscribing_tarot_operation_l10 imscribing_tarot_operation_s10 imscribing_tarot_operation_s11)))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def imscribing_tarot_operation_true_arm : IGProtocol imscribing_tarot_operation_s0 imscribing_tarot_operation_s11 :=
  (imscribing_tarot_operation_protocol).restrictToEVALT

-- false arm
noncomputable def imscribing_tarot_operation_false_arm : IGProtocol imscribing_tarot_operation_s0 imscribing_tarot_operation_s11 :=
  (imscribing_tarot_operation_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def imscribing_tarot_operation_tier_ground : OuroboricityTier := TierFunctor.obj imscribing_tarot_operation_s0
def imscribing_tarot_operation_tier : OuroboricityTier := TierFunctor.obj imscribing_tarot_operation_s11
#eval imscribing_tarot_operation_tier_ground  -- tier of the ground (pre-transformation)
#eval imscribing_tarot_operation_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem imscribing_tarot_operation_frobenius :
    igFrobeniusAlg.mul imscribing_tarot_operation_s0 imscribing_tarot_operation_s0 = imscribing_tarot_operation_s0 :=
  igFrobAlg_self_fusion imscribing_tarot_operation_s0
