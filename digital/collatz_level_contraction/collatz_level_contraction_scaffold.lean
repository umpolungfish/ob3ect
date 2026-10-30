-- IGProtocol scaffold: ⊢ → ⊣ → ∈ → ≻ → ≺ → ⋈ → ⊙ → ⊤ → ⊥ → ⊞ → ⊡ → ∋ → ⋈ → ⊡
-- Class: collatz_level_contraction
-- Fingerprint: sig=(7,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=14
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(2, 11)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] ⊣     top    := 𐑡               𐑼 → 𐑚  | terminal object — connectivity boundary
--   [2] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [5] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] ⊙   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [7] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [10] ⊡      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [11] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [12] ⋈     fid    := 𐑱               𐑙 → 𐑭  | composition — regime coherence
--   [13] ⊡      prot   := 𐑭               𐑱 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def collatz_level_contraction_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_level_contraction_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_level_contraction_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_level_contraction_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_level_contraction_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_level_contraction_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_level_contraction_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_level_contraction_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def collatz_level_contraction_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def collatz_level_contraction_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def collatz_level_contraction_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_level_contraction_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def collatz_level_contraction_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def collatz_level_contraction_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def collatz_level_contraction_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_level_contraction_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_level_contraction_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_level_contraction_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_level_contraction_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_level_contraction_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_level_contraction_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_level_contraction_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def collatz_level_contraction_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def collatz_level_contraction_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def collatz_level_contraction_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def collatz_level_contraction_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_level_contraction_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_level_contraction_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def collatz_level_contraction_protocol : IGProtocol collatz_level_contraction_s0 collatz_level_contraction_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct collatz_level_contraction_s11 collatz_level_contraction_s11 = collatz_level_contraction_s11 (idempotent)
  (.seq (.arrow collatz_level_contraction_l0 collatz_level_contraction_s0 collatz_level_contraction_s1) (.seq (.arrow collatz_level_contraction_l1 collatz_level_contraction_s1 collatz_level_contraction_s2) (.seq (.prod (.arrow collatz_level_contraction_l2 collatz_level_contraction_s2 collatz_level_contraction_s11) (.arrow collatz_level_contraction_l2 collatz_level_contraction_s2 collatz_level_contraction_s11)) (.seq (.arrow collatz_level_contraction_l11 collatz_level_contraction_s11 collatz_level_contraction_s11) (.seq (.arrow collatz_level_contraction_l11 collatz_level_contraction_s11 collatz_level_contraction_s12) (.arrow collatz_level_contraction_l12 collatz_level_contraction_s12 collatz_level_contraction_s13))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def collatz_level_contraction_true_arm : IGProtocol collatz_level_contraction_s0 collatz_level_contraction_s13 :=
  (collatz_level_contraction_protocol).restrictToEVALT

-- false arm
noncomputable def collatz_level_contraction_false_arm : IGProtocol collatz_level_contraction_s0 collatz_level_contraction_s13 :=
  (collatz_level_contraction_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def collatz_level_contraction_tier_ground : OuroboricityTier := TierFunctor.obj collatz_level_contraction_s0
def collatz_level_contraction_tier : OuroboricityTier := TierFunctor.obj collatz_level_contraction_s13
#eval collatz_level_contraction_tier_ground  -- tier of the ground (pre-transformation)
#eval collatz_level_contraction_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem collatz_level_contraction_frobenius :
    igFrobeniusAlg.mul collatz_level_contraction_s0 collatz_level_contraction_s0 = collatz_level_contraction_s0 :=
  igFrobAlg_self_fusion collatz_level_contraction_s0
