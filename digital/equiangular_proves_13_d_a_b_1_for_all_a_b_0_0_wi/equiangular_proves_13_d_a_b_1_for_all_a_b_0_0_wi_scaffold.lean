-- IGProtocol scaffold: VINIT → IFIX → AFWD → IMSCRIB → IFIX → CLINK → FSPLIT → AFWD → CLINK → CLINK → FFUSE → AREV → CLINK → EVALT → IMSCRIB → IFIX → TANCH
-- Class: equiangular proves 13·|⟨ψ|D_{a,b}ψ⟩|² = 1 for all (a,b) ≠ (0,0): with the WH displacement now correct (X_d uses (k+d-1) mod d), wh_inner psi (D_ah 12 a b 0 psi) equals phi of the frozen ring overlap O_{a,b} = Σⱼ z̄ⱼ ζ^{(j-a)b} z_{j-a} (identifying omega_d 12 with phi(zeta), a primitive 12th root via zeta_pow12; the norm is preserved per (a,b) even if the branch yields the conjugate root), phi(rmul O Ō) = phi O · star(phi O) = |phi O|² through the complete star-ring hom on the canonical-key domain (all frozen vectors canonical by rZ_keys_canon), and the frozen stratum/existence_identities_all theorems give rmul O Ō = rT13, hence |phi O|² = 1/13 and 13·(1/13) = 1
-- Fingerprint: sig=(11,2,1,3)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=17
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(6, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑭  | initial object — ground of distinction
--   [1] IFIX      prot   := 𐑭               𐑼 → 𐑾  | irreversible fixation — winding number
--   [2] AFWD      rel    := 𐑾               𐑭 → 𐑠  | forward morphism — bidirectional arrow
--   [3] IMSCRIB   gram   := 𐑠               𐑾 → 𐑭  | identity — self-imscription
--   [4] IFIX      prot   := 𐑭               𐑠 → 𐑱  | irreversible fixation — winding number
--   [5] CLINK     fid    := 𐑱               𐑭 → 𐑚  | composition — regime coherence
--   [6] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [7] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [8] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [9] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [11] AREV      pol    := 𐑗               𐑙 → 𐑱  | reverse morphism — parity flip
--   [12] CLINK     fid    := 𐑱               𐑗 → ⊙  | composition — regime coherence
--   [13] EVALT     crit   := ⊙               𐑱 → 𐑠  | evaluate-true — criticality gate open
--   [14] IMSCRIB   gram   := 𐑠               ⊙ → 𐑭  | identity — self-imscription
--   [15] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [16] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_996673_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def equiangular_proves_13_d_a_b_1_for_all_a_996673_protocol : IGProtocol equiangular_proves_13_d_a_b_1_for_all_a_996673_s0 equiangular_proves_13_d_a_b_1_for_all_a_996673_s16 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct equiangular_proves_13_d_a_b_1_for_all_a_996673_s10 equiangular_proves_13_d_a_b_1_for_all_a_996673_s10 = equiangular_proves_13_d_a_b_1_for_all_a_996673_s10 (idempotent)
  (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_996673_l0 equiangular_proves_13_d_a_b_1_for_all_a_996673_s0 equiangular_proves_13_d_a_b_1_for_all_a_996673_s1) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_996673_l1 equiangular_proves_13_d_a_b_1_for_all_a_996673_s1 equiangular_proves_13_d_a_b_1_for_all_a_996673_s2) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_996673_l2 equiangular_proves_13_d_a_b_1_for_all_a_996673_s2 equiangular_proves_13_d_a_b_1_for_all_a_996673_s3) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_996673_l3 equiangular_proves_13_d_a_b_1_for_all_a_996673_s3 equiangular_proves_13_d_a_b_1_for_all_a_996673_s4) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_996673_l4 equiangular_proves_13_d_a_b_1_for_all_a_996673_s4 equiangular_proves_13_d_a_b_1_for_all_a_996673_s5) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_996673_l5 equiangular_proves_13_d_a_b_1_for_all_a_996673_s5 equiangular_proves_13_d_a_b_1_for_all_a_996673_s6) (.seq (.prod (.arrow equiangular_proves_13_d_a_b_1_for_all_a_996673_l6 equiangular_proves_13_d_a_b_1_for_all_a_996673_s6 equiangular_proves_13_d_a_b_1_for_all_a_996673_s10) (.arrow equiangular_proves_13_d_a_b_1_for_all_a_996673_l6 equiangular_proves_13_d_a_b_1_for_all_a_996673_s6 equiangular_proves_13_d_a_b_1_for_all_a_996673_s10)) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_996673_l10 equiangular_proves_13_d_a_b_1_for_all_a_996673_s10 equiangular_proves_13_d_a_b_1_for_all_a_996673_s10) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_996673_l10 equiangular_proves_13_d_a_b_1_for_all_a_996673_s10 equiangular_proves_13_d_a_b_1_for_all_a_996673_s11) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_996673_l11 equiangular_proves_13_d_a_b_1_for_all_a_996673_s11 equiangular_proves_13_d_a_b_1_for_all_a_996673_s12) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_996673_l12 equiangular_proves_13_d_a_b_1_for_all_a_996673_s12 equiangular_proves_13_d_a_b_1_for_all_a_996673_s13) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_996673_l13 equiangular_proves_13_d_a_b_1_for_all_a_996673_s13 equiangular_proves_13_d_a_b_1_for_all_a_996673_s14) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_996673_l14 equiangular_proves_13_d_a_b_1_for_all_a_996673_s14 equiangular_proves_13_d_a_b_1_for_all_a_996673_s15) (.arrow equiangular_proves_13_d_a_b_1_for_all_a_996673_l15 equiangular_proves_13_d_a_b_1_for_all_a_996673_s15 equiangular_proves_13_d_a_b_1_for_all_a_996673_s16))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def equiangular_proves_13_d_a_b_1_for_all_a_996673_true_arm : IGProtocol equiangular_proves_13_d_a_b_1_for_all_a_996673_s0 equiangular_proves_13_d_a_b_1_for_all_a_996673_s16 :=
  (equiangular_proves_13_d_a_b_1_for_all_a_996673_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def equiangular_proves_13_d_a_b_1_for_all_a_996673_tier : OuroboricityTier := TierFunctor.obj equiangular_proves_13_d_a_b_1_for_all_a_996673_s0
#eval equiangular_proves_13_d_a_b_1_for_all_a_996673_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem equiangular_proves_13_d_a_b_1_for_all_a_996673_frobenius :
    igFrobeniusAlg.mul equiangular_proves_13_d_a_b_1_for_all_a_996673_s0 equiangular_proves_13_d_a_b_1_for_all_a_996673_s0 = equiangular_proves_13_d_a_b_1_for_all_a_996673_s0 :=
  igFrobAlg_self_fusion equiangular_proves_13_d_a_b_1_for_all_a_996673_s0
