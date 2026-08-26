-- IGProtocol scaffold: ⊢ → ⋈ → ≻ → ⊙ → ∈ → ⊤ → ≻ → ⋈ → ∋ → ∈ → ⊤ → ⊥ → ≺ → ∋ → ⊞ → ≻ → ∋ → ⋈ → ⊡ → ≺ → ⊣
-- Class: wasm_instruction_set
-- Fingerprint: sig=(11,5,4,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=21
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(4, 8), (9, 13)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑱  | initial object — ground of distinction
--   [1] ⋈     fid    := 𐑱               𐑼 → 𐑾  | composition — regime coherence
--   [2] ≻      rel    := 𐑾               𐑱 → 𐑠  | forward morphism — bidirectional arrow
--   [3] ⊙   gram   := 𐑠               𐑾 → 𐑚  | identity — self-imscription
--   [4] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [9] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [12] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [13] ∋     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [14] ⊞    stoi   := 𐑳               𐑙 → 𐑾  | engage paradox — B-state, both arms
--   [15] ≻      rel    := 𐑾               𐑳 → 𐑙  | forward morphism — bidirectional arrow
--   [16] ∋     stoi   := 𐑙               𐑾 → 𐑱  | fuse μ — assembly mode
--   [17] ⋈     fid    := 𐑱               𐑙 → 𐑭  | composition — regime coherence
--   [18] ⊡      prot   := 𐑭               𐑱 → 𐑗  | irreversible fixation — winding number
--   [19] ≺      pol    := 𐑗               𐑭 → 𐑡  | reverse morphism — parity flip
--   [20] ⊣     top    := 𐑡               𐑗 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def wasm_instruction_set_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def wasm_instruction_set_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def wasm_instruction_set_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def wasm_instruction_set_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def wasm_instruction_set_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def wasm_instruction_set_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def wasm_instruction_set_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def wasm_instruction_set_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def wasm_instruction_set_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def wasm_instruction_set_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def wasm_instruction_set_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def wasm_instruction_set_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def wasm_instruction_set_l15 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def wasm_instruction_set_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wasm_instruction_set_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def wasm_instruction_set_protocol : IGProtocol wasm_instruction_set_s0 wasm_instruction_set_s20 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct wasm_instruction_set_s8 wasm_instruction_set_s8 = wasm_instruction_set_s8 (idempotent)
  (.seq (.arrow wasm_instruction_set_l0 wasm_instruction_set_s0 wasm_instruction_set_s1) (.seq (.arrow wasm_instruction_set_l1 wasm_instruction_set_s1 wasm_instruction_set_s2) (.seq (.arrow wasm_instruction_set_l2 wasm_instruction_set_s2 wasm_instruction_set_s3) (.seq (.arrow wasm_instruction_set_l3 wasm_instruction_set_s3 wasm_instruction_set_s4) (.seq (.prod (.arrow wasm_instruction_set_l4 wasm_instruction_set_s4 wasm_instruction_set_s8) (.arrow wasm_instruction_set_l4 wasm_instruction_set_s4 wasm_instruction_set_s8)) (.seq (.arrow wasm_instruction_set_l8 wasm_instruction_set_s8 wasm_instruction_set_s8) (.seq (.arrow wasm_instruction_set_l8 wasm_instruction_set_s8 wasm_instruction_set_s9) (.seq (.arrow wasm_instruction_set_l9 wasm_instruction_set_s9 wasm_instruction_set_s10) (.seq (.arrow wasm_instruction_set_l10 wasm_instruction_set_s10 wasm_instruction_set_s11) (.seq (.arrow wasm_instruction_set_l11 wasm_instruction_set_s11 wasm_instruction_set_s12) (.seq (.arrow wasm_instruction_set_l12 wasm_instruction_set_s12 wasm_instruction_set_s13) (.seq (.arrow wasm_instruction_set_l13 wasm_instruction_set_s13 wasm_instruction_set_s14) (.seq (.arrow wasm_instruction_set_l14 wasm_instruction_set_s14 wasm_instruction_set_s15) (.seq (.arrow wasm_instruction_set_l15 wasm_instruction_set_s15 wasm_instruction_set_s16) (.seq (.arrow wasm_instruction_set_l16 wasm_instruction_set_s16 wasm_instruction_set_s17) (.seq (.arrow wasm_instruction_set_l17 wasm_instruction_set_s17 wasm_instruction_set_s18) (.seq (.arrow wasm_instruction_set_l18 wasm_instruction_set_s18 wasm_instruction_set_s19) (.arrow wasm_instruction_set_l19 wasm_instruction_set_s19 wasm_instruction_set_s20))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def wasm_instruction_set_true_arm : IGProtocol wasm_instruction_set_s0 wasm_instruction_set_s20 :=
  (wasm_instruction_set_protocol).restrictToEVALT

-- false arm
noncomputable def wasm_instruction_set_false_arm : IGProtocol wasm_instruction_set_s0 wasm_instruction_set_s20 :=
  (wasm_instruction_set_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def wasm_instruction_set_tier_ground : OuroboricityTier := TierFunctor.obj wasm_instruction_set_s0
def wasm_instruction_set_tier : OuroboricityTier := TierFunctor.obj wasm_instruction_set_s20
#eval wasm_instruction_set_tier_ground  -- tier of the ground (pre-transformation)
#eval wasm_instruction_set_tier  -- the Grammar's own verdict on the closed object
