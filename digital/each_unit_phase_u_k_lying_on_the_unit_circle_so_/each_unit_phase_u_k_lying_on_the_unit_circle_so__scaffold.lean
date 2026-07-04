-- IGProtocol scaffold: VINIT → IMSCRIB → IFIX → CLINK → IMSCRIB → AFWD → FSPLIT → EVALT → AFWD → AREV → FFUSE → IMSCRIB → IFIX → TANCH
-- Class: each unit phase u_k, lying on the unit circle so that its minimal polynomial is self-reciprocal and pairs every root u with its inverse conjugate one-over-u, becomes recovered by the fold in which the real symmetric coordinate c equal to u to the m plus u to the minus m equal to two cosine of m theta collapses the degree-two-g palindrome to a polynomial of degree g in c, and the phase is nested-radical expressible exactly when that reduced polynomial has degree at most four or a solvable Galois group
-- Fingerprint: sig=(9,2,1,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=14
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(6, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑭  | identity — self-imscription
--   [2] IFIX      prot   := 𐑭               𐑠 → 𐑱  | irreversible fixation — winding number
--   [3] CLINK     fid    := 𐑱               𐑭 → 𐑠  | composition — regime coherence
--   [4] IMSCRIB   gram   := 𐑠               𐑱 → 𐑾  | identity — self-imscription
--   [5] AFWD      rel    := 𐑾               𐑠 → 𐑚  | forward morphism — bidirectional arrow
--   [6] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [9] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [11] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [12] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [13] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def each_unit_phase_u_k_lying_on_the_unit_035633_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_lying_on_the_unit_035633_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_lying_on_the_unit_035633_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def each_unit_phase_u_k_lying_on_the_unit_035633_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def each_unit_phase_u_k_lying_on_the_unit_035633_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def each_unit_phase_u_k_lying_on_the_unit_035633_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def each_unit_phase_u_k_lying_on_the_unit_035633_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def each_unit_phase_u_k_lying_on_the_unit_035633_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def each_unit_phase_u_k_lying_on_the_unit_035633_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def each_unit_phase_u_k_lying_on_the_unit_035633_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def each_unit_phase_u_k_lying_on_the_unit_035633_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def each_unit_phase_u_k_lying_on_the_unit_035633_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def each_unit_phase_u_k_lying_on_the_unit_035633_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def each_unit_phase_u_k_lying_on_the_unit_035633_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def each_unit_phase_u_k_lying_on_the_unit_035633_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_lying_on_the_unit_035633_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_lying_on_the_unit_035633_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def each_unit_phase_u_k_lying_on_the_unit_035633_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_lying_on_the_unit_035633_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_lying_on_the_unit_035633_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_lying_on_the_unit_035633_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_lying_on_the_unit_035633_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_lying_on_the_unit_035633_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_lying_on_the_unit_035633_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_lying_on_the_unit_035633_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_lying_on_the_unit_035633_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_lying_on_the_unit_035633_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def each_unit_phase_u_k_lying_on_the_unit_035633_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def each_unit_phase_u_k_lying_on_the_unit_035633_protocol : IGProtocol each_unit_phase_u_k_lying_on_the_unit_035633_s0 each_unit_phase_u_k_lying_on_the_unit_035633_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct each_unit_phase_u_k_lying_on_the_unit_035633_s10 each_unit_phase_u_k_lying_on_the_unit_035633_s10 = each_unit_phase_u_k_lying_on_the_unit_035633_s10 (idempotent)
  (.seq (.arrow each_unit_phase_u_k_lying_on_the_unit_035633_l0 each_unit_phase_u_k_lying_on_the_unit_035633_s0 each_unit_phase_u_k_lying_on_the_unit_035633_s1) (.seq (.arrow each_unit_phase_u_k_lying_on_the_unit_035633_l1 each_unit_phase_u_k_lying_on_the_unit_035633_s1 each_unit_phase_u_k_lying_on_the_unit_035633_s2) (.seq (.arrow each_unit_phase_u_k_lying_on_the_unit_035633_l2 each_unit_phase_u_k_lying_on_the_unit_035633_s2 each_unit_phase_u_k_lying_on_the_unit_035633_s3) (.seq (.arrow each_unit_phase_u_k_lying_on_the_unit_035633_l3 each_unit_phase_u_k_lying_on_the_unit_035633_s3 each_unit_phase_u_k_lying_on_the_unit_035633_s4) (.seq (.arrow each_unit_phase_u_k_lying_on_the_unit_035633_l4 each_unit_phase_u_k_lying_on_the_unit_035633_s4 each_unit_phase_u_k_lying_on_the_unit_035633_s5) (.seq (.arrow each_unit_phase_u_k_lying_on_the_unit_035633_l5 each_unit_phase_u_k_lying_on_the_unit_035633_s5 each_unit_phase_u_k_lying_on_the_unit_035633_s6) (.seq (.prod (.arrow each_unit_phase_u_k_lying_on_the_unit_035633_l6 each_unit_phase_u_k_lying_on_the_unit_035633_s6 each_unit_phase_u_k_lying_on_the_unit_035633_s10) (.arrow each_unit_phase_u_k_lying_on_the_unit_035633_l6 each_unit_phase_u_k_lying_on_the_unit_035633_s6 each_unit_phase_u_k_lying_on_the_unit_035633_s10)) (.seq (.arrow each_unit_phase_u_k_lying_on_the_unit_035633_l10 each_unit_phase_u_k_lying_on_the_unit_035633_s10 each_unit_phase_u_k_lying_on_the_unit_035633_s10) (.seq (.arrow each_unit_phase_u_k_lying_on_the_unit_035633_l10 each_unit_phase_u_k_lying_on_the_unit_035633_s10 each_unit_phase_u_k_lying_on_the_unit_035633_s11) (.seq (.arrow each_unit_phase_u_k_lying_on_the_unit_035633_l11 each_unit_phase_u_k_lying_on_the_unit_035633_s11 each_unit_phase_u_k_lying_on_the_unit_035633_s12) (.arrow each_unit_phase_u_k_lying_on_the_unit_035633_l12 each_unit_phase_u_k_lying_on_the_unit_035633_s12 each_unit_phase_u_k_lying_on_the_unit_035633_s13)))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def each_unit_phase_u_k_lying_on_the_unit_035633_true_arm : IGProtocol each_unit_phase_u_k_lying_on_the_unit_035633_s0 each_unit_phase_u_k_lying_on_the_unit_035633_s13 :=
  (each_unit_phase_u_k_lying_on_the_unit_035633_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def each_unit_phase_u_k_lying_on_the_unit_035633_tier : OuroboricityTier := TierFunctor.obj each_unit_phase_u_k_lying_on_the_unit_035633_s0
#eval each_unit_phase_u_k_lying_on_the_unit_035633_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem each_unit_phase_u_k_lying_on_the_unit_035633_frobenius :
    igFrobeniusAlg.mul each_unit_phase_u_k_lying_on_the_unit_035633_s0 each_unit_phase_u_k_lying_on_the_unit_035633_s0 = each_unit_phase_u_k_lying_on_the_unit_035633_s0 :=
  igFrobAlg_self_fusion each_unit_phase_u_k_lying_on_the_unit_035633_s0
