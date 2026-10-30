-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → EVALF → FFUSE → CLINK → AREV → ENGAGR → IMSCRIB → TANCH → IFIX
-- Class: fungal homunculus
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 5)]

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
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [6] CLINK     fid    := 𐑱               𐑙 → 𐑗  | composition — regime coherence
--   [7] AREV      pol    := 𐑗               𐑱 → 𐑳  | reverse morphism — parity flip
--   [8] ENGAGR    stoi   := 𐑳               𐑗 → 𐑠  | engage paradox — B-state, both arms
--   [9] IMSCRIB   gram   := 𐑠               𐑳 → 𐑡  | identity — self-imscription
--   [10] TANCH     top    := 𐑡               𐑠 → 𐑭  | terminal object — connectivity boundary
--   [11] IFIX      prot   := 𐑭               𐑡 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def fungal_homunculus_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fungal_homunculus_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fungal_homunculus_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fungal_homunculus_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def fungal_homunculus_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fungal_homunculus_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fungal_homunculus_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fungal_homunculus_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fungal_homunculus_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def fungal_homunculus_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def fungal_homunculus_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def fungal_homunculus_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def fungal_homunculus_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fungal_homunculus_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fungal_homunculus_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fungal_homunculus_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def fungal_homunculus_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def fungal_homunculus_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fungal_homunculus_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fungal_homunculus_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fungal_homunculus_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def fungal_homunculus_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fungal_homunculus_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fungal_homunculus_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def fungal_homunculus_protocol : IGProtocol fungal_homunculus_s0 fungal_homunculus_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct fungal_homunculus_s5 fungal_homunculus_s5 = fungal_homunculus_s5 (idempotent)
  (.seq (.arrow fungal_homunculus_l0 fungal_homunculus_s0 fungal_homunculus_s1) (.seq (.arrow fungal_homunculus_l1 fungal_homunculus_s1 fungal_homunculus_s2) (.seq (.prod (.arrow fungal_homunculus_l2 fungal_homunculus_s2 fungal_homunculus_s5) (.arrow fungal_homunculus_l2 fungal_homunculus_s2 fungal_homunculus_s5)) (.seq (.arrow fungal_homunculus_l5 fungal_homunculus_s5 fungal_homunculus_s5) (.seq (.arrow fungal_homunculus_l5 fungal_homunculus_s5 fungal_homunculus_s6) (.seq (.arrow fungal_homunculus_l6 fungal_homunculus_s6 fungal_homunculus_s7) (.seq (.arrow fungal_homunculus_l7 fungal_homunculus_s7 fungal_homunculus_s8) (.seq (.arrow fungal_homunculus_l8 fungal_homunculus_s8 fungal_homunculus_s9) (.seq (.arrow fungal_homunculus_l9 fungal_homunculus_s9 fungal_homunculus_s10) (.arrow fungal_homunculus_l10 fungal_homunculus_s10 fungal_homunculus_s11))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def fungal_homunculus_true_arm : IGProtocol fungal_homunculus_s0 fungal_homunculus_s11 :=
  (fungal_homunculus_protocol).restrictToEVALT

-- false arm
noncomputable def fungal_homunculus_false_arm : IGProtocol fungal_homunculus_s0 fungal_homunculus_s11 :=
  (fungal_homunculus_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def fungal_homunculus_tier : OuroboricityTier := TierFunctor.obj fungal_homunculus_s0
#eval fungal_homunculus_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem fungal_homunculus_frobenius :
    igFrobeniusAlg.mul fungal_homunculus_s0 fungal_homunculus_s0 = fungal_homunculus_s0 :=
  igFrobAlg_self_fusion fungal_homunculus_s0
