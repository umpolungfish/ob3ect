-- IGProtocol scaffold: ⊢ → ∈ → ⊤ → ≻ → ⊥ → ≺ → ⊞ → ∋ → ⋈ → ⊙ → ◻ → ∈ → ⊤ → ≻ → ⊥ → ≺ → ∋ → ⋈ → ⊙ → ◻ → ⊣
-- Class: Initialize the system with an arbitrary integer m ≥ 1 as the starting point of the trajectory.
-- Fingerprint: sig=(10,4,5,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=21
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(1, 7), (11, 16)]

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
--   [6] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [7] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] ⋈     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [9] ⊙   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [10] ◻      prot   := 𐑭               𐑠 → 𐑚  | irreversible fixation — winding number
--   [11] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [12] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [13] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [14] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [15] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [16] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [17] ⋈     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [18] ⊙   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [19] ◻      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [20] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def initialize_the_system_with_an_arbitrary_c0a181_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def initialize_the_system_with_an_arbitrary_c0a181_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def initialize_the_system_with_an_arbitrary_c0a181_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def initialize_the_system_with_an_arbitrary_c0a181_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def initialize_the_system_with_an_arbitrary_c0a181_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def initialize_the_system_with_an_arbitrary_c0a181_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def initialize_the_system_with_an_arbitrary_c0a181_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def initialize_the_system_with_an_arbitrary_c0a181_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def initialize_the_system_with_an_arbitrary_c0a181_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def initialize_the_system_with_an_arbitrary_c0a181_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def initialize_the_system_with_an_arbitrary_c0a181_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def initialize_the_system_with_an_arbitrary_c0a181_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def initialize_the_system_with_an_arbitrary_c0a181_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_l13 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def initialize_the_system_with_an_arbitrary_c0a181_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def initialize_the_system_with_an_arbitrary_c0a181_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def initialize_the_system_with_an_arbitrary_c0a181_protocol : IGProtocol initialize_the_system_with_an_arbitrary_c0a181_s0 initialize_the_system_with_an_arbitrary_c0a181_s20 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct initialize_the_system_with_an_arbitrary_c0a181_s7 initialize_the_system_with_an_arbitrary_c0a181_s7 = initialize_the_system_with_an_arbitrary_c0a181_s7 (idempotent)
  (.seq (.arrow initialize_the_system_with_an_arbitrary_c0a181_l0 initialize_the_system_with_an_arbitrary_c0a181_s0 initialize_the_system_with_an_arbitrary_c0a181_s1) (.seq (.prod (.arrow initialize_the_system_with_an_arbitrary_c0a181_l1 initialize_the_system_with_an_arbitrary_c0a181_s1 initialize_the_system_with_an_arbitrary_c0a181_s7) (.arrow initialize_the_system_with_an_arbitrary_c0a181_l1 initialize_the_system_with_an_arbitrary_c0a181_s1 initialize_the_system_with_an_arbitrary_c0a181_s7)) (.seq (.arrow initialize_the_system_with_an_arbitrary_c0a181_l7 initialize_the_system_with_an_arbitrary_c0a181_s7 initialize_the_system_with_an_arbitrary_c0a181_s7) (.seq (.arrow initialize_the_system_with_an_arbitrary_c0a181_l7 initialize_the_system_with_an_arbitrary_c0a181_s7 initialize_the_system_with_an_arbitrary_c0a181_s8) (.seq (.arrow initialize_the_system_with_an_arbitrary_c0a181_l8 initialize_the_system_with_an_arbitrary_c0a181_s8 initialize_the_system_with_an_arbitrary_c0a181_s9) (.seq (.arrow initialize_the_system_with_an_arbitrary_c0a181_l9 initialize_the_system_with_an_arbitrary_c0a181_s9 initialize_the_system_with_an_arbitrary_c0a181_s10) (.seq (.arrow initialize_the_system_with_an_arbitrary_c0a181_l10 initialize_the_system_with_an_arbitrary_c0a181_s10 initialize_the_system_with_an_arbitrary_c0a181_s11) (.seq (.arrow initialize_the_system_with_an_arbitrary_c0a181_l11 initialize_the_system_with_an_arbitrary_c0a181_s11 initialize_the_system_with_an_arbitrary_c0a181_s12) (.seq (.arrow initialize_the_system_with_an_arbitrary_c0a181_l12 initialize_the_system_with_an_arbitrary_c0a181_s12 initialize_the_system_with_an_arbitrary_c0a181_s13) (.seq (.arrow initialize_the_system_with_an_arbitrary_c0a181_l13 initialize_the_system_with_an_arbitrary_c0a181_s13 initialize_the_system_with_an_arbitrary_c0a181_s14) (.seq (.arrow initialize_the_system_with_an_arbitrary_c0a181_l14 initialize_the_system_with_an_arbitrary_c0a181_s14 initialize_the_system_with_an_arbitrary_c0a181_s15) (.seq (.arrow initialize_the_system_with_an_arbitrary_c0a181_l15 initialize_the_system_with_an_arbitrary_c0a181_s15 initialize_the_system_with_an_arbitrary_c0a181_s16) (.seq (.arrow initialize_the_system_with_an_arbitrary_c0a181_l16 initialize_the_system_with_an_arbitrary_c0a181_s16 initialize_the_system_with_an_arbitrary_c0a181_s17) (.seq (.arrow initialize_the_system_with_an_arbitrary_c0a181_l17 initialize_the_system_with_an_arbitrary_c0a181_s17 initialize_the_system_with_an_arbitrary_c0a181_s18) (.seq (.arrow initialize_the_system_with_an_arbitrary_c0a181_l18 initialize_the_system_with_an_arbitrary_c0a181_s18 initialize_the_system_with_an_arbitrary_c0a181_s19) (.arrow initialize_the_system_with_an_arbitrary_c0a181_l19 initialize_the_system_with_an_arbitrary_c0a181_s19 initialize_the_system_with_an_arbitrary_c0a181_s20))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def initialize_the_system_with_an_arbitrary_c0a181_true_arm : IGProtocol initialize_the_system_with_an_arbitrary_c0a181_s0 initialize_the_system_with_an_arbitrary_c0a181_s20 :=
  (initialize_the_system_with_an_arbitrary_c0a181_protocol).restrictToEVALT

-- false arm
noncomputable def initialize_the_system_with_an_arbitrary_c0a181_false_arm : IGProtocol initialize_the_system_with_an_arbitrary_c0a181_s0 initialize_the_system_with_an_arbitrary_c0a181_s20 :=
  (initialize_the_system_with_an_arbitrary_c0a181_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def initialize_the_system_with_an_arbitrary_c0a181_tier_ground : OuroboricityTier := TierFunctor.obj initialize_the_system_with_an_arbitrary_c0a181_s0
def initialize_the_system_with_an_arbitrary_c0a181_tier : OuroboricityTier := TierFunctor.obj initialize_the_system_with_an_arbitrary_c0a181_s20
#eval initialize_the_system_with_an_arbitrary_c0a181_tier_ground  -- tier of the ground (pre-transformation)
#eval initialize_the_system_with_an_arbitrary_c0a181_tier  -- the Grammar's own verdict on the closed object
