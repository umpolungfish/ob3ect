-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → EVALT → AFWD → FFUSE → AREV → FSPLIT → EVALF → AREV → FFUSE → CLINK → IMSCRIB → IFIX → TANCH
-- Class: The operation that iteratively strips from an assembly the units that are only weakly held, those associating below the threshold of a true bond, the dissolved and the loosely-trapped, cycling until only the strongly-held core remains, and reporting what left versus the purified remainder; a purification by removal of the weakly-bound, distinct from cutting a genuine bond.
-- Fingerprint: sig=(8,4,2,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=15
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 5), (7, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑚  | identity — self-imscription
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [6] AREV      pol    := 𐑗               𐑙 → 𐑚  | reverse morphism — parity flip
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [11] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [12] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [13] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [14] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_operation_that_iteratively_strips_5f73cd_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_operation_that_iteratively_strips_5f73cd_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_operation_that_iteratively_strips_5f73cd_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_iteratively_strips_5f73cd_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_iteratively_strips_5f73cd_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_operation_that_iteratively_strips_5f73cd_protocol : IGProtocol the_operation_that_iteratively_strips_5f73cd_s0 the_operation_that_iteratively_strips_5f73cd_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_operation_that_iteratively_strips_5f73cd_s5 the_operation_that_iteratively_strips_5f73cd_s5 = the_operation_that_iteratively_strips_5f73cd_s5 (idempotent)
  (.seq (.arrow the_operation_that_iteratively_strips_5f73cd_l0 the_operation_that_iteratively_strips_5f73cd_s0 the_operation_that_iteratively_strips_5f73cd_s1) (.seq (.arrow the_operation_that_iteratively_strips_5f73cd_l1 the_operation_that_iteratively_strips_5f73cd_s1 the_operation_that_iteratively_strips_5f73cd_s2) (.seq (.prod (.arrow the_operation_that_iteratively_strips_5f73cd_l2 the_operation_that_iteratively_strips_5f73cd_s2 the_operation_that_iteratively_strips_5f73cd_s5) (.arrow the_operation_that_iteratively_strips_5f73cd_l2 the_operation_that_iteratively_strips_5f73cd_s2 the_operation_that_iteratively_strips_5f73cd_s5)) (.seq (.arrow the_operation_that_iteratively_strips_5f73cd_l5 the_operation_that_iteratively_strips_5f73cd_s5 the_operation_that_iteratively_strips_5f73cd_s5) (.seq (.arrow the_operation_that_iteratively_strips_5f73cd_l5 the_operation_that_iteratively_strips_5f73cd_s5 the_operation_that_iteratively_strips_5f73cd_s6) (.seq (.arrow the_operation_that_iteratively_strips_5f73cd_l6 the_operation_that_iteratively_strips_5f73cd_s6 the_operation_that_iteratively_strips_5f73cd_s7) (.seq (.arrow the_operation_that_iteratively_strips_5f73cd_l7 the_operation_that_iteratively_strips_5f73cd_s7 the_operation_that_iteratively_strips_5f73cd_s8) (.seq (.arrow the_operation_that_iteratively_strips_5f73cd_l8 the_operation_that_iteratively_strips_5f73cd_s8 the_operation_that_iteratively_strips_5f73cd_s9) (.seq (.arrow the_operation_that_iteratively_strips_5f73cd_l9 the_operation_that_iteratively_strips_5f73cd_s9 the_operation_that_iteratively_strips_5f73cd_s10) (.seq (.arrow the_operation_that_iteratively_strips_5f73cd_l10 the_operation_that_iteratively_strips_5f73cd_s10 the_operation_that_iteratively_strips_5f73cd_s11) (.seq (.arrow the_operation_that_iteratively_strips_5f73cd_l11 the_operation_that_iteratively_strips_5f73cd_s11 the_operation_that_iteratively_strips_5f73cd_s12) (.seq (.arrow the_operation_that_iteratively_strips_5f73cd_l12 the_operation_that_iteratively_strips_5f73cd_s12 the_operation_that_iteratively_strips_5f73cd_s13) (.arrow the_operation_that_iteratively_strips_5f73cd_l13 the_operation_that_iteratively_strips_5f73cd_s13 the_operation_that_iteratively_strips_5f73cd_s14)))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_operation_that_iteratively_strips_5f73cd_true_arm : IGProtocol the_operation_that_iteratively_strips_5f73cd_s0 the_operation_that_iteratively_strips_5f73cd_s14 :=
  (the_operation_that_iteratively_strips_5f73cd_protocol).restrictToEVALT

-- false arm
noncomputable def the_operation_that_iteratively_strips_5f73cd_false_arm : IGProtocol the_operation_that_iteratively_strips_5f73cd_s0 the_operation_that_iteratively_strips_5f73cd_s14 :=
  (the_operation_that_iteratively_strips_5f73cd_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_operation_that_iteratively_strips_5f73cd_tier : OuroboricityTier := TierFunctor.obj the_operation_that_iteratively_strips_5f73cd_s0
#eval the_operation_that_iteratively_strips_5f73cd_tier  -- the Grammar's own verdict on its tier
