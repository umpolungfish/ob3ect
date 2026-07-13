-- IGProtocol scaffold: VINIT → IFIX → FSPLIT → AFWD → IMSCRIB → AREV → CLINK → FSPLIT → EVALT → FFUSE → EVALF → AREV → FFUSE → CLINK → IMSCRIB → IFIX → TANCH
-- Class: phase_reconstruction_via_flat_autocorrelation
-- Fingerprint: sig=(9,4,2,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=17
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(7, 9), (2, 12)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑭  | initial object — ground of distinction
--   [1] IFIX      prot   := 𐑭               𐑼 → 𐑚  | irreversible fixation — winding number
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [10] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [13] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [14] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [15] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [16] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def phase_reconstruction_via_flat_9e3690_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phase_reconstruction_via_flat_9e3690_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phase_reconstruction_via_flat_9e3690_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phase_reconstruction_via_flat_9e3690_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phase_reconstruction_via_flat_9e3690_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phase_reconstruction_via_flat_9e3690_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phase_reconstruction_via_flat_9e3690_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phase_reconstruction_via_flat_9e3690_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phase_reconstruction_via_flat_9e3690_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phase_reconstruction_via_flat_9e3690_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phase_reconstruction_via_flat_9e3690_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def phase_reconstruction_via_flat_9e3690_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def phase_reconstruction_via_flat_9e3690_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def phase_reconstruction_via_flat_9e3690_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def phase_reconstruction_via_flat_9e3690_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def phase_reconstruction_via_flat_9e3690_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def phase_reconstruction_via_flat_9e3690_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def phase_reconstruction_via_flat_9e3690_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phase_reconstruction_via_flat_9e3690_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phase_reconstruction_via_flat_9e3690_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phase_reconstruction_via_flat_9e3690_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phase_reconstruction_via_flat_9e3690_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phase_reconstruction_via_flat_9e3690_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phase_reconstruction_via_flat_9e3690_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phase_reconstruction_via_flat_9e3690_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phase_reconstruction_via_flat_9e3690_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def phase_reconstruction_via_flat_9e3690_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phase_reconstruction_via_flat_9e3690_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def phase_reconstruction_via_flat_9e3690_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phase_reconstruction_via_flat_9e3690_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phase_reconstruction_via_flat_9e3690_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phase_reconstruction_via_flat_9e3690_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phase_reconstruction_via_flat_9e3690_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phase_reconstruction_via_flat_9e3690_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def phase_reconstruction_via_flat_9e3690_protocol : IGProtocol phase_reconstruction_via_flat_9e3690_s0 phase_reconstruction_via_flat_9e3690_s16 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct phase_reconstruction_via_flat_9e3690_s9 phase_reconstruction_via_flat_9e3690_s9 = phase_reconstruction_via_flat_9e3690_s9 (idempotent)
  (.seq (.arrow phase_reconstruction_via_flat_9e3690_l0 phase_reconstruction_via_flat_9e3690_s0 phase_reconstruction_via_flat_9e3690_s1) (.seq (.arrow phase_reconstruction_via_flat_9e3690_l1 phase_reconstruction_via_flat_9e3690_s1 phase_reconstruction_via_flat_9e3690_s2) (.seq (.prod (.arrow phase_reconstruction_via_flat_9e3690_l2 phase_reconstruction_via_flat_9e3690_s2 phase_reconstruction_via_flat_9e3690_s9) (.arrow phase_reconstruction_via_flat_9e3690_l2 phase_reconstruction_via_flat_9e3690_s2 phase_reconstruction_via_flat_9e3690_s9)) (.seq (.arrow phase_reconstruction_via_flat_9e3690_l9 phase_reconstruction_via_flat_9e3690_s9 phase_reconstruction_via_flat_9e3690_s9) (.seq (.arrow phase_reconstruction_via_flat_9e3690_l9 phase_reconstruction_via_flat_9e3690_s9 phase_reconstruction_via_flat_9e3690_s10) (.seq (.arrow phase_reconstruction_via_flat_9e3690_l10 phase_reconstruction_via_flat_9e3690_s10 phase_reconstruction_via_flat_9e3690_s11) (.seq (.arrow phase_reconstruction_via_flat_9e3690_l11 phase_reconstruction_via_flat_9e3690_s11 phase_reconstruction_via_flat_9e3690_s12) (.seq (.arrow phase_reconstruction_via_flat_9e3690_l12 phase_reconstruction_via_flat_9e3690_s12 phase_reconstruction_via_flat_9e3690_s13) (.seq (.arrow phase_reconstruction_via_flat_9e3690_l13 phase_reconstruction_via_flat_9e3690_s13 phase_reconstruction_via_flat_9e3690_s14) (.seq (.arrow phase_reconstruction_via_flat_9e3690_l14 phase_reconstruction_via_flat_9e3690_s14 phase_reconstruction_via_flat_9e3690_s15) (.arrow phase_reconstruction_via_flat_9e3690_l15 phase_reconstruction_via_flat_9e3690_s15 phase_reconstruction_via_flat_9e3690_s16)))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def phase_reconstruction_via_flat_9e3690_true_arm : IGProtocol phase_reconstruction_via_flat_9e3690_s0 phase_reconstruction_via_flat_9e3690_s16 :=
  (phase_reconstruction_via_flat_9e3690_protocol).restrictToEVALT

-- false arm
noncomputable def phase_reconstruction_via_flat_9e3690_false_arm : IGProtocol phase_reconstruction_via_flat_9e3690_s0 phase_reconstruction_via_flat_9e3690_s16 :=
  (phase_reconstruction_via_flat_9e3690_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def phase_reconstruction_via_flat_9e3690_tier : OuroboricityTier := TierFunctor.obj phase_reconstruction_via_flat_9e3690_s0
#eval phase_reconstruction_via_flat_9e3690_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem phase_reconstruction_via_flat_9e3690_frobenius :
    igFrobeniusAlg.mul phase_reconstruction_via_flat_9e3690_s0 phase_reconstruction_via_flat_9e3690_s0 = phase_reconstruction_via_flat_9e3690_s0 :=
  igFrobAlg_self_fusion phase_reconstruction_via_flat_9e3690_s0
