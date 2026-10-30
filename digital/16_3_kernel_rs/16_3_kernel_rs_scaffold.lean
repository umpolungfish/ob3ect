-- IGProtocol scaffold: ⊢ → ⊙ → ∈ → ≻ → ⊤ → ⋈ → ≺ → ⊥ → ⊞ → ∋ → ⊡ → ⋈ → ⊙ → ∈ → ≻ → ⊤ → ≺ → ⊥ → ⊞ → ∋ → ⊡ → ⊣
-- Class: 16_3_kernel_rs
-- Fingerprint: sig=(10,4,6,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=22
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(2, 9), (13, 19)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] ⊙   gram   := 𐑠               𐑼 → 𐑚  | identity — self-imscription
--   [2] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] ∋     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [10] ⊡      prot   := 𐑭               𐑙 → 𐑱  | irreversible fixation — winding number
--   [11] ⋈     fid    := 𐑱               𐑭 → 𐑠  | composition — regime coherence
--   [12] ⊙   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [13] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [14] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [15] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [16] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [17] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [18] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [19] ∋     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [20] ⊡      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [21] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def _16_3_kernel_rs_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def _16_3_kernel_rs_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def _16_3_kernel_rs_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def _16_3_kernel_rs_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def _16_3_kernel_rs_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def _16_3_kernel_rs_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def _16_3_kernel_rs_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def _16_3_kernel_rs_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def _16_3_kernel_rs_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def _16_3_kernel_rs_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def _16_3_kernel_rs_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def _16_3_kernel_rs_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def _16_3_kernel_rs_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def _16_3_kernel_rs_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def _16_3_kernel_rs_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def _16_3_kernel_rs_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def _16_3_kernel_rs_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def _16_3_kernel_rs_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def _16_3_kernel_rs_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_l14 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def _16_3_kernel_rs_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def _16_3_kernel_rs_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _16_3_kernel_rs_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def _16_3_kernel_rs_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def _16_3_kernel_rs_protocol : IGProtocol _16_3_kernel_rs_s0 _16_3_kernel_rs_s21 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct _16_3_kernel_rs_s9 _16_3_kernel_rs_s9 = _16_3_kernel_rs_s9 (idempotent)
  (.seq (.arrow _16_3_kernel_rs_l0 _16_3_kernel_rs_s0 _16_3_kernel_rs_s1) (.seq (.arrow _16_3_kernel_rs_l1 _16_3_kernel_rs_s1 _16_3_kernel_rs_s2) (.seq (.prod (.arrow _16_3_kernel_rs_l2 _16_3_kernel_rs_s2 _16_3_kernel_rs_s9) (.arrow _16_3_kernel_rs_l2 _16_3_kernel_rs_s2 _16_3_kernel_rs_s9)) (.seq (.arrow _16_3_kernel_rs_l9 _16_3_kernel_rs_s9 _16_3_kernel_rs_s9) (.seq (.arrow _16_3_kernel_rs_l9 _16_3_kernel_rs_s9 _16_3_kernel_rs_s10) (.seq (.arrow _16_3_kernel_rs_l10 _16_3_kernel_rs_s10 _16_3_kernel_rs_s11) (.seq (.arrow _16_3_kernel_rs_l11 _16_3_kernel_rs_s11 _16_3_kernel_rs_s12) (.seq (.arrow _16_3_kernel_rs_l12 _16_3_kernel_rs_s12 _16_3_kernel_rs_s13) (.seq (.arrow _16_3_kernel_rs_l13 _16_3_kernel_rs_s13 _16_3_kernel_rs_s14) (.seq (.arrow _16_3_kernel_rs_l14 _16_3_kernel_rs_s14 _16_3_kernel_rs_s15) (.seq (.arrow _16_3_kernel_rs_l15 _16_3_kernel_rs_s15 _16_3_kernel_rs_s16) (.seq (.arrow _16_3_kernel_rs_l16 _16_3_kernel_rs_s16 _16_3_kernel_rs_s17) (.seq (.arrow _16_3_kernel_rs_l17 _16_3_kernel_rs_s17 _16_3_kernel_rs_s18) (.seq (.arrow _16_3_kernel_rs_l18 _16_3_kernel_rs_s18 _16_3_kernel_rs_s19) (.seq (.arrow _16_3_kernel_rs_l19 _16_3_kernel_rs_s19 _16_3_kernel_rs_s20) (.arrow _16_3_kernel_rs_l20 _16_3_kernel_rs_s20 _16_3_kernel_rs_s21))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def _16_3_kernel_rs_true_arm : IGProtocol _16_3_kernel_rs_s0 _16_3_kernel_rs_s21 :=
  (_16_3_kernel_rs_protocol).restrictToEVALT

-- false arm
noncomputable def _16_3_kernel_rs_false_arm : IGProtocol _16_3_kernel_rs_s0 _16_3_kernel_rs_s21 :=
  (_16_3_kernel_rs_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def _16_3_kernel_rs_tier_ground : OuroboricityTier := TierFunctor.obj _16_3_kernel_rs_s0
def _16_3_kernel_rs_tier : OuroboricityTier := TierFunctor.obj _16_3_kernel_rs_s21
#eval _16_3_kernel_rs_tier_ground  -- tier of the ground (pre-transformation)
#eval _16_3_kernel_rs_tier  -- the Grammar's own verdict on the closed object
