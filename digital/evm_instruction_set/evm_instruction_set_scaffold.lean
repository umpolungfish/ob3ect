-- IGProtocol scaffold: ⊢ → ≻ → ⋈ → ≻ → ⋈ → ∈ → ⊤ → ≻ → ⋈ → ∋ → ⊥ → ≻ → ⋈ → ∋ → ⊞ → ◻ → ⋈ → ≺ → ⊙ → ≻ → ⋈ → ⊤ → ◻ → ⊣
-- Class: evm_instruction_set
-- Fingerprint: sig=(15,3,4,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=24
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(5, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] ≻      rel    := 𐑾               𐑼 → 𐑱  | forward morphism — bidirectional arrow
--   [2] ⋈     fid    := 𐑱               𐑾 → 𐑾  | composition — regime coherence
--   [3] ≻      rel    := 𐑾               𐑱 → 𐑱  | forward morphism — bidirectional arrow
--   [4] ⋈     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [5] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [8] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [9] ∋     stoi   := 𐑙               𐑙 → 𐑖  | fuse μ — assembly mode
--   [10] ⊥     chir   := 𐑖               𐑙 → 𐑾  | evaluate-false — chirality check
--   [11] ≻      rel    := 𐑾               𐑖 → 𐑱  | forward morphism — bidirectional arrow
--   [12] ⋈     fid    := 𐑱               𐑾 → 𐑙  | composition — regime coherence
--   [13] ∋     stoi   := 𐑙               𐑱 → 𐑳  | fuse μ — assembly mode
--   [14] ⊞    stoi   := 𐑳               𐑙 → 𐑭  | engage paradox — B-state, both arms
--   [15] ◻      prot   := 𐑭               𐑳 → 𐑱  | irreversible fixation — winding number
--   [16] ⋈     fid    := 𐑱               𐑭 → 𐑗  | composition — regime coherence
--   [17] ≺      pol    := 𐑗               𐑱 → 𐑠  | reverse morphism — parity flip
--   [18] ⊙   gram   := 𐑠               𐑗 → 𐑾  | identity — self-imscription
--   [19] ≻      rel    := 𐑾               𐑠 → 𐑱  | forward morphism — bidirectional arrow
--   [20] ⋈     fid    := 𐑱               𐑾 → ⊙  | composition — regime coherence
--   [21] ⊤     crit   := ⊙               𐑱 → 𐑭  | evaluate-true — criticality gate open
--   [22] ◻      prot   := 𐑭               ⊙ → 𐑡  | irreversible fixation — winding number
--   [23] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def evm_instruction_set_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def evm_instruction_set_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def evm_instruction_set_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def evm_instruction_set_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def evm_instruction_set_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def evm_instruction_set_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def evm_instruction_set_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def evm_instruction_set_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def evm_instruction_set_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def evm_instruction_set_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def evm_instruction_set_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def evm_instruction_set_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def evm_instruction_set_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def evm_instruction_set_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def evm_instruction_set_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def evm_instruction_set_l11 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def evm_instruction_set_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def evm_instruction_set_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_l19 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def evm_instruction_set_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def evm_instruction_set_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def evm_instruction_set_protocol : IGProtocol evm_instruction_set_s0 evm_instruction_set_s23 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct evm_instruction_set_s9 evm_instruction_set_s9 = evm_instruction_set_s9 (idempotent)
  (.seq (.arrow evm_instruction_set_l0 evm_instruction_set_s0 evm_instruction_set_s1) (.seq (.arrow evm_instruction_set_l1 evm_instruction_set_s1 evm_instruction_set_s2) (.seq (.arrow evm_instruction_set_l2 evm_instruction_set_s2 evm_instruction_set_s3) (.seq (.arrow evm_instruction_set_l3 evm_instruction_set_s3 evm_instruction_set_s4) (.seq (.arrow evm_instruction_set_l4 evm_instruction_set_s4 evm_instruction_set_s5) (.seq (.prod (.arrow evm_instruction_set_l5 evm_instruction_set_s5 evm_instruction_set_s9) (.arrow evm_instruction_set_l5 evm_instruction_set_s5 evm_instruction_set_s9)) (.seq (.arrow evm_instruction_set_l9 evm_instruction_set_s9 evm_instruction_set_s9) (.seq (.arrow evm_instruction_set_l9 evm_instruction_set_s9 evm_instruction_set_s10) (.seq (.arrow evm_instruction_set_l10 evm_instruction_set_s10 evm_instruction_set_s11) (.seq (.arrow evm_instruction_set_l11 evm_instruction_set_s11 evm_instruction_set_s12) (.seq (.arrow evm_instruction_set_l12 evm_instruction_set_s12 evm_instruction_set_s13) (.seq (.arrow evm_instruction_set_l13 evm_instruction_set_s13 evm_instruction_set_s14) (.seq (.arrow evm_instruction_set_l14 evm_instruction_set_s14 evm_instruction_set_s15) (.seq (.arrow evm_instruction_set_l15 evm_instruction_set_s15 evm_instruction_set_s16) (.seq (.arrow evm_instruction_set_l16 evm_instruction_set_s16 evm_instruction_set_s17) (.seq (.arrow evm_instruction_set_l17 evm_instruction_set_s17 evm_instruction_set_s18) (.seq (.arrow evm_instruction_set_l18 evm_instruction_set_s18 evm_instruction_set_s19) (.seq (.arrow evm_instruction_set_l19 evm_instruction_set_s19 evm_instruction_set_s20) (.seq (.arrow evm_instruction_set_l20 evm_instruction_set_s20 evm_instruction_set_s21) (.seq (.arrow evm_instruction_set_l21 evm_instruction_set_s21 evm_instruction_set_s22) (.arrow evm_instruction_set_l22 evm_instruction_set_s22 evm_instruction_set_s23)))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def evm_instruction_set_true_arm : IGProtocol evm_instruction_set_s0 evm_instruction_set_s23 :=
  (evm_instruction_set_protocol).restrictToEVALT

-- false arm
noncomputable def evm_instruction_set_false_arm : IGProtocol evm_instruction_set_s0 evm_instruction_set_s23 :=
  (evm_instruction_set_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def evm_instruction_set_tier_ground : OuroboricityTier := TierFunctor.obj evm_instruction_set_s0
def evm_instruction_set_tier : OuroboricityTier := TierFunctor.obj evm_instruction_set_s23
#eval evm_instruction_set_tier_ground  -- tier of the ground (pre-transformation)
#eval evm_instruction_set_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem evm_instruction_set_frobenius :
    igFrobeniusAlg.mul evm_instruction_set_s0 evm_instruction_set_s0 = evm_instruction_set_s0 :=
  igFrobAlg_self_fusion evm_instruction_set_s0
