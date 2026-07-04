-- IGProtocol scaffold: VINIT → IFIX → IMSCRIB → AFWD → FSPLIT → AFWD → AFWD → AFWD → AFWD → FFUSE → CLINK → EVALT → FSPLIT → EVALT → EVALT → AREV → AFWD → FFUSE → IFIX → CLINK → TANCH
-- Class: phi maps each sparse-assoc-list ring element to ℂ by decoding the 7-bit key into its meaning (cover bits open s0,s1,s3,s9 square roots, i-exponent, c5-exponent, u1-exponent), evaluating the K16 coefficient at g0C, multiplying by the generator values raised to the key exponents, and summing over the list; then phi_radd proves additivity and phi_rmul proves multiplicativity using the key encoding and evalK16_kmul, and phi_rconj proves phi(rconj A)=star(phi A) by tracking how conjugation flips i, c5, u1 while leaving the real s_k unchanged
-- Fingerprint: sig=(12,4,3,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=21
-- Expected tier: O₀
-- FSPLIT/FFUSE pairs: [(4, 9), (12, 17)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑭  | initial object — ground of distinction
--   [1] IFIX      prot   := 𐑭               𐑼 → 𐑠  | irreversible fixation — winding number
--   [2] IMSCRIB   gram   := 𐑠               𐑭 → 𐑾  | identity — self-imscription
--   [3] AFWD      rel    := 𐑾               𐑠 → 𐑚  | forward morphism — bidirectional arrow
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [8] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [10] CLINK     fid    := 𐑱               𐑙 → ⊙  | composition — regime coherence
--   [11] EVALT     crit   := ⊙               𐑱 → 𐑚  | evaluate-true — criticality gate open
--   [12] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [13] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [14] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [15] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [16] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [17] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [18] IFIX      prot   := 𐑭               𐑙 → 𐑱  | irreversible fixation — winding number
--   [19] CLINK     fid    := 𐑱               𐑭 → 𐑡  | composition — regime coherence
--   [20] TANCH     top    := 𐑡               𐑱 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l16 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_maps_each_sparse_assoc_list_ring_9c5433_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def phi_maps_each_sparse_assoc_list_ring_9c5433_protocol : IGProtocol phi_maps_each_sparse_assoc_list_ring_9c5433_s0 phi_maps_each_sparse_assoc_list_ring_9c5433_s20 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct phi_maps_each_sparse_assoc_list_ring_9c5433_s9 phi_maps_each_sparse_assoc_list_ring_9c5433_s9 = phi_maps_each_sparse_assoc_list_ring_9c5433_s9 (idempotent)
  (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_9c5433_l0 phi_maps_each_sparse_assoc_list_ring_9c5433_s0 phi_maps_each_sparse_assoc_list_ring_9c5433_s1) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_9c5433_l1 phi_maps_each_sparse_assoc_list_ring_9c5433_s1 phi_maps_each_sparse_assoc_list_ring_9c5433_s2) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_9c5433_l2 phi_maps_each_sparse_assoc_list_ring_9c5433_s2 phi_maps_each_sparse_assoc_list_ring_9c5433_s3) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_9c5433_l3 phi_maps_each_sparse_assoc_list_ring_9c5433_s3 phi_maps_each_sparse_assoc_list_ring_9c5433_s4) (.seq (.prod (.arrow phi_maps_each_sparse_assoc_list_ring_9c5433_l4 phi_maps_each_sparse_assoc_list_ring_9c5433_s4 phi_maps_each_sparse_assoc_list_ring_9c5433_s9) (.arrow phi_maps_each_sparse_assoc_list_ring_9c5433_l4 phi_maps_each_sparse_assoc_list_ring_9c5433_s4 phi_maps_each_sparse_assoc_list_ring_9c5433_s9)) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_9c5433_l9 phi_maps_each_sparse_assoc_list_ring_9c5433_s9 phi_maps_each_sparse_assoc_list_ring_9c5433_s9) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_9c5433_l9 phi_maps_each_sparse_assoc_list_ring_9c5433_s9 phi_maps_each_sparse_assoc_list_ring_9c5433_s10) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_9c5433_l10 phi_maps_each_sparse_assoc_list_ring_9c5433_s10 phi_maps_each_sparse_assoc_list_ring_9c5433_s11) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_9c5433_l11 phi_maps_each_sparse_assoc_list_ring_9c5433_s11 phi_maps_each_sparse_assoc_list_ring_9c5433_s12) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_9c5433_l12 phi_maps_each_sparse_assoc_list_ring_9c5433_s12 phi_maps_each_sparse_assoc_list_ring_9c5433_s13) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_9c5433_l13 phi_maps_each_sparse_assoc_list_ring_9c5433_s13 phi_maps_each_sparse_assoc_list_ring_9c5433_s14) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_9c5433_l14 phi_maps_each_sparse_assoc_list_ring_9c5433_s14 phi_maps_each_sparse_assoc_list_ring_9c5433_s15) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_9c5433_l15 phi_maps_each_sparse_assoc_list_ring_9c5433_s15 phi_maps_each_sparse_assoc_list_ring_9c5433_s16) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_9c5433_l16 phi_maps_each_sparse_assoc_list_ring_9c5433_s16 phi_maps_each_sparse_assoc_list_ring_9c5433_s17) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_9c5433_l17 phi_maps_each_sparse_assoc_list_ring_9c5433_s17 phi_maps_each_sparse_assoc_list_ring_9c5433_s18) (.seq (.arrow phi_maps_each_sparse_assoc_list_ring_9c5433_l18 phi_maps_each_sparse_assoc_list_ring_9c5433_s18 phi_maps_each_sparse_assoc_list_ring_9c5433_s19) (.arrow phi_maps_each_sparse_assoc_list_ring_9c5433_l19 phi_maps_each_sparse_assoc_list_ring_9c5433_s19 phi_maps_each_sparse_assoc_list_ring_9c5433_s20)))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def phi_maps_each_sparse_assoc_list_ring_9c5433_true_arm : IGProtocol phi_maps_each_sparse_assoc_list_ring_9c5433_s0 phi_maps_each_sparse_assoc_list_ring_9c5433_s20 :=
  (phi_maps_each_sparse_assoc_list_ring_9c5433_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₀.
def phi_maps_each_sparse_assoc_list_ring_9c5433_tier : OuroboricityTier := TierFunctor.obj phi_maps_each_sparse_assoc_list_ring_9c5433_s0
#eval phi_maps_each_sparse_assoc_list_ring_9c5433_tier  -- the Grammar's own verdict on its tier
