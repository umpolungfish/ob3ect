-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → CLINK → FSPLIT → EVALT → EVALF → FFUSE → IFIX → TANCH
-- Class: the sign character of a permutation
-- Fingerprint: sig=(5,2,2,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=10
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(4, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑱  | forward morphism — bidirectional arrow
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [8] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [9] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_sign_character_of_a_permutation_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_sign_character_of_a_permutation_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_sign_character_of_a_permutation_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_sign_character_of_a_permutation_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_sign_character_of_a_permutation_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_sign_character_of_a_permutation_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_sign_character_of_a_permutation_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_sign_character_of_a_permutation_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_sign_character_of_a_permutation_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_sign_character_of_a_permutation_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_sign_character_of_a_permutation_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_sign_character_of_a_permutation_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_sign_character_of_a_permutation_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_sign_character_of_a_permutation_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_sign_character_of_a_permutation_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_sign_character_of_a_permutation_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_sign_character_of_a_permutation_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_sign_character_of_a_permutation_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_sign_character_of_a_permutation_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_sign_character_of_a_permutation_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_sign_character_of_a_permutation_protocol : IGProtocol the_sign_character_of_a_permutation_s0 the_sign_character_of_a_permutation_s9 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_sign_character_of_a_permutation_s7 the_sign_character_of_a_permutation_s7 = the_sign_character_of_a_permutation_s7 (idempotent)
  (.seq (.arrow the_sign_character_of_a_permutation_l0 the_sign_character_of_a_permutation_s0 the_sign_character_of_a_permutation_s1) (.seq (.arrow the_sign_character_of_a_permutation_l1 the_sign_character_of_a_permutation_s1 the_sign_character_of_a_permutation_s2) (.seq (.arrow the_sign_character_of_a_permutation_l2 the_sign_character_of_a_permutation_s2 the_sign_character_of_a_permutation_s3) (.seq (.arrow the_sign_character_of_a_permutation_l3 the_sign_character_of_a_permutation_s3 the_sign_character_of_a_permutation_s4) (.seq (.prod (.arrow the_sign_character_of_a_permutation_l4 the_sign_character_of_a_permutation_s4 the_sign_character_of_a_permutation_s7) (.arrow the_sign_character_of_a_permutation_l4 the_sign_character_of_a_permutation_s4 the_sign_character_of_a_permutation_s7)) (.seq (.arrow the_sign_character_of_a_permutation_l7 the_sign_character_of_a_permutation_s7 the_sign_character_of_a_permutation_s7) (.seq (.arrow the_sign_character_of_a_permutation_l7 the_sign_character_of_a_permutation_s7 the_sign_character_of_a_permutation_s8) (.arrow the_sign_character_of_a_permutation_l8 the_sign_character_of_a_permutation_s8 the_sign_character_of_a_permutation_s9))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_sign_character_of_a_permutation_true_arm : IGProtocol the_sign_character_of_a_permutation_s0 the_sign_character_of_a_permutation_s9 :=
  (the_sign_character_of_a_permutation_protocol).restrictToEVALT

-- false arm
noncomputable def the_sign_character_of_a_permutation_false_arm : IGProtocol the_sign_character_of_a_permutation_s0 the_sign_character_of_a_permutation_s9 :=
  (the_sign_character_of_a_permutation_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_sign_character_of_a_permutation_tier : OuroboricityTier := TierFunctor.obj the_sign_character_of_a_permutation_s0
#eval the_sign_character_of_a_permutation_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_sign_character_of_a_permutation_frobenius :
    igFrobeniusAlg.mul the_sign_character_of_a_permutation_s0 the_sign_character_of_a_permutation_s0 = the_sign_character_of_a_permutation_s0 :=
  igFrobAlg_self_fusion the_sign_character_of_a_permutation_s0
