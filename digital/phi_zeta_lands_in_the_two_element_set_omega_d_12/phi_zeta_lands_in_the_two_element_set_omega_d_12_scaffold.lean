-- IGProtocol scaffold: VINIT → AFWD → IMSCRIB → IFIX → CLINK → AFWD → IMSCRIB → FSPLIT → ENGAGR → EVALT → EVALF → FFUSE → CLINK → AREV → IFIX → TANCH
-- Class: phi zeta lands in the two-element set {omega_d 12, omega_d 12 ^ 5}: its imaginary part is exactly 1/2 because evalKey sends key 16 to evalK16 g0C (kscale (1/2) one16) times iVal = (1/2)·Complex.I while keys 0 and 32 (covers, c5) evaluate to real numbers (evalK16 at the real root g0C, c5Val real by construction), and its modulus is 1 because phi (zpow 12) = phi rone = 1 forces (phi zeta)^12 = 1 hence |phi zeta| = 1; therefore Re(phi zeta) = ±√3/2 and phi zeta = ±(√3/2) + (1/2)·Complex.I, matching omega_d 12 = exp(2πi/12) = √3/2 + i/2 (Real.cos_pi_div_six, Real.sin_pi_div_six) on the plus branch (m=1) and omega_d 12 ^ 5 = -√3/2 + i/2 (cos and sin of 5π/6 = π − π/6) on the minus branch (m=5)
-- Fingerprint: sig=(9,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=16
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(7, 11)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑠  | forward morphism — bidirectional arrow
--   [2] IMSCRIB   gram   := 𐑠               𐑾 → 𐑭  | identity — self-imscription
--   [3] IFIX      prot   := 𐑭               𐑠 → 𐑱  | irreversible fixation — winding number
--   [4] CLINK     fid    := 𐑱               𐑭 → 𐑾  | composition — regime coherence
--   [5] AFWD      rel    := 𐑾               𐑱 → 𐑠  | forward morphism — bidirectional arrow
--   [6] IMSCRIB   gram   := 𐑠               𐑾 → 𐑚  | identity — self-imscription
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [12] CLINK     fid    := 𐑱               𐑙 → 𐑗  | composition — regime coherence
--   [13] AREV      pol    := 𐑗               𐑱 → 𐑭  | reverse morphism — parity flip
--   [14] IFIX      prot   := 𐑭               𐑗 → 𐑡  | irreversible fixation — winding number
--   [15] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def phi_zeta_lands_in_the_two_element_set_648d1d_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zeta_lands_in_the_two_element_set_648d1d_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zeta_lands_in_the_two_element_set_648d1d_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zeta_lands_in_the_two_element_set_648d1d_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_zeta_lands_in_the_two_element_set_648d1d_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_zeta_lands_in_the_two_element_set_648d1d_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_zeta_lands_in_the_two_element_set_648d1d_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_zeta_lands_in_the_two_element_set_648d1d_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_zeta_lands_in_the_two_element_set_648d1d_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := up, prot := ah }
private def phi_zeta_lands_in_the_two_element_set_648d1d_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def phi_zeta_lands_in_the_two_element_set_648d1d_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def phi_zeta_lands_in_the_two_element_set_648d1d_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def phi_zeta_lands_in_the_two_element_set_648d1d_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def phi_zeta_lands_in_the_two_element_set_648d1d_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def phi_zeta_lands_in_the_two_element_set_648d1d_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def phi_zeta_lands_in_the_two_element_set_648d1d_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def phi_zeta_lands_in_the_two_element_set_648d1d_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zeta_lands_in_the_two_element_set_648d1d_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zeta_lands_in_the_two_element_set_648d1d_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zeta_lands_in_the_two_element_set_648d1d_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_zeta_lands_in_the_two_element_set_648d1d_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zeta_lands_in_the_two_element_set_648d1d_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zeta_lands_in_the_two_element_set_648d1d_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zeta_lands_in_the_two_element_set_648d1d_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zeta_lands_in_the_two_element_set_648d1d_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def phi_zeta_lands_in_the_two_element_set_648d1d_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def phi_zeta_lands_in_the_two_element_set_648d1d_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def phi_zeta_lands_in_the_two_element_set_648d1d_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zeta_lands_in_the_two_element_set_648d1d_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zeta_lands_in_the_two_element_set_648d1d_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zeta_lands_in_the_two_element_set_648d1d_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_zeta_lands_in_the_two_element_set_648d1d_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def phi_zeta_lands_in_the_two_element_set_648d1d_protocol : IGProtocol phi_zeta_lands_in_the_two_element_set_648d1d_s0 phi_zeta_lands_in_the_two_element_set_648d1d_s15 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct phi_zeta_lands_in_the_two_element_set_648d1d_s11 phi_zeta_lands_in_the_two_element_set_648d1d_s11 = phi_zeta_lands_in_the_two_element_set_648d1d_s11 (idempotent)
  (.seq (.arrow phi_zeta_lands_in_the_two_element_set_648d1d_l0 phi_zeta_lands_in_the_two_element_set_648d1d_s0 phi_zeta_lands_in_the_two_element_set_648d1d_s1) (.seq (.arrow phi_zeta_lands_in_the_two_element_set_648d1d_l1 phi_zeta_lands_in_the_two_element_set_648d1d_s1 phi_zeta_lands_in_the_two_element_set_648d1d_s2) (.seq (.arrow phi_zeta_lands_in_the_two_element_set_648d1d_l2 phi_zeta_lands_in_the_two_element_set_648d1d_s2 phi_zeta_lands_in_the_two_element_set_648d1d_s3) (.seq (.arrow phi_zeta_lands_in_the_two_element_set_648d1d_l3 phi_zeta_lands_in_the_two_element_set_648d1d_s3 phi_zeta_lands_in_the_two_element_set_648d1d_s4) (.seq (.arrow phi_zeta_lands_in_the_two_element_set_648d1d_l4 phi_zeta_lands_in_the_two_element_set_648d1d_s4 phi_zeta_lands_in_the_two_element_set_648d1d_s5) (.seq (.arrow phi_zeta_lands_in_the_two_element_set_648d1d_l5 phi_zeta_lands_in_the_two_element_set_648d1d_s5 phi_zeta_lands_in_the_two_element_set_648d1d_s6) (.seq (.arrow phi_zeta_lands_in_the_two_element_set_648d1d_l6 phi_zeta_lands_in_the_two_element_set_648d1d_s6 phi_zeta_lands_in_the_two_element_set_648d1d_s7) (.seq (.prod (.arrow phi_zeta_lands_in_the_two_element_set_648d1d_l7 phi_zeta_lands_in_the_two_element_set_648d1d_s7 phi_zeta_lands_in_the_two_element_set_648d1d_s11) (.arrow phi_zeta_lands_in_the_two_element_set_648d1d_l7 phi_zeta_lands_in_the_two_element_set_648d1d_s7 phi_zeta_lands_in_the_two_element_set_648d1d_s11)) (.seq (.arrow phi_zeta_lands_in_the_two_element_set_648d1d_l11 phi_zeta_lands_in_the_two_element_set_648d1d_s11 phi_zeta_lands_in_the_two_element_set_648d1d_s11) (.seq (.arrow phi_zeta_lands_in_the_two_element_set_648d1d_l11 phi_zeta_lands_in_the_two_element_set_648d1d_s11 phi_zeta_lands_in_the_two_element_set_648d1d_s12) (.seq (.arrow phi_zeta_lands_in_the_two_element_set_648d1d_l12 phi_zeta_lands_in_the_two_element_set_648d1d_s12 phi_zeta_lands_in_the_two_element_set_648d1d_s13) (.seq (.arrow phi_zeta_lands_in_the_two_element_set_648d1d_l13 phi_zeta_lands_in_the_two_element_set_648d1d_s13 phi_zeta_lands_in_the_two_element_set_648d1d_s14) (.arrow phi_zeta_lands_in_the_two_element_set_648d1d_l14 phi_zeta_lands_in_the_two_element_set_648d1d_s14 phi_zeta_lands_in_the_two_element_set_648d1d_s15)))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def phi_zeta_lands_in_the_two_element_set_648d1d_true_arm : IGProtocol phi_zeta_lands_in_the_two_element_set_648d1d_s0 phi_zeta_lands_in_the_two_element_set_648d1d_s15 :=
  (phi_zeta_lands_in_the_two_element_set_648d1d_protocol).restrictToEVALT

-- false arm
noncomputable def phi_zeta_lands_in_the_two_element_set_648d1d_false_arm : IGProtocol phi_zeta_lands_in_the_two_element_set_648d1d_s0 phi_zeta_lands_in_the_two_element_set_648d1d_s15 :=
  (phi_zeta_lands_in_the_two_element_set_648d1d_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def phi_zeta_lands_in_the_two_element_set_648d1d_tier : OuroboricityTier := TierFunctor.obj phi_zeta_lands_in_the_two_element_set_648d1d_s0
#eval phi_zeta_lands_in_the_two_element_set_648d1d_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem phi_zeta_lands_in_the_two_element_set_648d1d_frobenius :
    igFrobeniusAlg.mul phi_zeta_lands_in_the_two_element_set_648d1d_s0 phi_zeta_lands_in_the_two_element_set_648d1d_s0 = phi_zeta_lands_in_the_two_element_set_648d1d_s0 :=
  igFrobAlg_self_fusion phi_zeta_lands_in_the_two_element_set_648d1d_s0
