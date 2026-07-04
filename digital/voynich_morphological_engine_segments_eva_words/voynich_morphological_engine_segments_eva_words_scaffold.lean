-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → IMSCRIB → CLINK → FFUSE → EVALT → EVALF → IFIX → TANCH
-- Class: Voynich morphological engine: segments EVA words into prefix-stem-suffix using successor variety, builds component inventories, generates novel words by recombining attested components with positional constraints, preserves bigram entropy and spectral gap
-- Fingerprint: sig=(5,2,2,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=10
-- Expected tier: O₂
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
--   [3] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [4] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [5] FFUSE     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [6] EVALT     crit   := ⊙               𐑙 → 𐑖  | evaluate-true — criticality gate open
--   [7] EVALF     chir   := 𐑖               ⊙ → 𐑭  | evaluate-false — chirality check
--   [8] IFIX      prot   := 𐑭               𐑖 → 𐑡  | irreversible fixation — winding number
--   [9] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def voynich_morphological_engine_segments_a5f4f0_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_morphological_engine_segments_a5f4f0_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_morphological_engine_segments_a5f4f0_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_morphological_engine_segments_a5f4f0_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_morphological_engine_segments_a5f4f0_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_morphological_engine_segments_a5f4f0_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_morphological_engine_segments_a5f4f0_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def voynich_morphological_engine_segments_a5f4f0_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def voynich_morphological_engine_segments_a5f4f0_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_morphological_engine_segments_a5f4f0_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def voynich_morphological_engine_segments_a5f4f0_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_morphological_engine_segments_a5f4f0_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_morphological_engine_segments_a5f4f0_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_morphological_engine_segments_a5f4f0_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_morphological_engine_segments_a5f4f0_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_morphological_engine_segments_a5f4f0_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_morphological_engine_segments_a5f4f0_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def voynich_morphological_engine_segments_a5f4f0_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def voynich_morphological_engine_segments_a5f4f0_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def voynich_morphological_engine_segments_a5f4f0_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def voynich_morphological_engine_segments_a5f4f0_protocol : IGProtocol voynich_morphological_engine_segments_a5f4f0_s0 voynich_morphological_engine_segments_a5f4f0_s9 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct voynich_morphological_engine_segments_a5f4f0_s5 voynich_morphological_engine_segments_a5f4f0_s5 = voynich_morphological_engine_segments_a5f4f0_s5 (idempotent)
  (.seq (.arrow voynich_morphological_engine_segments_a5f4f0_l0 voynich_morphological_engine_segments_a5f4f0_s0 voynich_morphological_engine_segments_a5f4f0_s1) (.seq (.arrow voynich_morphological_engine_segments_a5f4f0_l1 voynich_morphological_engine_segments_a5f4f0_s1 voynich_morphological_engine_segments_a5f4f0_s2) (.seq (.prod (.arrow voynich_morphological_engine_segments_a5f4f0_l2 voynich_morphological_engine_segments_a5f4f0_s2 voynich_morphological_engine_segments_a5f4f0_s5) (.arrow voynich_morphological_engine_segments_a5f4f0_l2 voynich_morphological_engine_segments_a5f4f0_s2 voynich_morphological_engine_segments_a5f4f0_s5)) (.seq (.arrow voynich_morphological_engine_segments_a5f4f0_l5 voynich_morphological_engine_segments_a5f4f0_s5 voynich_morphological_engine_segments_a5f4f0_s5) (.seq (.arrow voynich_morphological_engine_segments_a5f4f0_l5 voynich_morphological_engine_segments_a5f4f0_s5 voynich_morphological_engine_segments_a5f4f0_s6) (.seq (.arrow voynich_morphological_engine_segments_a5f4f0_l6 voynich_morphological_engine_segments_a5f4f0_s6 voynich_morphological_engine_segments_a5f4f0_s7) (.seq (.arrow voynich_morphological_engine_segments_a5f4f0_l7 voynich_morphological_engine_segments_a5f4f0_s7 voynich_morphological_engine_segments_a5f4f0_s8) (.arrow voynich_morphological_engine_segments_a5f4f0_l8 voynich_morphological_engine_segments_a5f4f0_s8 voynich_morphological_engine_segments_a5f4f0_s9))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def voynich_morphological_engine_segments_a5f4f0_true_arm : IGProtocol voynich_morphological_engine_segments_a5f4f0_s0 voynich_morphological_engine_segments_a5f4f0_s9 :=
  (voynich_morphological_engine_segments_a5f4f0_protocol).restrictToEVALT

-- false arm
noncomputable def voynich_morphological_engine_segments_a5f4f0_false_arm : IGProtocol voynich_morphological_engine_segments_a5f4f0_s0 voynich_morphological_engine_segments_a5f4f0_s9 :=
  (voynich_morphological_engine_segments_a5f4f0_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def voynich_morphological_engine_segments_a5f4f0_tier : OuroboricityTier := TierFunctor.obj voynich_morphological_engine_segments_a5f4f0_s0
#eval voynich_morphological_engine_segments_a5f4f0_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem voynich_morphological_engine_segments_a5f4f0_frobenius :
    igFrobeniusAlg.mul voynich_morphological_engine_segments_a5f4f0_s0 voynich_morphological_engine_segments_a5f4f0_s0 = voynich_morphological_engine_segments_a5f4f0_s0 :=
  igFrobAlg_self_fusion voynich_morphological_engine_segments_a5f4f0_s0
