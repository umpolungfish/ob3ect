-- IGProtocol scaffold: ⊢ → ⊣ → ≻ → ⋈ → ⊙ → ∈ → ⊤ → ≻ → ⊥ → ≺ → ⊞ → ⋈ → ∋ → ⊡ → ⊙ → ⊣
-- Class: Yang-Mills structure
-- Fingerprint: sig=(10,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=16
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(5, 12)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] ⊣     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] ≻      rel    := 𐑾               𐑡 → 𐑱  | forward morphism — bidirectional arrow
--   [3] ⋈     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [4] ⊙   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [5] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [8] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [11] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [12] ∋     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [13] ⊡      prot   := 𐑭               𐑙 → 𐑠  | irreversible fixation — winding number
--   [14] ⊙   gram   := 𐑠               𐑭 → 𐑡  | identity — self-imscription
--   [15] ⊣     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def yang_mills_structure_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def yang_mills_structure_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def yang_mills_structure_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def yang_mills_structure_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def yang_mills_structure_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def yang_mills_structure_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def yang_mills_structure_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def yang_mills_structure_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def yang_mills_structure_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def yang_mills_structure_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def yang_mills_structure_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def yang_mills_structure_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def yang_mills_structure_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def yang_mills_structure_protocol : IGProtocol yang_mills_structure_s0 yang_mills_structure_s15 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct yang_mills_structure_s12 yang_mills_structure_s12 = yang_mills_structure_s12 (idempotent)
  (.seq (.arrow yang_mills_structure_l0 yang_mills_structure_s0 yang_mills_structure_s1) (.seq (.arrow yang_mills_structure_l1 yang_mills_structure_s1 yang_mills_structure_s2) (.seq (.arrow yang_mills_structure_l2 yang_mills_structure_s2 yang_mills_structure_s3) (.seq (.arrow yang_mills_structure_l3 yang_mills_structure_s3 yang_mills_structure_s4) (.seq (.arrow yang_mills_structure_l4 yang_mills_structure_s4 yang_mills_structure_s5) (.seq (.prod (.arrow yang_mills_structure_l5 yang_mills_structure_s5 yang_mills_structure_s12) (.arrow yang_mills_structure_l5 yang_mills_structure_s5 yang_mills_structure_s12)) (.seq (.arrow yang_mills_structure_l12 yang_mills_structure_s12 yang_mills_structure_s12) (.seq (.arrow yang_mills_structure_l12 yang_mills_structure_s12 yang_mills_structure_s13) (.seq (.arrow yang_mills_structure_l13 yang_mills_structure_s13 yang_mills_structure_s14) (.arrow yang_mills_structure_l14 yang_mills_structure_s14 yang_mills_structure_s15))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def yang_mills_structure_true_arm : IGProtocol yang_mills_structure_s0 yang_mills_structure_s15 :=
  (yang_mills_structure_protocol).restrictToEVALT

-- false arm
noncomputable def yang_mills_structure_false_arm : IGProtocol yang_mills_structure_s0 yang_mills_structure_s15 :=
  (yang_mills_structure_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def yang_mills_structure_tier_ground : OuroboricityTier := TierFunctor.obj yang_mills_structure_s0
def yang_mills_structure_tier : OuroboricityTier := TierFunctor.obj yang_mills_structure_s15
#eval yang_mills_structure_tier_ground  -- tier of the ground (pre-transformation)
#eval yang_mills_structure_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem yang_mills_structure_frobenius :
    igFrobeniusAlg.mul yang_mills_structure_s0 yang_mills_structure_s0 = yang_mills_structure_s0 :=
  igFrobAlg_self_fusion yang_mills_structure_s0
