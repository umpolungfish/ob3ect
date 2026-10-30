-- IGProtocol scaffold: VINIT → AFWD → CLINK → IMSCRIB → FSPLIT → EVALT → FFUSE → IFIX → IMSCRIB → TANCH
-- Class: The operation that fixes a characterized material as a named, recallable object in a persistent library — its ring order, its adjacency spectrum, its conductance class held under a name — so a material computed once can be summoned again and operated on by that name without being respecified from its bare units.
-- Fingerprint: sig=(6,2,1,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=10
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(4, 6)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑱  | forward morphism — bidirectional arrow
--   [2] CLINK     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [3] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [7] IFIX      prot   := 𐑭               𐑙 → 𐑠  | irreversible fixation — winding number
--   [8] IMSCRIB   gram   := 𐑠               𐑭 → 𐑡  | identity — self-imscription
--   [9] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_operation_that_fixes_a_198f30_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_fixes_a_198f30_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_fixes_a_198f30_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_fixes_a_198f30_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_fixes_a_198f30_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_fixes_a_198f30_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_fixes_a_198f30_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_fixes_a_198f30_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_fixes_a_198f30_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_fixes_a_198f30_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_operation_that_fixes_a_198f30_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_fixes_a_198f30_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_fixes_a_198f30_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_fixes_a_198f30_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_fixes_a_198f30_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_fixes_a_198f30_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_fixes_a_198f30_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_fixes_a_198f30_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_fixes_a_198f30_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_fixes_a_198f30_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_operation_that_fixes_a_198f30_protocol : IGProtocol the_operation_that_fixes_a_198f30_s0 the_operation_that_fixes_a_198f30_s9 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_operation_that_fixes_a_198f30_s6 the_operation_that_fixes_a_198f30_s6 = the_operation_that_fixes_a_198f30_s6 (idempotent)
  (.seq (.arrow the_operation_that_fixes_a_198f30_l0 the_operation_that_fixes_a_198f30_s0 the_operation_that_fixes_a_198f30_s1) (.seq (.arrow the_operation_that_fixes_a_198f30_l1 the_operation_that_fixes_a_198f30_s1 the_operation_that_fixes_a_198f30_s2) (.seq (.arrow the_operation_that_fixes_a_198f30_l2 the_operation_that_fixes_a_198f30_s2 the_operation_that_fixes_a_198f30_s3) (.seq (.arrow the_operation_that_fixes_a_198f30_l3 the_operation_that_fixes_a_198f30_s3 the_operation_that_fixes_a_198f30_s4) (.seq (.prod (.arrow the_operation_that_fixes_a_198f30_l4 the_operation_that_fixes_a_198f30_s4 the_operation_that_fixes_a_198f30_s6) (.arrow the_operation_that_fixes_a_198f30_l4 the_operation_that_fixes_a_198f30_s4 the_operation_that_fixes_a_198f30_s6)) (.seq (.arrow the_operation_that_fixes_a_198f30_l6 the_operation_that_fixes_a_198f30_s6 the_operation_that_fixes_a_198f30_s6) (.seq (.arrow the_operation_that_fixes_a_198f30_l6 the_operation_that_fixes_a_198f30_s6 the_operation_that_fixes_a_198f30_s7) (.seq (.arrow the_operation_that_fixes_a_198f30_l7 the_operation_that_fixes_a_198f30_s7 the_operation_that_fixes_a_198f30_s8) (.arrow the_operation_that_fixes_a_198f30_l8 the_operation_that_fixes_a_198f30_s8 the_operation_that_fixes_a_198f30_s9)))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_operation_that_fixes_a_198f30_true_arm : IGProtocol the_operation_that_fixes_a_198f30_s0 the_operation_that_fixes_a_198f30_s9 :=
  (the_operation_that_fixes_a_198f30_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_operation_that_fixes_a_198f30_tier : OuroboricityTier := TierFunctor.obj the_operation_that_fixes_a_198f30_s0
#eval the_operation_that_fixes_a_198f30_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_operation_that_fixes_a_198f30_frobenius :
    igFrobeniusAlg.mul the_operation_that_fixes_a_198f30_s0 the_operation_that_fixes_a_198f30_s0 = the_operation_that_fixes_a_198f30_s0 :=
  igFrobAlg_self_fusion the_operation_that_fixes_a_198f30_s0
