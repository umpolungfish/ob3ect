-- IGProtocol scaffold: VINIT → IFIX → FSPLIT → AFWD → EVALF → AREV → CLINK → EVALT → FFUSE → IMSCRIB → TANCH
-- Class: evalK16(g, v) evaluates a K16 power-basis vector v at g by Horner's method, and the theorem evalK16_kmul proves evalK16(g0C, kmul v w) = evalK16(g0C, v) * evalK16(g0C, w) using the polynomial reduction preserved by g0C, making evalK16 a ring hom on K16
-- Fingerprint: sig=(6,2,2,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=11
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑭  | initial object — ground of distinction
--   [1] IFIX      prot   := 𐑭               𐑼 → 𐑚  | irreversible fixation — winding number
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [9] IMSCRIB   gram   := 𐑠               𐑙 → 𐑡  | identity — self-imscription
--   [10] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := ah }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := ah }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := ah }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def evalk16_g_v_evaluates_a_k16_power_basis_86b372_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def evalk16_g_v_evaluates_a_k16_power_basis_86b372_protocol : IGProtocol evalk16_g_v_evaluates_a_k16_power_basis_86b372_s0 evalk16_g_v_evaluates_a_k16_power_basis_86b372_s10 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct evalk16_g_v_evaluates_a_k16_power_basis_86b372_s8 evalk16_g_v_evaluates_a_k16_power_basis_86b372_s8 = evalk16_g_v_evaluates_a_k16_power_basis_86b372_s8 (idempotent)
  (.seq (.arrow evalk16_g_v_evaluates_a_k16_power_basis_86b372_l0 evalk16_g_v_evaluates_a_k16_power_basis_86b372_s0 evalk16_g_v_evaluates_a_k16_power_basis_86b372_s1) (.seq (.arrow evalk16_g_v_evaluates_a_k16_power_basis_86b372_l1 evalk16_g_v_evaluates_a_k16_power_basis_86b372_s1 evalk16_g_v_evaluates_a_k16_power_basis_86b372_s2) (.seq (.prod (.arrow evalk16_g_v_evaluates_a_k16_power_basis_86b372_l2 evalk16_g_v_evaluates_a_k16_power_basis_86b372_s2 evalk16_g_v_evaluates_a_k16_power_basis_86b372_s8) (.arrow evalk16_g_v_evaluates_a_k16_power_basis_86b372_l2 evalk16_g_v_evaluates_a_k16_power_basis_86b372_s2 evalk16_g_v_evaluates_a_k16_power_basis_86b372_s8)) (.seq (.arrow evalk16_g_v_evaluates_a_k16_power_basis_86b372_l8 evalk16_g_v_evaluates_a_k16_power_basis_86b372_s8 evalk16_g_v_evaluates_a_k16_power_basis_86b372_s8) (.seq (.arrow evalk16_g_v_evaluates_a_k16_power_basis_86b372_l8 evalk16_g_v_evaluates_a_k16_power_basis_86b372_s8 evalk16_g_v_evaluates_a_k16_power_basis_86b372_s9) (.arrow evalk16_g_v_evaluates_a_k16_power_basis_86b372_l9 evalk16_g_v_evaluates_a_k16_power_basis_86b372_s9 evalk16_g_v_evaluates_a_k16_power_basis_86b372_s10))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def evalk16_g_v_evaluates_a_k16_power_basis_86b372_true_arm : IGProtocol evalk16_g_v_evaluates_a_k16_power_basis_86b372_s0 evalk16_g_v_evaluates_a_k16_power_basis_86b372_s10 :=
  (evalk16_g_v_evaluates_a_k16_power_basis_86b372_protocol).restrictToEVALT

-- false arm
noncomputable def evalk16_g_v_evaluates_a_k16_power_basis_86b372_false_arm : IGProtocol evalk16_g_v_evaluates_a_k16_power_basis_86b372_s0 evalk16_g_v_evaluates_a_k16_power_basis_86b372_s10 :=
  (evalk16_g_v_evaluates_a_k16_power_basis_86b372_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def evalk16_g_v_evaluates_a_k16_power_basis_86b372_tier : OuroboricityTier := TierFunctor.obj evalk16_g_v_evaluates_a_k16_power_basis_86b372_s0
#eval evalk16_g_v_evaluates_a_k16_power_basis_86b372_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem evalk16_g_v_evaluates_a_k16_power_basis_86b372_frobenius :
    igFrobeniusAlg.mul evalk16_g_v_evaluates_a_k16_power_basis_86b372_s0 evalk16_g_v_evaluates_a_k16_power_basis_86b372_s0 = evalk16_g_v_evaluates_a_k16_power_basis_86b372_s0 :=
  igFrobAlg_self_fusion evalk16_g_v_evaluates_a_k16_power_basis_86b372_s0
