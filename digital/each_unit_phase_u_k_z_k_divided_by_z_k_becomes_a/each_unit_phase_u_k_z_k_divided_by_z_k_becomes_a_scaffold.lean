-- IGProtocol scaffold: VINIT → FSPLIT → AREV → AFWD → CLINK → CLINK → CLINK → IMSCRIB → FSPLIT → EVALT → EVALF → FFUSE → ENGAGR → FFUSE → IFIX → TANCH
-- Class: each unit phase u_k = z_k divided by |z_k| becomes an element of the full degree-288 ray class field lying on the unit circle, factored strictly through the FSPLIT tower layers that K16 does not reach, the i-piece x^2+1 and the two cubic pieces x^3-3x-1 and the SIC-specific cubic, so the phase search is confined to the cyclotomic and cubic layers and never re-touches the settled real moduli field
-- Fingerprint: sig=(8,4,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=16
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(8, 11), (1, 13)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [3] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [12] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [14] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [15] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_protocol : IGProtocol each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s0 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s15 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s11 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s11 = each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s11 (idempotent)
  (.seq (.arrow each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l0 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s0 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s1) (.seq (.prod (.arrow each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l1 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s1 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s11) (.arrow each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l1 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s1 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s11)) (.seq (.arrow each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l11 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s11 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s11) (.seq (.arrow each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l11 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s11 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s12) (.seq (.arrow each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l12 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s12 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s13) (.seq (.arrow each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l13 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s13 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s14) (.arrow each_unit_phase_u_k_z_k_divided_by_z_k_36c163_l14 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s14 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s15)))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_true_arm : IGProtocol each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s0 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s15 :=
  (each_unit_phase_u_k_z_k_divided_by_z_k_36c163_protocol).restrictToEVALT

-- false arm
noncomputable def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_false_arm : IGProtocol each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s0 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s15 :=
  (each_unit_phase_u_k_z_k_divided_by_z_k_36c163_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def each_unit_phase_u_k_z_k_divided_by_z_k_36c163_tier : OuroboricityTier := TierFunctor.obj each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s0
#eval each_unit_phase_u_k_z_k_divided_by_z_k_36c163_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem each_unit_phase_u_k_z_k_divided_by_z_k_36c163_frobenius :
    igFrobeniusAlg.mul each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s0 each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s0 = each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s0 :=
  igFrobAlg_self_fusion each_unit_phase_u_k_z_k_divided_by_z_k_36c163_s0
