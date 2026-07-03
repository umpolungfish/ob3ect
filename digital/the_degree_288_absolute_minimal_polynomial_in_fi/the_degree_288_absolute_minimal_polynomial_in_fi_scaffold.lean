-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → EVALT → EVALF → AREV → FFUSE → AFWD → CLINK → ENGAGR → IFIX → TANCH
-- Class: the degree-288 absolute minimal polynomial in field288_abs.txt becomes a PARI nfinit number field K with a reduced integral basis, so field membership and exact coordinates are computed in a well-conditioned integral basis instead of an ill-conditioned power basis
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 6)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑚  | identity — self-imscription
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [7] AFWD      rel    := 𐑾               𐑙 → 𐑱  | forward morphism — bidirectional arrow
--   [8] CLINK     fid    := 𐑱               𐑾 → 𐑳  | composition — regime coherence
--   [9] ENGAGR    stoi   := 𐑳               𐑱 → 𐑭  | engage paradox — B-state, both arms
--   [10] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [11] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_degree_288_absolute_minimal_3bdc9a_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_degree_288_absolute_minimal_3bdc9a_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_degree_288_absolute_minimal_3bdc9a_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_degree_288_absolute_minimal_3bdc9a_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_degree_288_absolute_minimal_3bdc9a_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_degree_288_absolute_minimal_3bdc9a_protocol : IGProtocol the_degree_288_absolute_minimal_3bdc9a_s0 the_degree_288_absolute_minimal_3bdc9a_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_degree_288_absolute_minimal_3bdc9a_s6 the_degree_288_absolute_minimal_3bdc9a_s6 = the_degree_288_absolute_minimal_3bdc9a_s6 (idempotent)
  (.seq (.arrow the_degree_288_absolute_minimal_3bdc9a_l0 the_degree_288_absolute_minimal_3bdc9a_s0 the_degree_288_absolute_minimal_3bdc9a_s1) (.seq (.arrow the_degree_288_absolute_minimal_3bdc9a_l1 the_degree_288_absolute_minimal_3bdc9a_s1 the_degree_288_absolute_minimal_3bdc9a_s2) (.seq (.prod (.arrow the_degree_288_absolute_minimal_3bdc9a_l2 the_degree_288_absolute_minimal_3bdc9a_s2 the_degree_288_absolute_minimal_3bdc9a_s6) (.arrow the_degree_288_absolute_minimal_3bdc9a_l2 the_degree_288_absolute_minimal_3bdc9a_s2 the_degree_288_absolute_minimal_3bdc9a_s6)) (.seq (.arrow the_degree_288_absolute_minimal_3bdc9a_l6 the_degree_288_absolute_minimal_3bdc9a_s6 the_degree_288_absolute_minimal_3bdc9a_s6) (.seq (.arrow the_degree_288_absolute_minimal_3bdc9a_l6 the_degree_288_absolute_minimal_3bdc9a_s6 the_degree_288_absolute_minimal_3bdc9a_s7) (.seq (.arrow the_degree_288_absolute_minimal_3bdc9a_l7 the_degree_288_absolute_minimal_3bdc9a_s7 the_degree_288_absolute_minimal_3bdc9a_s8) (.seq (.arrow the_degree_288_absolute_minimal_3bdc9a_l8 the_degree_288_absolute_minimal_3bdc9a_s8 the_degree_288_absolute_minimal_3bdc9a_s9) (.seq (.arrow the_degree_288_absolute_minimal_3bdc9a_l9 the_degree_288_absolute_minimal_3bdc9a_s9 the_degree_288_absolute_minimal_3bdc9a_s10) (.arrow the_degree_288_absolute_minimal_3bdc9a_l10 the_degree_288_absolute_minimal_3bdc9a_s10 the_degree_288_absolute_minimal_3bdc9a_s11)))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_degree_288_absolute_minimal_3bdc9a_true_arm : IGProtocol the_degree_288_absolute_minimal_3bdc9a_s0 the_degree_288_absolute_minimal_3bdc9a_s11 :=
  (the_degree_288_absolute_minimal_3bdc9a_protocol).restrictToEVALT

-- false arm
noncomputable def the_degree_288_absolute_minimal_3bdc9a_false_arm : IGProtocol the_degree_288_absolute_minimal_3bdc9a_s0 the_degree_288_absolute_minimal_3bdc9a_s11 :=
  (the_degree_288_absolute_minimal_3bdc9a_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def the_degree_288_absolute_minimal_3bdc9a_tier : OuroboricityTier := TierFunctor.obj the_degree_288_absolute_minimal_3bdc9a_s0
#eval the_degree_288_absolute_minimal_3bdc9a_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_degree_288_absolute_minimal_3bdc9a_frobenius :
    igFrobeniusAlg.mul the_degree_288_absolute_minimal_3bdc9a_s0 the_degree_288_absolute_minimal_3bdc9a_s0 = the_degree_288_absolute_minimal_3bdc9a_s0 :=
  igFrobAlg_self_fusion the_degree_288_absolute_minimal_3bdc9a_s0
