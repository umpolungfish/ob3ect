-- IGProtocol scaffold: ⊢ → ⊙ → ⋈ → ∈ → ⊤ → ⊥ → ⊞ → ∋ → ≻ → ≺ → ⋈ → ⊡ → ⊣
-- Class: Imscribing Tarot Spread
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
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
--   [1] ⊙   gram   := 𐑠               𐑼 → 𐑱  | identity — self-imscription
--   [2] ⋈     fid    := 𐑱               𐑠 → 𐑚  | composition — regime coherence
--   [3] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [7] ∋     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [8] ≻      rel    := 𐑾               𐑙 → 𐑗  | forward morphism — bidirectional arrow
--   [9] ≺      pol    := 𐑗               𐑾 → 𐑱  | reverse morphism — parity flip
--   [10] ⋈     fid    := 𐑱               𐑗 → 𐑭  | composition — regime coherence
--   [11] ⊡      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [12] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def imscribing_tarot_spread_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_spread_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_spread_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_spread_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_spread_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_spread_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def imscribing_tarot_spread_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def imscribing_tarot_spread_s7 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def imscribing_tarot_spread_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def imscribing_tarot_spread_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def imscribing_tarot_spread_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def imscribing_tarot_spread_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def imscribing_tarot_spread_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def imscribing_tarot_spread_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_spread_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_spread_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_spread_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_spread_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_spread_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def imscribing_tarot_spread_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def imscribing_tarot_spread_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_spread_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_spread_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_spread_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_tarot_spread_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def imscribing_tarot_spread_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def imscribing_tarot_spread_protocol : IGProtocol imscribing_tarot_spread_s0 imscribing_tarot_spread_s12 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct imscribing_tarot_spread_s7 imscribing_tarot_spread_s7 = imscribing_tarot_spread_s7 (idempotent)
  (.seq (.arrow imscribing_tarot_spread_l0 imscribing_tarot_spread_s0 imscribing_tarot_spread_s1) (.seq (.arrow imscribing_tarot_spread_l1 imscribing_tarot_spread_s1 imscribing_tarot_spread_s2) (.seq (.arrow imscribing_tarot_spread_l2 imscribing_tarot_spread_s2 imscribing_tarot_spread_s3) (.seq (.prod (.arrow imscribing_tarot_spread_l3 imscribing_tarot_spread_s3 imscribing_tarot_spread_s7) (.arrow imscribing_tarot_spread_l3 imscribing_tarot_spread_s3 imscribing_tarot_spread_s7)) (.seq (.arrow imscribing_tarot_spread_l7 imscribing_tarot_spread_s7 imscribing_tarot_spread_s7) (.seq (.arrow imscribing_tarot_spread_l7 imscribing_tarot_spread_s7 imscribing_tarot_spread_s8) (.seq (.arrow imscribing_tarot_spread_l8 imscribing_tarot_spread_s8 imscribing_tarot_spread_s9) (.seq (.arrow imscribing_tarot_spread_l9 imscribing_tarot_spread_s9 imscribing_tarot_spread_s10) (.seq (.arrow imscribing_tarot_spread_l10 imscribing_tarot_spread_s10 imscribing_tarot_spread_s11) (.arrow imscribing_tarot_spread_l11 imscribing_tarot_spread_s11 imscribing_tarot_spread_s12))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def imscribing_tarot_spread_true_arm : IGProtocol imscribing_tarot_spread_s0 imscribing_tarot_spread_s12 :=
  (imscribing_tarot_spread_protocol).restrictToEVALT

-- false arm
noncomputable def imscribing_tarot_spread_false_arm : IGProtocol imscribing_tarot_spread_s0 imscribing_tarot_spread_s12 :=
  (imscribing_tarot_spread_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def imscribing_tarot_spread_tier_ground : OuroboricityTier := TierFunctor.obj imscribing_tarot_spread_s0
def imscribing_tarot_spread_tier : OuroboricityTier := TierFunctor.obj imscribing_tarot_spread_s12
#eval imscribing_tarot_spread_tier_ground  -- tier of the ground (pre-transformation)
#eval imscribing_tarot_spread_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem imscribing_tarot_spread_frobenius :
    igFrobeniusAlg.mul imscribing_tarot_spread_s0 imscribing_tarot_spread_s0 = imscribing_tarot_spread_s0 :=
  igFrobAlg_self_fusion imscribing_tarot_spread_s0
