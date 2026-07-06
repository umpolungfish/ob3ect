-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → CLINK → FSPLIT → CLINK → FSPLIT → AFWD → CLINK → FSPLIT → FFUSE → AFWD → IMSCRIB → TANCH → CLINK → FSPLIT → FFUSE → ENGAGR → AFWD → CLINK → EVALT → IFIX → TANCH → IMSCRIB
-- Class: a neuronal organoidthat can be grown from my own cells via ipsc and is ultimately able to interface with me via my pc
-- Fingerprint: sig=(15,6,2,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=24
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(9, 10), (15, 16)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑱  | forward morphism — bidirectional arrow
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [4] FSPLIT    gran   := 𐑚               𐑱 → 𐑱  | split δ — range decomposition
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑚  | composition — regime coherence
--   [6] FSPLIT    gran   := 𐑚               𐑱 → 𐑾  | split δ — range decomposition
--   [7] AFWD      rel    := 𐑾               𐑚 → 𐑱  | forward morphism — bidirectional arrow
--   [8] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [11] AFWD      rel    := 𐑾               𐑙 → 𐑠  | forward morphism — bidirectional arrow
--   [12] IMSCRIB   gram   := 𐑠               𐑾 → 𐑡  | identity — self-imscription
--   [13] TANCH     top    := 𐑡               𐑠 → 𐑱  | terminal object — connectivity boundary
--   [14] CLINK     fid    := 𐑱               𐑡 → 𐑚  | composition — regime coherence
--   [15] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [16] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [17] ENGAGR    stoi   := 𐑳               𐑙 → 𐑾  | engage paradox — B-state, both arms
--   [18] AFWD      rel    := 𐑾               𐑳 → 𐑱  | forward morphism — bidirectional arrow
--   [19] CLINK     fid    := 𐑱               𐑾 → ⊙  | composition — regime coherence
--   [20] EVALT     crit   := ⊙               𐑱 → 𐑭  | evaluate-true — criticality gate open
--   [21] IFIX      prot   := 𐑭               ⊙ → 𐑡  | irreversible fixation — winding number
--   [22] TANCH     top    := 𐑡               𐑭 → 𐑠  | terminal object — connectivity boundary
--   [23] IMSCRIB   gram   := 𐑠               𐑡 → 𐑼  | identity — self-imscription

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := up, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := up, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := up, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l11 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l18 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_neuronal_organoidthat_can_be_grown_fc20ae_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def a_neuronal_organoidthat_can_be_grown_fc20ae_protocol : IGProtocol a_neuronal_organoidthat_can_be_grown_fc20ae_s0 a_neuronal_organoidthat_can_be_grown_fc20ae_s23 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct a_neuronal_organoidthat_can_be_grown_fc20ae_s10 a_neuronal_organoidthat_can_be_grown_fc20ae_s10 = a_neuronal_organoidthat_can_be_grown_fc20ae_s10 (idempotent)
  (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l0 a_neuronal_organoidthat_can_be_grown_fc20ae_s0 a_neuronal_organoidthat_can_be_grown_fc20ae_s1) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l1 a_neuronal_organoidthat_can_be_grown_fc20ae_s1 a_neuronal_organoidthat_can_be_grown_fc20ae_s2) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l2 a_neuronal_organoidthat_can_be_grown_fc20ae_s2 a_neuronal_organoidthat_can_be_grown_fc20ae_s3) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l3 a_neuronal_organoidthat_can_be_grown_fc20ae_s3 a_neuronal_organoidthat_can_be_grown_fc20ae_s4) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l4 a_neuronal_organoidthat_can_be_grown_fc20ae_s4 a_neuronal_organoidthat_can_be_grown_fc20ae_s5) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l5 a_neuronal_organoidthat_can_be_grown_fc20ae_s5 a_neuronal_organoidthat_can_be_grown_fc20ae_s6) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l6 a_neuronal_organoidthat_can_be_grown_fc20ae_s6 a_neuronal_organoidthat_can_be_grown_fc20ae_s7) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l7 a_neuronal_organoidthat_can_be_grown_fc20ae_s7 a_neuronal_organoidthat_can_be_grown_fc20ae_s8) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l8 a_neuronal_organoidthat_can_be_grown_fc20ae_s8 a_neuronal_organoidthat_can_be_grown_fc20ae_s9) (.seq (.prod (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l9 a_neuronal_organoidthat_can_be_grown_fc20ae_s9 a_neuronal_organoidthat_can_be_grown_fc20ae_s10) (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l9 a_neuronal_organoidthat_can_be_grown_fc20ae_s9 a_neuronal_organoidthat_can_be_grown_fc20ae_s10)) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l10 a_neuronal_organoidthat_can_be_grown_fc20ae_s10 a_neuronal_organoidthat_can_be_grown_fc20ae_s10) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l10 a_neuronal_organoidthat_can_be_grown_fc20ae_s10 a_neuronal_organoidthat_can_be_grown_fc20ae_s11) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l11 a_neuronal_organoidthat_can_be_grown_fc20ae_s11 a_neuronal_organoidthat_can_be_grown_fc20ae_s12) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l12 a_neuronal_organoidthat_can_be_grown_fc20ae_s12 a_neuronal_organoidthat_can_be_grown_fc20ae_s13) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l13 a_neuronal_organoidthat_can_be_grown_fc20ae_s13 a_neuronal_organoidthat_can_be_grown_fc20ae_s14) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l14 a_neuronal_organoidthat_can_be_grown_fc20ae_s14 a_neuronal_organoidthat_can_be_grown_fc20ae_s15) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l15 a_neuronal_organoidthat_can_be_grown_fc20ae_s15 a_neuronal_organoidthat_can_be_grown_fc20ae_s16) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l16 a_neuronal_organoidthat_can_be_grown_fc20ae_s16 a_neuronal_organoidthat_can_be_grown_fc20ae_s17) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l17 a_neuronal_organoidthat_can_be_grown_fc20ae_s17 a_neuronal_organoidthat_can_be_grown_fc20ae_s18) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l18 a_neuronal_organoidthat_can_be_grown_fc20ae_s18 a_neuronal_organoidthat_can_be_grown_fc20ae_s19) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l19 a_neuronal_organoidthat_can_be_grown_fc20ae_s19 a_neuronal_organoidthat_can_be_grown_fc20ae_s20) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l20 a_neuronal_organoidthat_can_be_grown_fc20ae_s20 a_neuronal_organoidthat_can_be_grown_fc20ae_s21) (.seq (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l21 a_neuronal_organoidthat_can_be_grown_fc20ae_s21 a_neuronal_organoidthat_can_be_grown_fc20ae_s22) (.arrow a_neuronal_organoidthat_can_be_grown_fc20ae_l22 a_neuronal_organoidthat_can_be_grown_fc20ae_s22 a_neuronal_organoidthat_can_be_grown_fc20ae_s23))))))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def a_neuronal_organoidthat_can_be_grown_fc20ae_true_arm : IGProtocol a_neuronal_organoidthat_can_be_grown_fc20ae_s0 a_neuronal_organoidthat_can_be_grown_fc20ae_s23 :=
  (a_neuronal_organoidthat_can_be_grown_fc20ae_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def a_neuronal_organoidthat_can_be_grown_fc20ae_tier : OuroboricityTier := TierFunctor.obj a_neuronal_organoidthat_can_be_grown_fc20ae_s0
#eval a_neuronal_organoidthat_can_be_grown_fc20ae_tier  -- the Grammar's own verdict on its tier
