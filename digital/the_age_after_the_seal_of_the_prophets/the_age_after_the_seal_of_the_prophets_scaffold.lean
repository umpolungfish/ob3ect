-- IGProtocol scaffold: VINIT → IMSCRIB → IFIX → AFWD → CLINK → TANCH → IMSCRIB → IFIX → FSPLIT → EVALT → EVALF → FFUSE → CLINK → FSPLIT → EVALT → AFWD → FFUSE → ENGAGR → AREV → IFIX → TANCH
-- Class: The Age after the Seal of the Prophets
-- Fingerprint: sig=(10,4,4,3)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=21
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(8, 11), (13, 16)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑭  | identity — self-imscription
--   [2] IFIX      prot   := 𐑭               𐑠 → 𐑾  | irreversible fixation — winding number
--   [3] AFWD      rel    := 𐑾               𐑭 → 𐑱  | forward morphism — bidirectional arrow
--   [4] CLINK     fid    := 𐑱               𐑾 → 𐑡  | composition — regime coherence
--   [5] TANCH     top    := 𐑡               𐑱 → 𐑠  | terminal object — connectivity boundary
--   [6] IMSCRIB   gram   := 𐑠               𐑡 → 𐑭  | identity — self-imscription
--   [7] IFIX      prot   := 𐑭               𐑠 → 𐑚  | irreversible fixation — winding number
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [12] CLINK     fid    := 𐑱               𐑙 → 𐑚  | composition — regime coherence
--   [13] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [14] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [15] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [16] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [17] ENGAGR    stoi   := 𐑳               𐑙 → 𐑗  | engage paradox — B-state, both arms
--   [18] AREV      pol    := 𐑗               𐑳 → 𐑭  | reverse morphism — parity flip
--   [19] IFIX      prot   := 𐑭               𐑗 → 𐑡  | irreversible fixation — winding number
--   [20] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_age_after_the_seal_of_the_prophets_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_age_after_the_seal_of_the_prophets_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_age_after_the_seal_of_the_prophets_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_age_after_the_seal_of_the_prophets_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_age_after_the_seal_of_the_prophets_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_age_after_the_seal_of_the_prophets_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_age_after_the_seal_of_the_prophets_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_age_after_the_seal_of_the_prophets_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_age_after_the_seal_of_the_prophets_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_age_after_the_seal_of_the_prophets_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_age_after_the_seal_of_the_prophets_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_age_after_the_seal_of_the_prophets_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_age_after_the_seal_of_the_prophets_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_age_after_the_seal_of_the_prophets_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_age_after_the_seal_of_the_prophets_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_age_after_the_seal_of_the_prophets_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_age_after_the_seal_of_the_prophets_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_age_after_the_seal_of_the_prophets_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_age_after_the_seal_of_the_prophets_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_age_after_the_seal_of_the_prophets_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_age_after_the_seal_of_the_prophets_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_age_after_the_seal_of_the_prophets_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_age_after_the_seal_of_the_prophets_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_age_after_the_seal_of_the_prophets_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_age_after_the_seal_of_the_prophets_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_age_after_the_seal_of_the_prophets_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_age_after_the_seal_of_the_prophets_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_age_after_the_seal_of_the_prophets_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_age_after_the_seal_of_the_prophets_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_age_after_the_seal_of_the_prophets_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_age_after_the_seal_of_the_prophets_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_age_after_the_seal_of_the_prophets_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_age_after_the_seal_of_the_prophets_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_age_after_the_seal_of_the_prophets_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_age_after_the_seal_of_the_prophets_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_age_after_the_seal_of_the_prophets_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_age_after_the_seal_of_the_prophets_l15 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_age_after_the_seal_of_the_prophets_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_age_after_the_seal_of_the_prophets_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_age_after_the_seal_of_the_prophets_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_age_after_the_seal_of_the_prophets_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_age_after_the_seal_of_the_prophets_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_age_after_the_seal_of_the_prophets_protocol : IGProtocol the_age_after_the_seal_of_the_prophets_s0 the_age_after_the_seal_of_the_prophets_s20 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_age_after_the_seal_of_the_prophets_s11 the_age_after_the_seal_of_the_prophets_s11 = the_age_after_the_seal_of_the_prophets_s11 (idempotent)
  (.seq (.arrow the_age_after_the_seal_of_the_prophets_l0 the_age_after_the_seal_of_the_prophets_s0 the_age_after_the_seal_of_the_prophets_s1) (.seq (.arrow the_age_after_the_seal_of_the_prophets_l1 the_age_after_the_seal_of_the_prophets_s1 the_age_after_the_seal_of_the_prophets_s2) (.seq (.arrow the_age_after_the_seal_of_the_prophets_l2 the_age_after_the_seal_of_the_prophets_s2 the_age_after_the_seal_of_the_prophets_s3) (.seq (.arrow the_age_after_the_seal_of_the_prophets_l3 the_age_after_the_seal_of_the_prophets_s3 the_age_after_the_seal_of_the_prophets_s4) (.seq (.arrow the_age_after_the_seal_of_the_prophets_l4 the_age_after_the_seal_of_the_prophets_s4 the_age_after_the_seal_of_the_prophets_s5) (.seq (.arrow the_age_after_the_seal_of_the_prophets_l5 the_age_after_the_seal_of_the_prophets_s5 the_age_after_the_seal_of_the_prophets_s6) (.seq (.arrow the_age_after_the_seal_of_the_prophets_l6 the_age_after_the_seal_of_the_prophets_s6 the_age_after_the_seal_of_the_prophets_s7) (.seq (.arrow the_age_after_the_seal_of_the_prophets_l7 the_age_after_the_seal_of_the_prophets_s7 the_age_after_the_seal_of_the_prophets_s8) (.seq (.prod (.arrow the_age_after_the_seal_of_the_prophets_l8 the_age_after_the_seal_of_the_prophets_s8 the_age_after_the_seal_of_the_prophets_s11) (.arrow the_age_after_the_seal_of_the_prophets_l8 the_age_after_the_seal_of_the_prophets_s8 the_age_after_the_seal_of_the_prophets_s11)) (.seq (.arrow the_age_after_the_seal_of_the_prophets_l11 the_age_after_the_seal_of_the_prophets_s11 the_age_after_the_seal_of_the_prophets_s11) (.seq (.arrow the_age_after_the_seal_of_the_prophets_l11 the_age_after_the_seal_of_the_prophets_s11 the_age_after_the_seal_of_the_prophets_s12) (.seq (.arrow the_age_after_the_seal_of_the_prophets_l12 the_age_after_the_seal_of_the_prophets_s12 the_age_after_the_seal_of_the_prophets_s13) (.seq (.arrow the_age_after_the_seal_of_the_prophets_l13 the_age_after_the_seal_of_the_prophets_s13 the_age_after_the_seal_of_the_prophets_s14) (.seq (.arrow the_age_after_the_seal_of_the_prophets_l14 the_age_after_the_seal_of_the_prophets_s14 the_age_after_the_seal_of_the_prophets_s15) (.seq (.arrow the_age_after_the_seal_of_the_prophets_l15 the_age_after_the_seal_of_the_prophets_s15 the_age_after_the_seal_of_the_prophets_s16) (.seq (.arrow the_age_after_the_seal_of_the_prophets_l16 the_age_after_the_seal_of_the_prophets_s16 the_age_after_the_seal_of_the_prophets_s17) (.seq (.arrow the_age_after_the_seal_of_the_prophets_l17 the_age_after_the_seal_of_the_prophets_s17 the_age_after_the_seal_of_the_prophets_s18) (.seq (.arrow the_age_after_the_seal_of_the_prophets_l18 the_age_after_the_seal_of_the_prophets_s18 the_age_after_the_seal_of_the_prophets_s19) (.arrow the_age_after_the_seal_of_the_prophets_l19 the_age_after_the_seal_of_the_prophets_s19 the_age_after_the_seal_of_the_prophets_s20)))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_age_after_the_seal_of_the_prophets_true_arm : IGProtocol the_age_after_the_seal_of_the_prophets_s0 the_age_after_the_seal_of_the_prophets_s20 :=
  (the_age_after_the_seal_of_the_prophets_protocol).restrictToEVALT

-- false arm
noncomputable def the_age_after_the_seal_of_the_prophets_false_arm : IGProtocol the_age_after_the_seal_of_the_prophets_s0 the_age_after_the_seal_of_the_prophets_s20 :=
  (the_age_after_the_seal_of_the_prophets_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def the_age_after_the_seal_of_the_prophets_tier : OuroboricityTier := TierFunctor.obj the_age_after_the_seal_of_the_prophets_s0
#eval the_age_after_the_seal_of_the_prophets_tier  -- the Grammar's own verdict on its tier
