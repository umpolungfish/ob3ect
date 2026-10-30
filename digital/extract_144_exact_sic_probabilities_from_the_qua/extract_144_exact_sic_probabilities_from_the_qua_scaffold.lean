-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → CLINK → AFWD → EVALT → CLINK → IMSCRIB → FSPLIT → EVALT → AREV → FFUSE → ENGAGR → IFIX → CLINK → IMSCRIB → AFWD → TANCH
-- Class: Extract 144 exact SIC probabilities from the quantum state (T-arm)
-- Fingerprint: sig=(11,3,4,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=19
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(9, 12)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] FSPLIT    gran   := 𐑚               𐑾 → ⊙  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑱  | evaluate-true — criticality gate open
--   [4] CLINK     fid    := 𐑱               ⊙ → 𐑾  | composition — regime coherence
--   [5] AFWD      rel    := 𐑾               𐑱 → ⊙  | forward morphism — bidirectional arrow
--   [6] EVALT     crit   := ⊙               𐑾 → 𐑱  | evaluate-true — criticality gate open
--   [7] CLINK     fid    := 𐑱               ⊙ → 𐑠  | composition — regime coherence
--   [8] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [13] ENGAGR    stoi   := 𐑳               𐑙 → 𐑭  | engage paradox — B-state, both arms
--   [14] IFIX      prot   := 𐑭               𐑳 → 𐑱  | irreversible fixation — winding number
--   [15] CLINK     fid    := 𐑱               𐑭 → 𐑠  | composition — regime coherence
--   [16] IMSCRIB   gram   := 𐑠               𐑱 → 𐑾  | identity — self-imscription
--   [17] AFWD      rel    := 𐑾               𐑠 → 𐑡  | forward morphism — bidirectional arrow
--   [18] TANCH     top    := 𐑡               𐑾 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def extract_144_exact_sic_probabilities_d205af_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def extract_144_exact_sic_probabilities_d205af_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def extract_144_exact_sic_probabilities_d205af_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def extract_144_exact_sic_probabilities_d205af_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def extract_144_exact_sic_probabilities_d205af_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def extract_144_exact_sic_probabilities_d205af_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def extract_144_exact_sic_probabilities_d205af_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_l17 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def extract_144_exact_sic_probabilities_d205af_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def extract_144_exact_sic_probabilities_d205af_protocol : IGProtocol extract_144_exact_sic_probabilities_d205af_s0 extract_144_exact_sic_probabilities_d205af_s18 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct extract_144_exact_sic_probabilities_d205af_s12 extract_144_exact_sic_probabilities_d205af_s12 = extract_144_exact_sic_probabilities_d205af_s12 (idempotent)
  (.seq (.arrow extract_144_exact_sic_probabilities_d205af_l0 extract_144_exact_sic_probabilities_d205af_s0 extract_144_exact_sic_probabilities_d205af_s1) (.seq (.arrow extract_144_exact_sic_probabilities_d205af_l1 extract_144_exact_sic_probabilities_d205af_s1 extract_144_exact_sic_probabilities_d205af_s2) (.seq (.arrow extract_144_exact_sic_probabilities_d205af_l2 extract_144_exact_sic_probabilities_d205af_s2 extract_144_exact_sic_probabilities_d205af_s3) (.seq (.arrow extract_144_exact_sic_probabilities_d205af_l3 extract_144_exact_sic_probabilities_d205af_s3 extract_144_exact_sic_probabilities_d205af_s4) (.seq (.arrow extract_144_exact_sic_probabilities_d205af_l4 extract_144_exact_sic_probabilities_d205af_s4 extract_144_exact_sic_probabilities_d205af_s5) (.seq (.arrow extract_144_exact_sic_probabilities_d205af_l5 extract_144_exact_sic_probabilities_d205af_s5 extract_144_exact_sic_probabilities_d205af_s6) (.seq (.arrow extract_144_exact_sic_probabilities_d205af_l6 extract_144_exact_sic_probabilities_d205af_s6 extract_144_exact_sic_probabilities_d205af_s7) (.seq (.arrow extract_144_exact_sic_probabilities_d205af_l7 extract_144_exact_sic_probabilities_d205af_s7 extract_144_exact_sic_probabilities_d205af_s8) (.seq (.arrow extract_144_exact_sic_probabilities_d205af_l8 extract_144_exact_sic_probabilities_d205af_s8 extract_144_exact_sic_probabilities_d205af_s9) (.seq (.prod (.arrow extract_144_exact_sic_probabilities_d205af_l9 extract_144_exact_sic_probabilities_d205af_s9 extract_144_exact_sic_probabilities_d205af_s12) (.arrow extract_144_exact_sic_probabilities_d205af_l9 extract_144_exact_sic_probabilities_d205af_s9 extract_144_exact_sic_probabilities_d205af_s12)) (.seq (.arrow extract_144_exact_sic_probabilities_d205af_l12 extract_144_exact_sic_probabilities_d205af_s12 extract_144_exact_sic_probabilities_d205af_s12) (.seq (.arrow extract_144_exact_sic_probabilities_d205af_l12 extract_144_exact_sic_probabilities_d205af_s12 extract_144_exact_sic_probabilities_d205af_s13) (.seq (.arrow extract_144_exact_sic_probabilities_d205af_l13 extract_144_exact_sic_probabilities_d205af_s13 extract_144_exact_sic_probabilities_d205af_s14) (.seq (.arrow extract_144_exact_sic_probabilities_d205af_l14 extract_144_exact_sic_probabilities_d205af_s14 extract_144_exact_sic_probabilities_d205af_s15) (.seq (.arrow extract_144_exact_sic_probabilities_d205af_l15 extract_144_exact_sic_probabilities_d205af_s15 extract_144_exact_sic_probabilities_d205af_s16) (.seq (.arrow extract_144_exact_sic_probabilities_d205af_l16 extract_144_exact_sic_probabilities_d205af_s16 extract_144_exact_sic_probabilities_d205af_s17) (.arrow extract_144_exact_sic_probabilities_d205af_l17 extract_144_exact_sic_probabilities_d205af_s17 extract_144_exact_sic_probabilities_d205af_s18)))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def extract_144_exact_sic_probabilities_d205af_true_arm : IGProtocol extract_144_exact_sic_probabilities_d205af_s0 extract_144_exact_sic_probabilities_d205af_s18 :=
  (extract_144_exact_sic_probabilities_d205af_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def extract_144_exact_sic_probabilities_d205af_tier : OuroboricityTier := TierFunctor.obj extract_144_exact_sic_probabilities_d205af_s0
#eval extract_144_exact_sic_probabilities_d205af_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem extract_144_exact_sic_probabilities_d205af_frobenius :
    igFrobeniusAlg.mul extract_144_exact_sic_probabilities_d205af_s0 extract_144_exact_sic_probabilities_d205af_s0 = extract_144_exact_sic_probabilities_d205af_s0 :=
  igFrobAlg_self_fusion extract_144_exact_sic_probabilities_d205af_s0
