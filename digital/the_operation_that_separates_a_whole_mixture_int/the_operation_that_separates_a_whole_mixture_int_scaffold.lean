-- IGProtocol scaffold: VINIT → AFWD → IMSCRIB → FSPLIT → CLINK → AREV → EVALT → IFIX → FFUSE → CLINK → FSPLIT → ENGAGR → EVALF → AREV → EVALT → IFIX → FFUSE → TANCH
-- Class: The operation that separates a whole mixture into the ordered sequence of its individual units by their graded affinity to a chosen retaining partner, releasing the least-retained first and the most-retained last, and reporting the resolution between each neighboring pair; a preparative separation of a set into a ranked release order against a selectable retaining partner, distinct from the diagnostic that only counts bands.
-- Fingerprint: sig=(8,4,4,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=18
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 8), (10, 16)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑠  | forward morphism — bidirectional arrow
--   [2] IMSCRIB   gram   := 𐑠               𐑾 → 𐑚  | identity — self-imscription
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [9] CLINK     fid    := 𐑱               𐑙 → 𐑚  | composition — regime coherence
--   [10] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [12] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [13] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [14] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [15] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [16] FFUSE     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [17] TANCH     top    := 𐑡               𐑙 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_operation_that_separates_a_whole_3268b1_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_separates_a_whole_3268b1_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_separates_a_whole_3268b1_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_separates_a_whole_3268b1_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_separates_a_whole_3268b1_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def the_operation_that_separates_a_whole_3268b1_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_operation_that_separates_a_whole_3268b1_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_operation_that_separates_a_whole_3268b1_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_operation_that_separates_a_whole_3268b1_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_operation_that_separates_a_whole_3268b1_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_operation_that_separates_a_whole_3268b1_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_operation_that_separates_a_whole_3268b1_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_separates_a_whole_3268b1_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_separates_a_whole_3268b1_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_separates_a_whole_3268b1_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_operation_that_separates_a_whole_3268b1_protocol : IGProtocol the_operation_that_separates_a_whole_3268b1_s0 the_operation_that_separates_a_whole_3268b1_s17 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_operation_that_separates_a_whole_3268b1_s8 the_operation_that_separates_a_whole_3268b1_s8 = the_operation_that_separates_a_whole_3268b1_s8 (idempotent)
  (.seq (.arrow the_operation_that_separates_a_whole_3268b1_l0 the_operation_that_separates_a_whole_3268b1_s0 the_operation_that_separates_a_whole_3268b1_s1) (.seq (.arrow the_operation_that_separates_a_whole_3268b1_l1 the_operation_that_separates_a_whole_3268b1_s1 the_operation_that_separates_a_whole_3268b1_s2) (.seq (.arrow the_operation_that_separates_a_whole_3268b1_l2 the_operation_that_separates_a_whole_3268b1_s2 the_operation_that_separates_a_whole_3268b1_s3) (.seq (.prod (.arrow the_operation_that_separates_a_whole_3268b1_l3 the_operation_that_separates_a_whole_3268b1_s3 the_operation_that_separates_a_whole_3268b1_s8) (.arrow the_operation_that_separates_a_whole_3268b1_l3 the_operation_that_separates_a_whole_3268b1_s3 the_operation_that_separates_a_whole_3268b1_s8)) (.seq (.arrow the_operation_that_separates_a_whole_3268b1_l8 the_operation_that_separates_a_whole_3268b1_s8 the_operation_that_separates_a_whole_3268b1_s8) (.seq (.arrow the_operation_that_separates_a_whole_3268b1_l8 the_operation_that_separates_a_whole_3268b1_s8 the_operation_that_separates_a_whole_3268b1_s9) (.seq (.arrow the_operation_that_separates_a_whole_3268b1_l9 the_operation_that_separates_a_whole_3268b1_s9 the_operation_that_separates_a_whole_3268b1_s10) (.seq (.arrow the_operation_that_separates_a_whole_3268b1_l10 the_operation_that_separates_a_whole_3268b1_s10 the_operation_that_separates_a_whole_3268b1_s11) (.seq (.arrow the_operation_that_separates_a_whole_3268b1_l11 the_operation_that_separates_a_whole_3268b1_s11 the_operation_that_separates_a_whole_3268b1_s12) (.seq (.arrow the_operation_that_separates_a_whole_3268b1_l12 the_operation_that_separates_a_whole_3268b1_s12 the_operation_that_separates_a_whole_3268b1_s13) (.seq (.arrow the_operation_that_separates_a_whole_3268b1_l13 the_operation_that_separates_a_whole_3268b1_s13 the_operation_that_separates_a_whole_3268b1_s14) (.seq (.arrow the_operation_that_separates_a_whole_3268b1_l14 the_operation_that_separates_a_whole_3268b1_s14 the_operation_that_separates_a_whole_3268b1_s15) (.seq (.arrow the_operation_that_separates_a_whole_3268b1_l15 the_operation_that_separates_a_whole_3268b1_s15 the_operation_that_separates_a_whole_3268b1_s16) (.arrow the_operation_that_separates_a_whole_3268b1_l16 the_operation_that_separates_a_whole_3268b1_s16 the_operation_that_separates_a_whole_3268b1_s17))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_operation_that_separates_a_whole_3268b1_true_arm : IGProtocol the_operation_that_separates_a_whole_3268b1_s0 the_operation_that_separates_a_whole_3268b1_s17 :=
  (the_operation_that_separates_a_whole_3268b1_protocol).restrictToEVALT

-- false arm
noncomputable def the_operation_that_separates_a_whole_3268b1_false_arm : IGProtocol the_operation_that_separates_a_whole_3268b1_s0 the_operation_that_separates_a_whole_3268b1_s17 :=
  (the_operation_that_separates_a_whole_3268b1_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_operation_that_separates_a_whole_3268b1_tier : OuroboricityTier := TierFunctor.obj the_operation_that_separates_a_whole_3268b1_s0
#eval the_operation_that_separates_a_whole_3268b1_tier  -- the Grammar's own verdict on its tier
