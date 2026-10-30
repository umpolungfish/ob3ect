-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → EVALT → IFIX → FFUSE → AFWD → CLINK → FSPLIT → EVALT → EVALT → EVALT → FFUSE → EVALT → CLINK → AREV → TANCH
-- Class: phi_zpow proves phi (zpow n) = (phi zeta) ^ n for every n by induction: the base is phi (zpow 0) = phi rone = 1 = (phi zeta)^0, and the step rewrites zpow (n+1) = rmul (zpow n) zeta through the proven star-ring hom phi_rmul, needing canonicity of zpow n which follows from a general rmul_canon lemma — rmul preserves keys < 128 because contrib/encKey bound every layer exponent (cover < 16 via XOR of two 4-bit masks, and red1/red2/red3 collapse the i, c5, u1 exponents below 2), so encKey cov ei e5 e1 < 16 + 16 + 32 + 64 = 128; alternatively the induction is restricted to n < 13 where zpow_canon_all already certifies canonicity, sufficient because Oab only evaluates zpow at exponents reduced mod 12
-- Fingerprint: sig=(7,4,5,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=17
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 5), (8, 12)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑚  | identity — self-imscription
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [6] AFWD      rel    := 𐑾               𐑙 → 𐑱  | forward morphism — bidirectional arrow
--   [7] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [12] FFUSE     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [13] EVALT     crit   := ⊙               𐑙 → 𐑱  | evaluate-true — criticality gate open
--   [14] CLINK     fid    := 𐑱               ⊙ → 𐑗  | composition — regime coherence
--   [15] AREV      pol    := 𐑗               𐑱 → 𐑡  | reverse morphism — parity flip
--   [16] TANCH     top    := 𐑡               𐑗 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_protocol : IGProtocol phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s0 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s16 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s5 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s5 = phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s5 (idempotent)
  (.seq (.arrow phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l0 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s0 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s1) (.seq (.arrow phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l1 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s1 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s2) (.seq (.prod (.arrow phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l2 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s2 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s5) (.arrow phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l2 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s2 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s5)) (.seq (.arrow phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l5 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s5 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s5) (.seq (.arrow phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l5 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s5 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s6) (.seq (.arrow phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l6 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s6 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s7) (.seq (.arrow phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l7 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s7 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s8) (.seq (.arrow phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l8 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s8 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s9) (.seq (.arrow phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l9 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s9 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s10) (.seq (.arrow phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l10 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s10 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s11) (.seq (.arrow phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l11 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s11 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s12) (.seq (.arrow phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l12 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s12 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s13) (.seq (.arrow phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l13 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s13 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s14) (.seq (.arrow phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l14 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s14 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s15) (.arrow phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_l15 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s15 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s16)))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_true_arm : IGProtocol phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s0 phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s16 :=
  (phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_tier : OuroboricityTier := TierFunctor.obj phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_s0
#eval phi_zpow_proves_phi_zpow_n_phi_zeta_n_3901f2_tier  -- the Grammar's own verdict on its tier
