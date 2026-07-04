-- IGProtocol scaffold: VINIT → CLINK → FSPLIT → EVALT → FFUSE → IFIX → AFWD → IMSCRIB → ENGAGR → AREV → IMSCRIB → CLINK → AFWD → FSPLIT → EVALT → FFUSE → IFIX → TANCH
-- Class: the generator values are bit-indexed: sVal(b) for b∈{0,1,2,3} is the REAL square root Real.sqrt(evalK16R(g0, covK b)) coerced to ℂ (covK 0,1,2,3 = M0,M1,M3,M9, each a positive modulus N_b), satisfying sVal(b)^2 = evalK16(g0C, covK b) and star(sVal b)=sVal b; iVal=Complex.I with star(iVal)=-iVal; c5Val=((-oa+Real.sqrt(oa^2-4*ob))/2 : ℝ):ℂ the real root of x²+oa·x+ob=0 where oa=evalK16R(g0,OA5), ob=evalK16R(g0,OB5), with star(c5Val)=c5Val and c5Val²=-oa·c5Val-ob; and u1Val the genuinely-complex unit-phase generator with u1Val²=evalK16(g0C,C2H)+iVal·evalK16(g0C,S2H)=E2Val, |u1Val|=1, and star(u1Val)=conj(E2Val)·u1Val matching the ring relation ū1=rU1i
-- Fingerprint: sig=(9,4,3,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=18
-- Expected tier: O₀
-- FSPLIT/FFUSE pairs: [(2, 4), (13, 15)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑱  | initial object — ground of distinction
--   [1] CLINK     fid    := 𐑱               𐑼 → 𐑚  | composition — regime coherence
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [5] IFIX      prot   := 𐑭               𐑙 → 𐑾  | irreversible fixation — winding number
--   [6] AFWD      rel    := 𐑾               𐑭 → 𐑠  | forward morphism — bidirectional arrow
--   [7] IMSCRIB   gram   := 𐑠               𐑾 → 𐑳  | identity — self-imscription
--   [8] ENGAGR    stoi   := 𐑳               𐑠 → 𐑗  | engage paradox — B-state, both arms
--   [9] AREV      pol    := 𐑗               𐑳 → 𐑠  | reverse morphism — parity flip
--   [10] IMSCRIB   gram   := 𐑠               𐑗 → 𐑱  | identity — self-imscription
--   [11] CLINK     fid    := 𐑱               𐑠 → 𐑾  | composition — regime coherence
--   [12] AFWD      rel    := 𐑾               𐑱 → 𐑚  | forward morphism — bidirectional arrow
--   [13] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [14] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [15] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [16] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [17] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_generator_values_are_bit_indexed_acebf0_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_are_bit_indexed_acebf0_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_are_bit_indexed_acebf0_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_are_bit_indexed_acebf0_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def the_generator_values_are_bit_indexed_acebf0_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def the_generator_values_are_bit_indexed_acebf0_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def the_generator_values_are_bit_indexed_acebf0_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def the_generator_values_are_bit_indexed_acebf0_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def the_generator_values_are_bit_indexed_acebf0_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def the_generator_values_are_bit_indexed_acebf0_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def the_generator_values_are_bit_indexed_acebf0_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_are_bit_indexed_acebf0_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_are_bit_indexed_acebf0_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_generator_values_are_bit_indexed_acebf0_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_are_bit_indexed_acebf0_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_l12 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_are_bit_indexed_acebf0_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_are_bit_indexed_acebf0_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_generator_values_are_bit_indexed_acebf0_protocol : IGProtocol the_generator_values_are_bit_indexed_acebf0_s0 the_generator_values_are_bit_indexed_acebf0_s17 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_generator_values_are_bit_indexed_acebf0_s4 the_generator_values_are_bit_indexed_acebf0_s4 = the_generator_values_are_bit_indexed_acebf0_s4 (idempotent)
  (.seq (.arrow the_generator_values_are_bit_indexed_acebf0_l0 the_generator_values_are_bit_indexed_acebf0_s0 the_generator_values_are_bit_indexed_acebf0_s1) (.seq (.arrow the_generator_values_are_bit_indexed_acebf0_l1 the_generator_values_are_bit_indexed_acebf0_s1 the_generator_values_are_bit_indexed_acebf0_s2) (.seq (.prod (.arrow the_generator_values_are_bit_indexed_acebf0_l2 the_generator_values_are_bit_indexed_acebf0_s2 the_generator_values_are_bit_indexed_acebf0_s4) (.arrow the_generator_values_are_bit_indexed_acebf0_l2 the_generator_values_are_bit_indexed_acebf0_s2 the_generator_values_are_bit_indexed_acebf0_s4)) (.seq (.arrow the_generator_values_are_bit_indexed_acebf0_l4 the_generator_values_are_bit_indexed_acebf0_s4 the_generator_values_are_bit_indexed_acebf0_s4) (.seq (.arrow the_generator_values_are_bit_indexed_acebf0_l4 the_generator_values_are_bit_indexed_acebf0_s4 the_generator_values_are_bit_indexed_acebf0_s5) (.seq (.arrow the_generator_values_are_bit_indexed_acebf0_l5 the_generator_values_are_bit_indexed_acebf0_s5 the_generator_values_are_bit_indexed_acebf0_s6) (.seq (.arrow the_generator_values_are_bit_indexed_acebf0_l6 the_generator_values_are_bit_indexed_acebf0_s6 the_generator_values_are_bit_indexed_acebf0_s7) (.seq (.arrow the_generator_values_are_bit_indexed_acebf0_l7 the_generator_values_are_bit_indexed_acebf0_s7 the_generator_values_are_bit_indexed_acebf0_s8) (.seq (.arrow the_generator_values_are_bit_indexed_acebf0_l8 the_generator_values_are_bit_indexed_acebf0_s8 the_generator_values_are_bit_indexed_acebf0_s9) (.seq (.arrow the_generator_values_are_bit_indexed_acebf0_l9 the_generator_values_are_bit_indexed_acebf0_s9 the_generator_values_are_bit_indexed_acebf0_s10) (.seq (.arrow the_generator_values_are_bit_indexed_acebf0_l10 the_generator_values_are_bit_indexed_acebf0_s10 the_generator_values_are_bit_indexed_acebf0_s11) (.seq (.arrow the_generator_values_are_bit_indexed_acebf0_l11 the_generator_values_are_bit_indexed_acebf0_s11 the_generator_values_are_bit_indexed_acebf0_s12) (.seq (.arrow the_generator_values_are_bit_indexed_acebf0_l12 the_generator_values_are_bit_indexed_acebf0_s12 the_generator_values_are_bit_indexed_acebf0_s13) (.seq (.arrow the_generator_values_are_bit_indexed_acebf0_l13 the_generator_values_are_bit_indexed_acebf0_s13 the_generator_values_are_bit_indexed_acebf0_s14) (.seq (.arrow the_generator_values_are_bit_indexed_acebf0_l14 the_generator_values_are_bit_indexed_acebf0_s14 the_generator_values_are_bit_indexed_acebf0_s15) (.seq (.arrow the_generator_values_are_bit_indexed_acebf0_l15 the_generator_values_are_bit_indexed_acebf0_s15 the_generator_values_are_bit_indexed_acebf0_s16) (.arrow the_generator_values_are_bit_indexed_acebf0_l16 the_generator_values_are_bit_indexed_acebf0_s16 the_generator_values_are_bit_indexed_acebf0_s17)))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_generator_values_are_bit_indexed_acebf0_true_arm : IGProtocol the_generator_values_are_bit_indexed_acebf0_s0 the_generator_values_are_bit_indexed_acebf0_s17 :=
  (the_generator_values_are_bit_indexed_acebf0_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₀.
def the_generator_values_are_bit_indexed_acebf0_tier : OuroboricityTier := TierFunctor.obj the_generator_values_are_bit_indexed_acebf0_s0
#eval the_generator_values_are_bit_indexed_acebf0_tier  -- the Grammar's own verdict on its tier
