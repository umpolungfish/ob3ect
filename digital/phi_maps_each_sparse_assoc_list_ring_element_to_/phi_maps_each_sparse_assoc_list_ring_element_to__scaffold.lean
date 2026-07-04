-- IGProtocol scaffold: VINIT → IMSCRIB → IFIX → AFWD → FSPLIT → CLINK → CLINK → CLINK → CLINK → EVALF → FFUSE → EVALT → AREV → IFIX → TANCH
-- Class: phi maps each sparse-assoc-list ring element to ℂ by decoding the 7-bit key (cover mask over bits 0,1,2,3 opening sVal 0,1,2,3; i-exponent key/16%2; c5-exponent key/32%2; u1-exponent key/64), evaluating the K16 coefficient at g0C, multiplying by scov·iVal^ei·c5Val^e5·u1Val^e1, and summing over the list; phi_radd is proved via phi_insertAdd (already done); phi_rmul proves multiplicativity by a per-monomial contrib_sound lemma — the sum of evalKeys over contrib(cov,ei,e5,e1,coef) equals the unreduced monomial value monVal, because red1 is sound by u1Val²=E2Val, red2 by iVal²=-1, red3 by c5Val²=-oa·c5Val-ob — composed with covCorr_sound (scov(ka)·scov(kb)=Π_{shared bit b}sVal b² · scov(ka⊕kb), matching covCorr's kmul by covK b and sVal b²=evalK16(covK b)) and phi_foldl_insertAdd; phi_rconj proves phi(rconj A)=star(phi A) because star fixes every K16 evaluation (g0 real) and sVal/c5Val (real), sends iVal→-iVal, and sends u1Val→conj(E2Val)·u1Val via rU1i
-- Fingerprint: sig=(9,2,2,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=15
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(4, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑭  | identity — self-imscription
--   [2] IFIX      prot   := 𐑭               𐑠 → 𐑾  | irreversible fixation — winding number
--   [3] AFWD      rel    := 𐑾               𐑭 → 𐑚  | forward morphism — bidirectional arrow
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [9] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] FFUSE     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [11] EVALT     crit   := ⊙               𐑙 → 𐑗  | evaluate-true — criticality gate open
--   [12] AREV      pol    := 𐑗               ⊙ → 𐑭  | reverse morphism — parity flip
--   [13] IFIX      prot   := 𐑭               𐑗 → 𐑡  | irreversible fixation — winding number
--   [14] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def phi_maps_each_sparse_assoc_list_ring_7a9155_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def phi_maps_each_sparse_assoc_list_ring_7a9155_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_7a9155_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def phi_maps_each_sparse_assoc_list_ring_7a9155_protocol : IGProtocol phi_maps_each_sparse_assoc_list_ring_7a9155_s0 phi_maps_each_sparse_assoc_list_ring_7a9155_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct phi_maps_each_sparse_assoc_list_ring_7a9155_s10 phi_maps_each_sparse_assoc_list_ring_7a9155_s10 = phi_maps_each_sparse_assoc_list_ring_7a9155_s10 (idempotent)
  (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_7a9155_l0 phi_maps_each_sparse_assoc_list_ring_7a9155_s0 phi_maps_each_sparse_assoc_list_ring_7a9155_s1) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_7a9155_l1 phi_maps_each_sparse_assoc_list_ring_7a9155_s1 phi_maps_each_sparse_assoc_list_ring_7a9155_s2) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_7a9155_l2 phi_maps_each_sparse_assoc_list_ring_7a9155_s2 phi_maps_each_sparse_assoc_list_ring_7a9155_s3) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_7a9155_l3 phi_maps_each_sparse_assoc_list_ring_7a9155_s3 phi_maps_each_sparse_assoc_list_ring_7a9155_s4) (.seq (.prod (.arrow phi_maps_each_sparse_assoc_list_ring_7a9155_l4 phi_maps_each_sparse_assoc_list_ring_7a9155_s4 phi_maps_each_sparse_assoc_list_ring_7a9155_s10) (.arrow phi_maps_each_sparse_assoc_list_ring_7a9155_l4 phi_maps_each_sparse_assoc_list_ring_7a9155_s4 phi_maps_each_sparse_assoc_list_ring_7a9155_s10)) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_7a9155_l10 phi_maps_each_sparse_assoc_list_ring_7a9155_s10 phi_maps_each_sparse_assoc_list_ring_7a9155_s10) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_7a9155_l10 phi_maps_each_sparse_assoc_list_ring_7a9155_s10 phi_maps_each_sparse_assoc_list_ring_7a9155_s11) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_7a9155_l11 phi_maps_each_sparse_assoc_list_ring_7a9155_s11 phi_maps_each_sparse_assoc_list_ring_7a9155_s12) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_7a9155_l12 phi_maps_each_sparse_assoc_list_ring_7a9155_s12 phi_maps_each_sparse_assoc_list_ring_7a9155_s13) (.arrow phi_maps_each_sparse_assoc_list_ring_7a9155_l13 phi_maps_each_sparse_assoc_list_ring_7a9155_s13 phi_maps_each_sparse_assoc_list_ring_7a9155_s14))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def phi_maps_each_sparse_assoc_list_ring_7a9155_true_arm : IGProtocol phi_maps_each_sparse_assoc_list_ring_7a9155_s0 phi_maps_each_sparse_assoc_list_ring_7a9155_s14 :=
  (phi_maps_each_sparse_assoc_list_ring_7a9155_protocol).restrictToEVALT

-- false arm
noncomputable def phi_maps_each_sparse_assoc_list_ring_7a9155_false_arm : IGProtocol phi_maps_each_sparse_assoc_list_ring_7a9155_s0 phi_maps_each_sparse_assoc_list_ring_7a9155_s14 :=
  (phi_maps_each_sparse_assoc_list_ring_7a9155_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def phi_maps_each_sparse_assoc_list_ring_7a9155_tier : OuroboricityTier := TierFunctor.obj phi_maps_each_sparse_assoc_list_ring_7a9155_s0
#eval phi_maps_each_sparse_assoc_list_ring_7a9155_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem phi_maps_each_sparse_assoc_list_ring_7a9155_frobenius :
    igFrobeniusAlg.mul phi_maps_each_sparse_assoc_list_ring_7a9155_s0 phi_maps_each_sparse_assoc_list_ring_7a9155_s0 = phi_maps_each_sparse_assoc_list_ring_7a9155_s0 :=
  igFrobAlg_self_fusion phi_maps_each_sparse_assoc_list_ring_7a9155_s0
