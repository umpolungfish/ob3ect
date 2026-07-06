-- IGProtocol scaffold: VINIT → AFWD → IFIX → CLINK → FSPLIT → EVALT → AREV → FFUSE → FSPLIT → EVALT → FFUSE → CLINK → IMSCRIB → AFWD → ENGAGR → IFIX → TANCH
-- Class: d12_sic_exists combines norm_sq_eq_one and equiangular into IsSICPOVM 12 psi, and crystal_forces_d12_sic proves SICPOVM_Exists 12, discharging the existence axiom and completing the d=12 SIC-POVM capstone
-- Fingerprint: sig=(8,4,3,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=17
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(4, 7), (8, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑭  | forward morphism — bidirectional arrow
--   [2] IFIX      prot   := 𐑭               𐑾 → 𐑱  | irreversible fixation — winding number
--   [3] CLINK     fid    := 𐑱               𐑭 → 𐑚  | composition — regime coherence
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [11] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [12] IMSCRIB   gram   := 𐑠               𐑱 → 𐑾  | identity — self-imscription
--   [13] AFWD      rel    := 𐑾               𐑠 → 𐑳  | forward morphism — bidirectional arrow
--   [14] ENGAGR    stoi   := 𐑳               𐑾 → 𐑭  | engage paradox — B-state, both arms
--   [15] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [16] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_l13 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def d12_sic_exists_combines_norm_sq_eq_one_4a7011_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def d12_sic_exists_combines_norm_sq_eq_one_4a7011_protocol : IGProtocol d12_sic_exists_combines_norm_sq_eq_one_4a7011_s0 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s16 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct d12_sic_exists_combines_norm_sq_eq_one_4a7011_s7 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s7 = d12_sic_exists_combines_norm_sq_eq_one_4a7011_s7 (idempotent)
  (.seq (.arrow d12_sic_exists_combines_norm_sq_eq_one_4a7011_l0 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s0 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s1) (.seq (.arrow d12_sic_exists_combines_norm_sq_eq_one_4a7011_l1 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s1 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s2) (.seq (.arrow d12_sic_exists_combines_norm_sq_eq_one_4a7011_l2 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s2 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s3) (.seq (.arrow d12_sic_exists_combines_norm_sq_eq_one_4a7011_l3 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s3 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s4) (.seq (.prod (.arrow d12_sic_exists_combines_norm_sq_eq_one_4a7011_l4 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s4 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s7) (.arrow d12_sic_exists_combines_norm_sq_eq_one_4a7011_l4 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s4 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s7)) (.seq (.arrow d12_sic_exists_combines_norm_sq_eq_one_4a7011_l7 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s7 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s7) (.seq (.arrow d12_sic_exists_combines_norm_sq_eq_one_4a7011_l7 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s7 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s8) (.seq (.arrow d12_sic_exists_combines_norm_sq_eq_one_4a7011_l8 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s8 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s9) (.seq (.arrow d12_sic_exists_combines_norm_sq_eq_one_4a7011_l9 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s9 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s10) (.seq (.arrow d12_sic_exists_combines_norm_sq_eq_one_4a7011_l10 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s10 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s11) (.seq (.arrow d12_sic_exists_combines_norm_sq_eq_one_4a7011_l11 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s11 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s12) (.seq (.arrow d12_sic_exists_combines_norm_sq_eq_one_4a7011_l12 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s12 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s13) (.seq (.arrow d12_sic_exists_combines_norm_sq_eq_one_4a7011_l13 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s13 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s14) (.seq (.arrow d12_sic_exists_combines_norm_sq_eq_one_4a7011_l14 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s14 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s15) (.arrow d12_sic_exists_combines_norm_sq_eq_one_4a7011_l15 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s15 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s16)))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def d12_sic_exists_combines_norm_sq_eq_one_4a7011_true_arm : IGProtocol d12_sic_exists_combines_norm_sq_eq_one_4a7011_s0 d12_sic_exists_combines_norm_sq_eq_one_4a7011_s16 :=
  (d12_sic_exists_combines_norm_sq_eq_one_4a7011_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def d12_sic_exists_combines_norm_sq_eq_one_4a7011_tier : OuroboricityTier := TierFunctor.obj d12_sic_exists_combines_norm_sq_eq_one_4a7011_s0
#eval d12_sic_exists_combines_norm_sq_eq_one_4a7011_tier  -- the Grammar's own verdict on its tier
