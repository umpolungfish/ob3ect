-- IGProtocol scaffold: ⊢ → ∈ → ⊤ → ≻ → ⊥ → ≺ → ⊞ → ∋ → ⋈ → ⊙ → ⊡ → ∈ → ⊤ → ≻ → ⊥ → ≺ → ∋ → ⋈ → ⊙ → ⊡ → ⊣
-- Class: Rejoin the even and odd arms into a single next-state value, resolving the parity decision.
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
--   [10] ⊡      prot   := 𐑭               𐑠 → 𐑚  | irreversible fixation — winding number
--   [11] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [12] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [13] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [14] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [15] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [16] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [17] ⋈     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [18] ⊙   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [19] ⊡      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [20] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l13 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def rejoin_the_even_and_odd_arms_into_a_8b2e1a_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def rejoin_the_even_and_odd_arms_into_a_8b2e1a_protocol : IGProtocol rejoin_the_even_and_odd_arms_into_a_8b2e1a_s0 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s20 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct rejoin_the_even_and_odd_arms_into_a_8b2e1a_s7 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s7 = rejoin_the_even_and_odd_arms_into_a_8b2e1a_s7 (idempotent)
  (.seq (.arrow rejoin_the_even_and_odd_arms_into_a_8b2e1a_l0 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s0 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s1) (.seq (.prod (.arrow rejoin_the_even_and_odd_arms_into_a_8b2e1a_l1 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s1 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s7) (.arrow rejoin_the_even_and_odd_arms_into_a_8b2e1a_l1 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s1 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s7)) (.seq (.arrow rejoin_the_even_and_odd_arms_into_a_8b2e1a_l7 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s7 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s7) (.seq (.arrow rejoin_the_even_and_odd_arms_into_a_8b2e1a_l7 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s7 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s8) (.seq (.arrow rejoin_the_even_and_odd_arms_into_a_8b2e1a_l8 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s8 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s9) (.seq (.arrow rejoin_the_even_and_odd_arms_into_a_8b2e1a_l9 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s9 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s10) (.seq (.arrow rejoin_the_even_and_odd_arms_into_a_8b2e1a_l10 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s10 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s11) (.seq (.arrow rejoin_the_even_and_odd_arms_into_a_8b2e1a_l11 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s11 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s12) (.seq (.arrow rejoin_the_even_and_odd_arms_into_a_8b2e1a_l12 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s12 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s13) (.seq (.arrow rejoin_the_even_and_odd_arms_into_a_8b2e1a_l13 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s13 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s14) (.seq (.arrow rejoin_the_even_and_odd_arms_into_a_8b2e1a_l14 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s14 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s15) (.seq (.arrow rejoin_the_even_and_odd_arms_into_a_8b2e1a_l15 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s15 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s16) (.seq (.arrow rejoin_the_even_and_odd_arms_into_a_8b2e1a_l16 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s16 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s17) (.seq (.arrow rejoin_the_even_and_odd_arms_into_a_8b2e1a_l17 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s17 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s18) (.seq (.arrow rejoin_the_even_and_odd_arms_into_a_8b2e1a_l18 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s18 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s19) (.arrow rejoin_the_even_and_odd_arms_into_a_8b2e1a_l19 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s19 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s20))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def rejoin_the_even_and_odd_arms_into_a_8b2e1a_true_arm : IGProtocol rejoin_the_even_and_odd_arms_into_a_8b2e1a_s0 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s20 :=
  (rejoin_the_even_and_odd_arms_into_a_8b2e1a_protocol).restrictToEVALT

-- false arm
noncomputable def rejoin_the_even_and_odd_arms_into_a_8b2e1a_false_arm : IGProtocol rejoin_the_even_and_odd_arms_into_a_8b2e1a_s0 rejoin_the_even_and_odd_arms_into_a_8b2e1a_s20 :=
  (rejoin_the_even_and_odd_arms_into_a_8b2e1a_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def rejoin_the_even_and_odd_arms_into_a_8b2e1a_tier_ground : OuroboricityTier := TierFunctor.obj rejoin_the_even_and_odd_arms_into_a_8b2e1a_s0
def rejoin_the_even_and_odd_arms_into_a_8b2e1a_tier : OuroboricityTier := TierFunctor.obj rejoin_the_even_and_odd_arms_into_a_8b2e1a_s20
#eval rejoin_the_even_and_odd_arms_into_a_8b2e1a_tier_ground  -- tier of the ground (pre-transformation)
#eval rejoin_the_even_and_odd_arms_into_a_8b2e1a_tier  -- the Grammar's own verdict on the closed object
