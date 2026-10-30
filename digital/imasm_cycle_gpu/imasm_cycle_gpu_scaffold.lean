-- IGProtocol scaffold: ⊢ → ∈ → ≻ → ⋈ → ≻ → ≺ → ⋈ → ⊙ → ∈ → ⊤ → ⊡ → ⊥ → ∋ → ⋈ → ⊞ → ∋ → ⊣
-- Class: imasm_cycle_gpu
-- Fingerprint: sig=(9,4,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=17
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(8, 12), (1, 15)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [3] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [4] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] ⊙   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [8] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] ⊡      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [11] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [12] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [13] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [14] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [15] ∋     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [16] ⊣     top    := 𐑡               𐑙 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def imasm_cycle_gpu_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def imasm_cycle_gpu_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def imasm_cycle_gpu_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def imasm_cycle_gpu_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def imasm_cycle_gpu_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def imasm_cycle_gpu_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def imasm_cycle_gpu_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def imasm_cycle_gpu_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def imasm_cycle_gpu_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def imasm_cycle_gpu_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def imasm_cycle_gpu_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_cycle_gpu_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def imasm_cycle_gpu_protocol : IGProtocol imasm_cycle_gpu_s0 imasm_cycle_gpu_s16 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct imasm_cycle_gpu_s12 imasm_cycle_gpu_s12 = imasm_cycle_gpu_s12 (idempotent)
  (.seq (.arrow imasm_cycle_gpu_l0 imasm_cycle_gpu_s0 imasm_cycle_gpu_s1) (.seq (.prod (.arrow imasm_cycle_gpu_l1 imasm_cycle_gpu_s1 imasm_cycle_gpu_s12) (.arrow imasm_cycle_gpu_l1 imasm_cycle_gpu_s1 imasm_cycle_gpu_s12)) (.seq (.arrow imasm_cycle_gpu_l12 imasm_cycle_gpu_s12 imasm_cycle_gpu_s12) (.seq (.arrow imasm_cycle_gpu_l12 imasm_cycle_gpu_s12 imasm_cycle_gpu_s13) (.seq (.arrow imasm_cycle_gpu_l13 imasm_cycle_gpu_s13 imasm_cycle_gpu_s14) (.seq (.arrow imasm_cycle_gpu_l14 imasm_cycle_gpu_s14 imasm_cycle_gpu_s15) (.arrow imasm_cycle_gpu_l15 imasm_cycle_gpu_s15 imasm_cycle_gpu_s16)))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def imasm_cycle_gpu_true_arm : IGProtocol imasm_cycle_gpu_s0 imasm_cycle_gpu_s16 :=
  (imasm_cycle_gpu_protocol).restrictToEVALT

-- false arm
noncomputable def imasm_cycle_gpu_false_arm : IGProtocol imasm_cycle_gpu_s0 imasm_cycle_gpu_s16 :=
  (imasm_cycle_gpu_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def imasm_cycle_gpu_tier_ground : OuroboricityTier := TierFunctor.obj imasm_cycle_gpu_s0
def imasm_cycle_gpu_tier : OuroboricityTier := TierFunctor.obj imasm_cycle_gpu_s16
#eval imasm_cycle_gpu_tier_ground  -- tier of the ground (pre-transformation)
#eval imasm_cycle_gpu_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem imasm_cycle_gpu_frobenius :
    igFrobeniusAlg.mul imasm_cycle_gpu_s0 imasm_cycle_gpu_s0 = imasm_cycle_gpu_s0 :=
  igFrobAlg_self_fusion imasm_cycle_gpu_s0
