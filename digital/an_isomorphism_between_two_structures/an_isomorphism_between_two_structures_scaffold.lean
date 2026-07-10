-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → EVALT → FFUSE → CLINK → AREV → IMSCRIB → IFIX → TANCH
-- Class: an isomorphism between two structures
-- Fingerprint: sig=(6,2,2,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=11
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
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [6] CLINK     fid    := 𐑱               𐑙 → 𐑗  | composition — regime coherence
--   [7] AREV      pol    := 𐑗               𐑱 → 𐑠  | reverse morphism — parity flip
--   [8] IMSCRIB   gram   := 𐑠               𐑗 → 𐑭  | identity — self-imscription
--   [9] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [10] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def an_isomorphism_between_two_structures_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_isomorphism_between_two_structures_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_isomorphism_between_two_structures_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_isomorphism_between_two_structures_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_isomorphism_between_two_structures_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_isomorphism_between_two_structures_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_isomorphism_between_two_structures_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_isomorphism_between_two_structures_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_isomorphism_between_two_structures_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_isomorphism_between_two_structures_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def an_isomorphism_between_two_structures_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def an_isomorphism_between_two_structures_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_isomorphism_between_two_structures_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_isomorphism_between_two_structures_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_isomorphism_between_two_structures_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_isomorphism_between_two_structures_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_isomorphism_between_two_structures_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_isomorphism_between_two_structures_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_isomorphism_between_two_structures_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_isomorphism_between_two_structures_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_isomorphism_between_two_structures_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def an_isomorphism_between_two_structures_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def an_isomorphism_between_two_structures_protocol : IGProtocol an_isomorphism_between_two_structures_s0 an_isomorphism_between_two_structures_s10 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct an_isomorphism_between_two_structures_s5 an_isomorphism_between_two_structures_s5 = an_isomorphism_between_two_structures_s5 (idempotent)
  (.seq (.arrow an_isomorphism_between_two_structures_l0 an_isomorphism_between_two_structures_s0 an_isomorphism_between_two_structures_s1) (.seq (.arrow an_isomorphism_between_two_structures_l1 an_isomorphism_between_two_structures_s1 an_isomorphism_between_two_structures_s2) (.seq (.prod (.arrow an_isomorphism_between_two_structures_l2 an_isomorphism_between_two_structures_s2 an_isomorphism_between_two_structures_s5) (.arrow an_isomorphism_between_two_structures_l2 an_isomorphism_between_two_structures_s2 an_isomorphism_between_two_structures_s5)) (.seq (.arrow an_isomorphism_between_two_structures_l5 an_isomorphism_between_two_structures_s5 an_isomorphism_between_two_structures_s5) (.seq (.arrow an_isomorphism_between_two_structures_l5 an_isomorphism_between_two_structures_s5 an_isomorphism_between_two_structures_s6) (.seq (.arrow an_isomorphism_between_two_structures_l6 an_isomorphism_between_two_structures_s6 an_isomorphism_between_two_structures_s7) (.seq (.arrow an_isomorphism_between_two_structures_l7 an_isomorphism_between_two_structures_s7 an_isomorphism_between_two_structures_s8) (.seq (.arrow an_isomorphism_between_two_structures_l8 an_isomorphism_between_two_structures_s8 an_isomorphism_between_two_structures_s9) (.arrow an_isomorphism_between_two_structures_l9 an_isomorphism_between_two_structures_s9 an_isomorphism_between_two_structures_s10)))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def an_isomorphism_between_two_structures_true_arm : IGProtocol an_isomorphism_between_two_structures_s0 an_isomorphism_between_two_structures_s10 :=
  (an_isomorphism_between_two_structures_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def an_isomorphism_between_two_structures_tier : OuroboricityTier := TierFunctor.obj an_isomorphism_between_two_structures_s0
#eval an_isomorphism_between_two_structures_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem an_isomorphism_between_two_structures_frobenius :
    igFrobeniusAlg.mul an_isomorphism_between_two_structures_s0 an_isomorphism_between_two_structures_s0 = an_isomorphism_between_two_structures_s0 :=
  igFrobAlg_self_fusion an_isomorphism_between_two_structures_s0
