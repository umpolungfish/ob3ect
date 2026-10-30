-- IGProtocol scaffold: ⊢ → ∈ → ⊤ → ≻ → ⊥ → ≺ → ⋈ → ⊞ → ∋ → ⊙ → ⊡ → ⋈ → ⊣ → ⊙ → ⊡
-- Class: GlattfelderSelfContainmentPrinciple
-- Fingerprint: sig=(8,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(1, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [3] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [8] ∋     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [9] ⊙   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [10] ⊡      prot   := 𐑭               𐑠 → 𐑱  | irreversible fixation — winding number
--   [11] ⋈     fid    := 𐑱               𐑭 → 𐑡  | composition — regime coherence
--   [12] ⊣     top    := 𐑡               𐑱 → 𐑠  | terminal object — connectivity boundary
--   [13] ⊙   gram   := 𐑠               𐑡 → 𐑭  | identity — self-imscription
--   [14] ⊡      prot   := 𐑭               𐑠 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def glattfelderselfcontainmentprinciple_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def glattfelderselfcontainmentprinciple_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def glattfelderselfcontainmentprinciple_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def glattfelderselfcontainmentprinciple_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def glattfelderselfcontainmentprinciple_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def glattfelderselfcontainmentprinciple_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def glattfelderselfcontainmentprinciple_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def glattfelderselfcontainmentprinciple_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def glattfelderselfcontainmentprinciple_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def glattfelderselfcontainmentprinciple_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def glattfelderselfcontainmentprinciple_protocol : IGProtocol glattfelderselfcontainmentprinciple_s0 glattfelderselfcontainmentprinciple_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct glattfelderselfcontainmentprinciple_s8 glattfelderselfcontainmentprinciple_s8 = glattfelderselfcontainmentprinciple_s8 (idempotent)
  (.seq (.arrow glattfelderselfcontainmentprinciple_l0 glattfelderselfcontainmentprinciple_s0 glattfelderselfcontainmentprinciple_s1) (.seq (.prod (.arrow glattfelderselfcontainmentprinciple_l1 glattfelderselfcontainmentprinciple_s1 glattfelderselfcontainmentprinciple_s8) (.arrow glattfelderselfcontainmentprinciple_l1 glattfelderselfcontainmentprinciple_s1 glattfelderselfcontainmentprinciple_s8)) (.seq (.arrow glattfelderselfcontainmentprinciple_l8 glattfelderselfcontainmentprinciple_s8 glattfelderselfcontainmentprinciple_s8) (.seq (.arrow glattfelderselfcontainmentprinciple_l8 glattfelderselfcontainmentprinciple_s8 glattfelderselfcontainmentprinciple_s9) (.seq (.arrow glattfelderselfcontainmentprinciple_l9 glattfelderselfcontainmentprinciple_s9 glattfelderselfcontainmentprinciple_s10) (.seq (.arrow glattfelderselfcontainmentprinciple_l10 glattfelderselfcontainmentprinciple_s10 glattfelderselfcontainmentprinciple_s11) (.seq (.arrow glattfelderselfcontainmentprinciple_l11 glattfelderselfcontainmentprinciple_s11 glattfelderselfcontainmentprinciple_s12) (.seq (.arrow glattfelderselfcontainmentprinciple_l12 glattfelderselfcontainmentprinciple_s12 glattfelderselfcontainmentprinciple_s13) (.arrow glattfelderselfcontainmentprinciple_l13 glattfelderselfcontainmentprinciple_s13 glattfelderselfcontainmentprinciple_s14)))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def glattfelderselfcontainmentprinciple_true_arm : IGProtocol glattfelderselfcontainmentprinciple_s0 glattfelderselfcontainmentprinciple_s14 :=
  (glattfelderselfcontainmentprinciple_protocol).restrictToEVALT

-- false arm
noncomputable def glattfelderselfcontainmentprinciple_false_arm : IGProtocol glattfelderselfcontainmentprinciple_s0 glattfelderselfcontainmentprinciple_s14 :=
  (glattfelderselfcontainmentprinciple_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def glattfelderselfcontainmentprinciple_tier_ground : OuroboricityTier := TierFunctor.obj glattfelderselfcontainmentprinciple_s0
def glattfelderselfcontainmentprinciple_tier : OuroboricityTier := TierFunctor.obj glattfelderselfcontainmentprinciple_s14
#eval glattfelderselfcontainmentprinciple_tier_ground  -- tier of the ground (pre-transformation)
#eval glattfelderselfcontainmentprinciple_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem glattfelderselfcontainmentprinciple_frobenius :
    igFrobeniusAlg.mul glattfelderselfcontainmentprinciple_s0 glattfelderselfcontainmentprinciple_s0 = glattfelderselfcontainmentprinciple_s0 :=
  igFrobAlg_self_fusion glattfelderselfcontainmentprinciple_s0
