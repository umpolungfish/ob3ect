-- IGProtocol scaffold: VINIT → AFWD → AFWD → AFWD → TANCH → FSPLIT → AFWD → EVALT → AFWD → EVALF → FFUSE → IFIX → IMSCRIB → CLINK → AREV → ENGAGR → TANCH
-- Class: Ars quadripartita — Phytoglyphica (147 plants), Fungiglyphica (86 fungi), Animaglyphica (80 animals), and Therapeutica (10 therapies) as distinct Frobenius categories with inter-domain functorial mappings
-- Fingerprint: sig=(11,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=17
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(5, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑾  | forward morphism — bidirectional arrow
--   [2] AFWD      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [3] AFWD      rel    := 𐑾               𐑾 → 𐑡  | forward morphism — bidirectional arrow
--   [4] TANCH     top    := 𐑡               𐑾 → 𐑚  | terminal object — connectivity boundary
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [9] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [11] IFIX      prot   := 𐑭               𐑙 → 𐑠  | irreversible fixation — winding number
--   [12] IMSCRIB   gram   := 𐑠               𐑭 → 𐑱  | identity — self-imscription
--   [13] CLINK     fid    := 𐑱               𐑠 → 𐑗  | composition — regime coherence
--   [14] AREV      pol    := 𐑗               𐑱 → 𐑳  | reverse morphism — parity flip
--   [15] ENGAGR    stoi   := 𐑳               𐑗 → 𐑡  | engage paradox — B-state, both arms
--   [16] TANCH     top    := 𐑡               𐑳 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def ars_quadripartita_phytoglyphica_147_458c03_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def ars_quadripartita_phytoglyphica_147_458c03_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def ars_quadripartita_phytoglyphica_147_458c03_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def ars_quadripartita_phytoglyphica_147_458c03_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def ars_quadripartita_phytoglyphica_147_458c03_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def ars_quadripartita_phytoglyphica_147_458c03_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def ars_quadripartita_phytoglyphica_147_458c03_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ars_quadripartita_phytoglyphica_147_458c03_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def ars_quadripartita_phytoglyphica_147_458c03_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def ars_quadripartita_phytoglyphica_147_458c03_protocol : IGProtocol ars_quadripartita_phytoglyphica_147_458c03_s0 ars_quadripartita_phytoglyphica_147_458c03_s16 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct ars_quadripartita_phytoglyphica_147_458c03_s10 ars_quadripartita_phytoglyphica_147_458c03_s10 = ars_quadripartita_phytoglyphica_147_458c03_s10 (idempotent)
  (.seq (.arrow ars_quadripartita_phytoglyphica_147_458c03_l0 ars_quadripartita_phytoglyphica_147_458c03_s0 ars_quadripartita_phytoglyphica_147_458c03_s1) (.seq (.arrow ars_quadripartita_phytoglyphica_147_458c03_l1 ars_quadripartita_phytoglyphica_147_458c03_s1 ars_quadripartita_phytoglyphica_147_458c03_s2) (.seq (.arrow ars_quadripartita_phytoglyphica_147_458c03_l2 ars_quadripartita_phytoglyphica_147_458c03_s2 ars_quadripartita_phytoglyphica_147_458c03_s3) (.seq (.arrow ars_quadripartita_phytoglyphica_147_458c03_l3 ars_quadripartita_phytoglyphica_147_458c03_s3 ars_quadripartita_phytoglyphica_147_458c03_s4) (.seq (.arrow ars_quadripartita_phytoglyphica_147_458c03_l4 ars_quadripartita_phytoglyphica_147_458c03_s4 ars_quadripartita_phytoglyphica_147_458c03_s5) (.seq (.prod (.arrow ars_quadripartita_phytoglyphica_147_458c03_l5 ars_quadripartita_phytoglyphica_147_458c03_s5 ars_quadripartita_phytoglyphica_147_458c03_s10) (.arrow ars_quadripartita_phytoglyphica_147_458c03_l5 ars_quadripartita_phytoglyphica_147_458c03_s5 ars_quadripartita_phytoglyphica_147_458c03_s10)) (.seq (.arrow ars_quadripartita_phytoglyphica_147_458c03_l10 ars_quadripartita_phytoglyphica_147_458c03_s10 ars_quadripartita_phytoglyphica_147_458c03_s10) (.seq (.arrow ars_quadripartita_phytoglyphica_147_458c03_l10 ars_quadripartita_phytoglyphica_147_458c03_s10 ars_quadripartita_phytoglyphica_147_458c03_s11) (.seq (.arrow ars_quadripartita_phytoglyphica_147_458c03_l11 ars_quadripartita_phytoglyphica_147_458c03_s11 ars_quadripartita_phytoglyphica_147_458c03_s12) (.seq (.arrow ars_quadripartita_phytoglyphica_147_458c03_l12 ars_quadripartita_phytoglyphica_147_458c03_s12 ars_quadripartita_phytoglyphica_147_458c03_s13) (.seq (.arrow ars_quadripartita_phytoglyphica_147_458c03_l13 ars_quadripartita_phytoglyphica_147_458c03_s13 ars_quadripartita_phytoglyphica_147_458c03_s14) (.seq (.arrow ars_quadripartita_phytoglyphica_147_458c03_l14 ars_quadripartita_phytoglyphica_147_458c03_s14 ars_quadripartita_phytoglyphica_147_458c03_s15) (.arrow ars_quadripartita_phytoglyphica_147_458c03_l15 ars_quadripartita_phytoglyphica_147_458c03_s15 ars_quadripartita_phytoglyphica_147_458c03_s16)))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def ars_quadripartita_phytoglyphica_147_458c03_true_arm : IGProtocol ars_quadripartita_phytoglyphica_147_458c03_s0 ars_quadripartita_phytoglyphica_147_458c03_s16 :=
  (ars_quadripartita_phytoglyphica_147_458c03_protocol).restrictToEVALT

-- false arm
noncomputable def ars_quadripartita_phytoglyphica_147_458c03_false_arm : IGProtocol ars_quadripartita_phytoglyphica_147_458c03_s0 ars_quadripartita_phytoglyphica_147_458c03_s16 :=
  (ars_quadripartita_phytoglyphica_147_458c03_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def ars_quadripartita_phytoglyphica_147_458c03_tier : OuroboricityTier := TierFunctor.obj ars_quadripartita_phytoglyphica_147_458c03_s0
#eval ars_quadripartita_phytoglyphica_147_458c03_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem ars_quadripartita_phytoglyphica_147_458c03_frobenius :
    igFrobeniusAlg.mul ars_quadripartita_phytoglyphica_147_458c03_s0 ars_quadripartita_phytoglyphica_147_458c03_s0 = ars_quadripartita_phytoglyphica_147_458c03_s0 :=
  igFrobAlg_self_fusion ars_quadripartita_phytoglyphica_147_458c03_s0
