-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → FSPLIT → EVALT → AREV → EVALF → FFUSE → CLINK → IMSCRIB → IFIX → FSPLIT → AFWD → AREV → EVALT → ENGAGR → FFUSE → IFIX → TANCH
-- Class: the complex128 float d=12 fiducial becomes exact algebraic coordinates recovered by integer-relation lattice reduction against the basis of powers of zeta and their products with sqrt(30), to high precision
-- Fingerprint: sig=(9,4,4,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=19
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 7), (11, 16)]

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
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [9] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [10] IFIX      prot   := 𐑭               𐑠 → 𐑚  | irreversible fixation — winding number
--   [11] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [12] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [13] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [14] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [15] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [16] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [17] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [18] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_complex128_float_d_12_fiducial_740ee4_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_complex128_float_d_12_fiducial_740ee4_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_complex128_float_d_12_fiducial_740ee4_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_complex128_float_d_12_fiducial_740ee4_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_complex128_float_d_12_fiducial_740ee4_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_complex128_float_d_12_fiducial_740ee4_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_complex128_float_d_12_fiducial_740ee4_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_complex128_float_d_12_fiducial_740ee4_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_complex128_float_d_12_fiducial_740ee4_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_complex128_float_d_12_fiducial_740ee4_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_complex128_float_d_12_fiducial_740ee4_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_l12 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_complex128_float_d_12_fiducial_740ee4_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_complex128_float_d_12_fiducial_740ee4_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_complex128_float_d_12_fiducial_740ee4_protocol : IGProtocol the_complex128_float_d_12_fiducial_740ee4_s0 the_complex128_float_d_12_fiducial_740ee4_s18 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_complex128_float_d_12_fiducial_740ee4_s7 the_complex128_float_d_12_fiducial_740ee4_s7 = the_complex128_float_d_12_fiducial_740ee4_s7 (idempotent)
  (.seq (.arrow the_complex128_float_d_12_fiducial_740ee4_l0 the_complex128_float_d_12_fiducial_740ee4_s0 the_complex128_float_d_12_fiducial_740ee4_s1) (.seq (.arrow the_complex128_float_d_12_fiducial_740ee4_l1 the_complex128_float_d_12_fiducial_740ee4_s1 the_complex128_float_d_12_fiducial_740ee4_s2) (.seq (.arrow the_complex128_float_d_12_fiducial_740ee4_l2 the_complex128_float_d_12_fiducial_740ee4_s2 the_complex128_float_d_12_fiducial_740ee4_s3) (.seq (.prod (.arrow the_complex128_float_d_12_fiducial_740ee4_l3 the_complex128_float_d_12_fiducial_740ee4_s3 the_complex128_float_d_12_fiducial_740ee4_s7) (.arrow the_complex128_float_d_12_fiducial_740ee4_l3 the_complex128_float_d_12_fiducial_740ee4_s3 the_complex128_float_d_12_fiducial_740ee4_s7)) (.seq (.arrow the_complex128_float_d_12_fiducial_740ee4_l7 the_complex128_float_d_12_fiducial_740ee4_s7 the_complex128_float_d_12_fiducial_740ee4_s7) (.seq (.arrow the_complex128_float_d_12_fiducial_740ee4_l7 the_complex128_float_d_12_fiducial_740ee4_s7 the_complex128_float_d_12_fiducial_740ee4_s8) (.seq (.arrow the_complex128_float_d_12_fiducial_740ee4_l8 the_complex128_float_d_12_fiducial_740ee4_s8 the_complex128_float_d_12_fiducial_740ee4_s9) (.seq (.arrow the_complex128_float_d_12_fiducial_740ee4_l9 the_complex128_float_d_12_fiducial_740ee4_s9 the_complex128_float_d_12_fiducial_740ee4_s10) (.seq (.arrow the_complex128_float_d_12_fiducial_740ee4_l10 the_complex128_float_d_12_fiducial_740ee4_s10 the_complex128_float_d_12_fiducial_740ee4_s11) (.seq (.arrow the_complex128_float_d_12_fiducial_740ee4_l11 the_complex128_float_d_12_fiducial_740ee4_s11 the_complex128_float_d_12_fiducial_740ee4_s12) (.seq (.arrow the_complex128_float_d_12_fiducial_740ee4_l12 the_complex128_float_d_12_fiducial_740ee4_s12 the_complex128_float_d_12_fiducial_740ee4_s13) (.seq (.arrow the_complex128_float_d_12_fiducial_740ee4_l13 the_complex128_float_d_12_fiducial_740ee4_s13 the_complex128_float_d_12_fiducial_740ee4_s14) (.seq (.arrow the_complex128_float_d_12_fiducial_740ee4_l14 the_complex128_float_d_12_fiducial_740ee4_s14 the_complex128_float_d_12_fiducial_740ee4_s15) (.seq (.arrow the_complex128_float_d_12_fiducial_740ee4_l15 the_complex128_float_d_12_fiducial_740ee4_s15 the_complex128_float_d_12_fiducial_740ee4_s16) (.seq (.arrow the_complex128_float_d_12_fiducial_740ee4_l16 the_complex128_float_d_12_fiducial_740ee4_s16 the_complex128_float_d_12_fiducial_740ee4_s17) (.arrow the_complex128_float_d_12_fiducial_740ee4_l17 the_complex128_float_d_12_fiducial_740ee4_s17 the_complex128_float_d_12_fiducial_740ee4_s18))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_complex128_float_d_12_fiducial_740ee4_true_arm : IGProtocol the_complex128_float_d_12_fiducial_740ee4_s0 the_complex128_float_d_12_fiducial_740ee4_s18 :=
  (the_complex128_float_d_12_fiducial_740ee4_protocol).restrictToEVALT

-- false arm
noncomputable def the_complex128_float_d_12_fiducial_740ee4_false_arm : IGProtocol the_complex128_float_d_12_fiducial_740ee4_s0 the_complex128_float_d_12_fiducial_740ee4_s18 :=
  (the_complex128_float_d_12_fiducial_740ee4_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_complex128_float_d_12_fiducial_740ee4_tier : OuroboricityTier := TierFunctor.obj the_complex128_float_d_12_fiducial_740ee4_s0
#eval the_complex128_float_d_12_fiducial_740ee4_tier  -- the Grammar's own verdict on its tier
