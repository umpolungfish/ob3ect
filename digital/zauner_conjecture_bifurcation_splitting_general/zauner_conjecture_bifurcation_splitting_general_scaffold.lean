-- IGProtocol scaffold: VINIT → TANCH → FSPLIT → CLINK → AFWD → EVALT → FFUSE → CLINK → AREV → EVALF → FFUSE → IMSCRIB → ENGAGR → IFIX → CLINK → FSPLIT → AFWD → EVALT → FFUSE → AREV → EVALF → FFUSE → IMSCRIB → TANCH
-- Class: Zauner Conjecture Bifurcation splitting General Dimension d into Proven d=12 and Unproven d=19
-- Fingerprint: sig=(12,6,5,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=24
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 6), (15, 18)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑚  | terminal object — connectivity boundary
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [7] CLINK     fid    := 𐑱               𐑙 → 𐑗  | composition — regime coherence
--   [8] AREV      pol    := 𐑗               𐑱 → 𐑖  | reverse morphism — parity flip
--   [9] EVALF     chir   := 𐑖               𐑗 → 𐑙  | evaluate-false — chirality check
--   [10] FFUSE     stoi   := 𐑙               𐑖 → 𐑠  | fuse μ — assembly mode
--   [11] IMSCRIB   gram   := 𐑠               𐑙 → 𐑳  | identity — self-imscription
--   [12] ENGAGR    stoi   := 𐑳               𐑠 → 𐑭  | engage paradox — B-state, both arms
--   [13] IFIX      prot   := 𐑭               𐑳 → 𐑱  | irreversible fixation — winding number
--   [14] CLINK     fid    := 𐑱               𐑭 → 𐑚  | composition — regime coherence
--   [15] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [16] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [17] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [18] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [19] AREV      pol    := 𐑗               𐑙 → 𐑖  | reverse morphism — parity flip
--   [20] EVALF     chir   := 𐑖               𐑗 → 𐑙  | evaluate-false — chirality check
--   [21] FFUSE     stoi   := 𐑙               𐑖 → 𐑠  | fuse μ — assembly mode
--   [22] IMSCRIB   gram   := 𐑠               𐑙 → 𐑡  | identity — self-imscription
--   [23] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l16 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def zauner_conjecture_bifurcation_splitting_e9aaa5_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def zauner_conjecture_bifurcation_splitting_e9aaa5_protocol : IGProtocol zauner_conjecture_bifurcation_splitting_e9aaa5_s0 zauner_conjecture_bifurcation_splitting_e9aaa5_s23 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct zauner_conjecture_bifurcation_splitting_e9aaa5_s6 zauner_conjecture_bifurcation_splitting_e9aaa5_s6 = zauner_conjecture_bifurcation_splitting_e9aaa5_s6 (idempotent)
  (.seq (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l0 zauner_conjecture_bifurcation_splitting_e9aaa5_s0 zauner_conjecture_bifurcation_splitting_e9aaa5_s1) (.seq (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l1 zauner_conjecture_bifurcation_splitting_e9aaa5_s1 zauner_conjecture_bifurcation_splitting_e9aaa5_s2) (.seq (.prod (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l2 zauner_conjecture_bifurcation_splitting_e9aaa5_s2 zauner_conjecture_bifurcation_splitting_e9aaa5_s6) (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l2 zauner_conjecture_bifurcation_splitting_e9aaa5_s2 zauner_conjecture_bifurcation_splitting_e9aaa5_s6)) (.seq (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l6 zauner_conjecture_bifurcation_splitting_e9aaa5_s6 zauner_conjecture_bifurcation_splitting_e9aaa5_s6) (.seq (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l6 zauner_conjecture_bifurcation_splitting_e9aaa5_s6 zauner_conjecture_bifurcation_splitting_e9aaa5_s7) (.seq (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l7 zauner_conjecture_bifurcation_splitting_e9aaa5_s7 zauner_conjecture_bifurcation_splitting_e9aaa5_s8) (.seq (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l8 zauner_conjecture_bifurcation_splitting_e9aaa5_s8 zauner_conjecture_bifurcation_splitting_e9aaa5_s9) (.seq (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l9 zauner_conjecture_bifurcation_splitting_e9aaa5_s9 zauner_conjecture_bifurcation_splitting_e9aaa5_s10) (.seq (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l10 zauner_conjecture_bifurcation_splitting_e9aaa5_s10 zauner_conjecture_bifurcation_splitting_e9aaa5_s11) (.seq (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l11 zauner_conjecture_bifurcation_splitting_e9aaa5_s11 zauner_conjecture_bifurcation_splitting_e9aaa5_s12) (.seq (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l12 zauner_conjecture_bifurcation_splitting_e9aaa5_s12 zauner_conjecture_bifurcation_splitting_e9aaa5_s13) (.seq (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l13 zauner_conjecture_bifurcation_splitting_e9aaa5_s13 zauner_conjecture_bifurcation_splitting_e9aaa5_s14) (.seq (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l14 zauner_conjecture_bifurcation_splitting_e9aaa5_s14 zauner_conjecture_bifurcation_splitting_e9aaa5_s15) (.seq (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l15 zauner_conjecture_bifurcation_splitting_e9aaa5_s15 zauner_conjecture_bifurcation_splitting_e9aaa5_s16) (.seq (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l16 zauner_conjecture_bifurcation_splitting_e9aaa5_s16 zauner_conjecture_bifurcation_splitting_e9aaa5_s17) (.seq (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l17 zauner_conjecture_bifurcation_splitting_e9aaa5_s17 zauner_conjecture_bifurcation_splitting_e9aaa5_s18) (.seq (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l18 zauner_conjecture_bifurcation_splitting_e9aaa5_s18 zauner_conjecture_bifurcation_splitting_e9aaa5_s19) (.seq (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l19 zauner_conjecture_bifurcation_splitting_e9aaa5_s19 zauner_conjecture_bifurcation_splitting_e9aaa5_s20) (.seq (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l20 zauner_conjecture_bifurcation_splitting_e9aaa5_s20 zauner_conjecture_bifurcation_splitting_e9aaa5_s21) (.seq (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l21 zauner_conjecture_bifurcation_splitting_e9aaa5_s21 zauner_conjecture_bifurcation_splitting_e9aaa5_s22) (.arrow zauner_conjecture_bifurcation_splitting_e9aaa5_l22 zauner_conjecture_bifurcation_splitting_e9aaa5_s22 zauner_conjecture_bifurcation_splitting_e9aaa5_s23)))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def zauner_conjecture_bifurcation_splitting_e9aaa5_true_arm : IGProtocol zauner_conjecture_bifurcation_splitting_e9aaa5_s0 zauner_conjecture_bifurcation_splitting_e9aaa5_s23 :=
  (zauner_conjecture_bifurcation_splitting_e9aaa5_protocol).restrictToEVALT

-- false arm
noncomputable def zauner_conjecture_bifurcation_splitting_e9aaa5_false_arm : IGProtocol zauner_conjecture_bifurcation_splitting_e9aaa5_s0 zauner_conjecture_bifurcation_splitting_e9aaa5_s23 :=
  (zauner_conjecture_bifurcation_splitting_e9aaa5_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def zauner_conjecture_bifurcation_splitting_e9aaa5_tier : OuroboricityTier := TierFunctor.obj zauner_conjecture_bifurcation_splitting_e9aaa5_s0
#eval zauner_conjecture_bifurcation_splitting_e9aaa5_tier  -- the Grammar's own verdict on its tier
