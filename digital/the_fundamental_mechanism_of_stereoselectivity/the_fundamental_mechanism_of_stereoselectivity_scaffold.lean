-- IGProtocol scaffold: VINIT → CLINK → IMSCRIB → FSPLIT → EVALT → AFWD → IFIX → EVALF → AREV → IFIX → FFUSE → CLINK → IMSCRIB → TANCH
-- Class: the fundamental mechanism of stereoselectivity
-- Fingerprint: sig=(8,2,2,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=14
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑱  | initial object — ground of distinction
--   [1] CLINK     fid    := 𐑱               𐑼 → 𐑠  | composition — regime coherence
--   [2] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [9] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [11] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [12] IMSCRIB   gram   := 𐑠               𐑱 → 𐑡  | identity — self-imscription
--   [13] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_fundamental_mechanism_of_611d2e_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_611d2e_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_611d2e_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_611d2e_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_611d2e_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_611d2e_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_611d2e_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_fundamental_mechanism_of_611d2e_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_fundamental_mechanism_of_611d2e_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_fundamental_mechanism_of_611d2e_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_fundamental_mechanism_of_611d2e_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_fundamental_mechanism_of_611d2e_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_fundamental_mechanism_of_611d2e_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_fundamental_mechanism_of_611d2e_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_fundamental_mechanism_of_611d2e_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_611d2e_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_611d2e_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_611d2e_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_611d2e_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_611d2e_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_611d2e_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_fundamental_mechanism_of_611d2e_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_611d2e_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_611d2e_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_fundamental_mechanism_of_611d2e_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_611d2e_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_611d2e_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_611d2e_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_fundamental_mechanism_of_611d2e_protocol : IGProtocol the_fundamental_mechanism_of_611d2e_s0 the_fundamental_mechanism_of_611d2e_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_fundamental_mechanism_of_611d2e_s10 the_fundamental_mechanism_of_611d2e_s10 = the_fundamental_mechanism_of_611d2e_s10 (idempotent)
  (.seq (.arrow the_fundamental_mechanism_of_611d2e_l0 the_fundamental_mechanism_of_611d2e_s0 the_fundamental_mechanism_of_611d2e_s1) (.seq (.arrow the_fundamental_mechanism_of_611d2e_l1 the_fundamental_mechanism_of_611d2e_s1 the_fundamental_mechanism_of_611d2e_s2) (.seq (.arrow the_fundamental_mechanism_of_611d2e_l2 the_fundamental_mechanism_of_611d2e_s2 the_fundamental_mechanism_of_611d2e_s3) (.seq (.prod (.arrow the_fundamental_mechanism_of_611d2e_l3 the_fundamental_mechanism_of_611d2e_s3 the_fundamental_mechanism_of_611d2e_s10) (.arrow the_fundamental_mechanism_of_611d2e_l3 the_fundamental_mechanism_of_611d2e_s3 the_fundamental_mechanism_of_611d2e_s10)) (.seq (.arrow the_fundamental_mechanism_of_611d2e_l10 the_fundamental_mechanism_of_611d2e_s10 the_fundamental_mechanism_of_611d2e_s10) (.seq (.arrow the_fundamental_mechanism_of_611d2e_l10 the_fundamental_mechanism_of_611d2e_s10 the_fundamental_mechanism_of_611d2e_s11) (.seq (.arrow the_fundamental_mechanism_of_611d2e_l11 the_fundamental_mechanism_of_611d2e_s11 the_fundamental_mechanism_of_611d2e_s12) (.arrow the_fundamental_mechanism_of_611d2e_l12 the_fundamental_mechanism_of_611d2e_s12 the_fundamental_mechanism_of_611d2e_s13))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_fundamental_mechanism_of_611d2e_true_arm : IGProtocol the_fundamental_mechanism_of_611d2e_s0 the_fundamental_mechanism_of_611d2e_s13 :=
  (the_fundamental_mechanism_of_611d2e_protocol).restrictToEVALT

-- false arm
noncomputable def the_fundamental_mechanism_of_611d2e_false_arm : IGProtocol the_fundamental_mechanism_of_611d2e_s0 the_fundamental_mechanism_of_611d2e_s13 :=
  (the_fundamental_mechanism_of_611d2e_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_fundamental_mechanism_of_611d2e_tier : OuroboricityTier := TierFunctor.obj the_fundamental_mechanism_of_611d2e_s0
#eval the_fundamental_mechanism_of_611d2e_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_fundamental_mechanism_of_611d2e_frobenius :
    igFrobeniusAlg.mul the_fundamental_mechanism_of_611d2e_s0 the_fundamental_mechanism_of_611d2e_s0 = the_fundamental_mechanism_of_611d2e_s0 :=
  igFrobAlg_self_fusion the_fundamental_mechanism_of_611d2e_s0
