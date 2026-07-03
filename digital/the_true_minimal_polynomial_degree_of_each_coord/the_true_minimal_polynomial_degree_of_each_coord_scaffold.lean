-- IGProtocol scaffold: VINIT → AFWD → IMSCRIB → CLINK → FSPLIT → EVALF → AREV → EVALT → ENGAGR → FFUSE → FSPLIT → EVALT → EVALF → FFUSE → IFIX → TANCH
-- Class: the true minimal-polynomial degree of each coordinate z_k becomes settled by re-refining the fiducial far beyond 1500 digits so the deep-vanish floor test can separate a genuine degree, which jumps to full precision and then plateaus, from the monotonic creep that currently walls direct algebraic-dependence past degree 72, answering the foundational question of whether the coordinates divide 288 and live in the ray class field or in a larger magnitude-extended field
-- Fingerprint: sig=(6,4,5,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=16
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(4, 9), (10, 13)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑠  | forward morphism — bidirectional arrow
--   [2] IMSCRIB   gram   := 𐑠               𐑾 → 𐑱  | identity — self-imscription
--   [3] CLINK     fid    := 𐑱               𐑠 → 𐑚  | composition — regime coherence
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [10] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [12] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [14] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [15] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_true_minimal_polynomial_degree_of_c42095_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_true_minimal_polynomial_degree_of_c42095_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_true_minimal_polynomial_degree_of_c42095_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_true_minimal_polynomial_degree_of_c42095_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_true_minimal_polynomial_degree_of_c42095_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_true_minimal_polynomial_degree_of_c42095_protocol : IGProtocol the_true_minimal_polynomial_degree_of_c42095_s0 the_true_minimal_polynomial_degree_of_c42095_s15 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_true_minimal_polynomial_degree_of_c42095_s9 the_true_minimal_polynomial_degree_of_c42095_s9 = the_true_minimal_polynomial_degree_of_c42095_s9 (idempotent)
  (.seq (.arrow the_true_minimal_polynomial_degree_of_c42095_l0 the_true_minimal_polynomial_degree_of_c42095_s0 the_true_minimal_polynomial_degree_of_c42095_s1) (.seq (.arrow the_true_minimal_polynomial_degree_of_c42095_l1 the_true_minimal_polynomial_degree_of_c42095_s1 the_true_minimal_polynomial_degree_of_c42095_s2) (.seq (.arrow the_true_minimal_polynomial_degree_of_c42095_l2 the_true_minimal_polynomial_degree_of_c42095_s2 the_true_minimal_polynomial_degree_of_c42095_s3) (.seq (.arrow the_true_minimal_polynomial_degree_of_c42095_l3 the_true_minimal_polynomial_degree_of_c42095_s3 the_true_minimal_polynomial_degree_of_c42095_s4) (.seq (.prod (.arrow the_true_minimal_polynomial_degree_of_c42095_l4 the_true_minimal_polynomial_degree_of_c42095_s4 the_true_minimal_polynomial_degree_of_c42095_s9) (.arrow the_true_minimal_polynomial_degree_of_c42095_l4 the_true_minimal_polynomial_degree_of_c42095_s4 the_true_minimal_polynomial_degree_of_c42095_s9)) (.seq (.arrow the_true_minimal_polynomial_degree_of_c42095_l9 the_true_minimal_polynomial_degree_of_c42095_s9 the_true_minimal_polynomial_degree_of_c42095_s9) (.seq (.arrow the_true_minimal_polynomial_degree_of_c42095_l9 the_true_minimal_polynomial_degree_of_c42095_s9 the_true_minimal_polynomial_degree_of_c42095_s10) (.seq (.arrow the_true_minimal_polynomial_degree_of_c42095_l10 the_true_minimal_polynomial_degree_of_c42095_s10 the_true_minimal_polynomial_degree_of_c42095_s11) (.seq (.arrow the_true_minimal_polynomial_degree_of_c42095_l11 the_true_minimal_polynomial_degree_of_c42095_s11 the_true_minimal_polynomial_degree_of_c42095_s12) (.seq (.arrow the_true_minimal_polynomial_degree_of_c42095_l12 the_true_minimal_polynomial_degree_of_c42095_s12 the_true_minimal_polynomial_degree_of_c42095_s13) (.seq (.arrow the_true_minimal_polynomial_degree_of_c42095_l13 the_true_minimal_polynomial_degree_of_c42095_s13 the_true_minimal_polynomial_degree_of_c42095_s14) (.arrow the_true_minimal_polynomial_degree_of_c42095_l14 the_true_minimal_polynomial_degree_of_c42095_s14 the_true_minimal_polynomial_degree_of_c42095_s15))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_true_minimal_polynomial_degree_of_c42095_true_arm : IGProtocol the_true_minimal_polynomial_degree_of_c42095_s0 the_true_minimal_polynomial_degree_of_c42095_s15 :=
  (the_true_minimal_polynomial_degree_of_c42095_protocol).restrictToEVALT

-- false arm
noncomputable def the_true_minimal_polynomial_degree_of_c42095_false_arm : IGProtocol the_true_minimal_polynomial_degree_of_c42095_s0 the_true_minimal_polynomial_degree_of_c42095_s15 :=
  (the_true_minimal_polynomial_degree_of_c42095_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def the_true_minimal_polynomial_degree_of_c42095_tier : OuroboricityTier := TierFunctor.obj the_true_minimal_polynomial_degree_of_c42095_s0
#eval the_true_minimal_polynomial_degree_of_c42095_tier  -- the Grammar's own verdict on its tier
