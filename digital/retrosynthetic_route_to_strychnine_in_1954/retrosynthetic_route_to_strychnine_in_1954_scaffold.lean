-- IGProtocol scaffold: VINIT → IMSCRIB → AREV → FSPLIT → EVALT → AREV → FSPLIT → EVALF → AREV → FFUSE → EVALT → CLINK → IFIX → FSPLIT → ENGAGR → EVALT → FFUSE → CLINK → AFWD → FFUSE → IMSCRIB → IFIX → TANCH
-- Class: Retrosynthetic Route to Strychnine in 1954
-- Fingerprint: sig=(10,6,5,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=23
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(6, 9), (13, 16), (3, 19)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑗  | identity — self-imscription
--   [2] AREV      pol    := 𐑗               𐑠 → 𐑚  | reverse morphism — parity flip
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [12] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [13] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [14] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [15] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [16] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [17] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [18] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [19] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [20] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [21] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [22] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def retrosynthetic_route_to_strychnine_in_e56570_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_s7 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_s8 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_s9 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_s10 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_s11 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_s12 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def retrosynthetic_route_to_strychnine_in_e56570_s13 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def retrosynthetic_route_to_strychnine_in_e56570_s14 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def retrosynthetic_route_to_strychnine_in_e56570_s15 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def retrosynthetic_route_to_strychnine_in_e56570_s16 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def retrosynthetic_route_to_strychnine_in_e56570_s17 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def retrosynthetic_route_to_strychnine_in_e56570_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def retrosynthetic_route_to_strychnine_in_e56570_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def retrosynthetic_route_to_strychnine_in_e56570_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def retrosynthetic_route_to_strychnine_in_e56570_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def retrosynthetic_route_to_strychnine_in_e56570_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def retrosynthetic_route_to_strychnine_in_e56570_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def retrosynthetic_route_to_strychnine_in_e56570_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l18 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthetic_route_to_strychnine_in_e56570_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def retrosynthetic_route_to_strychnine_in_e56570_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def retrosynthetic_route_to_strychnine_in_e56570_protocol : IGProtocol retrosynthetic_route_to_strychnine_in_e56570_s0 retrosynthetic_route_to_strychnine_in_e56570_s22 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct retrosynthetic_route_to_strychnine_in_e56570_s9 retrosynthetic_route_to_strychnine_in_e56570_s9 = retrosynthetic_route_to_strychnine_in_e56570_s9 (idempotent)
  (.seq (.arrow retrosynthetic_route_to_strychnine_in_e56570_l0 retrosynthetic_route_to_strychnine_in_e56570_s0 retrosynthetic_route_to_strychnine_in_e56570_s1) (.seq (.arrow retrosynthetic_route_to_strychnine_in_e56570_l1 retrosynthetic_route_to_strychnine_in_e56570_s1 retrosynthetic_route_to_strychnine_in_e56570_s2) (.seq (.arrow retrosynthetic_route_to_strychnine_in_e56570_l2 retrosynthetic_route_to_strychnine_in_e56570_s2 retrosynthetic_route_to_strychnine_in_e56570_s3) (.seq (.prod (.arrow retrosynthetic_route_to_strychnine_in_e56570_l3 retrosynthetic_route_to_strychnine_in_e56570_s3 retrosynthetic_route_to_strychnine_in_e56570_s9) (.arrow retrosynthetic_route_to_strychnine_in_e56570_l3 retrosynthetic_route_to_strychnine_in_e56570_s3 retrosynthetic_route_to_strychnine_in_e56570_s9)) (.seq (.arrow retrosynthetic_route_to_strychnine_in_e56570_l9 retrosynthetic_route_to_strychnine_in_e56570_s9 retrosynthetic_route_to_strychnine_in_e56570_s9) (.seq (.arrow retrosynthetic_route_to_strychnine_in_e56570_l9 retrosynthetic_route_to_strychnine_in_e56570_s9 retrosynthetic_route_to_strychnine_in_e56570_s10) (.seq (.arrow retrosynthetic_route_to_strychnine_in_e56570_l10 retrosynthetic_route_to_strychnine_in_e56570_s10 retrosynthetic_route_to_strychnine_in_e56570_s11) (.seq (.arrow retrosynthetic_route_to_strychnine_in_e56570_l11 retrosynthetic_route_to_strychnine_in_e56570_s11 retrosynthetic_route_to_strychnine_in_e56570_s12) (.seq (.arrow retrosynthetic_route_to_strychnine_in_e56570_l12 retrosynthetic_route_to_strychnine_in_e56570_s12 retrosynthetic_route_to_strychnine_in_e56570_s13) (.seq (.arrow retrosynthetic_route_to_strychnine_in_e56570_l13 retrosynthetic_route_to_strychnine_in_e56570_s13 retrosynthetic_route_to_strychnine_in_e56570_s14) (.seq (.arrow retrosynthetic_route_to_strychnine_in_e56570_l14 retrosynthetic_route_to_strychnine_in_e56570_s14 retrosynthetic_route_to_strychnine_in_e56570_s15) (.seq (.arrow retrosynthetic_route_to_strychnine_in_e56570_l15 retrosynthetic_route_to_strychnine_in_e56570_s15 retrosynthetic_route_to_strychnine_in_e56570_s16) (.seq (.arrow retrosynthetic_route_to_strychnine_in_e56570_l16 retrosynthetic_route_to_strychnine_in_e56570_s16 retrosynthetic_route_to_strychnine_in_e56570_s17) (.seq (.arrow retrosynthetic_route_to_strychnine_in_e56570_l17 retrosynthetic_route_to_strychnine_in_e56570_s17 retrosynthetic_route_to_strychnine_in_e56570_s18) (.seq (.arrow retrosynthetic_route_to_strychnine_in_e56570_l18 retrosynthetic_route_to_strychnine_in_e56570_s18 retrosynthetic_route_to_strychnine_in_e56570_s19) (.seq (.arrow retrosynthetic_route_to_strychnine_in_e56570_l19 retrosynthetic_route_to_strychnine_in_e56570_s19 retrosynthetic_route_to_strychnine_in_e56570_s20) (.seq (.arrow retrosynthetic_route_to_strychnine_in_e56570_l20 retrosynthetic_route_to_strychnine_in_e56570_s20 retrosynthetic_route_to_strychnine_in_e56570_s21) (.arrow retrosynthetic_route_to_strychnine_in_e56570_l21 retrosynthetic_route_to_strychnine_in_e56570_s21 retrosynthetic_route_to_strychnine_in_e56570_s22))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def retrosynthetic_route_to_strychnine_in_e56570_true_arm : IGProtocol retrosynthetic_route_to_strychnine_in_e56570_s0 retrosynthetic_route_to_strychnine_in_e56570_s22 :=
  (retrosynthetic_route_to_strychnine_in_e56570_protocol).restrictToEVALT

-- false arm
noncomputable def retrosynthetic_route_to_strychnine_in_e56570_false_arm : IGProtocol retrosynthetic_route_to_strychnine_in_e56570_s0 retrosynthetic_route_to_strychnine_in_e56570_s22 :=
  (retrosynthetic_route_to_strychnine_in_e56570_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def retrosynthetic_route_to_strychnine_in_e56570_tier : OuroboricityTier := TierFunctor.obj retrosynthetic_route_to_strychnine_in_e56570_s0
#eval retrosynthetic_route_to_strychnine_in_e56570_tier  -- the Grammar's own verdict on its tier
