-- IGProtocol scaffold: VINIT → TANCH → AFWD → IFIX → AFWD → IFIX → IMSCRIB → CLINK → FFUSE → EVALT → AFWD → ENGAGR → IFIX → FSPLIT → CLINK
-- Class: ford_circles
-- Fingerprint: sig=(8,2,2,3)
--   self_ref=False | frobenius_order=2
--   dialetheia_complete=False | period=15
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: []

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑭  | forward morphism — bidirectional arrow
--   [3] IFIX      prot   := 𐑭               𐑾 → 𐑾  | irreversible fixation — winding number
--   [4] AFWD      rel    := 𐑾               𐑭 → 𐑭  | forward morphism — bidirectional arrow
--   [5] IFIX      prot   := 𐑭               𐑾 → 𐑠  | irreversible fixation — winding number
--   [6] IMSCRIB   gram   := 𐑠               𐑭 → 𐑱  | identity — self-imscription
--   [7] CLINK     fid    := 𐑱               𐑠 → 𐑙  | composition — regime coherence
--   [8] FFUSE     stoi   := 𐑙               𐑱 → ⊙  | fuse μ — assembly mode
--   [9] EVALT     crit   := ⊙               𐑙 → 𐑾  | evaluate-true — criticality gate open
--   [10] AFWD      rel    := 𐑾               ⊙ → 𐑳  | forward morphism — bidirectional arrow
--   [11] ENGAGR    stoi   := 𐑳               𐑾 → 𐑭  | engage paradox — B-state, both arms
--   [12] IFIX      prot   := 𐑭               𐑳 → 𐑚  | irreversible fixation — winding number
--   [13] FSPLIT    gran   := 𐑚               𐑭 → 𐑱  | split δ — range decomposition
--   [14] CLINK     fid    := 𐑱               𐑚 → 𐑼  | composition — regime coherence

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def ford_circles_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ford_circles_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ford_circles_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ford_circles_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ford_circles_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ford_circles_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ford_circles_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ford_circles_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ford_circles_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ford_circles_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def ford_circles_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def ford_circles_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def ford_circles_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def ford_circles_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def ford_circles_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def ford_circles_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ford_circles_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ford_circles_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ford_circles_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ford_circles_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ford_circles_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ford_circles_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ford_circles_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ford_circles_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ford_circles_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ford_circles_l10 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ford_circles_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def ford_circles_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ford_circles_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ford_circles_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def ford_circles_protocol : IGProtocol ford_circles_s0 ford_circles_s14 :=
  .withGram Grammar.measure <|
  (.seq (.arrow ford_circles_l0 ford_circles_s0 ford_circles_s1) (.seq (.arrow ford_circles_l1 ford_circles_s1 ford_circles_s2) (.seq (.arrow ford_circles_l2 ford_circles_s2 ford_circles_s3) (.seq (.arrow ford_circles_l3 ford_circles_s3 ford_circles_s4) (.seq (.arrow ford_circles_l4 ford_circles_s4 ford_circles_s5) (.seq (.arrow ford_circles_l5 ford_circles_s5 ford_circles_s6) (.seq (.arrow ford_circles_l6 ford_circles_s6 ford_circles_s7) (.seq (.arrow ford_circles_l7 ford_circles_s7 ford_circles_s8) (.seq (.arrow ford_circles_l8 ford_circles_s8 ford_circles_s9) (.seq (.arrow ford_circles_l9 ford_circles_s9 ford_circles_s10) (.seq (.arrow ford_circles_l10 ford_circles_s10 ford_circles_s11) (.seq (.arrow ford_circles_l11 ford_circles_s11 ford_circles_s12) (.seq (.arrow ford_circles_l12 ford_circles_s12 ford_circles_s13) (.arrow ford_circles_l13 ford_circles_s13 ford_circles_s14))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def ford_circles_true_arm : IGProtocol ford_circles_s0 ford_circles_s14 :=
  (ford_circles_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def ford_circles_tier : OuroboricityTier := TierFunctor.obj ford_circles_s0
#eval ford_circles_tier  -- the Grammar's own verdict on its tier

-- Frobenius (fuse → split): μ∘δ = id on the ground imscription
theorem ford_circles_frobenius :
    igFrobeniusAlg.mul ford_circles_s0 ford_circles_s0 = ford_circles_s0 :=
  igFrobAlg_self_fusion ford_circles_s0
