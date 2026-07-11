-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → CLINK → FSPLIT → EVALT → EVALF → AREV → FFUSE → ENGAGR → CLINK → EVALT → IFIX → IMSCRIB → TANCH
-- Class: The operation that takes the units of a ring and returns the cyclic ordering that minimizes accumulated bond strain around the loop — the lowest-stress arrangement the same units can close into, the relaxed ground state selected from among every ordering that rings, so a material is characterized in its settled form rather than the first order that happened to close.
-- Fingerprint: sig=(8,2,4,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(4, 8)]

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
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [9] ENGAGR    stoi   := 𐑳               𐑙 → 𐑱  | engage paradox — B-state, both arms
--   [10] CLINK     fid    := 𐑱               𐑳 → ⊙  | composition — regime coherence
--   [11] EVALT     crit   := ⊙               𐑱 → 𐑭  | evaluate-true — criticality gate open
--   [12] IFIX      prot   := 𐑭               ⊙ → 𐑠  | irreversible fixation — winding number
--   [13] IMSCRIB   gram   := 𐑠               𐑭 → 𐑡  | identity — self-imscription
--   [14] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_operation_that_takes_the_units_of_a_7353d5_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_operation_that_takes_the_units_of_a_7353d5_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_operation_that_takes_the_units_of_a_7353d5_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_operation_that_takes_the_units_of_a_7353d5_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_takes_the_units_of_a_7353d5_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_the_units_of_a_7353d5_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_operation_that_takes_the_units_of_a_7353d5_protocol : IGProtocol the_operation_that_takes_the_units_of_a_7353d5_s0 the_operation_that_takes_the_units_of_a_7353d5_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_operation_that_takes_the_units_of_a_7353d5_s8 the_operation_that_takes_the_units_of_a_7353d5_s8 = the_operation_that_takes_the_units_of_a_7353d5_s8 (idempotent)
  (.seq (.arrow the_operation_that_takes_the_units_of_a_7353d5_l0 the_operation_that_takes_the_units_of_a_7353d5_s0 the_operation_that_takes_the_units_of_a_7353d5_s1) (.seq (.arrow the_operation_that_takes_the_units_of_a_7353d5_l1 the_operation_that_takes_the_units_of_a_7353d5_s1 the_operation_that_takes_the_units_of_a_7353d5_s2) (.seq (.arrow the_operation_that_takes_the_units_of_a_7353d5_l2 the_operation_that_takes_the_units_of_a_7353d5_s2 the_operation_that_takes_the_units_of_a_7353d5_s3) (.seq (.arrow the_operation_that_takes_the_units_of_a_7353d5_l3 the_operation_that_takes_the_units_of_a_7353d5_s3 the_operation_that_takes_the_units_of_a_7353d5_s4) (.seq (.prod (.arrow the_operation_that_takes_the_units_of_a_7353d5_l4 the_operation_that_takes_the_units_of_a_7353d5_s4 the_operation_that_takes_the_units_of_a_7353d5_s8) (.arrow the_operation_that_takes_the_units_of_a_7353d5_l4 the_operation_that_takes_the_units_of_a_7353d5_s4 the_operation_that_takes_the_units_of_a_7353d5_s8)) (.seq (.arrow the_operation_that_takes_the_units_of_a_7353d5_l8 the_operation_that_takes_the_units_of_a_7353d5_s8 the_operation_that_takes_the_units_of_a_7353d5_s8) (.seq (.arrow the_operation_that_takes_the_units_of_a_7353d5_l8 the_operation_that_takes_the_units_of_a_7353d5_s8 the_operation_that_takes_the_units_of_a_7353d5_s9) (.seq (.arrow the_operation_that_takes_the_units_of_a_7353d5_l9 the_operation_that_takes_the_units_of_a_7353d5_s9 the_operation_that_takes_the_units_of_a_7353d5_s10) (.seq (.arrow the_operation_that_takes_the_units_of_a_7353d5_l10 the_operation_that_takes_the_units_of_a_7353d5_s10 the_operation_that_takes_the_units_of_a_7353d5_s11) (.seq (.arrow the_operation_that_takes_the_units_of_a_7353d5_l11 the_operation_that_takes_the_units_of_a_7353d5_s11 the_operation_that_takes_the_units_of_a_7353d5_s12) (.seq (.arrow the_operation_that_takes_the_units_of_a_7353d5_l12 the_operation_that_takes_the_units_of_a_7353d5_s12 the_operation_that_takes_the_units_of_a_7353d5_s13) (.arrow the_operation_that_takes_the_units_of_a_7353d5_l13 the_operation_that_takes_the_units_of_a_7353d5_s13 the_operation_that_takes_the_units_of_a_7353d5_s14))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_operation_that_takes_the_units_of_a_7353d5_true_arm : IGProtocol the_operation_that_takes_the_units_of_a_7353d5_s0 the_operation_that_takes_the_units_of_a_7353d5_s14 :=
  (the_operation_that_takes_the_units_of_a_7353d5_protocol).restrictToEVALT

-- false arm
noncomputable def the_operation_that_takes_the_units_of_a_7353d5_false_arm : IGProtocol the_operation_that_takes_the_units_of_a_7353d5_s0 the_operation_that_takes_the_units_of_a_7353d5_s14 :=
  (the_operation_that_takes_the_units_of_a_7353d5_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_operation_that_takes_the_units_of_a_7353d5_tier : OuroboricityTier := TierFunctor.obj the_operation_that_takes_the_units_of_a_7353d5_s0
#eval the_operation_that_takes_the_units_of_a_7353d5_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_operation_that_takes_the_units_of_a_7353d5_frobenius :
    igFrobeniusAlg.mul the_operation_that_takes_the_units_of_a_7353d5_s0 the_operation_that_takes_the_units_of_a_7353d5_s0 = the_operation_that_takes_the_units_of_a_7353d5_s0 :=
  igFrobAlg_self_fusion the_operation_that_takes_the_units_of_a_7353d5_s0
