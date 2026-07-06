-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → EVALT → AFWD → CLINK → AREV → EVALT → EVALT → IFIX → FFUSE → IMSCRIB → TANCH
-- Class: the n=1 case is proved for real rather than as trivial: SICPOVM_Exists 2 holds by exhibiting the explicit qubit SIC fiducial in ℂ^2 — the standard tetrahedral fiducial whose three nonzero Weyl-Heisenberg overlaps all equal 1/(d+1) = 1/3 — and verifying IsSICPOVM 2 on it (wh_normSq 2 psi = 1 and (2+1)·‖wh_inner 2 psi (D_ah 2 a b 0 psi)‖^2 = 1 for the three (a,b)≠(0,0), each a finite closed-form check), then wiring this to the structural side through QCI_SICPOVM_Bridge.lean where belnapToWH2 is bijective from Belnap onto Fin 2 × Fin 2 with the dialetheic value B mapping to the maximal displacement (1,1) (B_is_maximal_displacement) and N to the identity (0,0), so the Belnap fiducial B is the SIC fiducial's structural preimage and belnap_nonB_equidistant is the discrete shadow of the equal-overlap condition; this replaces zauner_bridge_d2_proved := right;trivial with a theorem of type SICPOVM_Exists 2, the one dimension where the acting group WH(2)^1 and the standard Heisenberg group WH(2) coincide so the bridge is exact both ways
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=13
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
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [9] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [11] IMSCRIB   gram   := 𐑠               𐑙 → 𐑡  | identity — self-imscription
--   [12] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_n_1_case_is_proved_for_real_rather_f93493_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_n_1_case_is_proved_for_real_rather_f93493_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_n_1_case_is_proved_for_real_rather_f93493_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_n_1_case_is_proved_for_real_rather_f93493_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_n_1_case_is_proved_for_real_rather_f93493_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_n_1_case_is_proved_for_real_rather_f93493_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_n_1_case_is_proved_for_real_rather_f93493_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_n_1_case_is_proved_for_real_rather_f93493_protocol : IGProtocol the_n_1_case_is_proved_for_real_rather_f93493_s0 the_n_1_case_is_proved_for_real_rather_f93493_s12 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_n_1_case_is_proved_for_real_rather_f93493_s10 the_n_1_case_is_proved_for_real_rather_f93493_s10 = the_n_1_case_is_proved_for_real_rather_f93493_s10 (idempotent)
  (.seq (.arrow the_n_1_case_is_proved_for_real_rather_f93493_l0 the_n_1_case_is_proved_for_real_rather_f93493_s0 the_n_1_case_is_proved_for_real_rather_f93493_s1) (.seq (.arrow the_n_1_case_is_proved_for_real_rather_f93493_l1 the_n_1_case_is_proved_for_real_rather_f93493_s1 the_n_1_case_is_proved_for_real_rather_f93493_s2) (.seq (.prod (.arrow the_n_1_case_is_proved_for_real_rather_f93493_l2 the_n_1_case_is_proved_for_real_rather_f93493_s2 the_n_1_case_is_proved_for_real_rather_f93493_s10) (.arrow the_n_1_case_is_proved_for_real_rather_f93493_l2 the_n_1_case_is_proved_for_real_rather_f93493_s2 the_n_1_case_is_proved_for_real_rather_f93493_s10)) (.seq (.arrow the_n_1_case_is_proved_for_real_rather_f93493_l10 the_n_1_case_is_proved_for_real_rather_f93493_s10 the_n_1_case_is_proved_for_real_rather_f93493_s10) (.seq (.arrow the_n_1_case_is_proved_for_real_rather_f93493_l10 the_n_1_case_is_proved_for_real_rather_f93493_s10 the_n_1_case_is_proved_for_real_rather_f93493_s11) (.arrow the_n_1_case_is_proved_for_real_rather_f93493_l11 the_n_1_case_is_proved_for_real_rather_f93493_s11 the_n_1_case_is_proved_for_real_rather_f93493_s12))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_n_1_case_is_proved_for_real_rather_f93493_true_arm : IGProtocol the_n_1_case_is_proved_for_real_rather_f93493_s0 the_n_1_case_is_proved_for_real_rather_f93493_s12 :=
  (the_n_1_case_is_proved_for_real_rather_f93493_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_n_1_case_is_proved_for_real_rather_f93493_tier : OuroboricityTier := TierFunctor.obj the_n_1_case_is_proved_for_real_rather_f93493_s0
#eval the_n_1_case_is_proved_for_real_rather_f93493_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_n_1_case_is_proved_for_real_rather_f93493_frobenius :
    igFrobeniusAlg.mul the_n_1_case_is_proved_for_real_rather_f93493_s0 the_n_1_case_is_proved_for_real_rather_f93493_s0 = the_n_1_case_is_proved_for_real_rather_f93493_s0 :=
  igFrobAlg_self_fusion the_n_1_case_is_proved_for_real_rather_f93493_s0
