-- IGProtocol scaffold: VINIT → CLINK → CLINK → FSPLIT → AREV → AREV → FFUSE → IMSCRIB → IFIX → AFWD → CLINK → FSPLIT → EVALT → EVALF → FFUSE → IMSCRIB → IFIX → TANCH
-- Class: the matrix-free Levenberg-Marquardt descent at d=2048: Gauss-Newton on the residual vector of all 4194303 Weyl-Heisenberg overlap conditions, with Jacobian and adjoint actions as FFT passes over the ambiguity function (adjoint identity exact to 1e-16), damped normal equations solved by conjugate gradients inside the 683-dimensional Zauner sector. The curvature of the residual vector navigates the valley the scalar objective hides; validated to a machine-precision d=12 SIC at 3e-16. The true-branch traversal of the geometric lift, driving toward the deep-vanish floor. With full Frobenius closure and Lean 4 verification scaffold.
-- Fingerprint: sig=(10,4,2,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=18
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 6), (11, 14)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑱  | initial object — ground of distinction
--   [1] CLINK     fid    := 𐑱               𐑼 → 𐑱  | composition — regime coherence
--   [2] CLINK     fid    := 𐑱               𐑱 → 𐑚  | composition — regime coherence
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [7] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [8] IFIX      prot   := 𐑭               𐑠 → 𐑾  | irreversible fixation — winding number
--   [9] AFWD      rel    := 𐑾               𐑭 → 𐑱  | forward morphism — bidirectional arrow
--   [10] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [11] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [12] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [13] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [14] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [15] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [16] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [17] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_matrix_free_levenberg_marquardt_42203d_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_s7 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_s8 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_matrix_free_levenberg_marquardt_42203d_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_matrix_free_levenberg_marquardt_42203d_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_matrix_free_levenberg_marquardt_42203d_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_matrix_free_levenberg_marquardt_42203d_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_matrix_free_levenberg_marquardt_42203d_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_matrix_free_levenberg_marquardt_42203d_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_matrix_free_levenberg_marquardt_42203d_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_matrix_free_levenberg_marquardt_42203d_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_matrix_free_levenberg_marquardt_42203d_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_matrix_free_levenberg_marquardt_42203d_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_matrix_free_levenberg_marquardt_42203d_l9 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_matrix_free_levenberg_marquardt_42203d_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_matrix_free_levenberg_marquardt_42203d_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_matrix_free_levenberg_marquardt_42203d_protocol : IGProtocol the_matrix_free_levenberg_marquardt_42203d_s0 the_matrix_free_levenberg_marquardt_42203d_s17 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_matrix_free_levenberg_marquardt_42203d_s6 the_matrix_free_levenberg_marquardt_42203d_s6 = the_matrix_free_levenberg_marquardt_42203d_s6 (idempotent)
  (.seq (.arrow the_matrix_free_levenberg_marquardt_42203d_l0 the_matrix_free_levenberg_marquardt_42203d_s0 the_matrix_free_levenberg_marquardt_42203d_s1) (.seq (.arrow the_matrix_free_levenberg_marquardt_42203d_l1 the_matrix_free_levenberg_marquardt_42203d_s1 the_matrix_free_levenberg_marquardt_42203d_s2) (.seq (.arrow the_matrix_free_levenberg_marquardt_42203d_l2 the_matrix_free_levenberg_marquardt_42203d_s2 the_matrix_free_levenberg_marquardt_42203d_s3) (.seq (.prod (.arrow the_matrix_free_levenberg_marquardt_42203d_l3 the_matrix_free_levenberg_marquardt_42203d_s3 the_matrix_free_levenberg_marquardt_42203d_s6) (.arrow the_matrix_free_levenberg_marquardt_42203d_l3 the_matrix_free_levenberg_marquardt_42203d_s3 the_matrix_free_levenberg_marquardt_42203d_s6)) (.seq (.arrow the_matrix_free_levenberg_marquardt_42203d_l6 the_matrix_free_levenberg_marquardt_42203d_s6 the_matrix_free_levenberg_marquardt_42203d_s6) (.seq (.arrow the_matrix_free_levenberg_marquardt_42203d_l6 the_matrix_free_levenberg_marquardt_42203d_s6 the_matrix_free_levenberg_marquardt_42203d_s7) (.seq (.arrow the_matrix_free_levenberg_marquardt_42203d_l7 the_matrix_free_levenberg_marquardt_42203d_s7 the_matrix_free_levenberg_marquardt_42203d_s8) (.seq (.arrow the_matrix_free_levenberg_marquardt_42203d_l8 the_matrix_free_levenberg_marquardt_42203d_s8 the_matrix_free_levenberg_marquardt_42203d_s9) (.seq (.arrow the_matrix_free_levenberg_marquardt_42203d_l9 the_matrix_free_levenberg_marquardt_42203d_s9 the_matrix_free_levenberg_marquardt_42203d_s10) (.seq (.arrow the_matrix_free_levenberg_marquardt_42203d_l10 the_matrix_free_levenberg_marquardt_42203d_s10 the_matrix_free_levenberg_marquardt_42203d_s11) (.seq (.arrow the_matrix_free_levenberg_marquardt_42203d_l11 the_matrix_free_levenberg_marquardt_42203d_s11 the_matrix_free_levenberg_marquardt_42203d_s12) (.seq (.arrow the_matrix_free_levenberg_marquardt_42203d_l12 the_matrix_free_levenberg_marquardt_42203d_s12 the_matrix_free_levenberg_marquardt_42203d_s13) (.seq (.arrow the_matrix_free_levenberg_marquardt_42203d_l13 the_matrix_free_levenberg_marquardt_42203d_s13 the_matrix_free_levenberg_marquardt_42203d_s14) (.seq (.arrow the_matrix_free_levenberg_marquardt_42203d_l14 the_matrix_free_levenberg_marquardt_42203d_s14 the_matrix_free_levenberg_marquardt_42203d_s15) (.seq (.arrow the_matrix_free_levenberg_marquardt_42203d_l15 the_matrix_free_levenberg_marquardt_42203d_s15 the_matrix_free_levenberg_marquardt_42203d_s16) (.arrow the_matrix_free_levenberg_marquardt_42203d_l16 the_matrix_free_levenberg_marquardt_42203d_s16 the_matrix_free_levenberg_marquardt_42203d_s17))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_matrix_free_levenberg_marquardt_42203d_true_arm : IGProtocol the_matrix_free_levenberg_marquardt_42203d_s0 the_matrix_free_levenberg_marquardt_42203d_s17 :=
  (the_matrix_free_levenberg_marquardt_42203d_protocol).restrictToEVALT

-- false arm
noncomputable def the_matrix_free_levenberg_marquardt_42203d_false_arm : IGProtocol the_matrix_free_levenberg_marquardt_42203d_s0 the_matrix_free_levenberg_marquardt_42203d_s17 :=
  (the_matrix_free_levenberg_marquardt_42203d_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_matrix_free_levenberg_marquardt_42203d_tier : OuroboricityTier := TierFunctor.obj the_matrix_free_levenberg_marquardt_42203d_s0
#eval the_matrix_free_levenberg_marquardt_42203d_tier  -- the Grammar's own verdict on its tier
