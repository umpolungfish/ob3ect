-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → EVALF → ENGAGR → IFIX → FFUSE → AREV → CLINK → IMSCRIB → TANCH
-- Class: straus_square_stratum
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂dag
-- FSPLIT/FFUSE pairs: [(2, 7)]

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
--   [5] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [6] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [8] AREV      pol    := 𐑗               𐑙 → 𐑱  | reverse morphism — parity flip
--   [9] CLINK     fid    := 𐑱               𐑗 → 𐑠  | composition — regime coherence
--   [10] IMSCRIB   gram   := 𐑠               𐑱 → 𐑡  | identity — self-imscription
--   [11] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def straus_square_stratum_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_square_stratum_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_square_stratum_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_square_stratum_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def straus_square_stratum_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def straus_square_stratum_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def straus_square_stratum_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def straus_square_stratum_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def straus_square_stratum_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def straus_square_stratum_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def straus_square_stratum_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def straus_square_stratum_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def straus_square_stratum_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_square_stratum_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_square_stratum_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_square_stratum_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def straus_square_stratum_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def straus_square_stratum_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def straus_square_stratum_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def straus_square_stratum_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_square_stratum_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_square_stratum_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_square_stratum_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_square_stratum_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def straus_square_stratum_protocol : IGProtocol straus_square_stratum_s0 straus_square_stratum_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct straus_square_stratum_s7 straus_square_stratum_s7 = straus_square_stratum_s7 (idempotent)
  (.seq (.arrow straus_square_stratum_l0 straus_square_stratum_s0 straus_square_stratum_s1) (.seq (.arrow straus_square_stratum_l1 straus_square_stratum_s1 straus_square_stratum_s2) (.seq (.prod (.arrow straus_square_stratum_l2 straus_square_stratum_s2 straus_square_stratum_s7) (.arrow straus_square_stratum_l2 straus_square_stratum_s2 straus_square_stratum_s7)) (.seq (.arrow straus_square_stratum_l7 straus_square_stratum_s7 straus_square_stratum_s7) (.seq (.arrow straus_square_stratum_l7 straus_square_stratum_s7 straus_square_stratum_s8) (.seq (.arrow straus_square_stratum_l8 straus_square_stratum_s8 straus_square_stratum_s9) (.seq (.arrow straus_square_stratum_l9 straus_square_stratum_s9 straus_square_stratum_s10) (.arrow straus_square_stratum_l10 straus_square_stratum_s10 straus_square_stratum_s11))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def straus_square_stratum_true_arm : IGProtocol straus_square_stratum_s0 straus_square_stratum_s11 :=
  (straus_square_stratum_protocol).restrictToEVALT

-- false arm
noncomputable def straus_square_stratum_false_arm : IGProtocol straus_square_stratum_s0 straus_square_stratum_s11 :=
  (straus_square_stratum_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def straus_square_stratum_tier_ground : OuroboricityTier := TierFunctor.obj straus_square_stratum_s0
def straus_square_stratum_tier : OuroboricityTier := TierFunctor.obj straus_square_stratum_s11
#eval straus_square_stratum_tier_ground  -- tier of the ground (pre-transformation)
#eval straus_square_stratum_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem straus_square_stratum_frobenius :
    igFrobeniusAlg.mul straus_square_stratum_s0 straus_square_stratum_s0 = straus_square_stratum_s0 :=
  igFrobAlg_self_fusion straus_square_stratum_s0
