-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → FSPLIT → CLINK → EVALT → AFWD → AREV → EVALT → FFUSE → IFIX → IMSCRIB → AFWD → FSPLIT → CLINK → EVALF → AREV → EVALF → FFUSE → ENGAGR → IFIX → TANCH
-- Class: a candidate algebraic relation found by lindep becomes certified-genuine only when its degree divides the known field degree 288 AND its coefficient height stays bounded as working precision is doubled, so a relation that creeps or has non-dividing degree is flagged as an artifact
-- Fingerprint: sig=(11,4,5,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=22
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 9), (13, 18)]

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
--   [4] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [10] IFIX      prot   := 𐑭               𐑙 → 𐑠  | irreversible fixation — winding number
--   [11] IMSCRIB   gram   := 𐑠               𐑭 → 𐑾  | identity — self-imscription
--   [12] AFWD      rel    := 𐑾               𐑠 → 𐑚  | forward morphism — bidirectional arrow
--   [13] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [14] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [15] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [16] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [17] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [18] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [19] ENGAGR    stoi   := 𐑳               𐑙 → 𐑭  | engage paradox — B-state, both arms
--   [20] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [21] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def a_candidate_algebraic_relation_found_by_8d4c77_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_candidate_algebraic_relation_found_by_8d4c77_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_candidate_algebraic_relation_found_by_8d4c77_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_candidate_algebraic_relation_found_by_8d4c77_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_candidate_algebraic_relation_found_by_8d4c77_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_candidate_algebraic_relation_found_by_8d4c77_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def a_candidate_algebraic_relation_found_by_8d4c77_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def a_candidate_algebraic_relation_found_by_8d4c77_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def a_candidate_algebraic_relation_found_by_8d4c77_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def a_candidate_algebraic_relation_found_by_8d4c77_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def a_candidate_algebraic_relation_found_by_8d4c77_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def a_candidate_algebraic_relation_found_by_8d4c77_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def a_candidate_algebraic_relation_found_by_8d4c77_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_candidate_algebraic_relation_found_by_8d4c77_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_l12 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def a_candidate_algebraic_relation_found_by_8d4c77_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_candidate_algebraic_relation_found_by_8d4c77_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def a_candidate_algebraic_relation_found_by_8d4c77_protocol : IGProtocol a_candidate_algebraic_relation_found_by_8d4c77_s0 a_candidate_algebraic_relation_found_by_8d4c77_s21 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct a_candidate_algebraic_relation_found_by_8d4c77_s9 a_candidate_algebraic_relation_found_by_8d4c77_s9 = a_candidate_algebraic_relation_found_by_8d4c77_s9 (idempotent)
  (.seq (.arrow a_candidate_algebraic_relation_found_by_8d4c77_l0 a_candidate_algebraic_relation_found_by_8d4c77_s0 a_candidate_algebraic_relation_found_by_8d4c77_s1) (.seq (.arrow a_candidate_algebraic_relation_found_by_8d4c77_l1 a_candidate_algebraic_relation_found_by_8d4c77_s1 a_candidate_algebraic_relation_found_by_8d4c77_s2) (.seq (.arrow a_candidate_algebraic_relation_found_by_8d4c77_l2 a_candidate_algebraic_relation_found_by_8d4c77_s2 a_candidate_algebraic_relation_found_by_8d4c77_s3) (.seq (.prod (.arrow a_candidate_algebraic_relation_found_by_8d4c77_l3 a_candidate_algebraic_relation_found_by_8d4c77_s3 a_candidate_algebraic_relation_found_by_8d4c77_s9) (.arrow a_candidate_algebraic_relation_found_by_8d4c77_l3 a_candidate_algebraic_relation_found_by_8d4c77_s3 a_candidate_algebraic_relation_found_by_8d4c77_s9)) (.seq (.arrow a_candidate_algebraic_relation_found_by_8d4c77_l9 a_candidate_algebraic_relation_found_by_8d4c77_s9 a_candidate_algebraic_relation_found_by_8d4c77_s9) (.seq (.arrow a_candidate_algebraic_relation_found_by_8d4c77_l9 a_candidate_algebraic_relation_found_by_8d4c77_s9 a_candidate_algebraic_relation_found_by_8d4c77_s10) (.seq (.arrow a_candidate_algebraic_relation_found_by_8d4c77_l10 a_candidate_algebraic_relation_found_by_8d4c77_s10 a_candidate_algebraic_relation_found_by_8d4c77_s11) (.seq (.arrow a_candidate_algebraic_relation_found_by_8d4c77_l11 a_candidate_algebraic_relation_found_by_8d4c77_s11 a_candidate_algebraic_relation_found_by_8d4c77_s12) (.seq (.arrow a_candidate_algebraic_relation_found_by_8d4c77_l12 a_candidate_algebraic_relation_found_by_8d4c77_s12 a_candidate_algebraic_relation_found_by_8d4c77_s13) (.seq (.arrow a_candidate_algebraic_relation_found_by_8d4c77_l13 a_candidate_algebraic_relation_found_by_8d4c77_s13 a_candidate_algebraic_relation_found_by_8d4c77_s14) (.seq (.arrow a_candidate_algebraic_relation_found_by_8d4c77_l14 a_candidate_algebraic_relation_found_by_8d4c77_s14 a_candidate_algebraic_relation_found_by_8d4c77_s15) (.seq (.arrow a_candidate_algebraic_relation_found_by_8d4c77_l15 a_candidate_algebraic_relation_found_by_8d4c77_s15 a_candidate_algebraic_relation_found_by_8d4c77_s16) (.seq (.arrow a_candidate_algebraic_relation_found_by_8d4c77_l16 a_candidate_algebraic_relation_found_by_8d4c77_s16 a_candidate_algebraic_relation_found_by_8d4c77_s17) (.seq (.arrow a_candidate_algebraic_relation_found_by_8d4c77_l17 a_candidate_algebraic_relation_found_by_8d4c77_s17 a_candidate_algebraic_relation_found_by_8d4c77_s18) (.seq (.arrow a_candidate_algebraic_relation_found_by_8d4c77_l18 a_candidate_algebraic_relation_found_by_8d4c77_s18 a_candidate_algebraic_relation_found_by_8d4c77_s19) (.seq (.arrow a_candidate_algebraic_relation_found_by_8d4c77_l19 a_candidate_algebraic_relation_found_by_8d4c77_s19 a_candidate_algebraic_relation_found_by_8d4c77_s20) (.arrow a_candidate_algebraic_relation_found_by_8d4c77_l20 a_candidate_algebraic_relation_found_by_8d4c77_s20 a_candidate_algebraic_relation_found_by_8d4c77_s21)))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def a_candidate_algebraic_relation_found_by_8d4c77_true_arm : IGProtocol a_candidate_algebraic_relation_found_by_8d4c77_s0 a_candidate_algebraic_relation_found_by_8d4c77_s21 :=
  (a_candidate_algebraic_relation_found_by_8d4c77_protocol).restrictToEVALT

-- false arm
noncomputable def a_candidate_algebraic_relation_found_by_8d4c77_false_arm : IGProtocol a_candidate_algebraic_relation_found_by_8d4c77_s0 a_candidate_algebraic_relation_found_by_8d4c77_s21 :=
  (a_candidate_algebraic_relation_found_by_8d4c77_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def a_candidate_algebraic_relation_found_by_8d4c77_tier : OuroboricityTier := TierFunctor.obj a_candidate_algebraic_relation_found_by_8d4c77_s0
#eval a_candidate_algebraic_relation_found_by_8d4c77_tier  -- the Grammar's own verdict on its tier
