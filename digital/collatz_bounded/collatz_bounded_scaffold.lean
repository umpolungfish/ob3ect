-- IGProtocol scaffold: ⊢ → ∈ → ⊤ → ≺ → ⊡ → ⊥ → ≻ → ⊡ → ∋ → ⋈ → ⊞ → ⊙ → ∈ → ⊤ → ≺ → ⊡ → ⊥ → ≻ → ⊡ → ∋ → ⋈ → ⊞ → ⊙ → ⊣
-- Class: collatz_bounded
-- Fingerprint: sig=(10,4,6,4)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=24
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(1, 8), (12, 19)]

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
--   [3] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [4] ⊡      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [5] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] ⊡      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [8] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [9] ⋈     fid    := 𐑱               𐑙 → 𐑳  | composition — regime coherence
--   [10] ⊞    stoi   := 𐑳               𐑱 → 𐑠  | engage paradox — B-state, both arms
--   [11] ⊙   gram   := 𐑠               𐑳 → 𐑚  | identity — self-imscription
--   [12] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [13] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [14] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [15] ⊡      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [16] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [17] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [18] ⊡      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [19] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [20] ⋈     fid    := 𐑱               𐑙 → 𐑳  | composition — regime coherence
--   [21] ⊞    stoi   := 𐑳               𐑱 → 𐑠  | engage paradox — B-state, both arms
--   [22] ⊙   gram   := 𐑠               𐑳 → 𐑡  | identity — self-imscription
--   [23] ⊣     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def collatz_bounded_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_bounded_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_bounded_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def collatz_bounded_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def collatz_bounded_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def collatz_bounded_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def collatz_bounded_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def collatz_bounded_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def collatz_bounded_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def collatz_bounded_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def collatz_bounded_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_bounded_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_bounded_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_bounded_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_bounded_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_bounded_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_bounded_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_bounded_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_bounded_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_bounded_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def collatz_bounded_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def collatz_bounded_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_bounded_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_bounded_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def collatz_bounded_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_bounded_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_bounded_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def collatz_bounded_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_bounded_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def collatz_bounded_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def collatz_bounded_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_bounded_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def collatz_bounded_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_bounded_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_bounded_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def collatz_bounded_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_bounded_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_bounded_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def collatz_bounded_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_bounded_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def collatz_bounded_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def collatz_bounded_l17 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_bounded_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def collatz_bounded_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_bounded_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_bounded_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def collatz_bounded_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_bounded_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def collatz_bounded_protocol : IGProtocol collatz_bounded_s0 collatz_bounded_s23 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct collatz_bounded_s8 collatz_bounded_s8 = collatz_bounded_s8 (idempotent)
  (.seq (.arrow collatz_bounded_l0 collatz_bounded_s0 collatz_bounded_s1) (.seq (.prod (.arrow collatz_bounded_l1 collatz_bounded_s1 collatz_bounded_s8) (.arrow collatz_bounded_l1 collatz_bounded_s1 collatz_bounded_s8)) (.seq (.arrow collatz_bounded_l8 collatz_bounded_s8 collatz_bounded_s8) (.seq (.arrow collatz_bounded_l8 collatz_bounded_s8 collatz_bounded_s9) (.seq (.arrow collatz_bounded_l9 collatz_bounded_s9 collatz_bounded_s10) (.seq (.arrow collatz_bounded_l10 collatz_bounded_s10 collatz_bounded_s11) (.seq (.arrow collatz_bounded_l11 collatz_bounded_s11 collatz_bounded_s12) (.seq (.arrow collatz_bounded_l12 collatz_bounded_s12 collatz_bounded_s13) (.seq (.arrow collatz_bounded_l13 collatz_bounded_s13 collatz_bounded_s14) (.seq (.arrow collatz_bounded_l14 collatz_bounded_s14 collatz_bounded_s15) (.seq (.arrow collatz_bounded_l15 collatz_bounded_s15 collatz_bounded_s16) (.seq (.arrow collatz_bounded_l16 collatz_bounded_s16 collatz_bounded_s17) (.seq (.arrow collatz_bounded_l17 collatz_bounded_s17 collatz_bounded_s18) (.seq (.arrow collatz_bounded_l18 collatz_bounded_s18 collatz_bounded_s19) (.seq (.arrow collatz_bounded_l19 collatz_bounded_s19 collatz_bounded_s20) (.seq (.arrow collatz_bounded_l20 collatz_bounded_s20 collatz_bounded_s21) (.seq (.arrow collatz_bounded_l21 collatz_bounded_s21 collatz_bounded_s22) (.arrow collatz_bounded_l22 collatz_bounded_s22 collatz_bounded_s23))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def collatz_bounded_true_arm : IGProtocol collatz_bounded_s0 collatz_bounded_s23 :=
  (collatz_bounded_protocol).restrictToEVALT

-- false arm
noncomputable def collatz_bounded_false_arm : IGProtocol collatz_bounded_s0 collatz_bounded_s23 :=
  (collatz_bounded_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def collatz_bounded_tier_ground : OuroboricityTier := TierFunctor.obj collatz_bounded_s0
def collatz_bounded_tier : OuroboricityTier := TierFunctor.obj collatz_bounded_s23
#eval collatz_bounded_tier_ground  -- tier of the ground (pre-transformation)
#eval collatz_bounded_tier  -- the Grammar's own verdict on the closed object
