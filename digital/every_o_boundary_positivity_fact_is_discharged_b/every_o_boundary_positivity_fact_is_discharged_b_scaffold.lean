-- IGProtocol scaffold: VINIT → AFWD → IFIX → FSPLIT → CLINK → FFUSE → AREV → ENGAGR → EVALT → IMSCRIB → IFIX → AFWD → EVALT → IMSCRIB → TANCH
-- Class: every O₀ boundary positivity fact is discharged by one exact divided-difference certificate: for a target K16 vector v with power-basis polynomial p, the quotient q(x) = (p(x) - p(mid))/(x - mid) has EXACT rational coefficients by polynomial division in ℚ[x], so evalR(g0, v) = p(mid) + (g0 - mid)·q(g0) ≥ p(mid) - (w/2)·Σᵢ|qᵢ|·Bⁱ, a pure rational inequality closed by native_decide with no interval library, no mean value theorem, and no floats; the targets and their agent-verified margins at g0 are covK 0,1,2,3 = M0 ≈ 0.0312, M1 ≈ 0.0195 (tightest, sets the 10^-12 bracket width), M3 ≈ 0.2340, M9 ≈ 0.0433, the c5 discriminant OA5² - 4·OB5 ≈ 8.0589, and S2H ≈ 0.9399, which closes cover_modulus_nonneg and c5_discr_nonneg outright
-- Fingerprint: sig=(8,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=15
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 5)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑭  | forward morphism — bidirectional arrow
--   [2] IFIX      prot   := 𐑭               𐑾 → 𐑚  | irreversible fixation — winding number
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [6] AREV      pol    := 𐑗               𐑙 → 𐑳  | reverse morphism — parity flip
--   [7] ENGAGR    stoi   := 𐑳               𐑗 → ⊙  | engage paradox — B-state, both arms
--   [8] EVALT     crit   := ⊙               𐑳 → 𐑠  | evaluate-true — criticality gate open
--   [9] IMSCRIB   gram   := 𐑠               ⊙ → 𐑭  | identity — self-imscription
--   [10] IFIX      prot   := 𐑭               𐑠 → 𐑾  | irreversible fixation — winding number
--   [11] AFWD      rel    := 𐑾               𐑭 → ⊙  | forward morphism — bidirectional arrow
--   [12] EVALT     crit   := ⊙               𐑾 → 𐑠  | evaluate-true — criticality gate open
--   [13] IMSCRIB   gram   := 𐑠               ⊙ → 𐑡  | identity — self-imscription
--   [14] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def every_o_boundary_positivity_fact_is_76f3dc_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def every_o_boundary_positivity_fact_is_76f3dc_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def every_o_boundary_positivity_fact_is_76f3dc_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def every_o_boundary_positivity_fact_is_76f3dc_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def every_o_boundary_positivity_fact_is_76f3dc_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def every_o_boundary_positivity_fact_is_76f3dc_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def every_o_boundary_positivity_fact_is_76f3dc_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def every_o_boundary_positivity_fact_is_76f3dc_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := up, prot := ah }
private def every_o_boundary_positivity_fact_is_76f3dc_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := up, prot := ah }
private def every_o_boundary_positivity_fact_is_76f3dc_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def every_o_boundary_positivity_fact_is_76f3dc_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def every_o_boundary_positivity_fact_is_76f3dc_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def every_o_boundary_positivity_fact_is_76f3dc_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def every_o_boundary_positivity_fact_is_76f3dc_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def every_o_boundary_positivity_fact_is_76f3dc_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def every_o_boundary_positivity_fact_is_76f3dc_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def every_o_boundary_positivity_fact_is_76f3dc_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def every_o_boundary_positivity_fact_is_76f3dc_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def every_o_boundary_positivity_fact_is_76f3dc_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def every_o_boundary_positivity_fact_is_76f3dc_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def every_o_boundary_positivity_fact_is_76f3dc_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def every_o_boundary_positivity_fact_is_76f3dc_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def every_o_boundary_positivity_fact_is_76f3dc_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def every_o_boundary_positivity_fact_is_76f3dc_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def every_o_boundary_positivity_fact_is_76f3dc_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def every_o_boundary_positivity_fact_is_76f3dc_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def every_o_boundary_positivity_fact_is_76f3dc_l11 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def every_o_boundary_positivity_fact_is_76f3dc_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def every_o_boundary_positivity_fact_is_76f3dc_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def every_o_boundary_positivity_fact_is_76f3dc_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def every_o_boundary_positivity_fact_is_76f3dc_protocol : IGProtocol every_o_boundary_positivity_fact_is_76f3dc_s0 every_o_boundary_positivity_fact_is_76f3dc_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct every_o_boundary_positivity_fact_is_76f3dc_s5 every_o_boundary_positivity_fact_is_76f3dc_s5 = every_o_boundary_positivity_fact_is_76f3dc_s5 (idempotent)
  (.seq (.arrow every_o_boundary_positivity_fact_is_76f3dc_l0 every_o_boundary_positivity_fact_is_76f3dc_s0 every_o_boundary_positivity_fact_is_76f3dc_s1) (.seq (.arrow every_o_boundary_positivity_fact_is_76f3dc_l1 every_o_boundary_positivity_fact_is_76f3dc_s1 every_o_boundary_positivity_fact_is_76f3dc_s2) (.seq (.arrow every_o_boundary_positivity_fact_is_76f3dc_l2 every_o_boundary_positivity_fact_is_76f3dc_s2 every_o_boundary_positivity_fact_is_76f3dc_s3) (.seq (.prod (.arrow every_o_boundary_positivity_fact_is_76f3dc_l3 every_o_boundary_positivity_fact_is_76f3dc_s3 every_o_boundary_positivity_fact_is_76f3dc_s5) (.arrow every_o_boundary_positivity_fact_is_76f3dc_l3 every_o_boundary_positivity_fact_is_76f3dc_s3 every_o_boundary_positivity_fact_is_76f3dc_s5)) (.seq (.arrow every_o_boundary_positivity_fact_is_76f3dc_l5 every_o_boundary_positivity_fact_is_76f3dc_s5 every_o_boundary_positivity_fact_is_76f3dc_s5) (.seq (.arrow every_o_boundary_positivity_fact_is_76f3dc_l5 every_o_boundary_positivity_fact_is_76f3dc_s5 every_o_boundary_positivity_fact_is_76f3dc_s6) (.seq (.arrow every_o_boundary_positivity_fact_is_76f3dc_l6 every_o_boundary_positivity_fact_is_76f3dc_s6 every_o_boundary_positivity_fact_is_76f3dc_s7) (.seq (.arrow every_o_boundary_positivity_fact_is_76f3dc_l7 every_o_boundary_positivity_fact_is_76f3dc_s7 every_o_boundary_positivity_fact_is_76f3dc_s8) (.seq (.arrow every_o_boundary_positivity_fact_is_76f3dc_l8 every_o_boundary_positivity_fact_is_76f3dc_s8 every_o_boundary_positivity_fact_is_76f3dc_s9) (.seq (.arrow every_o_boundary_positivity_fact_is_76f3dc_l9 every_o_boundary_positivity_fact_is_76f3dc_s9 every_o_boundary_positivity_fact_is_76f3dc_s10) (.seq (.arrow every_o_boundary_positivity_fact_is_76f3dc_l10 every_o_boundary_positivity_fact_is_76f3dc_s10 every_o_boundary_positivity_fact_is_76f3dc_s11) (.seq (.arrow every_o_boundary_positivity_fact_is_76f3dc_l11 every_o_boundary_positivity_fact_is_76f3dc_s11 every_o_boundary_positivity_fact_is_76f3dc_s12) (.seq (.arrow every_o_boundary_positivity_fact_is_76f3dc_l12 every_o_boundary_positivity_fact_is_76f3dc_s12 every_o_boundary_positivity_fact_is_76f3dc_s13) (.arrow every_o_boundary_positivity_fact_is_76f3dc_l13 every_o_boundary_positivity_fact_is_76f3dc_s13 every_o_boundary_positivity_fact_is_76f3dc_s14))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def every_o_boundary_positivity_fact_is_76f3dc_true_arm : IGProtocol every_o_boundary_positivity_fact_is_76f3dc_s0 every_o_boundary_positivity_fact_is_76f3dc_s14 :=
  (every_o_boundary_positivity_fact_is_76f3dc_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def every_o_boundary_positivity_fact_is_76f3dc_tier : OuroboricityTier := TierFunctor.obj every_o_boundary_positivity_fact_is_76f3dc_s0
#eval every_o_boundary_positivity_fact_is_76f3dc_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem every_o_boundary_positivity_fact_is_76f3dc_frobenius :
    igFrobeniusAlg.mul every_o_boundary_positivity_fact_is_76f3dc_s0 every_o_boundary_positivity_fact_is_76f3dc_s0 = every_o_boundary_positivity_fact_is_76f3dc_s0 :=
  igFrobAlg_self_fusion every_o_boundary_positivity_fact_is_76f3dc_s0
