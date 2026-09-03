-- IGProtocol scaffold: ⊢ → ≻ → ⊤ → ≺ → ⊥ → ⊞ → ⋈ → ⊙ → ∈ → ⊤ → ⊥ → ∋ → ⊡ → ⊣
-- Class: 3*4=12
-- Fingerprint: sig=(6,2,5,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=14
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(8, 11)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] ≻      rel    := 𐑾               𐑼 → ⊙  | forward morphism — bidirectional arrow
--   [2] ⊤     crit   := ⊙               𐑾 → 𐑗  | evaluate-true — criticality gate open
--   [3] ≺      pol    := 𐑗               ⊙ → 𐑖  | reverse morphism — parity flip
--   [4] ⊥     chir   := 𐑖               𐑗 → 𐑳  | evaluate-false — chirality check
--   [5] ⊞    stoi   := 𐑳               𐑖 → 𐑱  | engage paradox — B-state, both arms
--   [6] ⋈     fid    := 𐑱               𐑳 → 𐑠  | composition — regime coherence
--   [7] ⊙   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [8] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] ∋     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [12] ⊡      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [13] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def _3_4_12_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _3_4_12_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _3_4_12_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def _3_4_12_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def _3_4_12_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def _3_4_12_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def _3_4_12_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def _3_4_12_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def _3_4_12_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def _3_4_12_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def _3_4_12_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def _3_4_12_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def _3_4_12_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def _3_4_12_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def _3_4_12_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _3_4_12_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _3_4_12_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def _3_4_12_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _3_4_12_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def _3_4_12_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def _3_4_12_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _3_4_12_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _3_4_12_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _3_4_12_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def _3_4_12_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def _3_4_12_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _3_4_12_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def _3_4_12_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def _3_4_12_protocol : IGProtocol _3_4_12_s0 _3_4_12_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct _3_4_12_s11 _3_4_12_s11 = _3_4_12_s11 (idempotent)
  (.seq (.arrow _3_4_12_l0 _3_4_12_s0 _3_4_12_s1) (.seq (.arrow _3_4_12_l1 _3_4_12_s1 _3_4_12_s2) (.seq (.arrow _3_4_12_l2 _3_4_12_s2 _3_4_12_s3) (.seq (.arrow _3_4_12_l3 _3_4_12_s3 _3_4_12_s4) (.seq (.arrow _3_4_12_l4 _3_4_12_s4 _3_4_12_s5) (.seq (.arrow _3_4_12_l5 _3_4_12_s5 _3_4_12_s6) (.seq (.arrow _3_4_12_l6 _3_4_12_s6 _3_4_12_s7) (.seq (.arrow _3_4_12_l7 _3_4_12_s7 _3_4_12_s8) (.seq (.prod (.arrow _3_4_12_l8 _3_4_12_s8 _3_4_12_s11) (.arrow _3_4_12_l8 _3_4_12_s8 _3_4_12_s11)) (.seq (.arrow _3_4_12_l11 _3_4_12_s11 _3_4_12_s11) (.seq (.arrow _3_4_12_l11 _3_4_12_s11 _3_4_12_s12) (.arrow _3_4_12_l12 _3_4_12_s12 _3_4_12_s13))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def _3_4_12_true_arm : IGProtocol _3_4_12_s0 _3_4_12_s13 :=
  (_3_4_12_protocol).restrictToEVALT

-- false arm
noncomputable def _3_4_12_false_arm : IGProtocol _3_4_12_s0 _3_4_12_s13 :=
  (_3_4_12_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def _3_4_12_tier_ground : OuroboricityTier := TierFunctor.obj _3_4_12_s0
def _3_4_12_tier : OuroboricityTier := TierFunctor.obj _3_4_12_s13
#eval _3_4_12_tier_ground  -- tier of the ground (pre-transformation)
#eval _3_4_12_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem _3_4_12_frobenius :
    igFrobeniusAlg.mul _3_4_12_s0 _3_4_12_s0 = _3_4_12_s0 :=
  igFrobAlg_self_fusion _3_4_12_s0
