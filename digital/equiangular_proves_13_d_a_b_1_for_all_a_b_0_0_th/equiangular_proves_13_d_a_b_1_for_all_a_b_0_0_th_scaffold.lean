-- IGProtocol scaffold: VINIT → IFIX → AFWD → IMSCRIB → CLINK → FSPLIT → AFWD → AFWD → FFUSE → IFIX → FSPLIT → IMSCRIB → AREV → CLINK → EVALT → FFUSE → IFIX → AFWD → EVALT → TANCH
-- Class: equiangular proves 13·|⟨ψ|D_{a,b}ψ⟩|²=1 for all (a,b)≠(0,0): the WH overlap wh_inner psi (D_ah 12 a b 0 psi) equals phi of the frozen ring overlap O_{a,b}=Σ_j z̄_j ζ^{(j-a)b} z_{j-a} (identifying omega_d 12 with phi(zeta), a primitive 12th root via zeta_pow12/zeta_phi12; norm is preserved per-(a,b) even if the branch gives the conjugate root); then phi(rmul O Ō)=phi O·phi Ō=|phi O|² and the frozen stratum/existence_identities_all give rmul O Ō = rT13, so |phi O|²=phi(rT13)=1/13, hence 13·(1/13)=1
-- Fingerprint: sig=(11,4,2,3)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=20
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(5, 8), (10, 15)]

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
--   [3] IMSCRIB   gram   := 𐑠               𐑾 → 𐑱  | identity — self-imscription
--   [4] CLINK     fid    := 𐑱               𐑠 → 𐑚  | composition — regime coherence
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [9] IFIX      prot   := 𐑭               𐑙 → 𐑚  | irreversible fixation — winding number
--   [10] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [12] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [13] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [14] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [15] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [16] IFIX      prot   := 𐑭               𐑙 → 𐑾  | irreversible fixation — winding number
--   [17] AFWD      rel    := 𐑾               𐑭 → ⊙  | forward morphism — bidirectional arrow
--   [18] EVALT     crit   := ⊙               𐑾 → 𐑡  | evaluate-true — criticality gate open
--   [19] TANCH     top    := 𐑡               ⊙ → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l17 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_protocol : IGProtocol equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s0 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s19 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s8 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s8 = equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s8 (idempotent)
  (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l0 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s0 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s1) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l1 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s1 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s2) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l2 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s2 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s3) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l3 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s3 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s4) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l4 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s4 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s5) (.seq (.prod (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l5 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s5 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s8) (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l5 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s5 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s8)) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l8 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s8 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s8) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l8 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s8 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s9) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l9 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s9 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s10) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l10 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s10 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s11) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l11 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s11 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s12) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l12 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s12 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s13) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l13 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s13 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s14) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l14 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s14 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s15) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l15 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s15 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s16) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l16 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s16 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s17) (.seq (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l17 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s17 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s18) (.arrow equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_l18 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s18 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s19))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_true_arm : IGProtocol equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s0 equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s19 :=
  (equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_tier : OuroboricityTier := TierFunctor.obj equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_s0
#eval equiangular_proves_13_d_a_b_1_for_all_a_0c24fe_tier  -- the Grammar's own verdict on its tier
