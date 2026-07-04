-- IGProtocol scaffold: VINIT → IMSCRIB → IFIX → IMSCRIB → AREV → CLINK → AREV → CLINK → FSPLIT → EVALT → EVALT → EVALT → EVALT → EVALT → EVALT → EVALT → EVALT → EVALT → EVALT → EVALT → EVALT → FFUSE → ENGAGR → AFWD → IFIX → TANCH
-- Class: equiangular proves 13·|⟨ψ|D_{a,b}ψ⟩|²=1 for all (a,b)≠(0,0): the WH overlap wh_inner psi (D_ah 12 a b 0 psi) equals phi of the frozen ring overlap O_{a,b}=Σ_j z̄_j ζ^{(j-a)b} z_{j-a} (identifying omega_d 12 with phi(zeta), a primitive 12th root via zeta_pow12/zeta_phi12; norm is preserved per-(a,b) even if the branch gives the conjugate root); then phi(rmul O Ō)=phi O·phi Ō=|phi O|² and the frozen stratum/existence_identities_all give rmul O Ō = rT13, so |phi O|²=phi(rT13)=1/13, hence 13·(1/13)=1
-- Fingerprint: sig=(9,2,13,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=26
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(8, 21)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑭  | identity — self-imscription
--   [2] IFIX      prot   := 𐑭               𐑠 → 𐑠  | irreversible fixation — winding number
--   [3] IMSCRIB   gram   := 𐑠               𐑭 → 𐑗  | identity — self-imscription
--   [4] AREV      pol    := 𐑗               𐑠 → 𐑱  | reverse morphism — parity flip
--   [5] CLINK     fid    := 𐑱               𐑗 → 𐑗  | composition — regime coherence
--   [6] AREV      pol    := 𐑗               𐑱 → 𐑱  | reverse morphism — parity flip
--   [7] CLINK     fid    := 𐑱               𐑗 → 𐑚  | composition — regime coherence
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [12] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [13] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [14] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [15] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [16] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [17] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [18] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [19] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [20] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [21] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [22] ENGAGR    stoi   := 𐑳               𐑙 → 𐑾  | engage paradox — B-state, both arms
--   [23] AFWD      rel    := 𐑾               𐑳 → 𐑭  | forward morphism — bidirectional arrow
--   [24] IFIX      prot   := 𐑭               𐑾 → 𐑡  | irreversible fixation — winding number
--   [25] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s7 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s8 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s9 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s10 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s11 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s12 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s13 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s14 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s15 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s16 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s17 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s18 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s19 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s20 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s21 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s22 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s24 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s25 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l23 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l24 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l25 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_protocol : IGProtocol equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s0 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s25 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s21 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s21 = equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s21 (idempotent)
  (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l0 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s0 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s1) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l1 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s1 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s2) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l2 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s2 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s3) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l3 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s3 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s4) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l4 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s4 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s5) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l5 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s5 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s6) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l6 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s6 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s7) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l7 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s7 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s8) (.seq (.prod (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l8 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s8 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s21) (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l8 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s8 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s21)) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l21 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s21 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s21) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l21 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s21 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s22) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l22 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s22 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s23) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l23 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s23 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s24) (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l24 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s24 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s25))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_true_arm : IGProtocol equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s0 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s25 :=
  (equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_tier : OuroboricityTier := TierFunctor.obj equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s0
#eval equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_frobenius :
    igFrobeniusAlg.mul equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s0 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s0 = equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s0 :=
  igFrobAlg_self_fusion equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s0
