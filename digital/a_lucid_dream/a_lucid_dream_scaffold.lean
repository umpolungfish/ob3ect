-- IGProtocol scaffold: VINIT → AFWD → CLINK → FSPLIT → EVALT → IMSCRIB → FFUSE → AFWD → CLINK → FSPLIT → EVALF → AREV → FFUSE → ENGAGR → IFIX → TANCH
-- Class: a lucid dream
-- Fingerprint: sig=(8,4,3,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=16
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 6), (9, 12)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑱  | forward morphism — bidirectional arrow
--   [2] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [7] AFWD      rel    := 𐑾               𐑙 → 𐑱  | forward morphism — bidirectional arrow
--   [8] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [13] ENGAGR    stoi   := 𐑳               𐑙 → 𐑭  | engage paradox — B-state, both arms
--   [14] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [15] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def a_lucid_dream_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_lucid_dream_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_lucid_dream_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_lucid_dream_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def a_lucid_dream_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def a_lucid_dream_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def a_lucid_dream_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def a_lucid_dream_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lucid_dream_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def a_lucid_dream_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_lucid_dream_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def a_lucid_dream_protocol : IGProtocol a_lucid_dream_s0 a_lucid_dream_s15 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct a_lucid_dream_s6 a_lucid_dream_s6 = a_lucid_dream_s6 (idempotent)
  (.seq (.arrow a_lucid_dream_l0 a_lucid_dream_s0 a_lucid_dream_s1) (.seq (.arrow a_lucid_dream_l1 a_lucid_dream_s1 a_lucid_dream_s2) (.seq (.arrow a_lucid_dream_l2 a_lucid_dream_s2 a_lucid_dream_s3) (.seq (.prod (.arrow a_lucid_dream_l3 a_lucid_dream_s3 a_lucid_dream_s6) (.arrow a_lucid_dream_l3 a_lucid_dream_s3 a_lucid_dream_s6)) (.seq (.arrow a_lucid_dream_l6 a_lucid_dream_s6 a_lucid_dream_s6) (.seq (.arrow a_lucid_dream_l6 a_lucid_dream_s6 a_lucid_dream_s7) (.seq (.arrow a_lucid_dream_l7 a_lucid_dream_s7 a_lucid_dream_s8) (.seq (.arrow a_lucid_dream_l8 a_lucid_dream_s8 a_lucid_dream_s9) (.seq (.arrow a_lucid_dream_l9 a_lucid_dream_s9 a_lucid_dream_s10) (.seq (.arrow a_lucid_dream_l10 a_lucid_dream_s10 a_lucid_dream_s11) (.seq (.arrow a_lucid_dream_l11 a_lucid_dream_s11 a_lucid_dream_s12) (.seq (.arrow a_lucid_dream_l12 a_lucid_dream_s12 a_lucid_dream_s13) (.seq (.arrow a_lucid_dream_l13 a_lucid_dream_s13 a_lucid_dream_s14) (.arrow a_lucid_dream_l14 a_lucid_dream_s14 a_lucid_dream_s15))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def a_lucid_dream_true_arm : IGProtocol a_lucid_dream_s0 a_lucid_dream_s15 :=
  (a_lucid_dream_protocol).restrictToEVALT

-- false arm
noncomputable def a_lucid_dream_false_arm : IGProtocol a_lucid_dream_s0 a_lucid_dream_s15 :=
  (a_lucid_dream_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def a_lucid_dream_tier : OuroboricityTier := TierFunctor.obj a_lucid_dream_s0
#eval a_lucid_dream_tier  -- the Grammar's own verdict on its tier
