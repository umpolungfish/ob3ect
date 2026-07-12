-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → FSPLIT → EVALT → CLINK → EVALF → AREV → FFUSE → IFIX → TANCH
-- Class: The operation that takes a mixture of units and separates it into two fractions by ranking each unit on one intrinsic graded axis of how readily it leaves the body of the mixture for the vapor above it, drawing off the most-ready units as a purified head and leaving the least-ready as a residue; a separation driven by a single continuous property rather than by whether the units bond, so a pool is cut into what rises and what stays.
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
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑚  | forward morphism — bidirectional arrow
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [9] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [10] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_operation_that_takes_a_mixture_of_10c702_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_a_mixture_of_10c702_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_a_mixture_of_10c702_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_a_mixture_of_10c702_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_a_mixture_of_10c702_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_a_mixture_of_10c702_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_a_mixture_of_10c702_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_takes_a_mixture_of_10c702_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_takes_a_mixture_of_10c702_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_takes_a_mixture_of_10c702_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_operation_that_takes_a_mixture_of_10c702_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_operation_that_takes_a_mixture_of_10c702_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_a_mixture_of_10c702_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_a_mixture_of_10c702_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_a_mixture_of_10c702_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_a_mixture_of_10c702_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_a_mixture_of_10c702_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_a_mixture_of_10c702_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_takes_a_mixture_of_10c702_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_a_mixture_of_10c702_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_a_mixture_of_10c702_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_takes_a_mixture_of_10c702_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_operation_that_takes_a_mixture_of_10c702_protocol : IGProtocol the_operation_that_takes_a_mixture_of_10c702_s0 the_operation_that_takes_a_mixture_of_10c702_s10 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_operation_that_takes_a_mixture_of_10c702_s8 the_operation_that_takes_a_mixture_of_10c702_s8 = the_operation_that_takes_a_mixture_of_10c702_s8 (idempotent)
  (.seq (.arrow the_operation_that_takes_a_mixture_of_10c702_l0 the_operation_that_takes_a_mixture_of_10c702_s0 the_operation_that_takes_a_mixture_of_10c702_s1) (.seq (.arrow the_operation_that_takes_a_mixture_of_10c702_l1 the_operation_that_takes_a_mixture_of_10c702_s1 the_operation_that_takes_a_mixture_of_10c702_s2) (.seq (.arrow the_operation_that_takes_a_mixture_of_10c702_l2 the_operation_that_takes_a_mixture_of_10c702_s2 the_operation_that_takes_a_mixture_of_10c702_s3) (.seq (.prod (.arrow the_operation_that_takes_a_mixture_of_10c702_l3 the_operation_that_takes_a_mixture_of_10c702_s3 the_operation_that_takes_a_mixture_of_10c702_s8) (.arrow the_operation_that_takes_a_mixture_of_10c702_l3 the_operation_that_takes_a_mixture_of_10c702_s3 the_operation_that_takes_a_mixture_of_10c702_s8)) (.seq (.arrow the_operation_that_takes_a_mixture_of_10c702_l8 the_operation_that_takes_a_mixture_of_10c702_s8 the_operation_that_takes_a_mixture_of_10c702_s8) (.seq (.arrow the_operation_that_takes_a_mixture_of_10c702_l8 the_operation_that_takes_a_mixture_of_10c702_s8 the_operation_that_takes_a_mixture_of_10c702_s9) (.arrow the_operation_that_takes_a_mixture_of_10c702_l9 the_operation_that_takes_a_mixture_of_10c702_s9 the_operation_that_takes_a_mixture_of_10c702_s10)))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_operation_that_takes_a_mixture_of_10c702_true_arm : IGProtocol the_operation_that_takes_a_mixture_of_10c702_s0 the_operation_that_takes_a_mixture_of_10c702_s10 :=
  (the_operation_that_takes_a_mixture_of_10c702_protocol).restrictToEVALT

-- false arm
noncomputable def the_operation_that_takes_a_mixture_of_10c702_false_arm : IGProtocol the_operation_that_takes_a_mixture_of_10c702_s0 the_operation_that_takes_a_mixture_of_10c702_s10 :=
  (the_operation_that_takes_a_mixture_of_10c702_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_operation_that_takes_a_mixture_of_10c702_tier : OuroboricityTier := TierFunctor.obj the_operation_that_takes_a_mixture_of_10c702_s0
#eval the_operation_that_takes_a_mixture_of_10c702_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_operation_that_takes_a_mixture_of_10c702_frobenius :
    igFrobeniusAlg.mul the_operation_that_takes_a_mixture_of_10c702_s0 the_operation_that_takes_a_mixture_of_10c702_s0 = the_operation_that_takes_a_mixture_of_10c702_s0 :=
  igFrobAlg_self_fusion the_operation_that_takes_a_mixture_of_10c702_s0
