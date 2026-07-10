-- IGProtocol scaffold: VINIT → IMSCRIB → ENGAGR → FSPLIT → EVALT → AFWD → FFUSE → IFIX → FSPLIT → EVALF → AREV → FFUSE → IFIX → CLINK → TANCH
-- Class: the antipode of a Hopf algebra
-- Fingerprint: sig=(6,4,3,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=15
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 6), (8, 11)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑳  | identity — self-imscription
--   [2] ENGAGR    stoi   := 𐑳               𐑠 → 𐑚  | engage paradox — B-state, both arms
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [7] IFIX      prot   := 𐑭               𐑙 → 𐑚  | irreversible fixation — winding number
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [12] IFIX      prot   := 𐑭               𐑙 → 𐑱  | irreversible fixation — winding number
--   [13] CLINK     fid    := 𐑱               𐑭 → 𐑡  | composition — regime coherence
--   [14] TANCH     top    := 𐑡               𐑱 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_antipode_of_a_hopf_algebra_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_antipode_of_a_hopf_algebra_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_antipode_of_a_hopf_algebra_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_antipode_of_a_hopf_algebra_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_antipode_of_a_hopf_algebra_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def the_antipode_of_a_hopf_algebra_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def the_antipode_of_a_hopf_algebra_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_antipode_of_a_hopf_algebra_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_antipode_of_a_hopf_algebra_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_antipode_of_a_hopf_algebra_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_antipode_of_a_hopf_algebra_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_antipode_of_a_hopf_algebra_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_antipode_of_a_hopf_algebra_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_antipode_of_a_hopf_algebra_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_antipode_of_a_hopf_algebra_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_antipode_of_a_hopf_algebra_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_antipode_of_a_hopf_algebra_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_antipode_of_a_hopf_algebra_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_antipode_of_a_hopf_algebra_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_antipode_of_a_hopf_algebra_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_antipode_of_a_hopf_algebra_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_antipode_of_a_hopf_algebra_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_antipode_of_a_hopf_algebra_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_antipode_of_a_hopf_algebra_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_antipode_of_a_hopf_algebra_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_antipode_of_a_hopf_algebra_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_antipode_of_a_hopf_algebra_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_antipode_of_a_hopf_algebra_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_antipode_of_a_hopf_algebra_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_antipode_of_a_hopf_algebra_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_antipode_of_a_hopf_algebra_protocol : IGProtocol the_antipode_of_a_hopf_algebra_s0 the_antipode_of_a_hopf_algebra_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_antipode_of_a_hopf_algebra_s6 the_antipode_of_a_hopf_algebra_s6 = the_antipode_of_a_hopf_algebra_s6 (idempotent)
  (.seq (.arrow the_antipode_of_a_hopf_algebra_l0 the_antipode_of_a_hopf_algebra_s0 the_antipode_of_a_hopf_algebra_s1) (.seq (.arrow the_antipode_of_a_hopf_algebra_l1 the_antipode_of_a_hopf_algebra_s1 the_antipode_of_a_hopf_algebra_s2) (.seq (.arrow the_antipode_of_a_hopf_algebra_l2 the_antipode_of_a_hopf_algebra_s2 the_antipode_of_a_hopf_algebra_s3) (.seq (.prod (.arrow the_antipode_of_a_hopf_algebra_l3 the_antipode_of_a_hopf_algebra_s3 the_antipode_of_a_hopf_algebra_s6) (.arrow the_antipode_of_a_hopf_algebra_l3 the_antipode_of_a_hopf_algebra_s3 the_antipode_of_a_hopf_algebra_s6)) (.seq (.arrow the_antipode_of_a_hopf_algebra_l6 the_antipode_of_a_hopf_algebra_s6 the_antipode_of_a_hopf_algebra_s6) (.seq (.arrow the_antipode_of_a_hopf_algebra_l6 the_antipode_of_a_hopf_algebra_s6 the_antipode_of_a_hopf_algebra_s7) (.seq (.arrow the_antipode_of_a_hopf_algebra_l7 the_antipode_of_a_hopf_algebra_s7 the_antipode_of_a_hopf_algebra_s8) (.seq (.arrow the_antipode_of_a_hopf_algebra_l8 the_antipode_of_a_hopf_algebra_s8 the_antipode_of_a_hopf_algebra_s9) (.seq (.arrow the_antipode_of_a_hopf_algebra_l9 the_antipode_of_a_hopf_algebra_s9 the_antipode_of_a_hopf_algebra_s10) (.seq (.arrow the_antipode_of_a_hopf_algebra_l10 the_antipode_of_a_hopf_algebra_s10 the_antipode_of_a_hopf_algebra_s11) (.seq (.arrow the_antipode_of_a_hopf_algebra_l11 the_antipode_of_a_hopf_algebra_s11 the_antipode_of_a_hopf_algebra_s12) (.seq (.arrow the_antipode_of_a_hopf_algebra_l12 the_antipode_of_a_hopf_algebra_s12 the_antipode_of_a_hopf_algebra_s13) (.arrow the_antipode_of_a_hopf_algebra_l13 the_antipode_of_a_hopf_algebra_s13 the_antipode_of_a_hopf_algebra_s14)))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_antipode_of_a_hopf_algebra_true_arm : IGProtocol the_antipode_of_a_hopf_algebra_s0 the_antipode_of_a_hopf_algebra_s14 :=
  (the_antipode_of_a_hopf_algebra_protocol).restrictToEVALT

-- false arm
noncomputable def the_antipode_of_a_hopf_algebra_false_arm : IGProtocol the_antipode_of_a_hopf_algebra_s0 the_antipode_of_a_hopf_algebra_s14 :=
  (the_antipode_of_a_hopf_algebra_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_antipode_of_a_hopf_algebra_tier : OuroboricityTier := TierFunctor.obj the_antipode_of_a_hopf_algebra_s0
#eval the_antipode_of_a_hopf_algebra_tier  -- the Grammar's own verdict on its tier
