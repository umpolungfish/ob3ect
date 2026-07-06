-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → EVALT → IFIX → AREV → EVALF → ENGAGR → CLINK → AFWD → EVALT → FFUSE → CLINK → IFIX → IMSCRIB → TANCH
-- Class: the eight non-symmetric moduli including z3 and z9, which naive lindep places falsely in Q(sqrt2,sqrt13) with 800-bit denominators, become exact elements of their true octic subfield of the ray class field via nfalgtobasis relative to the integral basis
-- Fingerprint: sig=(8,2,4,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=16
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 11)]

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
--   [4] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [8] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [9] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [12] CLINK     fid    := 𐑱               𐑙 → 𐑭  | composition — regime coherence
--   [13] IFIX      prot   := 𐑭               𐑱 → 𐑠  | irreversible fixation — winding number
--   [14] IMSCRIB   gram   := 𐑠               𐑭 → 𐑡  | identity — self-imscription
--   [15] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_eight_non_symmetric_moduli_154b54_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_eight_non_symmetric_moduli_154b54_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_eight_non_symmetric_moduli_154b54_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_eight_non_symmetric_moduli_154b54_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_eight_non_symmetric_moduli_154b54_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_eight_non_symmetric_moduli_154b54_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_eight_non_symmetric_moduli_154b54_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_eight_non_symmetric_moduli_154b54_s7 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_eight_non_symmetric_moduli_154b54_s8 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_eight_non_symmetric_moduli_154b54_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_eight_non_symmetric_moduli_154b54_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_eight_non_symmetric_moduli_154b54_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_eight_non_symmetric_moduli_154b54_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_eight_non_symmetric_moduli_154b54_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_eight_non_symmetric_moduli_154b54_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_eight_non_symmetric_moduli_154b54_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_eight_non_symmetric_moduli_154b54_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_eight_non_symmetric_moduli_154b54_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_eight_non_symmetric_moduli_154b54_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_eight_non_symmetric_moduli_154b54_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_eight_non_symmetric_moduli_154b54_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_eight_non_symmetric_moduli_154b54_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_eight_non_symmetric_moduli_154b54_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_eight_non_symmetric_moduli_154b54_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_eight_non_symmetric_moduli_154b54_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_eight_non_symmetric_moduli_154b54_l9 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_eight_non_symmetric_moduli_154b54_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_eight_non_symmetric_moduli_154b54_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_eight_non_symmetric_moduli_154b54_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_eight_non_symmetric_moduli_154b54_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_eight_non_symmetric_moduli_154b54_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_eight_non_symmetric_moduli_154b54_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_eight_non_symmetric_moduli_154b54_protocol : IGProtocol the_eight_non_symmetric_moduli_154b54_s0 the_eight_non_symmetric_moduli_154b54_s15 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_eight_non_symmetric_moduli_154b54_s11 the_eight_non_symmetric_moduli_154b54_s11 = the_eight_non_symmetric_moduli_154b54_s11 (idempotent)
  (.seq (.arrow the_eight_non_symmetric_moduli_154b54_l0 the_eight_non_symmetric_moduli_154b54_s0 the_eight_non_symmetric_moduli_154b54_s1) (.seq (.arrow the_eight_non_symmetric_moduli_154b54_l1 the_eight_non_symmetric_moduli_154b54_s1 the_eight_non_symmetric_moduli_154b54_s2) (.seq (.prod (.arrow the_eight_non_symmetric_moduli_154b54_l2 the_eight_non_symmetric_moduli_154b54_s2 the_eight_non_symmetric_moduli_154b54_s11) (.arrow the_eight_non_symmetric_moduli_154b54_l2 the_eight_non_symmetric_moduli_154b54_s2 the_eight_non_symmetric_moduli_154b54_s11)) (.seq (.arrow the_eight_non_symmetric_moduli_154b54_l11 the_eight_non_symmetric_moduli_154b54_s11 the_eight_non_symmetric_moduli_154b54_s11) (.seq (.arrow the_eight_non_symmetric_moduli_154b54_l11 the_eight_non_symmetric_moduli_154b54_s11 the_eight_non_symmetric_moduli_154b54_s12) (.seq (.arrow the_eight_non_symmetric_moduli_154b54_l12 the_eight_non_symmetric_moduli_154b54_s12 the_eight_non_symmetric_moduli_154b54_s13) (.seq (.arrow the_eight_non_symmetric_moduli_154b54_l13 the_eight_non_symmetric_moduli_154b54_s13 the_eight_non_symmetric_moduli_154b54_s14) (.arrow the_eight_non_symmetric_moduli_154b54_l14 the_eight_non_symmetric_moduli_154b54_s14 the_eight_non_symmetric_moduli_154b54_s15))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_eight_non_symmetric_moduli_154b54_true_arm : IGProtocol the_eight_non_symmetric_moduli_154b54_s0 the_eight_non_symmetric_moduli_154b54_s15 :=
  (the_eight_non_symmetric_moduli_154b54_protocol).restrictToEVALT

-- false arm
noncomputable def the_eight_non_symmetric_moduli_154b54_false_arm : IGProtocol the_eight_non_symmetric_moduli_154b54_s0 the_eight_non_symmetric_moduli_154b54_s15 :=
  (the_eight_non_symmetric_moduli_154b54_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_eight_non_symmetric_moduli_154b54_tier : OuroboricityTier := TierFunctor.obj the_eight_non_symmetric_moduli_154b54_s0
#eval the_eight_non_symmetric_moduli_154b54_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_eight_non_symmetric_moduli_154b54_frobenius :
    igFrobeniusAlg.mul the_eight_non_symmetric_moduli_154b54_s0 the_eight_non_symmetric_moduli_154b54_s0 = the_eight_non_symmetric_moduli_154b54_s0 :=
  igFrobAlg_self_fusion the_eight_non_symmetric_moduli_154b54_s0
