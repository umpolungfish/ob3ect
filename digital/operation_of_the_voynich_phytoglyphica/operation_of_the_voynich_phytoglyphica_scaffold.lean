-- IGProtocol scaffold: VINIT → CLINK → CLINK → IFIX → IFIX → AFWD → AREV → IMSCRIB → TANCH → FSPLIT → EVALT → EVALF → FFUSE → ENGAGR → CLINK → FSPLIT → EVALT → EVALF → FFUSE → IFIX
-- Class: Operation of the Voynich Phytoglyphica
-- Fingerprint: sig=(8,4,5,3)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=20
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(9, 12), (15, 18)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑱  | initial object — ground of distinction
--   [1] CLINK     fid    := 𐑱               𐑼 → 𐑱  | composition — regime coherence
--   [2] CLINK     fid    := 𐑱               𐑱 → 𐑭  | composition — regime coherence
--   [3] IFIX      prot   := 𐑭               𐑱 → 𐑭  | irreversible fixation — winding number
--   [4] IFIX      prot   := 𐑭               𐑭 → 𐑾  | irreversible fixation — winding number
--   [5] AFWD      rel    := 𐑾               𐑭 → 𐑗  | forward morphism — bidirectional arrow
--   [6] AREV      pol    := 𐑗               𐑾 → 𐑠  | reverse morphism — parity flip
--   [7] IMSCRIB   gram   := 𐑠               𐑗 → 𐑡  | identity — self-imscription
--   [8] TANCH     top    := 𐑡               𐑠 → 𐑚  | terminal object — connectivity boundary
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [13] ENGAGR    stoi   := 𐑳               𐑙 → 𐑱  | engage paradox — B-state, both arms
--   [14] CLINK     fid    := 𐑱               𐑳 → 𐑚  | composition — regime coherence
--   [15] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [16] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [17] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [18] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [19] IFIX      prot   := 𐑭               𐑙 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def operation_of_the_voynich_phytoglyphica_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_voynich_phytoglyphica_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_voynich_phytoglyphica_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_voynich_phytoglyphica_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def operation_of_the_voynich_phytoglyphica_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def operation_of_the_voynich_phytoglyphica_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def operation_of_the_voynich_phytoglyphica_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def operation_of_the_voynich_phytoglyphica_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def operation_of_the_voynich_phytoglyphica_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def operation_of_the_voynich_phytoglyphica_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def operation_of_the_voynich_phytoglyphica_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def operation_of_the_voynich_phytoglyphica_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def operation_of_the_voynich_phytoglyphica_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def operation_of_the_voynich_phytoglyphica_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def operation_of_the_voynich_phytoglyphica_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def operation_of_the_voynich_phytoglyphica_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def operation_of_the_voynich_phytoglyphica_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def operation_of_the_voynich_phytoglyphica_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def operation_of_the_voynich_phytoglyphica_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def operation_of_the_voynich_phytoglyphica_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def operation_of_the_voynich_phytoglyphica_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_voynich_phytoglyphica_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_voynich_phytoglyphica_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_voynich_phytoglyphica_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def operation_of_the_voynich_phytoglyphica_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def operation_of_the_voynich_phytoglyphica_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_voynich_phytoglyphica_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_voynich_phytoglyphica_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_voynich_phytoglyphica_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_voynich_phytoglyphica_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_voynich_phytoglyphica_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_voynich_phytoglyphica_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def operation_of_the_voynich_phytoglyphica_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_voynich_phytoglyphica_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def operation_of_the_voynich_phytoglyphica_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_voynich_phytoglyphica_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_voynich_phytoglyphica_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_voynich_phytoglyphica_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def operation_of_the_voynich_phytoglyphica_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_voynich_phytoglyphica_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def operation_of_the_voynich_phytoglyphica_protocol : IGProtocol operation_of_the_voynich_phytoglyphica_s0 operation_of_the_voynich_phytoglyphica_s19 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct operation_of_the_voynich_phytoglyphica_s12 operation_of_the_voynich_phytoglyphica_s12 = operation_of_the_voynich_phytoglyphica_s12 (idempotent)
  (.seq (.arrow operation_of_the_voynich_phytoglyphica_l0 operation_of_the_voynich_phytoglyphica_s0 operation_of_the_voynich_phytoglyphica_s1) (.seq (.arrow operation_of_the_voynich_phytoglyphica_l1 operation_of_the_voynich_phytoglyphica_s1 operation_of_the_voynich_phytoglyphica_s2) (.seq (.arrow operation_of_the_voynich_phytoglyphica_l2 operation_of_the_voynich_phytoglyphica_s2 operation_of_the_voynich_phytoglyphica_s3) (.seq (.arrow operation_of_the_voynich_phytoglyphica_l3 operation_of_the_voynich_phytoglyphica_s3 operation_of_the_voynich_phytoglyphica_s4) (.seq (.arrow operation_of_the_voynich_phytoglyphica_l4 operation_of_the_voynich_phytoglyphica_s4 operation_of_the_voynich_phytoglyphica_s5) (.seq (.arrow operation_of_the_voynich_phytoglyphica_l5 operation_of_the_voynich_phytoglyphica_s5 operation_of_the_voynich_phytoglyphica_s6) (.seq (.arrow operation_of_the_voynich_phytoglyphica_l6 operation_of_the_voynich_phytoglyphica_s6 operation_of_the_voynich_phytoglyphica_s7) (.seq (.arrow operation_of_the_voynich_phytoglyphica_l7 operation_of_the_voynich_phytoglyphica_s7 operation_of_the_voynich_phytoglyphica_s8) (.seq (.arrow operation_of_the_voynich_phytoglyphica_l8 operation_of_the_voynich_phytoglyphica_s8 operation_of_the_voynich_phytoglyphica_s9) (.seq (.prod (.arrow operation_of_the_voynich_phytoglyphica_l9 operation_of_the_voynich_phytoglyphica_s9 operation_of_the_voynich_phytoglyphica_s12) (.arrow operation_of_the_voynich_phytoglyphica_l9 operation_of_the_voynich_phytoglyphica_s9 operation_of_the_voynich_phytoglyphica_s12)) (.seq (.arrow operation_of_the_voynich_phytoglyphica_l12 operation_of_the_voynich_phytoglyphica_s12 operation_of_the_voynich_phytoglyphica_s12) (.seq (.arrow operation_of_the_voynich_phytoglyphica_l12 operation_of_the_voynich_phytoglyphica_s12 operation_of_the_voynich_phytoglyphica_s13) (.seq (.arrow operation_of_the_voynich_phytoglyphica_l13 operation_of_the_voynich_phytoglyphica_s13 operation_of_the_voynich_phytoglyphica_s14) (.seq (.arrow operation_of_the_voynich_phytoglyphica_l14 operation_of_the_voynich_phytoglyphica_s14 operation_of_the_voynich_phytoglyphica_s15) (.seq (.arrow operation_of_the_voynich_phytoglyphica_l15 operation_of_the_voynich_phytoglyphica_s15 operation_of_the_voynich_phytoglyphica_s16) (.seq (.arrow operation_of_the_voynich_phytoglyphica_l16 operation_of_the_voynich_phytoglyphica_s16 operation_of_the_voynich_phytoglyphica_s17) (.seq (.arrow operation_of_the_voynich_phytoglyphica_l17 operation_of_the_voynich_phytoglyphica_s17 operation_of_the_voynich_phytoglyphica_s18) (.arrow operation_of_the_voynich_phytoglyphica_l18 operation_of_the_voynich_phytoglyphica_s18 operation_of_the_voynich_phytoglyphica_s19))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def operation_of_the_voynich_phytoglyphica_true_arm : IGProtocol operation_of_the_voynich_phytoglyphica_s0 operation_of_the_voynich_phytoglyphica_s19 :=
  (operation_of_the_voynich_phytoglyphica_protocol).restrictToEVALT

-- false arm
noncomputable def operation_of_the_voynich_phytoglyphica_false_arm : IGProtocol operation_of_the_voynich_phytoglyphica_s0 operation_of_the_voynich_phytoglyphica_s19 :=
  (operation_of_the_voynich_phytoglyphica_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def operation_of_the_voynich_phytoglyphica_tier : OuroboricityTier := TierFunctor.obj operation_of_the_voynich_phytoglyphica_s0
#eval operation_of_the_voynich_phytoglyphica_tier  -- the Grammar's own verdict on its tier
