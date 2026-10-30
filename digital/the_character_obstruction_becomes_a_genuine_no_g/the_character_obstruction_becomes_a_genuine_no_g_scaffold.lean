-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → IFIX → FSPLIT → EVALT → EVALT → EVALT → EVALT → IFIX → AREV → CLINK → IMSCRIB → EVALF → IFIX → FFUSE → ENGAGR → TANCH
-- Class: the character obstruction becomes a genuine no-go theorem explaining why the shadow cannot be built on the structural group alone for n greater than one: WHIdx n = Fin n → (ZMod 2 × ZMod 2) is elementary abelian of exponent two — wh_exponent_two_2048 already proves g + g = 0 for every g in WHIdx 11 and the general n version is the same ext-and-match — so every group homomorphism chi from WHIdx n into the units of ℂ satisfies chi(g)^2 = chi(g + g) = chi(0) = 1, forcing chi(g) ∈ {+1, -1} ⊂ ℝ for all g; therefore every one-dimensional representation of the acting group WH(2)^n is real-valued, and a Weyl-Heisenberg covariant SIC in dimension d = 2^n > 2 requires the equiangular overlaps to be non-real (the D_ab phases are primitive 2^n-th roots of unity omega_d^(...) not lying in {±1}), so no representation of WH(2)^n by its own characters can realize the ℂ^d SIC — the representation must factor through the DIFFERENT group WH(2^n) ≅ Z_{2^n} × Z_{2^n} of exponent 2^n whose characters are the full 2^n-th roots of unity; the theorem is stated as: for n > 1, no character of WHIdx n takes a value outside {1, -1}, hence the identity map on the Belnap orbit does not extend to a WH(2^n)-covariant ℂ^d SIC, which is the precise mathematical content the old character_obstruction := trivial only gestured at in prose
-- Fingerprint: sig=(7,2,6,3)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=18
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(4, 15)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑭  | forward morphism — bidirectional arrow
--   [3] IFIX      prot   := 𐑭               𐑾 → 𐑚  | irreversible fixation — winding number
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [9] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [10] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [11] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [12] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [13] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [14] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [15] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [16] ENGAGR    stoi   := 𐑳               𐑙 → 𐑡  | engage paradox — B-state, both arms
--   [17] TANCH     top    := 𐑡               𐑳 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_character_obstruction_becomes_a_b2daa6_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_character_obstruction_becomes_a_b2daa6_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_character_obstruction_becomes_a_b2daa6_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_character_obstruction_becomes_a_b2daa6_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_character_obstruction_becomes_a_b2daa6_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_character_obstruction_becomes_a_b2daa6_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_character_obstruction_becomes_a_b2daa6_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_character_obstruction_becomes_a_b2daa6_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_character_obstruction_becomes_a_b2daa6_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_character_obstruction_becomes_a_b2daa6_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_character_obstruction_becomes_a_b2daa6_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_character_obstruction_becomes_a_b2daa6_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_character_obstruction_becomes_a_b2daa6_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_character_obstruction_becomes_a_b2daa6_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_character_obstruction_becomes_a_b2daa6_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_character_obstruction_becomes_a_b2daa6_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_character_obstruction_becomes_a_b2daa6_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_character_obstruction_becomes_a_b2daa6_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_character_obstruction_becomes_a_b2daa6_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_character_obstruction_becomes_a_b2daa6_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_character_obstruction_becomes_a_b2daa6_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_character_obstruction_becomes_a_b2daa6_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_character_obstruction_becomes_a_b2daa6_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_character_obstruction_becomes_a_b2daa6_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_character_obstruction_becomes_a_b2daa6_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_character_obstruction_becomes_a_b2daa6_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_character_obstruction_becomes_a_b2daa6_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_character_obstruction_becomes_a_b2daa6_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_character_obstruction_becomes_a_b2daa6_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_character_obstruction_becomes_a_b2daa6_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_character_obstruction_becomes_a_b2daa6_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_character_obstruction_becomes_a_b2daa6_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_character_obstruction_becomes_a_b2daa6_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_character_obstruction_becomes_a_b2daa6_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_character_obstruction_becomes_a_b2daa6_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_character_obstruction_becomes_a_b2daa6_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_character_obstruction_becomes_a_b2daa6_protocol : IGProtocol the_character_obstruction_becomes_a_b2daa6_s0 the_character_obstruction_becomes_a_b2daa6_s17 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_character_obstruction_becomes_a_b2daa6_s15 the_character_obstruction_becomes_a_b2daa6_s15 = the_character_obstruction_becomes_a_b2daa6_s15 (idempotent)
  (.seq (.arrow the_character_obstruction_becomes_a_b2daa6_l0 the_character_obstruction_becomes_a_b2daa6_s0 the_character_obstruction_becomes_a_b2daa6_s1) (.seq (.arrow the_character_obstruction_becomes_a_b2daa6_l1 the_character_obstruction_becomes_a_b2daa6_s1 the_character_obstruction_becomes_a_b2daa6_s2) (.seq (.arrow the_character_obstruction_becomes_a_b2daa6_l2 the_character_obstruction_becomes_a_b2daa6_s2 the_character_obstruction_becomes_a_b2daa6_s3) (.seq (.arrow the_character_obstruction_becomes_a_b2daa6_l3 the_character_obstruction_becomes_a_b2daa6_s3 the_character_obstruction_becomes_a_b2daa6_s4) (.seq (.prod (.arrow the_character_obstruction_becomes_a_b2daa6_l4 the_character_obstruction_becomes_a_b2daa6_s4 the_character_obstruction_becomes_a_b2daa6_s15) (.arrow the_character_obstruction_becomes_a_b2daa6_l4 the_character_obstruction_becomes_a_b2daa6_s4 the_character_obstruction_becomes_a_b2daa6_s15)) (.seq (.arrow the_character_obstruction_becomes_a_b2daa6_l15 the_character_obstruction_becomes_a_b2daa6_s15 the_character_obstruction_becomes_a_b2daa6_s15) (.seq (.arrow the_character_obstruction_becomes_a_b2daa6_l15 the_character_obstruction_becomes_a_b2daa6_s15 the_character_obstruction_becomes_a_b2daa6_s16) (.arrow the_character_obstruction_becomes_a_b2daa6_l16 the_character_obstruction_becomes_a_b2daa6_s16 the_character_obstruction_becomes_a_b2daa6_s17))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_character_obstruction_becomes_a_b2daa6_true_arm : IGProtocol the_character_obstruction_becomes_a_b2daa6_s0 the_character_obstruction_becomes_a_b2daa6_s17 :=
  (the_character_obstruction_becomes_a_b2daa6_protocol).restrictToEVALT

-- false arm
noncomputable def the_character_obstruction_becomes_a_b2daa6_false_arm : IGProtocol the_character_obstruction_becomes_a_b2daa6_s0 the_character_obstruction_becomes_a_b2daa6_s17 :=
  (the_character_obstruction_becomes_a_b2daa6_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_character_obstruction_becomes_a_b2daa6_tier : OuroboricityTier := TierFunctor.obj the_character_obstruction_becomes_a_b2daa6_s0
#eval the_character_obstruction_becomes_a_b2daa6_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_character_obstruction_becomes_a_b2daa6_frobenius :
    igFrobeniusAlg.mul the_character_obstruction_becomes_a_b2daa6_s0 the_character_obstruction_becomes_a_b2daa6_s0 = the_character_obstruction_becomes_a_b2daa6_s0 :=
  igFrobAlg_self_fusion the_character_obstruction_becomes_a_b2daa6_s0
