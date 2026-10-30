-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → FSPLIT → EVALT → FFUSE → IFIX → CLINK → FSPLIT → ENGAGR → EVALT → EVALF → FFUSE → IFIX → AFWD → FSPLIT → AREV → EVALF → FFUSE → TANCH
-- Class: the entire interconnected periodic table, each elemnt displayed individually as its sequence
-- Fingerprint: sig=(7,6,5,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=20
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 5), (8, 12), (15, 18)]

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
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [6] IFIX      prot   := 𐑭               𐑙 → 𐑱  | irreversible fixation — winding number
--   [7] CLINK     fid    := 𐑱               𐑭 → 𐑚  | composition — regime coherence
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [13] IFIX      prot   := 𐑭               𐑙 → 𐑾  | irreversible fixation — winding number
--   [14] AFWD      rel    := 𐑾               𐑭 → 𐑚  | forward morphism — bidirectional arrow
--   [15] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [16] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [17] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [18] FFUSE     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [19] TANCH     top    := 𐑡               𐑙 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_entire_interconnected_periodic_c7230b_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_entire_interconnected_periodic_c7230b_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_entire_interconnected_periodic_c7230b_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_entire_interconnected_periodic_c7230b_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def the_entire_interconnected_periodic_c7230b_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def the_entire_interconnected_periodic_c7230b_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_entire_interconnected_periodic_c7230b_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_entire_interconnected_periodic_c7230b_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_entire_interconnected_periodic_c7230b_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_entire_interconnected_periodic_c7230b_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_entire_interconnected_periodic_c7230b_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_entire_interconnected_periodic_c7230b_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_entire_interconnected_periodic_c7230b_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_entire_interconnected_periodic_c7230b_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_entire_interconnected_periodic_c7230b_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_entire_interconnected_periodic_c7230b_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_entire_interconnected_periodic_c7230b_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_entire_interconnected_periodic_c7230b_l14 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_entire_interconnected_periodic_c7230b_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_entire_interconnected_periodic_c7230b_protocol : IGProtocol the_entire_interconnected_periodic_c7230b_s0 the_entire_interconnected_periodic_c7230b_s19 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_entire_interconnected_periodic_c7230b_s5 the_entire_interconnected_periodic_c7230b_s5 = the_entire_interconnected_periodic_c7230b_s5 (idempotent)
  (.seq (.arrow the_entire_interconnected_periodic_c7230b_l0 the_entire_interconnected_periodic_c7230b_s0 the_entire_interconnected_periodic_c7230b_s1) (.seq (.arrow the_entire_interconnected_periodic_c7230b_l1 the_entire_interconnected_periodic_c7230b_s1 the_entire_interconnected_periodic_c7230b_s2) (.seq (.arrow the_entire_interconnected_periodic_c7230b_l2 the_entire_interconnected_periodic_c7230b_s2 the_entire_interconnected_periodic_c7230b_s3) (.seq (.prod (.arrow the_entire_interconnected_periodic_c7230b_l3 the_entire_interconnected_periodic_c7230b_s3 the_entire_interconnected_periodic_c7230b_s5) (.arrow the_entire_interconnected_periodic_c7230b_l3 the_entire_interconnected_periodic_c7230b_s3 the_entire_interconnected_periodic_c7230b_s5)) (.seq (.arrow the_entire_interconnected_periodic_c7230b_l5 the_entire_interconnected_periodic_c7230b_s5 the_entire_interconnected_periodic_c7230b_s5) (.seq (.arrow the_entire_interconnected_periodic_c7230b_l5 the_entire_interconnected_periodic_c7230b_s5 the_entire_interconnected_periodic_c7230b_s6) (.seq (.arrow the_entire_interconnected_periodic_c7230b_l6 the_entire_interconnected_periodic_c7230b_s6 the_entire_interconnected_periodic_c7230b_s7) (.seq (.arrow the_entire_interconnected_periodic_c7230b_l7 the_entire_interconnected_periodic_c7230b_s7 the_entire_interconnected_periodic_c7230b_s8) (.seq (.arrow the_entire_interconnected_periodic_c7230b_l8 the_entire_interconnected_periodic_c7230b_s8 the_entire_interconnected_periodic_c7230b_s9) (.seq (.arrow the_entire_interconnected_periodic_c7230b_l9 the_entire_interconnected_periodic_c7230b_s9 the_entire_interconnected_periodic_c7230b_s10) (.seq (.arrow the_entire_interconnected_periodic_c7230b_l10 the_entire_interconnected_periodic_c7230b_s10 the_entire_interconnected_periodic_c7230b_s11) (.seq (.arrow the_entire_interconnected_periodic_c7230b_l11 the_entire_interconnected_periodic_c7230b_s11 the_entire_interconnected_periodic_c7230b_s12) (.seq (.arrow the_entire_interconnected_periodic_c7230b_l12 the_entire_interconnected_periodic_c7230b_s12 the_entire_interconnected_periodic_c7230b_s13) (.seq (.arrow the_entire_interconnected_periodic_c7230b_l13 the_entire_interconnected_periodic_c7230b_s13 the_entire_interconnected_periodic_c7230b_s14) (.seq (.arrow the_entire_interconnected_periodic_c7230b_l14 the_entire_interconnected_periodic_c7230b_s14 the_entire_interconnected_periodic_c7230b_s15) (.seq (.arrow the_entire_interconnected_periodic_c7230b_l15 the_entire_interconnected_periodic_c7230b_s15 the_entire_interconnected_periodic_c7230b_s16) (.seq (.arrow the_entire_interconnected_periodic_c7230b_l16 the_entire_interconnected_periodic_c7230b_s16 the_entire_interconnected_periodic_c7230b_s17) (.seq (.arrow the_entire_interconnected_periodic_c7230b_l17 the_entire_interconnected_periodic_c7230b_s17 the_entire_interconnected_periodic_c7230b_s18) (.arrow the_entire_interconnected_periodic_c7230b_l18 the_entire_interconnected_periodic_c7230b_s18 the_entire_interconnected_periodic_c7230b_s19)))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_entire_interconnected_periodic_c7230b_true_arm : IGProtocol the_entire_interconnected_periodic_c7230b_s0 the_entire_interconnected_periodic_c7230b_s19 :=
  (the_entire_interconnected_periodic_c7230b_protocol).restrictToEVALT

-- false arm
noncomputable def the_entire_interconnected_periodic_c7230b_false_arm : IGProtocol the_entire_interconnected_periodic_c7230b_s0 the_entire_interconnected_periodic_c7230b_s19 :=
  (the_entire_interconnected_periodic_c7230b_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_entire_interconnected_periodic_c7230b_tier : OuroboricityTier := TierFunctor.obj the_entire_interconnected_periodic_c7230b_s0
#eval the_entire_interconnected_periodic_c7230b_tier  -- the Grammar's own verdict on its tier
