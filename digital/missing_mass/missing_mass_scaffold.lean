-- IGProtocol scaffold: VINIT → AFWD → CLINK → FSPLIT → EVALT → FFUSE → AREV → IMSCRIB → EVALF → ENGAGR
-- Class: Missing Mass
-- Fingerprint: sig=(5,2,3,0)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=10
-- Expected tier: O₀
-- FSPLIT/FFUSE pairs: [(3, 5)]

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
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [6] AREV      pol    := 𐑗               𐑙 → 𐑠  | reverse morphism — parity flip
--   [7] IMSCRIB   gram   := 𐑠               𐑗 → 𐑖  | identity — self-imscription
--   [8] EVALF     chir   := 𐑖               𐑠 → 𐑳  | evaluate-false — chirality check
--   [9] ENGAGR    stoi   := 𐑳               𐑖 → 𐑼  | engage paradox — B-state, both arms

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def missing_mass_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def missing_mass_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def missing_mass_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def missing_mass_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def missing_mass_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def missing_mass_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def missing_mass_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def missing_mass_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def missing_mass_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def missing_mass_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def missing_mass_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def missing_mass_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def missing_mass_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def missing_mass_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def missing_mass_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def missing_mass_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def missing_mass_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def missing_mass_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def missing_mass_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def missing_mass_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def missing_mass_protocol : IGProtocol missing_mass_s0 missing_mass_s9 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct missing_mass_s5 missing_mass_s5 = missing_mass_s5 (idempotent)
  (.seq (.arrow missing_mass_l0 missing_mass_s0 missing_mass_s1) (.seq (.arrow missing_mass_l1 missing_mass_s1 missing_mass_s2) (.seq (.arrow missing_mass_l2 missing_mass_s2 missing_mass_s3) (.seq (.prod (.arrow missing_mass_l3 missing_mass_s3 missing_mass_s5) (.arrow missing_mass_l3 missing_mass_s3 missing_mass_s5)) (.seq (.arrow missing_mass_l5 missing_mass_s5 missing_mass_s5) (.seq (.arrow missing_mass_l5 missing_mass_s5 missing_mass_s6) (.seq (.arrow missing_mass_l6 missing_mass_s6 missing_mass_s7) (.seq (.arrow missing_mass_l7 missing_mass_s7 missing_mass_s8) (.arrow missing_mass_l8 missing_mass_s8 missing_mass_s9)))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def missing_mass_true_arm : IGProtocol missing_mass_s0 missing_mass_s9 :=
  (missing_mass_protocol).restrictToEVALT

-- false arm
noncomputable def missing_mass_false_arm : IGProtocol missing_mass_s0 missing_mass_s9 :=
  (missing_mass_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₀.
def missing_mass_tier : OuroboricityTier := TierFunctor.obj missing_mass_s0
#eval missing_mass_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem missing_mass_frobenius :
    igFrobeniusAlg.mul missing_mass_s0 missing_mass_s0 = missing_mass_s0 :=
  igFrobAlg_self_fusion missing_mass_s0
