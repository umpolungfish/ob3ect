-- IGProtocol scaffold: ∈ → ⊤ → ≻ → ⊥ → ≺ → ⊞ → ∋ → ⋈ → ⊙ → ⊡ → ∈ → ⊤ → ≻ → ⊥ → ≺ → ∋ → ⋈ → ⊙ → ⊡ → ⊣
-- Class: Split the new state again for the next parity check, continuing the iteration.
-- Fingerprint: sig=(9,4,5,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=20
-- Expected tier: O₂
-- ∈/∋ pairs: [(0, 6), (10, 15)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [1] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [2] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [3] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [4] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [5] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [6] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [7] ⋈     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [8] ⊙   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [9] ⊡      prot   := 𐑭               𐑠 → 𐑚  | irreversible fixation — winding number
--   [10] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [12] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [13] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [14] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [15] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [16] ⋈     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [17] ⊙   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [18] ⊡      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [19] ⊣     top    := 𐑡               𐑭 → 𐑚  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def split_the_new_state_again_for_the_next_a8591a_s0 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_s1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_s2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_s3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_s4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_s5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_s6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_s7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_s8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_s9 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def split_the_new_state_again_for_the_next_a8591a_s10 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def split_the_new_state_again_for_the_next_a8591a_s11 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def split_the_new_state_again_for_the_next_a8591a_s12 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def split_the_new_state_again_for_the_next_a8591a_s13 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def split_the_new_state_again_for_the_next_a8591a_s14 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def split_the_new_state_again_for_the_next_a8591a_s15 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def split_the_new_state_again_for_the_next_a8591a_s16 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def split_the_new_state_again_for_the_next_a8591a_s17 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def split_the_new_state_again_for_the_next_a8591a_s18 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def split_the_new_state_again_for_the_next_a8591a_s19 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def split_the_new_state_again_for_the_next_a8591a_l0 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def split_the_new_state_again_for_the_next_a8591a_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_l12 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def split_the_new_state_again_for_the_next_a8591a_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def split_the_new_state_again_for_the_next_a8591a_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def split_the_new_state_again_for_the_next_a8591a_protocol : IGProtocol split_the_new_state_again_for_the_next_a8591a_s0 split_the_new_state_again_for_the_next_a8591a_s19 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct split_the_new_state_again_for_the_next_a8591a_s6 split_the_new_state_again_for_the_next_a8591a_s6 = split_the_new_state_again_for_the_next_a8591a_s6 (idempotent)
  (.seq (.prod (.arrow split_the_new_state_again_for_the_next_a8591a_l0 split_the_new_state_again_for_the_next_a8591a_s0 split_the_new_state_again_for_the_next_a8591a_s6) (.arrow split_the_new_state_again_for_the_next_a8591a_l0 split_the_new_state_again_for_the_next_a8591a_s0 split_the_new_state_again_for_the_next_a8591a_s6)) (.seq (.arrow split_the_new_state_again_for_the_next_a8591a_l6 split_the_new_state_again_for_the_next_a8591a_s6 split_the_new_state_again_for_the_next_a8591a_s6) (.seq (.arrow split_the_new_state_again_for_the_next_a8591a_l6 split_the_new_state_again_for_the_next_a8591a_s6 split_the_new_state_again_for_the_next_a8591a_s7) (.seq (.arrow split_the_new_state_again_for_the_next_a8591a_l7 split_the_new_state_again_for_the_next_a8591a_s7 split_the_new_state_again_for_the_next_a8591a_s8) (.seq (.arrow split_the_new_state_again_for_the_next_a8591a_l8 split_the_new_state_again_for_the_next_a8591a_s8 split_the_new_state_again_for_the_next_a8591a_s9) (.seq (.arrow split_the_new_state_again_for_the_next_a8591a_l9 split_the_new_state_again_for_the_next_a8591a_s9 split_the_new_state_again_for_the_next_a8591a_s10) (.seq (.arrow split_the_new_state_again_for_the_next_a8591a_l10 split_the_new_state_again_for_the_next_a8591a_s10 split_the_new_state_again_for_the_next_a8591a_s11) (.seq (.arrow split_the_new_state_again_for_the_next_a8591a_l11 split_the_new_state_again_for_the_next_a8591a_s11 split_the_new_state_again_for_the_next_a8591a_s12) (.seq (.arrow split_the_new_state_again_for_the_next_a8591a_l12 split_the_new_state_again_for_the_next_a8591a_s12 split_the_new_state_again_for_the_next_a8591a_s13) (.seq (.arrow split_the_new_state_again_for_the_next_a8591a_l13 split_the_new_state_again_for_the_next_a8591a_s13 split_the_new_state_again_for_the_next_a8591a_s14) (.seq (.arrow split_the_new_state_again_for_the_next_a8591a_l14 split_the_new_state_again_for_the_next_a8591a_s14 split_the_new_state_again_for_the_next_a8591a_s15) (.seq (.arrow split_the_new_state_again_for_the_next_a8591a_l15 split_the_new_state_again_for_the_next_a8591a_s15 split_the_new_state_again_for_the_next_a8591a_s16) (.seq (.arrow split_the_new_state_again_for_the_next_a8591a_l16 split_the_new_state_again_for_the_next_a8591a_s16 split_the_new_state_again_for_the_next_a8591a_s17) (.seq (.arrow split_the_new_state_again_for_the_next_a8591a_l17 split_the_new_state_again_for_the_next_a8591a_s17 split_the_new_state_again_for_the_next_a8591a_s18) (.arrow split_the_new_state_again_for_the_next_a8591a_l18 split_the_new_state_again_for_the_next_a8591a_s18 split_the_new_state_again_for_the_next_a8591a_s19)))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def split_the_new_state_again_for_the_next_a8591a_true_arm : IGProtocol split_the_new_state_again_for_the_next_a8591a_s0 split_the_new_state_again_for_the_next_a8591a_s19 :=
  (split_the_new_state_again_for_the_next_a8591a_protocol).restrictToEVALT

-- false arm
noncomputable def split_the_new_state_again_for_the_next_a8591a_false_arm : IGProtocol split_the_new_state_again_for_the_next_a8591a_s0 split_the_new_state_again_for_the_next_a8591a_s19 :=
  (split_the_new_state_again_for_the_next_a8591a_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂.
def split_the_new_state_again_for_the_next_a8591a_tier_ground : OuroboricityTier := TierFunctor.obj split_the_new_state_again_for_the_next_a8591a_s0
def split_the_new_state_again_for_the_next_a8591a_tier : OuroboricityTier := TierFunctor.obj split_the_new_state_again_for_the_next_a8591a_s19
#eval split_the_new_state_again_for_the_next_a8591a_tier_ground  -- tier of the ground (pre-transformation)
#eval split_the_new_state_again_for_the_next_a8591a_tier  -- the Grammar's own verdict on the closed object
