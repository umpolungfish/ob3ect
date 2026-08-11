-- IGProtocol scaffold: VINIT → TANCH → FSPLIT → EVALT → AFWD → CLINK → EVALF → AREV → ENGAGR → FFUSE → IMSCRIB → IFIX → TANCH
-- Class: d5e8d6c5130814fc106c74c672d3eb2370d619be3f1c03f6c47bdd2ffb910127
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₂dag
-- FSPLIT/FFUSE pairs: [(2, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑚  | terminal object — connectivity boundary
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [10] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [11] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [12] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_protocol : IGProtocol d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s0 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s12 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s9 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s9 = d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s9 (idempotent)
  (.seq (.arrow d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l0 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s0 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s1) (.seq (.arrow d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l1 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s1 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s2) (.seq (.prod (.arrow d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l2 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s2 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s9) (.arrow d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l2 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s2 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s9)) (.seq (.arrow d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l9 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s9 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s9) (.seq (.arrow d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l9 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s9 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s10) (.seq (.arrow d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l10 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s10 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s11) (.arrow d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_l11 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s11 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s12)))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_true_arm : IGProtocol d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s0 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s12 :=
  (d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_protocol).restrictToEVALT

-- false arm
noncomputable def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_false_arm : IGProtocol d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s0 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s12 :=
  (d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_tier_ground : OuroboricityTier := TierFunctor.obj d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s0
def d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_tier : OuroboricityTier := TierFunctor.obj d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s12
#eval d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_tier_ground  -- tier of the ground (pre-transformation)
#eval d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_frobenius :
    igFrobeniusAlg.mul d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s0 d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s0 = d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s0 :=
  igFrobAlg_self_fusion d5e8d6c5130814fc106c74c672d3eb2370d619be_7bde42_s0
