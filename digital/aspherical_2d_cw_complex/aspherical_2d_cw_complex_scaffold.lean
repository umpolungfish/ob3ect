-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → AFWD → EVALT → AFWD → EVALF → FFUSE → IMSCRIB → CLINK → TANCH → IFIX
-- Class: aspherical_2d_cw_complex
-- Fingerprint: sig=(7,2,2,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=12
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [8] IMSCRIB   gram   := 𐑠               𐑙 → 𐑱  | identity — self-imscription
--   [9] CLINK     fid    := 𐑱               𐑠 → 𐑡  | composition — regime coherence
--   [10] TANCH     top    := 𐑡               𐑱 → 𐑭  | terminal object — connectivity boundary
--   [11] IFIX      prot   := 𐑭               𐑡 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def aspherical_2d_cw_complex_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def aspherical_2d_cw_complex_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def aspherical_2d_cw_complex_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def aspherical_2d_cw_complex_protocol : IGProtocol aspherical_2d_cw_complex_s0 aspherical_2d_cw_complex_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct aspherical_2d_cw_complex_s7 aspherical_2d_cw_complex_s7 = aspherical_2d_cw_complex_s7 (idempotent)
  (.seq (.arrow aspherical_2d_cw_complex_l0 aspherical_2d_cw_complex_s0 aspherical_2d_cw_complex_s1) (.seq (.arrow aspherical_2d_cw_complex_l1 aspherical_2d_cw_complex_s1 aspherical_2d_cw_complex_s2) (.seq (.prod (.arrow aspherical_2d_cw_complex_l2 aspherical_2d_cw_complex_s2 aspherical_2d_cw_complex_s7) (.arrow aspherical_2d_cw_complex_l2 aspherical_2d_cw_complex_s2 aspherical_2d_cw_complex_s7)) (.seq (.arrow aspherical_2d_cw_complex_l7 aspherical_2d_cw_complex_s7 aspherical_2d_cw_complex_s7) (.seq (.arrow aspherical_2d_cw_complex_l7 aspherical_2d_cw_complex_s7 aspherical_2d_cw_complex_s8) (.seq (.arrow aspherical_2d_cw_complex_l8 aspherical_2d_cw_complex_s8 aspherical_2d_cw_complex_s9) (.seq (.arrow aspherical_2d_cw_complex_l9 aspherical_2d_cw_complex_s9 aspherical_2d_cw_complex_s10) (.arrow aspherical_2d_cw_complex_l10 aspherical_2d_cw_complex_s10 aspherical_2d_cw_complex_s11))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def aspherical_2d_cw_complex_true_arm : IGProtocol aspherical_2d_cw_complex_s0 aspherical_2d_cw_complex_s11 :=
  (aspherical_2d_cw_complex_protocol).restrictToEVALT

-- false arm
noncomputable def aspherical_2d_cw_complex_false_arm : IGProtocol aspherical_2d_cw_complex_s0 aspherical_2d_cw_complex_s11 :=
  (aspherical_2d_cw_complex_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def aspherical_2d_cw_complex_tier : OuroboricityTier := TierFunctor.obj aspherical_2d_cw_complex_s0
#eval aspherical_2d_cw_complex_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem aspherical_2d_cw_complex_frobenius :
    igFrobeniusAlg.mul aspherical_2d_cw_complex_s0 aspherical_2d_cw_complex_s0 = aspherical_2d_cw_complex_s0 :=
  igFrobAlg_self_fusion aspherical_2d_cw_complex_s0
