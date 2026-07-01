-- IGProtocol scaffold: VINIT → TANCH → AFWD → FSPLIT → EVALT → EVALF → CLINK → IMSCRIB → FFUSE → AREV → IFIX
-- Class: Crafting Effective, Affective Spells
-- Fingerprint: sig=(6,2,2,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=11
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑚  | forward morphism — bidirectional arrow
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [9] AREV      pol    := 𐑗               𐑙 → 𐑭  | reverse morphism — parity flip
--   [10] IFIX      prot   := 𐑭               𐑗 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def crafting_effective_affective_spells_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def crafting_effective_affective_spells_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def crafting_effective_affective_spells_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def crafting_effective_affective_spells_protocol : IGProtocol crafting_effective_affective_spells_s0 crafting_effective_affective_spells_s10 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct crafting_effective_affective_spells_s8 crafting_effective_affective_spells_s8 = crafting_effective_affective_spells_s8 (idempotent)
  (.seq (.arrow crafting_effective_affective_spells_l0 crafting_effective_affective_spells_s0 crafting_effective_affective_spells_s1) (.seq (.arrow crafting_effective_affective_spells_l1 crafting_effective_affective_spells_s1 crafting_effective_affective_spells_s2) (.seq (.arrow crafting_effective_affective_spells_l2 crafting_effective_affective_spells_s2 crafting_effective_affective_spells_s3) (.seq (.prod (.arrow crafting_effective_affective_spells_l3 crafting_effective_affective_spells_s3 crafting_effective_affective_spells_s8) (.arrow crafting_effective_affective_spells_l3 crafting_effective_affective_spells_s3 crafting_effective_affective_spells_s8)) (.seq (.arrow crafting_effective_affective_spells_l8 crafting_effective_affective_spells_s8 crafting_effective_affective_spells_s8) (.seq (.arrow crafting_effective_affective_spells_l8 crafting_effective_affective_spells_s8 crafting_effective_affective_spells_s9) (.arrow crafting_effective_affective_spells_l9 crafting_effective_affective_spells_s9 crafting_effective_affective_spells_s10)))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def crafting_effective_affective_spells_true_arm : IGProtocol crafting_effective_affective_spells_s0 crafting_effective_affective_spells_s10 :=
  (crafting_effective_affective_spells_protocol).restrictToEVALT

-- false arm
noncomputable def crafting_effective_affective_spells_false_arm : IGProtocol crafting_effective_affective_spells_s0 crafting_effective_affective_spells_s10 :=
  (crafting_effective_affective_spells_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def crafting_effective_affective_spells_tier : OuroboricityTier := TierFunctor.obj crafting_effective_affective_spells_s0
#eval crafting_effective_affective_spells_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem crafting_effective_affective_spells_frobenius :
    igFrobeniusAlg.mul crafting_effective_affective_spells_s0 crafting_effective_affective_spells_s0 = crafting_effective_affective_spells_s0 :=
  igFrobAlg_self_fusion crafting_effective_affective_spells_s0
