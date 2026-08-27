-- IGProtocol scaffold: ⊢ → ⊙ → ∈ → ≻ → ⊤ → ⋈ → ≺ → ⊥ → ⊞ → ∋ → ⊡ → ⋈ → ⊙ → ∈ → ≻ → ⊤ → ≺ → ⊥ → ⊞ → ∋ → ⊡ → ⊣
-- Class: SIXTEEN_3_kernel_rs
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
private def sixteen_3_kernel_rs_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def sixteen_3_kernel_rs_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def sixteen_3_kernel_rs_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def sixteen_3_kernel_rs_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def sixteen_3_kernel_rs_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def sixteen_3_kernel_rs_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def sixteen_3_kernel_rs_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def sixteen_3_kernel_rs_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def sixteen_3_kernel_rs_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def sixteen_3_kernel_rs_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def sixteen_3_kernel_rs_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def sixteen_3_kernel_rs_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def sixteen_3_kernel_rs_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def sixteen_3_kernel_rs_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def sixteen_3_kernel_rs_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def sixteen_3_kernel_rs_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_l14 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def sixteen_3_kernel_rs_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_kernel_rs_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def sixteen_3_kernel_rs_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def sixteen_3_kernel_rs_protocol : IGProtocol sixteen_3_kernel_rs_s0 sixteen_3_kernel_rs_s21 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct sixteen_3_kernel_rs_s9 sixteen_3_kernel_rs_s9 = sixteen_3_kernel_rs_s9 (idempotent)
  (.seq (.arrow sixteen_3_kernel_rs_l0 sixteen_3_kernel_rs_s0 sixteen_3_kernel_rs_s1) (.seq (.arrow sixteen_3_kernel_rs_l1 sixteen_3_kernel_rs_s1 sixteen_3_kernel_rs_s2) (.seq (.prod (.arrow sixteen_3_kernel_rs_l2 sixteen_3_kernel_rs_s2 sixteen_3_kernel_rs_s9) (.arrow sixteen_3_kernel_rs_l2 sixteen_3_kernel_rs_s2 sixteen_3_kernel_rs_s9)) (.seq (.arrow sixteen_3_kernel_rs_l9 sixteen_3_kernel_rs_s9 sixteen_3_kernel_rs_s9) (.seq (.arrow sixteen_3_kernel_rs_l9 sixteen_3_kernel_rs_s9 sixteen_3_kernel_rs_s10) (.seq (.arrow sixteen_3_kernel_rs_l10 sixteen_3_kernel_rs_s10 sixteen_3_kernel_rs_s11) (.seq (.arrow sixteen_3_kernel_rs_l11 sixteen_3_kernel_rs_s11 sixteen_3_kernel_rs_s12) (.seq (.arrow sixteen_3_kernel_rs_l12 sixteen_3_kernel_rs_s12 sixteen_3_kernel_rs_s13) (.seq (.arrow sixteen_3_kernel_rs_l13 sixteen_3_kernel_rs_s13 sixteen_3_kernel_rs_s14) (.seq (.arrow sixteen_3_kernel_rs_l14 sixteen_3_kernel_rs_s14 sixteen_3_kernel_rs_s15) (.seq (.arrow sixteen_3_kernel_rs_l15 sixteen_3_kernel_rs_s15 sixteen_3_kernel_rs_s16) (.seq (.arrow sixteen_3_kernel_rs_l16 sixteen_3_kernel_rs_s16 sixteen_3_kernel_rs_s17) (.seq (.arrow sixteen_3_kernel_rs_l17 sixteen_3_kernel_rs_s17 sixteen_3_kernel_rs_s18) (.seq (.arrow sixteen_3_kernel_rs_l18 sixteen_3_kernel_rs_s18 sixteen_3_kernel_rs_s19) (.seq (.arrow sixteen_3_kernel_rs_l19 sixteen_3_kernel_rs_s19 sixteen_3_kernel_rs_s20) (.arrow sixteen_3_kernel_rs_l20 sixteen_3_kernel_rs_s20 sixteen_3_kernel_rs_s21))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def sixteen_3_kernel_rs_true_arm : IGProtocol sixteen_3_kernel_rs_s0 sixteen_3_kernel_rs_s21 :=
  (sixteen_3_kernel_rs_protocol).restrictToEVALT

-- false arm
noncomputable def sixteen_3_kernel_rs_false_arm : IGProtocol sixteen_3_kernel_rs_s0 sixteen_3_kernel_rs_s21 :=
  (sixteen_3_kernel_rs_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def sixteen_3_kernel_rs_tier_ground : OuroboricityTier := TierFunctor.obj sixteen_3_kernel_rs_s0
def sixteen_3_kernel_rs_tier : OuroboricityTier := TierFunctor.obj sixteen_3_kernel_rs_s21
#eval sixteen_3_kernel_rs_tier_ground  -- tier of the ground (pre-transformation)
#eval sixteen_3_kernel_rs_tier  -- the Grammar's own verdict on the closed object
