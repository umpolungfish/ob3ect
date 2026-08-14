-- IGProtocol scaffold: VINIT → TANCH → AFWD → AREV → CLINK → IMSCRIB → FSPLIT → EVALT → AFWD → CLINK → EVALF → AREV → ENGAGR → FFUSE → IMSCRIB → IFIX → TANCH
-- Class: the geodesic kernel width on the twelve-mark ring of a toroidal trunk — what sets the scale at which one primitive couples to its dual
-- Fingerprint: sig=(11,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=17
-- Expected tier: O₂dag
-- FSPLIT/FFUSE pairs: [(6, 13)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑗  | forward morphism — bidirectional arrow
--   [3] AREV      pol    := 𐑗               𐑾 → 𐑱  | reverse morphism — parity flip
--   [4] CLINK     fid    := 𐑱               𐑗 → 𐑠  | composition — regime coherence
--   [5] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [6] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [9] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [10] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [12] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [14] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [15] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [16] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_geodesic_kernel_width_on_the_twelve_55aa3c_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_geodesic_kernel_width_on_the_twelve_55aa3c_protocol : IGProtocol the_geodesic_kernel_width_on_the_twelve_55aa3c_s0 the_geodesic_kernel_width_on_the_twelve_55aa3c_s16 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_geodesic_kernel_width_on_the_twelve_55aa3c_s13 the_geodesic_kernel_width_on_the_twelve_55aa3c_s13 = the_geodesic_kernel_width_on_the_twelve_55aa3c_s13 (idempotent)
  (.seq (.arrow the_geodesic_kernel_width_on_the_twelve_55aa3c_l0 the_geodesic_kernel_width_on_the_twelve_55aa3c_s0 the_geodesic_kernel_width_on_the_twelve_55aa3c_s1) (.seq (.arrow the_geodesic_kernel_width_on_the_twelve_55aa3c_l1 the_geodesic_kernel_width_on_the_twelve_55aa3c_s1 the_geodesic_kernel_width_on_the_twelve_55aa3c_s2) (.seq (.arrow the_geodesic_kernel_width_on_the_twelve_55aa3c_l2 the_geodesic_kernel_width_on_the_twelve_55aa3c_s2 the_geodesic_kernel_width_on_the_twelve_55aa3c_s3) (.seq (.arrow the_geodesic_kernel_width_on_the_twelve_55aa3c_l3 the_geodesic_kernel_width_on_the_twelve_55aa3c_s3 the_geodesic_kernel_width_on_the_twelve_55aa3c_s4) (.seq (.arrow the_geodesic_kernel_width_on_the_twelve_55aa3c_l4 the_geodesic_kernel_width_on_the_twelve_55aa3c_s4 the_geodesic_kernel_width_on_the_twelve_55aa3c_s5) (.seq (.arrow the_geodesic_kernel_width_on_the_twelve_55aa3c_l5 the_geodesic_kernel_width_on_the_twelve_55aa3c_s5 the_geodesic_kernel_width_on_the_twelve_55aa3c_s6) (.seq (.prod (.arrow the_geodesic_kernel_width_on_the_twelve_55aa3c_l6 the_geodesic_kernel_width_on_the_twelve_55aa3c_s6 the_geodesic_kernel_width_on_the_twelve_55aa3c_s13) (.arrow the_geodesic_kernel_width_on_the_twelve_55aa3c_l6 the_geodesic_kernel_width_on_the_twelve_55aa3c_s6 the_geodesic_kernel_width_on_the_twelve_55aa3c_s13)) (.seq (.arrow the_geodesic_kernel_width_on_the_twelve_55aa3c_l13 the_geodesic_kernel_width_on_the_twelve_55aa3c_s13 the_geodesic_kernel_width_on_the_twelve_55aa3c_s13) (.seq (.arrow the_geodesic_kernel_width_on_the_twelve_55aa3c_l13 the_geodesic_kernel_width_on_the_twelve_55aa3c_s13 the_geodesic_kernel_width_on_the_twelve_55aa3c_s14) (.seq (.arrow the_geodesic_kernel_width_on_the_twelve_55aa3c_l14 the_geodesic_kernel_width_on_the_twelve_55aa3c_s14 the_geodesic_kernel_width_on_the_twelve_55aa3c_s15) (.arrow the_geodesic_kernel_width_on_the_twelve_55aa3c_l15 the_geodesic_kernel_width_on_the_twelve_55aa3c_s15 the_geodesic_kernel_width_on_the_twelve_55aa3c_s16)))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_geodesic_kernel_width_on_the_twelve_55aa3c_true_arm : IGProtocol the_geodesic_kernel_width_on_the_twelve_55aa3c_s0 the_geodesic_kernel_width_on_the_twelve_55aa3c_s16 :=
  (the_geodesic_kernel_width_on_the_twelve_55aa3c_protocol).restrictToEVALT

-- false arm
noncomputable def the_geodesic_kernel_width_on_the_twelve_55aa3c_false_arm : IGProtocol the_geodesic_kernel_width_on_the_twelve_55aa3c_s0 the_geodesic_kernel_width_on_the_twelve_55aa3c_s16 :=
  (the_geodesic_kernel_width_on_the_twelve_55aa3c_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def the_geodesic_kernel_width_on_the_twelve_55aa3c_tier_ground : OuroboricityTier := TierFunctor.obj the_geodesic_kernel_width_on_the_twelve_55aa3c_s0
def the_geodesic_kernel_width_on_the_twelve_55aa3c_tier : OuroboricityTier := TierFunctor.obj the_geodesic_kernel_width_on_the_twelve_55aa3c_s16
#eval the_geodesic_kernel_width_on_the_twelve_55aa3c_tier_ground  -- tier of the ground (pre-transformation)
#eval the_geodesic_kernel_width_on_the_twelve_55aa3c_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_geodesic_kernel_width_on_the_twelve_55aa3c_frobenius :
    igFrobeniusAlg.mul the_geodesic_kernel_width_on_the_twelve_55aa3c_s0 the_geodesic_kernel_width_on_the_twelve_55aa3c_s0 = the_geodesic_kernel_width_on_the_twelve_55aa3c_s0 :=
  igFrobAlg_self_fusion the_geodesic_kernel_width_on_the_twelve_55aa3c_s0
