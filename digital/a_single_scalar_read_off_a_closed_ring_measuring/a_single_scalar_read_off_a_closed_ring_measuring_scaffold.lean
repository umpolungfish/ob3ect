-- IGProtocol scaffold: VINIT → TANCH → IMSCRIB → AFWD → CLINK → FSPLIT → EVALT → EVALF → FFUSE → AREV → CLINK → IMSCRIB → IFIX
-- Class: A single scalar read off a closed ring measuring how unevenly its bonds are loaded — the spread of junction drive around the loop, near zero when every bond carries equal tension and large when the ring is forced shut against reluctant junctions; the material's stored internal stress, the quantity annealing drives down.
-- Fingerprint: sig=(8,2,2,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=13
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(5, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑠  | terminal object — connectivity boundary
--   [2] IMSCRIB   gram   := 𐑠               𐑡 → 𐑾  | identity — self-imscription
--   [3] AFWD      rel    := 𐑾               𐑠 → 𐑱  | forward morphism — bidirectional arrow
--   [4] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [9] AREV      pol    := 𐑗               𐑙 → 𐑱  | reverse morphism — parity flip
--   [10] CLINK     fid    := 𐑱               𐑗 → 𐑠  | composition — regime coherence
--   [11] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [12] IFIX      prot   := 𐑭               𐑠 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def a_single_scalar_read_off_a_closed_ring_f24eef_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def a_single_scalar_read_off_a_closed_ring_f24eef_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_single_scalar_read_off_a_closed_ring_f24eef_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def a_single_scalar_read_off_a_closed_ring_f24eef_protocol : IGProtocol a_single_scalar_read_off_a_closed_ring_f24eef_s0 a_single_scalar_read_off_a_closed_ring_f24eef_s12 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct a_single_scalar_read_off_a_closed_ring_f24eef_s8 a_single_scalar_read_off_a_closed_ring_f24eef_s8 = a_single_scalar_read_off_a_closed_ring_f24eef_s8 (idempotent)
  (.seq (.arrow a_single_scalar_read_off_a_closed_ring_f24eef_l0 a_single_scalar_read_off_a_closed_ring_f24eef_s0 a_single_scalar_read_off_a_closed_ring_f24eef_s1) (.seq (.arrow a_single_scalar_read_off_a_closed_ring_f24eef_l1 a_single_scalar_read_off_a_closed_ring_f24eef_s1 a_single_scalar_read_off_a_closed_ring_f24eef_s2) (.seq (.arrow a_single_scalar_read_off_a_closed_ring_f24eef_l2 a_single_scalar_read_off_a_closed_ring_f24eef_s2 a_single_scalar_read_off_a_closed_ring_f24eef_s3) (.seq (.arrow a_single_scalar_read_off_a_closed_ring_f24eef_l3 a_single_scalar_read_off_a_closed_ring_f24eef_s3 a_single_scalar_read_off_a_closed_ring_f24eef_s4) (.seq (.arrow a_single_scalar_read_off_a_closed_ring_f24eef_l4 a_single_scalar_read_off_a_closed_ring_f24eef_s4 a_single_scalar_read_off_a_closed_ring_f24eef_s5) (.seq (.prod (.arrow a_single_scalar_read_off_a_closed_ring_f24eef_l5 a_single_scalar_read_off_a_closed_ring_f24eef_s5 a_single_scalar_read_off_a_closed_ring_f24eef_s8) (.arrow a_single_scalar_read_off_a_closed_ring_f24eef_l5 a_single_scalar_read_off_a_closed_ring_f24eef_s5 a_single_scalar_read_off_a_closed_ring_f24eef_s8)) (.seq (.arrow a_single_scalar_read_off_a_closed_ring_f24eef_l8 a_single_scalar_read_off_a_closed_ring_f24eef_s8 a_single_scalar_read_off_a_closed_ring_f24eef_s8) (.seq (.arrow a_single_scalar_read_off_a_closed_ring_f24eef_l8 a_single_scalar_read_off_a_closed_ring_f24eef_s8 a_single_scalar_read_off_a_closed_ring_f24eef_s9) (.seq (.arrow a_single_scalar_read_off_a_closed_ring_f24eef_l9 a_single_scalar_read_off_a_closed_ring_f24eef_s9 a_single_scalar_read_off_a_closed_ring_f24eef_s10) (.seq (.arrow a_single_scalar_read_off_a_closed_ring_f24eef_l10 a_single_scalar_read_off_a_closed_ring_f24eef_s10 a_single_scalar_read_off_a_closed_ring_f24eef_s11) (.arrow a_single_scalar_read_off_a_closed_ring_f24eef_l11 a_single_scalar_read_off_a_closed_ring_f24eef_s11 a_single_scalar_read_off_a_closed_ring_f24eef_s12)))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def a_single_scalar_read_off_a_closed_ring_f24eef_true_arm : IGProtocol a_single_scalar_read_off_a_closed_ring_f24eef_s0 a_single_scalar_read_off_a_closed_ring_f24eef_s12 :=
  (a_single_scalar_read_off_a_closed_ring_f24eef_protocol).restrictToEVALT

-- false arm
noncomputable def a_single_scalar_read_off_a_closed_ring_f24eef_false_arm : IGProtocol a_single_scalar_read_off_a_closed_ring_f24eef_s0 a_single_scalar_read_off_a_closed_ring_f24eef_s12 :=
  (a_single_scalar_read_off_a_closed_ring_f24eef_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def a_single_scalar_read_off_a_closed_ring_f24eef_tier : OuroboricityTier := TierFunctor.obj a_single_scalar_read_off_a_closed_ring_f24eef_s0
#eval a_single_scalar_read_off_a_closed_ring_f24eef_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem a_single_scalar_read_off_a_closed_ring_f24eef_frobenius :
    igFrobeniusAlg.mul a_single_scalar_read_off_a_closed_ring_f24eef_s0 a_single_scalar_read_off_a_closed_ring_f24eef_s0 = a_single_scalar_read_off_a_closed_ring_f24eef_s0 :=
  igFrobAlg_self_fusion a_single_scalar_read_off_a_closed_ring_f24eef_s0
