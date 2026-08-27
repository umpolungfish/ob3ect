-- IGProtocol scaffold: ⊢ → ∈ → ≻ → ⊤ → ⋈ → ≺ → ⊥ → ⋈ → ∋ → ⊞ → ⊡ → ⊙ → ⋈ → ∈ → ≻ → ⊤ → ⋈ → ≺ → ⊥ → ⋈ → ∋ → ⊡ → ⊙ → ⊣
-- Class: ⊢⊞⊣⊤⋈⋈⊥∈⊞∈∈⊤⊡⊤⊞⊡⊙⊞⊡⊙⊡∈⊤⊙∈⊞⊞⊙∈∈⊞∈⋈∋∈⋈∋⊥⊤⋈⊥≻⊞⊥⊙⋈⋈⊡⊥⋈⊢⊤⊡⊢⋈⊞⊡⊞⊥⋈⊞≻⊡⊞⋈≺∈∋⋈⊤⊡⊥⋈⊢⊡⊤⊥⊡≺⊢⊞⊣⊣⊤≻⊤≻⋈⋈∈⊢≺⊡∋≺⊤⊡∋⊡⊞⊥⊤⊤⊞⊞∈∋≻⊤∈∈⊢⊥∋⋈≻⊤⋈⊡⊤⊤∋≻⊞⊤⊤⊤∋⋈⊢≺⊣⊤⊞⊥⊤⋈⊞⊡⊡⊡∈⊞⊡⊢⊞⊡⊞⊤⊤∋⊥⊡⋈⊞⊢⊡≺⊥⊞⊙⊢≺⊡⊥⊤⋈⊢⊙⊢∋⊤⊥⊢≺⊤⊤≺⊡∈⊥⊞∈⊤⋈⊞⊥⊥⊥⊥∈⊙∈⊢⊞⊤⊤≺∈⊙⊡⊥⊢∈⊢⊡⊡⋈⊞⊡≺⊙⊢⊡⊡∋⊡⊥⊞⊥⊤≺⊡≻⊤⊡⊥⊤⊤⊡⊡⊤⊤∋≻⊡⊤⊤⊥⊡⊥≻⊥∈⊙⊞⊞∋⊞∈⊙⊥⊢∋⊤∈⊙⊞≻⊤∈⊤∋⊢⊤∋⊢≻⊙⊞⊤⋈∈≺⊤⊤⊡⊞⊤⊞∈≻⊞⊞⊡∋⋈≻⊞⊡∋⊞⋈⊞⊡⋈∈⊞⋈⊤⊢⊤⊤⊞⊡⊡⊢⊡⊣⊙⋈⊡⊥⊢⊡⊤⊡∈∋∈⊡⊤∈∈⊤⋈⊤⊥⋈⊥⊤≺⊡≻⋈≻⊡⊤⊥≺∈∋⊤⊢∋∈∈⊞⊢∋∈⊤⊤⊡⊡⊤⊞⊥⊤∈⊞⊡⊡⊙⊞∈⊢⊡≻⊙⋈∈⊞∋⊡⊞≺⊡⊡⊡⊡⊡
-- Fingerprint: sig=(13,4,5,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=24
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(1, 8), (13, 20)]

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
--   [7] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] ∋     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [9] ⊞    stoi   := 𐑳               𐑙 → 𐑭  | engage paradox — B-state, both arms
--   [10] ⊡      prot   := 𐑭               𐑳 → 𐑠  | irreversible fixation — winding number
--   [11] ⊙   gram   := 𐑠               𐑭 → 𐑱  | identity — self-imscription
--   [12] ⋈     fid    := 𐑱               𐑠 → 𐑚  | composition — regime coherence
--   [13] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [14] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [15] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [16] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [17] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [18] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [19] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [20] ∋     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [21] ⊡      prot   := 𐑭               𐑙 → 𐑠  | irreversible fixation — winding number
--   [22] ⊙   gram   := 𐑠               𐑭 → 𐑡  | identity — self-imscription
--   [23] ⊣     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def _s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def _s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def _s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def _s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def _s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def _s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def _s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def _s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def _s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def _s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def _s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def _s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def _s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def _s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def _s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def _s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def _s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def _s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def _s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def _s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def _s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def _l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def _l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def _l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def _l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def _l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _l14 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def _l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def _l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def _l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def _l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def _protocol : IGProtocol _s0 _s23 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct _s8 _s8 = _s8 (idempotent)
  (.seq (.arrow _l0 _s0 _s1) (.seq (.prod (.arrow _l1 _s1 _s8) (.arrow _l1 _s1 _s8)) (.seq (.arrow _l8 _s8 _s8) (.seq (.arrow _l8 _s8 _s9) (.seq (.arrow _l9 _s9 _s10) (.seq (.arrow _l10 _s10 _s11) (.seq (.arrow _l11 _s11 _s12) (.seq (.arrow _l12 _s12 _s13) (.seq (.arrow _l13 _s13 _s14) (.seq (.arrow _l14 _s14 _s15) (.seq (.arrow _l15 _s15 _s16) (.seq (.arrow _l16 _s16 _s17) (.seq (.arrow _l17 _s17 _s18) (.seq (.arrow _l18 _s18 _s19) (.seq (.arrow _l19 _s19 _s20) (.seq (.arrow _l20 _s20 _s21) (.seq (.arrow _l21 _s21 _s22) (.arrow _l22 _s22 _s23))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def _true_arm : IGProtocol _s0 _s23 :=
  (_protocol).restrictToEVALT

-- false arm
noncomputable def _false_arm : IGProtocol _s0 _s23 :=
  (_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def _tier_ground : OuroboricityTier := TierFunctor.obj _s0
def _tier : OuroboricityTier := TierFunctor.obj _s23
#eval _tier_ground  -- tier of the ground (pre-transformation)
#eval _tier  -- the Grammar's own verdict on the closed object
