-- IGProtocol scaffold: VINIT → FSPLIT → AFWD → EVALT → FSPLIT → FFUSE → AREV → EVALF → CLINK → ENGAGR → IMSCRIB → IFIX → TANCH
-- Class: thurston_eight_geometries
-- Fingerprint: sig=(6,3,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(4, 5)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] FSPLIT    gran   := 𐑚               𐑼 → 𐑾  | split δ — range decomposition
--   [2] AFWD      rel    := 𐑾               𐑚 → ⊙  | forward morphism — bidirectional arrow
--   [3] EVALT     crit   := ⊙               𐑾 → 𐑚  | evaluate-true — criticality gate open
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [6] AREV      pol    := 𐑗               𐑙 → 𐑖  | reverse morphism — parity flip
--   [7] EVALF     chir   := 𐑖               𐑗 → 𐑱  | evaluate-false — chirality check
--   [8] CLINK     fid    := 𐑱               𐑖 → 𐑳  | composition — regime coherence
--   [9] ENGAGR    stoi   := 𐑳               𐑱 → 𐑠  | engage paradox — B-state, both arms
--   [10] IMSCRIB   gram   := 𐑠               𐑳 → 𐑭  | identity — self-imscription
--   [11] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [12] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def thurston_eight_geometries_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thurston_eight_geometries_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thurston_eight_geometries_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thurston_eight_geometries_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thurston_eight_geometries_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thurston_eight_geometries_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thurston_eight_geometries_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thurston_eight_geometries_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def thurston_eight_geometries_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def thurston_eight_geometries_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def thurston_eight_geometries_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def thurston_eight_geometries_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def thurston_eight_geometries_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def thurston_eight_geometries_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thurston_eight_geometries_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thurston_eight_geometries_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thurston_eight_geometries_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thurston_eight_geometries_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thurston_eight_geometries_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thurston_eight_geometries_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thurston_eight_geometries_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def thurston_eight_geometries_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thurston_eight_geometries_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def thurston_eight_geometries_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thurston_eight_geometries_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def thurston_eight_geometries_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def thurston_eight_geometries_protocol : IGProtocol thurston_eight_geometries_s0 thurston_eight_geometries_s12 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct thurston_eight_geometries_s5 thurston_eight_geometries_s5 = thurston_eight_geometries_s5 (idempotent)
  (.seq (.arrow thurston_eight_geometries_l0 thurston_eight_geometries_s0 thurston_eight_geometries_s1) (.seq (.arrow thurston_eight_geometries_l1 thurston_eight_geometries_s1 thurston_eight_geometries_s2) (.seq (.arrow thurston_eight_geometries_l2 thurston_eight_geometries_s2 thurston_eight_geometries_s3) (.seq (.arrow thurston_eight_geometries_l3 thurston_eight_geometries_s3 thurston_eight_geometries_s4) (.seq (.prod (.arrow thurston_eight_geometries_l4 thurston_eight_geometries_s4 thurston_eight_geometries_s5) (.arrow thurston_eight_geometries_l4 thurston_eight_geometries_s4 thurston_eight_geometries_s5)) (.seq (.arrow thurston_eight_geometries_l5 thurston_eight_geometries_s5 thurston_eight_geometries_s5) (.seq (.arrow thurston_eight_geometries_l5 thurston_eight_geometries_s5 thurston_eight_geometries_s6) (.seq (.arrow thurston_eight_geometries_l6 thurston_eight_geometries_s6 thurston_eight_geometries_s7) (.seq (.arrow thurston_eight_geometries_l7 thurston_eight_geometries_s7 thurston_eight_geometries_s8) (.seq (.arrow thurston_eight_geometries_l8 thurston_eight_geometries_s8 thurston_eight_geometries_s9) (.seq (.arrow thurston_eight_geometries_l9 thurston_eight_geometries_s9 thurston_eight_geometries_s10) (.seq (.arrow thurston_eight_geometries_l10 thurston_eight_geometries_s10 thurston_eight_geometries_s11) (.arrow thurston_eight_geometries_l11 thurston_eight_geometries_s11 thurston_eight_geometries_s12)))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def thurston_eight_geometries_true_arm : IGProtocol thurston_eight_geometries_s0 thurston_eight_geometries_s12 :=
  (thurston_eight_geometries_protocol).restrictToEVALT

-- false arm
noncomputable def thurston_eight_geometries_false_arm : IGProtocol thurston_eight_geometries_s0 thurston_eight_geometries_s12 :=
  (thurston_eight_geometries_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def thurston_eight_geometries_tier : OuroboricityTier := TierFunctor.obj thurston_eight_geometries_s0
#eval thurston_eight_geometries_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem thurston_eight_geometries_frobenius :
    igFrobeniusAlg.mul thurston_eight_geometries_s0 thurston_eight_geometries_s0 = thurston_eight_geometries_s0 :=
  igFrobAlg_self_fusion thurston_eight_geometries_s0
