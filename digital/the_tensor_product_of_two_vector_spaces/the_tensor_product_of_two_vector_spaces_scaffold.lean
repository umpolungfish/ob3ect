-- IGProtocol scaffold: VINIT → AFWD → AFWD → FSPLIT → EVALT → IMSCRIB → CLINK → EVALF → FFUSE → IFIX → TANCH
-- Class: the tensor product of two vector spaces
-- Fingerprint: sig=(6,2,2,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=11
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑾  | forward morphism — bidirectional arrow
--   [2] AFWD      rel    := 𐑾               𐑾 → 𐑚  | forward morphism — bidirectional arrow
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [9] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [10] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_tensor_product_of_two_vector_spaces_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tensor_product_of_two_vector_spaces_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tensor_product_of_two_vector_spaces_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tensor_product_of_two_vector_spaces_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tensor_product_of_two_vector_spaces_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_tensor_product_of_two_vector_spaces_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_tensor_product_of_two_vector_spaces_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_tensor_product_of_two_vector_spaces_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_tensor_product_of_two_vector_spaces_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_tensor_product_of_two_vector_spaces_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_tensor_product_of_two_vector_spaces_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_tensor_product_of_two_vector_spaces_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tensor_product_of_two_vector_spaces_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tensor_product_of_two_vector_spaces_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tensor_product_of_two_vector_spaces_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tensor_product_of_two_vector_spaces_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_tensor_product_of_two_vector_spaces_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tensor_product_of_two_vector_spaces_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tensor_product_of_two_vector_spaces_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_tensor_product_of_two_vector_spaces_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tensor_product_of_two_vector_spaces_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_tensor_product_of_two_vector_spaces_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_tensor_product_of_two_vector_spaces_protocol : IGProtocol the_tensor_product_of_two_vector_spaces_s0 the_tensor_product_of_two_vector_spaces_s10 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_tensor_product_of_two_vector_spaces_s8 the_tensor_product_of_two_vector_spaces_s8 = the_tensor_product_of_two_vector_spaces_s8 (idempotent)
  (.seq (.arrow the_tensor_product_of_two_vector_spaces_l0 the_tensor_product_of_two_vector_spaces_s0 the_tensor_product_of_two_vector_spaces_s1) (.seq (.arrow the_tensor_product_of_two_vector_spaces_l1 the_tensor_product_of_two_vector_spaces_s1 the_tensor_product_of_two_vector_spaces_s2) (.seq (.arrow the_tensor_product_of_two_vector_spaces_l2 the_tensor_product_of_two_vector_spaces_s2 the_tensor_product_of_two_vector_spaces_s3) (.seq (.prod (.arrow the_tensor_product_of_two_vector_spaces_l3 the_tensor_product_of_two_vector_spaces_s3 the_tensor_product_of_two_vector_spaces_s8) (.arrow the_tensor_product_of_two_vector_spaces_l3 the_tensor_product_of_two_vector_spaces_s3 the_tensor_product_of_two_vector_spaces_s8)) (.seq (.arrow the_tensor_product_of_two_vector_spaces_l8 the_tensor_product_of_two_vector_spaces_s8 the_tensor_product_of_two_vector_spaces_s8) (.seq (.arrow the_tensor_product_of_two_vector_spaces_l8 the_tensor_product_of_two_vector_spaces_s8 the_tensor_product_of_two_vector_spaces_s9) (.arrow the_tensor_product_of_two_vector_spaces_l9 the_tensor_product_of_two_vector_spaces_s9 the_tensor_product_of_two_vector_spaces_s10)))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_tensor_product_of_two_vector_spaces_true_arm : IGProtocol the_tensor_product_of_two_vector_spaces_s0 the_tensor_product_of_two_vector_spaces_s10 :=
  (the_tensor_product_of_two_vector_spaces_protocol).restrictToEVALT

-- false arm
noncomputable def the_tensor_product_of_two_vector_spaces_false_arm : IGProtocol the_tensor_product_of_two_vector_spaces_s0 the_tensor_product_of_two_vector_spaces_s10 :=
  (the_tensor_product_of_two_vector_spaces_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_tensor_product_of_two_vector_spaces_tier : OuroboricityTier := TierFunctor.obj the_tensor_product_of_two_vector_spaces_s0
#eval the_tensor_product_of_two_vector_spaces_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_tensor_product_of_two_vector_spaces_frobenius :
    igFrobeniusAlg.mul the_tensor_product_of_two_vector_spaces_s0 the_tensor_product_of_two_vector_spaces_s0 = the_tensor_product_of_two_vector_spaces_s0 :=
  igFrobAlg_self_fusion the_tensor_product_of_two_vector_spaces_s0
