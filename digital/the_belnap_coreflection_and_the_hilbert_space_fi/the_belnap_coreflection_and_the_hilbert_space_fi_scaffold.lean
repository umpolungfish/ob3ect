-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → FSPLIT → ENGAGR → FFUSE → AREV → EVALF → CLINK → IFIX → TANCH
-- Class: the Belnap coreflection and the Hilbert-space filtration are the same one-way move at two levels: ClassicalRestriction.lean machine-checks that the classical fragment excluding B is a proper coreflective subcategory of the bilattice (inclusion left adjoint to the collapse classicalSwitch sending B to F, retract as unit, reverse adjunction failing, no information-order adjunction either way, and the Frobenius closure identity inexpressible inside the fragment because its codomain is exactly the omitted value), and the rank-one POVM selection of entity C realizes that same coreflector at the density-matrix level — both maps are surjective onto the definite fragment, both fail injectivity at exactly the dialetheic point, both are irreversible for the same structural reason, the omitted object is B — so disabling ex falso, collapsing B to F, and reading a definite outcome off a measurement are one operation expressed at the kernel level, the logic level, and the physics level respectively
-- Fingerprint: sig=(6,2,2,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=11
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 5)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑚  | forward morphism — bidirectional arrow
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [6] AREV      pol    := 𐑗               𐑙 → 𐑖  | reverse morphism — parity flip
--   [7] EVALF     chir   := 𐑖               𐑗 → 𐑱  | evaluate-false — chirality check
--   [8] CLINK     fid    := 𐑱               𐑖 → 𐑭  | composition — regime coherence
--   [9] IFIX      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [10] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_belnap_coreflection_and_the_hilbert_b2088e_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_belnap_coreflection_and_the_hilbert_b2088e_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_belnap_coreflection_and_the_hilbert_b2088e_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_belnap_coreflection_and_the_hilbert_b2088e_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_belnap_coreflection_and_the_hilbert_b2088e_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_belnap_coreflection_and_the_hilbert_b2088e_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_belnap_coreflection_and_the_hilbert_b2088e_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_belnap_coreflection_and_the_hilbert_b2088e_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_belnap_coreflection_and_the_hilbert_b2088e_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_belnap_coreflection_and_the_hilbert_b2088e_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def the_belnap_coreflection_and_the_hilbert_b2088e_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_belnap_coreflection_and_the_hilbert_b2088e_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_belnap_coreflection_and_the_hilbert_b2088e_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_belnap_coreflection_and_the_hilbert_b2088e_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_belnap_coreflection_and_the_hilbert_b2088e_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_belnap_coreflection_and_the_hilbert_b2088e_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_belnap_coreflection_and_the_hilbert_b2088e_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_belnap_coreflection_and_the_hilbert_b2088e_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_belnap_coreflection_and_the_hilbert_b2088e_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_belnap_coreflection_and_the_hilbert_b2088e_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_belnap_coreflection_and_the_hilbert_b2088e_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_belnap_coreflection_and_the_hilbert_b2088e_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_belnap_coreflection_and_the_hilbert_b2088e_protocol : IGProtocol the_belnap_coreflection_and_the_hilbert_b2088e_s0 the_belnap_coreflection_and_the_hilbert_b2088e_s10 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_belnap_coreflection_and_the_hilbert_b2088e_s5 the_belnap_coreflection_and_the_hilbert_b2088e_s5 = the_belnap_coreflection_and_the_hilbert_b2088e_s5 (idempotent)
  (.seq (.arrow the_belnap_coreflection_and_the_hilbert_b2088e_l0 the_belnap_coreflection_and_the_hilbert_b2088e_s0 the_belnap_coreflection_and_the_hilbert_b2088e_s1) (.seq (.arrow the_belnap_coreflection_and_the_hilbert_b2088e_l1 the_belnap_coreflection_and_the_hilbert_b2088e_s1 the_belnap_coreflection_and_the_hilbert_b2088e_s2) (.seq (.arrow the_belnap_coreflection_and_the_hilbert_b2088e_l2 the_belnap_coreflection_and_the_hilbert_b2088e_s2 the_belnap_coreflection_and_the_hilbert_b2088e_s3) (.seq (.prod (.arrow the_belnap_coreflection_and_the_hilbert_b2088e_l3 the_belnap_coreflection_and_the_hilbert_b2088e_s3 the_belnap_coreflection_and_the_hilbert_b2088e_s5) (.arrow the_belnap_coreflection_and_the_hilbert_b2088e_l3 the_belnap_coreflection_and_the_hilbert_b2088e_s3 the_belnap_coreflection_and_the_hilbert_b2088e_s5)) (.seq (.arrow the_belnap_coreflection_and_the_hilbert_b2088e_l5 the_belnap_coreflection_and_the_hilbert_b2088e_s5 the_belnap_coreflection_and_the_hilbert_b2088e_s5) (.seq (.arrow the_belnap_coreflection_and_the_hilbert_b2088e_l5 the_belnap_coreflection_and_the_hilbert_b2088e_s5 the_belnap_coreflection_and_the_hilbert_b2088e_s6) (.seq (.arrow the_belnap_coreflection_and_the_hilbert_b2088e_l6 the_belnap_coreflection_and_the_hilbert_b2088e_s6 the_belnap_coreflection_and_the_hilbert_b2088e_s7) (.seq (.arrow the_belnap_coreflection_and_the_hilbert_b2088e_l7 the_belnap_coreflection_and_the_hilbert_b2088e_s7 the_belnap_coreflection_and_the_hilbert_b2088e_s8) (.seq (.arrow the_belnap_coreflection_and_the_hilbert_b2088e_l8 the_belnap_coreflection_and_the_hilbert_b2088e_s8 the_belnap_coreflection_and_the_hilbert_b2088e_s9) (.arrow the_belnap_coreflection_and_the_hilbert_b2088e_l9 the_belnap_coreflection_and_the_hilbert_b2088e_s9 the_belnap_coreflection_and_the_hilbert_b2088e_s10))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- false arm
noncomputable def the_belnap_coreflection_and_the_hilbert_b2088e_false_arm : IGProtocol the_belnap_coreflection_and_the_hilbert_b2088e_s0 the_belnap_coreflection_and_the_hilbert_b2088e_s10 :=
  (the_belnap_coreflection_and_the_hilbert_b2088e_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def the_belnap_coreflection_and_the_hilbert_b2088e_tier : OuroboricityTier := TierFunctor.obj the_belnap_coreflection_and_the_hilbert_b2088e_s0
#eval the_belnap_coreflection_and_the_hilbert_b2088e_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_belnap_coreflection_and_the_hilbert_b2088e_frobenius :
    igFrobeniusAlg.mul the_belnap_coreflection_and_the_hilbert_b2088e_s0 the_belnap_coreflection_and_the_hilbert_b2088e_s0 = the_belnap_coreflection_and_the_hilbert_b2088e_s0 :=
  igFrobAlg_self_fusion the_belnap_coreflection_and_the_hilbert_b2088e_s0
