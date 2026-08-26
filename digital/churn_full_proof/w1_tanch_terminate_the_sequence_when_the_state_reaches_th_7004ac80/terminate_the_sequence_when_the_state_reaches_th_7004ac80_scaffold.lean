-- IGProtocol scaffold: ⊢ → ∈ → ⊤ → ≻ → ⊥ → ≺ → ⊞ → ∋ → ⋈ → ⊙ → ⊡ → ∈ → ⊤ → ≻ → ⊥ → ≺ → ∋ → ⋈ → ⊙ → ⊡ → ⊣
-- Class: Terminate the sequence when the state reaches the unit value 1, the closed boundary of the proof.
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
private def terminate_the_sequence_when_the_state_e56678_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def terminate_the_sequence_when_the_state_e56678_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def terminate_the_sequence_when_the_state_e56678_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def terminate_the_sequence_when_the_state_e56678_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def terminate_the_sequence_when_the_state_e56678_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def terminate_the_sequence_when_the_state_e56678_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def terminate_the_sequence_when_the_state_e56678_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def terminate_the_sequence_when_the_state_e56678_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def terminate_the_sequence_when_the_state_e56678_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def terminate_the_sequence_when_the_state_e56678_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def terminate_the_sequence_when_the_state_e56678_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def terminate_the_sequence_when_the_state_e56678_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def terminate_the_sequence_when_the_state_e56678_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_l13 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def terminate_the_sequence_when_the_state_e56678_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def terminate_the_sequence_when_the_state_e56678_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def terminate_the_sequence_when_the_state_e56678_protocol : IGProtocol terminate_the_sequence_when_the_state_e56678_s0 terminate_the_sequence_when_the_state_e56678_s20 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct terminate_the_sequence_when_the_state_e56678_s7 terminate_the_sequence_when_the_state_e56678_s7 = terminate_the_sequence_when_the_state_e56678_s7 (idempotent)
  (.seq (.arrow terminate_the_sequence_when_the_state_e56678_l0 terminate_the_sequence_when_the_state_e56678_s0 terminate_the_sequence_when_the_state_e56678_s1) (.seq (.prod (.arrow terminate_the_sequence_when_the_state_e56678_l1 terminate_the_sequence_when_the_state_e56678_s1 terminate_the_sequence_when_the_state_e56678_s7) (.arrow terminate_the_sequence_when_the_state_e56678_l1 terminate_the_sequence_when_the_state_e56678_s1 terminate_the_sequence_when_the_state_e56678_s7)) (.seq (.arrow terminate_the_sequence_when_the_state_e56678_l7 terminate_the_sequence_when_the_state_e56678_s7 terminate_the_sequence_when_the_state_e56678_s7) (.seq (.arrow terminate_the_sequence_when_the_state_e56678_l7 terminate_the_sequence_when_the_state_e56678_s7 terminate_the_sequence_when_the_state_e56678_s8) (.seq (.arrow terminate_the_sequence_when_the_state_e56678_l8 terminate_the_sequence_when_the_state_e56678_s8 terminate_the_sequence_when_the_state_e56678_s9) (.seq (.arrow terminate_the_sequence_when_the_state_e56678_l9 terminate_the_sequence_when_the_state_e56678_s9 terminate_the_sequence_when_the_state_e56678_s10) (.seq (.arrow terminate_the_sequence_when_the_state_e56678_l10 terminate_the_sequence_when_the_state_e56678_s10 terminate_the_sequence_when_the_state_e56678_s11) (.seq (.arrow terminate_the_sequence_when_the_state_e56678_l11 terminate_the_sequence_when_the_state_e56678_s11 terminate_the_sequence_when_the_state_e56678_s12) (.seq (.arrow terminate_the_sequence_when_the_state_e56678_l12 terminate_the_sequence_when_the_state_e56678_s12 terminate_the_sequence_when_the_state_e56678_s13) (.seq (.arrow terminate_the_sequence_when_the_state_e56678_l13 terminate_the_sequence_when_the_state_e56678_s13 terminate_the_sequence_when_the_state_e56678_s14) (.seq (.arrow terminate_the_sequence_when_the_state_e56678_l14 terminate_the_sequence_when_the_state_e56678_s14 terminate_the_sequence_when_the_state_e56678_s15) (.seq (.arrow terminate_the_sequence_when_the_state_e56678_l15 terminate_the_sequence_when_the_state_e56678_s15 terminate_the_sequence_when_the_state_e56678_s16) (.seq (.arrow terminate_the_sequence_when_the_state_e56678_l16 terminate_the_sequence_when_the_state_e56678_s16 terminate_the_sequence_when_the_state_e56678_s17) (.seq (.arrow terminate_the_sequence_when_the_state_e56678_l17 terminate_the_sequence_when_the_state_e56678_s17 terminate_the_sequence_when_the_state_e56678_s18) (.seq (.arrow terminate_the_sequence_when_the_state_e56678_l18 terminate_the_sequence_when_the_state_e56678_s18 terminate_the_sequence_when_the_state_e56678_s19) (.arrow terminate_the_sequence_when_the_state_e56678_l19 terminate_the_sequence_when_the_state_e56678_s19 terminate_the_sequence_when_the_state_e56678_s20))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def terminate_the_sequence_when_the_state_e56678_true_arm : IGProtocol terminate_the_sequence_when_the_state_e56678_s0 terminate_the_sequence_when_the_state_e56678_s20 :=
  (terminate_the_sequence_when_the_state_e56678_protocol).restrictToEVALT

-- false arm
noncomputable def terminate_the_sequence_when_the_state_e56678_false_arm : IGProtocol terminate_the_sequence_when_the_state_e56678_s0 terminate_the_sequence_when_the_state_e56678_s20 :=
  (terminate_the_sequence_when_the_state_e56678_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def terminate_the_sequence_when_the_state_e56678_tier_ground : OuroboricityTier := TierFunctor.obj terminate_the_sequence_when_the_state_e56678_s0
def terminate_the_sequence_when_the_state_e56678_tier : OuroboricityTier := TierFunctor.obj terminate_the_sequence_when_the_state_e56678_s20
#eval terminate_the_sequence_when_the_state_e56678_tier_ground  -- tier of the ground (pre-transformation)
#eval terminate_the_sequence_when_the_state_e56678_tier  -- the Grammar's own verdict on the closed object
