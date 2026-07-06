-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → EVALT → CLINK → IFIX → ENGAGR → AFWD → EVALF → AREV → FFUSE → CLINK → TANCH
-- Class: the open problem is factored cleanly so that the ONLY missing ingredient is the representation, made explicit as a genuine structure rather than swallowed: define BridgeRep n as the data of an injective ℂ-linear map rho from the ℂ-span of the WH(2)^n orbit of the Belnap fiducial into ℂ^(2^n) that intertwines the structural whAct of WHIdx n with the standard Weyl-Heisenberg D_ah action on ℂ^(2^n) and carries the join-equiangular structural inner product (frobInner (B⊗n)(g·B⊗n) = 2n, constant) to the ℂ overlaps at the SIC ratio; then prove the reduction theorem, that the unconditional structural skeleton (mlOrbit_card_n giving 4^n = d^2 distinct displaced fiducials, ax_free_proved giving injectivity of the action, frobInner_fiducial_constant giving the constant structural overlap, and the four SIC axioms) TOGETHER WITH a BridgeRep n witness implies SICPOVM_Exists (2^n) — rho of the fiducial is the ℂ^d SIC fiducial, its d^2 displacements are the orbit image, and the constant structural overlap maps to the constant ℂ overlap forced to 1/(d+1) by norm and count; this theorem discharges every part of Zauner-for-2^n EXCEPT the existence of rho, so the residue is exactly one named object, honest and non-vacuous, with the skeleton half already machine-checked and only BridgeRep open — and the entity keeps the registers apart: it is an IMPLICATION, the skeleton does not assert the shadow, it only reduces the shadow to rho
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 10)]

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
--   [4] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [5] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [6] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [7] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [11] CLINK     fid    := 𐑱               𐑙 → 𐑡  | composition — regime coherence
--   [12] TANCH     top    := 𐑡               𐑱 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_open_problem_is_factored_cleanly_so_01bfe5_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_open_problem_is_factored_cleanly_so_01bfe5_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_open_problem_is_factored_cleanly_so_01bfe5_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_open_problem_is_factored_cleanly_so_01bfe5_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_open_problem_is_factored_cleanly_so_01bfe5_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_open_problem_is_factored_cleanly_so_01bfe5_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_open_problem_is_factored_cleanly_so_01bfe5_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def the_open_problem_is_factored_cleanly_so_01bfe5_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def the_open_problem_is_factored_cleanly_so_01bfe5_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_open_problem_is_factored_cleanly_so_01bfe5_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_open_problem_is_factored_cleanly_so_01bfe5_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_open_problem_is_factored_cleanly_so_01bfe5_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_open_problem_is_factored_cleanly_so_01bfe5_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_open_problem_is_factored_cleanly_so_01bfe5_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_open_problem_is_factored_cleanly_so_01bfe5_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_open_problem_is_factored_cleanly_so_01bfe5_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_open_problem_is_factored_cleanly_so_01bfe5_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_open_problem_is_factored_cleanly_so_01bfe5_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_open_problem_is_factored_cleanly_so_01bfe5_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_open_problem_is_factored_cleanly_so_01bfe5_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_open_problem_is_factored_cleanly_so_01bfe5_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_open_problem_is_factored_cleanly_so_01bfe5_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_open_problem_is_factored_cleanly_so_01bfe5_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_open_problem_is_factored_cleanly_so_01bfe5_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_open_problem_is_factored_cleanly_so_01bfe5_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_open_problem_is_factored_cleanly_so_01bfe5_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_open_problem_is_factored_cleanly_so_01bfe5_protocol : IGProtocol the_open_problem_is_factored_cleanly_so_01bfe5_s0 the_open_problem_is_factored_cleanly_so_01bfe5_s12 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_open_problem_is_factored_cleanly_so_01bfe5_s10 the_open_problem_is_factored_cleanly_so_01bfe5_s10 = the_open_problem_is_factored_cleanly_so_01bfe5_s10 (idempotent)
  (.seq (.arrow the_open_problem_is_factored_cleanly_so_01bfe5_l0 the_open_problem_is_factored_cleanly_so_01bfe5_s0 the_open_problem_is_factored_cleanly_so_01bfe5_s1) (.seq (.arrow the_open_problem_is_factored_cleanly_so_01bfe5_l1 the_open_problem_is_factored_cleanly_so_01bfe5_s1 the_open_problem_is_factored_cleanly_so_01bfe5_s2) (.seq (.prod (.arrow the_open_problem_is_factored_cleanly_so_01bfe5_l2 the_open_problem_is_factored_cleanly_so_01bfe5_s2 the_open_problem_is_factored_cleanly_so_01bfe5_s10) (.arrow the_open_problem_is_factored_cleanly_so_01bfe5_l2 the_open_problem_is_factored_cleanly_so_01bfe5_s2 the_open_problem_is_factored_cleanly_so_01bfe5_s10)) (.seq (.arrow the_open_problem_is_factored_cleanly_so_01bfe5_l10 the_open_problem_is_factored_cleanly_so_01bfe5_s10 the_open_problem_is_factored_cleanly_so_01bfe5_s10) (.seq (.arrow the_open_problem_is_factored_cleanly_so_01bfe5_l10 the_open_problem_is_factored_cleanly_so_01bfe5_s10 the_open_problem_is_factored_cleanly_so_01bfe5_s11) (.arrow the_open_problem_is_factored_cleanly_so_01bfe5_l11 the_open_problem_is_factored_cleanly_so_01bfe5_s11 the_open_problem_is_factored_cleanly_so_01bfe5_s12))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_open_problem_is_factored_cleanly_so_01bfe5_true_arm : IGProtocol the_open_problem_is_factored_cleanly_so_01bfe5_s0 the_open_problem_is_factored_cleanly_so_01bfe5_s12 :=
  (the_open_problem_is_factored_cleanly_so_01bfe5_protocol).restrictToEVALT

-- false arm
noncomputable def the_open_problem_is_factored_cleanly_so_01bfe5_false_arm : IGProtocol the_open_problem_is_factored_cleanly_so_01bfe5_s0 the_open_problem_is_factored_cleanly_so_01bfe5_s12 :=
  (the_open_problem_is_factored_cleanly_so_01bfe5_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_open_problem_is_factored_cleanly_so_01bfe5_tier : OuroboricityTier := TierFunctor.obj the_open_problem_is_factored_cleanly_so_01bfe5_s0
#eval the_open_problem_is_factored_cleanly_so_01bfe5_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_open_problem_is_factored_cleanly_so_01bfe5_frobenius :
    igFrobeniusAlg.mul the_open_problem_is_factored_cleanly_so_01bfe5_s0 the_open_problem_is_factored_cleanly_so_01bfe5_s0 = the_open_problem_is_factored_cleanly_so_01bfe5_s0 :=
  igFrobAlg_self_fusion the_open_problem_is_factored_cleanly_so_01bfe5_s0
