-- IGProtocol scaffold: ⊢ → ⊙ → ≻ → ⋈ → ⊡ → ∈ → ⊤ → ⊥ → ⊞ → ∋ → ≺ → ⋈ → ⊣
-- Class: braid word to semiprime factor pair
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(5, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] ⊙   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] ≻      rel    := 𐑾               𐑠 → 𐑱  | forward morphism — bidirectional arrow
--   [3] ⋈     fid    := 𐑱               𐑾 → 𐑭  | composition — regime coherence
--   [4] ⊡      prot   := 𐑭               𐑱 → 𐑚  | irreversible fixation — winding number
--   [5] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] ∋     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [10] ≺      pol    := 𐑗               𐑙 → 𐑱  | reverse morphism — parity flip
--   [11] ⋈     fid    := 𐑱               𐑗 → 𐑡  | composition — regime coherence
--   [12] ⊣     top    := 𐑡               𐑱 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def braid_word_to_semiprime_factor_pair_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def braid_word_to_semiprime_factor_pair_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def braid_word_to_semiprime_factor_pair_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def braid_word_to_semiprime_factor_pair_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def braid_word_to_semiprime_factor_pair_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def braid_word_to_semiprime_factor_pair_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def braid_word_to_semiprime_factor_pair_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def braid_word_to_semiprime_factor_pair_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def braid_word_to_semiprime_factor_pair_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def braid_word_to_semiprime_factor_pair_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def braid_word_to_semiprime_factor_pair_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def braid_word_to_semiprime_factor_pair_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def braid_word_to_semiprime_factor_pair_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def braid_word_to_semiprime_factor_pair_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def braid_word_to_semiprime_factor_pair_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def braid_word_to_semiprime_factor_pair_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def braid_word_to_semiprime_factor_pair_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def braid_word_to_semiprime_factor_pair_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def braid_word_to_semiprime_factor_pair_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def braid_word_to_semiprime_factor_pair_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def braid_word_to_semiprime_factor_pair_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def braid_word_to_semiprime_factor_pair_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def braid_word_to_semiprime_factor_pair_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def braid_word_to_semiprime_factor_pair_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def braid_word_to_semiprime_factor_pair_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def braid_word_to_semiprime_factor_pair_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def braid_word_to_semiprime_factor_pair_protocol : IGProtocol braid_word_to_semiprime_factor_pair_s0 braid_word_to_semiprime_factor_pair_s12 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct braid_word_to_semiprime_factor_pair_s9 braid_word_to_semiprime_factor_pair_s9 = braid_word_to_semiprime_factor_pair_s9 (idempotent)
  (.seq (.arrow braid_word_to_semiprime_factor_pair_l0 braid_word_to_semiprime_factor_pair_s0 braid_word_to_semiprime_factor_pair_s1) (.seq (.arrow braid_word_to_semiprime_factor_pair_l1 braid_word_to_semiprime_factor_pair_s1 braid_word_to_semiprime_factor_pair_s2) (.seq (.arrow braid_word_to_semiprime_factor_pair_l2 braid_word_to_semiprime_factor_pair_s2 braid_word_to_semiprime_factor_pair_s3) (.seq (.arrow braid_word_to_semiprime_factor_pair_l3 braid_word_to_semiprime_factor_pair_s3 braid_word_to_semiprime_factor_pair_s4) (.seq (.arrow braid_word_to_semiprime_factor_pair_l4 braid_word_to_semiprime_factor_pair_s4 braid_word_to_semiprime_factor_pair_s5) (.seq (.prod (.arrow braid_word_to_semiprime_factor_pair_l5 braid_word_to_semiprime_factor_pair_s5 braid_word_to_semiprime_factor_pair_s9) (.arrow braid_word_to_semiprime_factor_pair_l5 braid_word_to_semiprime_factor_pair_s5 braid_word_to_semiprime_factor_pair_s9)) (.seq (.arrow braid_word_to_semiprime_factor_pair_l9 braid_word_to_semiprime_factor_pair_s9 braid_word_to_semiprime_factor_pair_s9) (.seq (.arrow braid_word_to_semiprime_factor_pair_l9 braid_word_to_semiprime_factor_pair_s9 braid_word_to_semiprime_factor_pair_s10) (.seq (.arrow braid_word_to_semiprime_factor_pair_l10 braid_word_to_semiprime_factor_pair_s10 braid_word_to_semiprime_factor_pair_s11) (.arrow braid_word_to_semiprime_factor_pair_l11 braid_word_to_semiprime_factor_pair_s11 braid_word_to_semiprime_factor_pair_s12))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def braid_word_to_semiprime_factor_pair_true_arm : IGProtocol braid_word_to_semiprime_factor_pair_s0 braid_word_to_semiprime_factor_pair_s12 :=
  (braid_word_to_semiprime_factor_pair_protocol).restrictToEVALT

-- false arm
noncomputable def braid_word_to_semiprime_factor_pair_false_arm : IGProtocol braid_word_to_semiprime_factor_pair_s0 braid_word_to_semiprime_factor_pair_s12 :=
  (braid_word_to_semiprime_factor_pair_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def braid_word_to_semiprime_factor_pair_tier_ground : OuroboricityTier := TierFunctor.obj braid_word_to_semiprime_factor_pair_s0
def braid_word_to_semiprime_factor_pair_tier : OuroboricityTier := TierFunctor.obj braid_word_to_semiprime_factor_pair_s12
#eval braid_word_to_semiprime_factor_pair_tier_ground  -- tier of the ground (pre-transformation)
#eval braid_word_to_semiprime_factor_pair_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem braid_word_to_semiprime_factor_pair_frobenius :
    igFrobeniusAlg.mul braid_word_to_semiprime_factor_pair_s0 braid_word_to_semiprime_factor_pair_s0 = braid_word_to_semiprime_factor_pair_s0 :=
  igFrobAlg_self_fusion braid_word_to_semiprime_factor_pair_s0
