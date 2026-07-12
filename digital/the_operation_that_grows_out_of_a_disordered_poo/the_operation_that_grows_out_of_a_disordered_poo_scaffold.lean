-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → FSPLIT → EVALT → CLINK → IFIX → FFUSE → FSPLIT → EVALF → AREV → FFUSE → TANCH
-- Class: The operation that grows, out of a disordered pool of units in solution, the single most-ordered closed lattice those units can settle into, admitting only the units that fit the lattice and rejecting the remainder as a leftover mother-pool; a purification that forms order from a mixture and discards what will not join it, distinct from merely relaxing an already-closed loop toward its lowest internal stress.
-- Fingerprint: sig=(6,4,2,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=13
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 7), (8, 11)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑚  | forward morphism — bidirectional arrow
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [12] TANCH     top    := 𐑡               𐑙 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_operation_that_grows_out_of_a_9e743c_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_grows_out_of_a_9e743c_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_grows_out_of_a_9e743c_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_grows_out_of_a_9e743c_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_grows_out_of_a_9e743c_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_grows_out_of_a_9e743c_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_grows_out_of_a_9e743c_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_grows_out_of_a_9e743c_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_grows_out_of_a_9e743c_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_grows_out_of_a_9e743c_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_operation_that_grows_out_of_a_9e743c_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_operation_that_grows_out_of_a_9e743c_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_operation_that_grows_out_of_a_9e743c_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_operation_that_grows_out_of_a_9e743c_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_grows_out_of_a_9e743c_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_grows_out_of_a_9e743c_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_grows_out_of_a_9e743c_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_grows_out_of_a_9e743c_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_grows_out_of_a_9e743c_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_grows_out_of_a_9e743c_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_grows_out_of_a_9e743c_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_grows_out_of_a_9e743c_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_grows_out_of_a_9e743c_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_grows_out_of_a_9e743c_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_grows_out_of_a_9e743c_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_grows_out_of_a_9e743c_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_operation_that_grows_out_of_a_9e743c_protocol : IGProtocol the_operation_that_grows_out_of_a_9e743c_s0 the_operation_that_grows_out_of_a_9e743c_s12 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_operation_that_grows_out_of_a_9e743c_s7 the_operation_that_grows_out_of_a_9e743c_s7 = the_operation_that_grows_out_of_a_9e743c_s7 (idempotent)
  (.seq (.arrow the_operation_that_grows_out_of_a_9e743c_l0 the_operation_that_grows_out_of_a_9e743c_s0 the_operation_that_grows_out_of_a_9e743c_s1) (.seq (.arrow the_operation_that_grows_out_of_a_9e743c_l1 the_operation_that_grows_out_of_a_9e743c_s1 the_operation_that_grows_out_of_a_9e743c_s2) (.seq (.arrow the_operation_that_grows_out_of_a_9e743c_l2 the_operation_that_grows_out_of_a_9e743c_s2 the_operation_that_grows_out_of_a_9e743c_s3) (.seq (.prod (.arrow the_operation_that_grows_out_of_a_9e743c_l3 the_operation_that_grows_out_of_a_9e743c_s3 the_operation_that_grows_out_of_a_9e743c_s7) (.arrow the_operation_that_grows_out_of_a_9e743c_l3 the_operation_that_grows_out_of_a_9e743c_s3 the_operation_that_grows_out_of_a_9e743c_s7)) (.seq (.arrow the_operation_that_grows_out_of_a_9e743c_l7 the_operation_that_grows_out_of_a_9e743c_s7 the_operation_that_grows_out_of_a_9e743c_s7) (.seq (.arrow the_operation_that_grows_out_of_a_9e743c_l7 the_operation_that_grows_out_of_a_9e743c_s7 the_operation_that_grows_out_of_a_9e743c_s8) (.seq (.arrow the_operation_that_grows_out_of_a_9e743c_l8 the_operation_that_grows_out_of_a_9e743c_s8 the_operation_that_grows_out_of_a_9e743c_s9) (.seq (.arrow the_operation_that_grows_out_of_a_9e743c_l9 the_operation_that_grows_out_of_a_9e743c_s9 the_operation_that_grows_out_of_a_9e743c_s10) (.seq (.arrow the_operation_that_grows_out_of_a_9e743c_l10 the_operation_that_grows_out_of_a_9e743c_s10 the_operation_that_grows_out_of_a_9e743c_s11) (.arrow the_operation_that_grows_out_of_a_9e743c_l11 the_operation_that_grows_out_of_a_9e743c_s11 the_operation_that_grows_out_of_a_9e743c_s12))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_operation_that_grows_out_of_a_9e743c_true_arm : IGProtocol the_operation_that_grows_out_of_a_9e743c_s0 the_operation_that_grows_out_of_a_9e743c_s12 :=
  (the_operation_that_grows_out_of_a_9e743c_protocol).restrictToEVALT

-- false arm
noncomputable def the_operation_that_grows_out_of_a_9e743c_false_arm : IGProtocol the_operation_that_grows_out_of_a_9e743c_s0 the_operation_that_grows_out_of_a_9e743c_s12 :=
  (the_operation_that_grows_out_of_a_9e743c_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_operation_that_grows_out_of_a_9e743c_tier : OuroboricityTier := TierFunctor.obj the_operation_that_grows_out_of_a_9e743c_s0
#eval the_operation_that_grows_out_of_a_9e743c_tier  -- the Grammar's own verdict on its tier
