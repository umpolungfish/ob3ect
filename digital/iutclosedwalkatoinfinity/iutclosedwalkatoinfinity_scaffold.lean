-- IGProtocol scaffold: ⊢ → ∈ → ≻ → ⊤ → ⋈ → ≺ → ⊥ → ⊞ → ⋈ → ⊙ → ⊡ → ∋ → ⋈ → ⊙ → ⊣
-- Class: IUTClosedWalkAtOInfinity
-- Fingerprint: sig=(9,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(1, 11)]

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
--   [3] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [5] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [8] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [9] ⊙   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [10] ⊡      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [11] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [12] ⋈     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [13] ⊙   gram   := 𐑠               𐑱 → 𐑡  | identity — self-imscription
--   [14] ⊣     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def iutclosedwalkatoinfinity_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def iutclosedwalkatoinfinity_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def iutclosedwalkatoinfinity_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def iutclosedwalkatoinfinity_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def iutclosedwalkatoinfinity_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def iutclosedwalkatoinfinity_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def iutclosedwalkatoinfinity_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def iutclosedwalkatoinfinity_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def iutclosedwalkatoinfinity_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def iutclosedwalkatoinfinity_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def iutclosedwalkatoinfinity_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def iutclosedwalkatoinfinity_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def iutclosedwalkatoinfinity_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def iutclosedwalkatoinfinity_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def iutclosedwalkatoinfinity_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def iutclosedwalkatoinfinity_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def iutclosedwalkatoinfinity_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def iutclosedwalkatoinfinity_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def iutclosedwalkatoinfinity_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def iutclosedwalkatoinfinity_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def iutclosedwalkatoinfinity_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def iutclosedwalkatoinfinity_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def iutclosedwalkatoinfinity_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def iutclosedwalkatoinfinity_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def iutclosedwalkatoinfinity_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def iutclosedwalkatoinfinity_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def iutclosedwalkatoinfinity_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def iutclosedwalkatoinfinity_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def iutclosedwalkatoinfinity_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def iutclosedwalkatoinfinity_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def iutclosedwalkatoinfinity_protocol : IGProtocol iutclosedwalkatoinfinity_s0 iutclosedwalkatoinfinity_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct iutclosedwalkatoinfinity_s11 iutclosedwalkatoinfinity_s11 = iutclosedwalkatoinfinity_s11 (idempotent)
  (.seq (.arrow iutclosedwalkatoinfinity_l0 iutclosedwalkatoinfinity_s0 iutclosedwalkatoinfinity_s1) (.seq (.prod (.arrow iutclosedwalkatoinfinity_l1 iutclosedwalkatoinfinity_s1 iutclosedwalkatoinfinity_s11) (.arrow iutclosedwalkatoinfinity_l1 iutclosedwalkatoinfinity_s1 iutclosedwalkatoinfinity_s11)) (.seq (.arrow iutclosedwalkatoinfinity_l11 iutclosedwalkatoinfinity_s11 iutclosedwalkatoinfinity_s11) (.seq (.arrow iutclosedwalkatoinfinity_l11 iutclosedwalkatoinfinity_s11 iutclosedwalkatoinfinity_s12) (.seq (.arrow iutclosedwalkatoinfinity_l12 iutclosedwalkatoinfinity_s12 iutclosedwalkatoinfinity_s13) (.arrow iutclosedwalkatoinfinity_l13 iutclosedwalkatoinfinity_s13 iutclosedwalkatoinfinity_s14))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def iutclosedwalkatoinfinity_true_arm : IGProtocol iutclosedwalkatoinfinity_s0 iutclosedwalkatoinfinity_s14 :=
  (iutclosedwalkatoinfinity_protocol).restrictToEVALT

-- false arm
noncomputable def iutclosedwalkatoinfinity_false_arm : IGProtocol iutclosedwalkatoinfinity_s0 iutclosedwalkatoinfinity_s14 :=
  (iutclosedwalkatoinfinity_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def iutclosedwalkatoinfinity_tier_ground : OuroboricityTier := TierFunctor.obj iutclosedwalkatoinfinity_s0
def iutclosedwalkatoinfinity_tier : OuroboricityTier := TierFunctor.obj iutclosedwalkatoinfinity_s14
#eval iutclosedwalkatoinfinity_tier_ground  -- tier of the ground (pre-transformation)
#eval iutclosedwalkatoinfinity_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem iutclosedwalkatoinfinity_frobenius :
    igFrobeniusAlg.mul iutclosedwalkatoinfinity_s0 iutclosedwalkatoinfinity_s0 = iutclosedwalkatoinfinity_s0 :=
  igFrobAlg_self_fusion iutclosedwalkatoinfinity_s0
