-- IGProtocol scaffold: ⊢ → ≻ → ∈ → ⊤ → ≺ → ⊥ → ⋈ → ⊞ → ∋ → ◻ → ⊙ → ⊣
-- Class: Branch the evaluation into constructing a bipartite subgraph and calculating edge removal.
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(2, 8)]

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
--   [4] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [5] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [8] ∋     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [9] ◻      prot   := 𐑭               𐑙 → 𐑠  | irreversible fixation — winding number
--   [10] ⊙   gram   := 𐑠               𐑭 → 𐑡  | identity — self-imscription
--   [11] ⊣     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def branch_the_evaluation_into_constructing_d31e06_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def branch_the_evaluation_into_constructing_d31e06_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def branch_the_evaluation_into_constructing_d31e06_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def branch_the_evaluation_into_constructing_d31e06_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def branch_the_evaluation_into_constructing_d31e06_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def branch_the_evaluation_into_constructing_d31e06_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def branch_the_evaluation_into_constructing_d31e06_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def branch_the_evaluation_into_constructing_d31e06_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def branch_the_evaluation_into_constructing_d31e06_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def branch_the_evaluation_into_constructing_d31e06_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def branch_the_evaluation_into_constructing_d31e06_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def branch_the_evaluation_into_constructing_d31e06_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def branch_the_evaluation_into_constructing_d31e06_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def branch_the_evaluation_into_constructing_d31e06_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def branch_the_evaluation_into_constructing_d31e06_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def branch_the_evaluation_into_constructing_d31e06_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def branch_the_evaluation_into_constructing_d31e06_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def branch_the_evaluation_into_constructing_d31e06_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def branch_the_evaluation_into_constructing_d31e06_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def branch_the_evaluation_into_constructing_d31e06_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def branch_the_evaluation_into_constructing_d31e06_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def branch_the_evaluation_into_constructing_d31e06_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def branch_the_evaluation_into_constructing_d31e06_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def branch_the_evaluation_into_constructing_d31e06_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def branch_the_evaluation_into_constructing_d31e06_protocol : IGProtocol branch_the_evaluation_into_constructing_d31e06_s0 branch_the_evaluation_into_constructing_d31e06_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct branch_the_evaluation_into_constructing_d31e06_s8 branch_the_evaluation_into_constructing_d31e06_s8 = branch_the_evaluation_into_constructing_d31e06_s8 (idempotent)
  (.seq (.arrow branch_the_evaluation_into_constructing_d31e06_l0 branch_the_evaluation_into_constructing_d31e06_s0 branch_the_evaluation_into_constructing_d31e06_s1) (.seq (.arrow branch_the_evaluation_into_constructing_d31e06_l1 branch_the_evaluation_into_constructing_d31e06_s1 branch_the_evaluation_into_constructing_d31e06_s2) (.seq (.prod (.arrow branch_the_evaluation_into_constructing_d31e06_l2 branch_the_evaluation_into_constructing_d31e06_s2 branch_the_evaluation_into_constructing_d31e06_s8) (.arrow branch_the_evaluation_into_constructing_d31e06_l2 branch_the_evaluation_into_constructing_d31e06_s2 branch_the_evaluation_into_constructing_d31e06_s8)) (.seq (.arrow branch_the_evaluation_into_constructing_d31e06_l8 branch_the_evaluation_into_constructing_d31e06_s8 branch_the_evaluation_into_constructing_d31e06_s8) (.seq (.arrow branch_the_evaluation_into_constructing_d31e06_l8 branch_the_evaluation_into_constructing_d31e06_s8 branch_the_evaluation_into_constructing_d31e06_s9) (.seq (.arrow branch_the_evaluation_into_constructing_d31e06_l9 branch_the_evaluation_into_constructing_d31e06_s9 branch_the_evaluation_into_constructing_d31e06_s10) (.arrow branch_the_evaluation_into_constructing_d31e06_l10 branch_the_evaluation_into_constructing_d31e06_s10 branch_the_evaluation_into_constructing_d31e06_s11)))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def branch_the_evaluation_into_constructing_d31e06_true_arm : IGProtocol branch_the_evaluation_into_constructing_d31e06_s0 branch_the_evaluation_into_constructing_d31e06_s11 :=
  (branch_the_evaluation_into_constructing_d31e06_protocol).restrictToEVALT

-- false arm
noncomputable def branch_the_evaluation_into_constructing_d31e06_false_arm : IGProtocol branch_the_evaluation_into_constructing_d31e06_s0 branch_the_evaluation_into_constructing_d31e06_s11 :=
  (branch_the_evaluation_into_constructing_d31e06_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def branch_the_evaluation_into_constructing_d31e06_tier_ground : OuroboricityTier := TierFunctor.obj branch_the_evaluation_into_constructing_d31e06_s0
def branch_the_evaluation_into_constructing_d31e06_tier : OuroboricityTier := TierFunctor.obj branch_the_evaluation_into_constructing_d31e06_s11
#eval branch_the_evaluation_into_constructing_d31e06_tier_ground  -- tier of the ground (pre-transformation)
#eval branch_the_evaluation_into_constructing_d31e06_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem branch_the_evaluation_into_constructing_d31e06_frobenius :
    igFrobeniusAlg.mul branch_the_evaluation_into_constructing_d31e06_s0 branch_the_evaluation_into_constructing_d31e06_s0 = branch_the_evaluation_into_constructing_d31e06_s0 :=
  igFrobAlg_self_fusion branch_the_evaluation_into_constructing_d31e06_s0
