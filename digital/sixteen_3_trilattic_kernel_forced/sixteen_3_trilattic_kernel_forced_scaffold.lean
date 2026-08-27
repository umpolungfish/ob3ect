-- IGProtocol scaffold: ⊢ → ∈ → ⊤ → ≻ → ⋈ → ⊥ → ≺ → ⊞ → ⊙ → ∋ → ⊡ → ∈ → ⊤ → ⊥ → ⊞ → ∋ → ⊡ → ⊣
-- Class: SIXTEEN_3_trilattic_kernel_forced
-- Fingerprint: sig=(6,4,6,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=18
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(1, 9), (11, 15)]

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
--   [4] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [5] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [8] ⊙   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [9] ∋     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [10] ⊡      prot   := 𐑭               𐑙 → 𐑚  | irreversible fixation — winding number
--   [11] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [12] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [13] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [14] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [15] ∋     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [16] ⊡      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [17] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def sixteen_3_trilattic_kernel_forced_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def sixteen_3_trilattic_kernel_forced_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def sixteen_3_trilattic_kernel_forced_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def sixteen_3_trilattic_kernel_forced_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def sixteen_3_trilattic_kernel_forced_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def sixteen_3_trilattic_kernel_forced_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def sixteen_3_trilattic_kernel_forced_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def sixteen_3_trilattic_kernel_forced_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def sixteen_3_trilattic_kernel_forced_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def sixteen_3_trilattic_kernel_forced_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def sixteen_3_trilattic_kernel_forced_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def sixteen_3_trilattic_kernel_forced_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def sixteen_3_trilattic_kernel_forced_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def sixteen_3_trilattic_kernel_forced_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def sixteen_3_trilattic_kernel_forced_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def sixteen_3_trilattic_kernel_forced_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def sixteen_3_trilattic_kernel_forced_protocol : IGProtocol sixteen_3_trilattic_kernel_forced_s0 sixteen_3_trilattic_kernel_forced_s17 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct sixteen_3_trilattic_kernel_forced_s9 sixteen_3_trilattic_kernel_forced_s9 = sixteen_3_trilattic_kernel_forced_s9 (idempotent)
  (.seq (.arrow sixteen_3_trilattic_kernel_forced_l0 sixteen_3_trilattic_kernel_forced_s0 sixteen_3_trilattic_kernel_forced_s1) (.seq (.prod (.arrow sixteen_3_trilattic_kernel_forced_l1 sixteen_3_trilattic_kernel_forced_s1 sixteen_3_trilattic_kernel_forced_s9) (.arrow sixteen_3_trilattic_kernel_forced_l1 sixteen_3_trilattic_kernel_forced_s1 sixteen_3_trilattic_kernel_forced_s9)) (.seq (.arrow sixteen_3_trilattic_kernel_forced_l9 sixteen_3_trilattic_kernel_forced_s9 sixteen_3_trilattic_kernel_forced_s9) (.seq (.arrow sixteen_3_trilattic_kernel_forced_l9 sixteen_3_trilattic_kernel_forced_s9 sixteen_3_trilattic_kernel_forced_s10) (.seq (.arrow sixteen_3_trilattic_kernel_forced_l10 sixteen_3_trilattic_kernel_forced_s10 sixteen_3_trilattic_kernel_forced_s11) (.seq (.arrow sixteen_3_trilattic_kernel_forced_l11 sixteen_3_trilattic_kernel_forced_s11 sixteen_3_trilattic_kernel_forced_s12) (.seq (.arrow sixteen_3_trilattic_kernel_forced_l12 sixteen_3_trilattic_kernel_forced_s12 sixteen_3_trilattic_kernel_forced_s13) (.seq (.arrow sixteen_3_trilattic_kernel_forced_l13 sixteen_3_trilattic_kernel_forced_s13 sixteen_3_trilattic_kernel_forced_s14) (.seq (.arrow sixteen_3_trilattic_kernel_forced_l14 sixteen_3_trilattic_kernel_forced_s14 sixteen_3_trilattic_kernel_forced_s15) (.seq (.arrow sixteen_3_trilattic_kernel_forced_l15 sixteen_3_trilattic_kernel_forced_s15 sixteen_3_trilattic_kernel_forced_s16) (.arrow sixteen_3_trilattic_kernel_forced_l16 sixteen_3_trilattic_kernel_forced_s16 sixteen_3_trilattic_kernel_forced_s17)))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def sixteen_3_trilattic_kernel_forced_true_arm : IGProtocol sixteen_3_trilattic_kernel_forced_s0 sixteen_3_trilattic_kernel_forced_s17 :=
  (sixteen_3_trilattic_kernel_forced_protocol).restrictToEVALT

-- false arm
noncomputable def sixteen_3_trilattic_kernel_forced_false_arm : IGProtocol sixteen_3_trilattic_kernel_forced_s0 sixteen_3_trilattic_kernel_forced_s17 :=
  (sixteen_3_trilattic_kernel_forced_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def sixteen_3_trilattic_kernel_forced_tier_ground : OuroboricityTier := TierFunctor.obj sixteen_3_trilattic_kernel_forced_s0
def sixteen_3_trilattic_kernel_forced_tier : OuroboricityTier := TierFunctor.obj sixteen_3_trilattic_kernel_forced_s17
#eval sixteen_3_trilattic_kernel_forced_tier_ground  -- tier of the ground (pre-transformation)
#eval sixteen_3_trilattic_kernel_forced_tier  -- the Grammar's own verdict on the closed object
