-- IGProtocol scaffold: VINIT → AFWD → IMSCRIB → IFIX → FSPLIT → EVALF → AREV → CLINK → FSPLIT → AFWD → AREV → ENGAGR → FFUSE → CLINK → EVALT → CLINK → IFIX → FFUSE → IFIX → TANCH
-- Class: equiangular_bridge holds with b' = (m * b) % 12 (m in {1,5} the branch of phi zeta = omega^m): both wh_inner 12 psi (D_ah 12 a b 0 psi) = Σ_k psi k · conj(omega^(b*idx)) · conj(psi idx) and star (phi (Oab a.val b')) = Σ_j psi j · conj(psi idx) · conj(Z^((idx*b')%12)) are sums over Fin 12 indexed by the SAME shift idx = (k+12-a)%12, so they agree term by term once the phases match: conj(omega)^(b*idx) = conj(Z)^(idx*b') because Z = omega^m and m*b' ≡ b (mod 12), with the mod-12 exponents collapsed by omega_d 12 ^ 12 = 1 and Z^12 = 1; the phi side expands via phi_foldl_radd over Oab's foldl, phi_rmul (canonicity from rZ_keys_canon, T_canon_all, zpow_canon_all), phi_rconj (phi(rZB j)=star(psi j)), and phi_zpow; finally b' = 0 ↔ b = 0 (m coprime to 12) with a.val = 0 gives ¬(a.val=0 ∧ b'=0) from h, so overlap_normSq applies and 13·‖wh_inner‖² = 1
-- Fingerprint: sig=(10,4,3,3)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=20
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(8, 12), (4, 17)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑠  | forward morphism — bidirectional arrow
--   [2] IMSCRIB   gram   := 𐑠               𐑾 → 𐑭  | identity — self-imscription
--   [3] IFIX      prot   := 𐑭               𐑠 → 𐑚  | irreversible fixation — winding number
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [10] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [11] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [13] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [14] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [15] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [16] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [17] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [18] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [19] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := up, prot := ah }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l9 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_bridge_holds_with_b_m_b_12_5b85d4_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def equiangular_bridge_holds_with_b_m_b_12_5b85d4_protocol : IGProtocol equiangular_bridge_holds_with_b_m_b_12_5b85d4_s0 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s19 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct equiangular_bridge_holds_with_b_m_b_12_5b85d4_s12 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s12 = equiangular_bridge_holds_with_b_m_b_12_5b85d4_s12 (idempotent)
  (.seq (.arrow equiangular_bridge_holds_with_b_m_b_12_5b85d4_l0 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s0 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s1) (.seq (.arrow equiangular_bridge_holds_with_b_m_b_12_5b85d4_l1 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s1 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s2) (.seq (.arrow equiangular_bridge_holds_with_b_m_b_12_5b85d4_l2 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s2 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s3) (.seq (.arrow equiangular_bridge_holds_with_b_m_b_12_5b85d4_l3 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s3 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s4) (.seq (.prod (.arrow equiangular_bridge_holds_with_b_m_b_12_5b85d4_l4 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s4 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s12) (.arrow equiangular_bridge_holds_with_b_m_b_12_5b85d4_l4 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s4 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s12)) (.seq (.arrow equiangular_bridge_holds_with_b_m_b_12_5b85d4_l12 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s12 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s12) (.seq (.arrow equiangular_bridge_holds_with_b_m_b_12_5b85d4_l12 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s12 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s13) (.seq (.arrow equiangular_bridge_holds_with_b_m_b_12_5b85d4_l13 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s13 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s14) (.seq (.arrow equiangular_bridge_holds_with_b_m_b_12_5b85d4_l14 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s14 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s15) (.seq (.arrow equiangular_bridge_holds_with_b_m_b_12_5b85d4_l15 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s15 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s16) (.seq (.arrow equiangular_bridge_holds_with_b_m_b_12_5b85d4_l16 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s16 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s17) (.seq (.arrow equiangular_bridge_holds_with_b_m_b_12_5b85d4_l17 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s17 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s18) (.arrow equiangular_bridge_holds_with_b_m_b_12_5b85d4_l18 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s18 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s19)))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def equiangular_bridge_holds_with_b_m_b_12_5b85d4_true_arm : IGProtocol equiangular_bridge_holds_with_b_m_b_12_5b85d4_s0 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s19 :=
  (equiangular_bridge_holds_with_b_m_b_12_5b85d4_protocol).restrictToEVALT

-- false arm
noncomputable def equiangular_bridge_holds_with_b_m_b_12_5b85d4_false_arm : IGProtocol equiangular_bridge_holds_with_b_m_b_12_5b85d4_s0 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s19 :=
  (equiangular_bridge_holds_with_b_m_b_12_5b85d4_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def equiangular_bridge_holds_with_b_m_b_12_5b85d4_tier : OuroboricityTier := TierFunctor.obj equiangular_bridge_holds_with_b_m_b_12_5b85d4_s0
#eval equiangular_bridge_holds_with_b_m_b_12_5b85d4_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem equiangular_bridge_holds_with_b_m_b_12_5b85d4_frobenius :
    igFrobeniusAlg.mul equiangular_bridge_holds_with_b_m_b_12_5b85d4_s0 equiangular_bridge_holds_with_b_m_b_12_5b85d4_s0 = equiangular_bridge_holds_with_b_m_b_12_5b85d4_s0 :=
  igFrobAlg_self_fusion equiangular_bridge_holds_with_b_m_b_12_5b85d4_s0
