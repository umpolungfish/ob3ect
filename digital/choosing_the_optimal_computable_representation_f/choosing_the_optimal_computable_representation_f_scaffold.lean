-- IGProtocol scaffold: VINIT → FSPLIT → AFWD → EVALT → AREV → AFWD → EVALF → ENGAGR → AREV → AFWD → EVALT → FFUSE → CLINK → IMSCRIB → IFIX → TANCH
-- Class: Choosing the optimal computable representation for the degree-288 SIC coordinate field in Lean 4 so native_decide closes the 143 Gram overlap identities WITHOUT the Lean elaboration stack overflow that just killed the nested-record tower. The field is the ray class field of Q(sqrt13), conductor 3d=36, degree 288, decomposed by bnrclassfield into 6 tiny cyclic pieces: four quadratics (i and three surds over Q(sqrt13)) and two cubics (x^3-3x-1 the zeta9 cubic, and x^3+(33 sqrt13-123)x+(215-59 sqrt13)). The quadratic part (degree-32 moduli subfield) already builds and native_decides fine as nested records (structure Ext2 B, Ext3 B). But stacking the cubic layer as a nested record Ext3 (Ext2 (Ext2 (Ext2 (Ext2 Q13)))) makes Lean overflow its stack during elaboration itself, even before native_decide, even with sorry. VINIT is the field abstractly with its 6 known cyclic pieces. TANCH the boundary is dual: elaboration must not overflow AND native_decide must close the 143 identities. AFWD adopts a representation and builds its arithmetic. AREV abandons a representation that overflows, as the nested-record tower did at the cubic layer. FSPLIT enumerates candidate representations: a flat List of rationals of length 288 with one absolute minimal-polynomial reduction rule (like the working SIC_D12_NumberField engine that reduced degree-48); the nested-record tower which FAILED with stack overflow; a companion-matrix representation over Q; a tower of lists with explicit small degree bounds per layer. FFUSE selects the representation that both elaborates and native_decides every identity, verified against the 1500-digit fiducial witness, so FFUSE of FSPLIT is identity. ENGAGR is a representation simultaneously mathematically faithful and computationally overflowing, the nested-record trap we must escape.
-- Fingerprint: sig=(9,2,4,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=16
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(1, 11)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [5] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [8] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [9] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [12] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [13] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [14] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [15] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def choosing_the_optimal_computable_b70d52_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def choosing_the_optimal_computable_b70d52_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def choosing_the_optimal_computable_b70d52_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def choosing_the_optimal_computable_b70d52_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def choosing_the_optimal_computable_b70d52_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def choosing_the_optimal_computable_b70d52_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def choosing_the_optimal_computable_b70d52_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def choosing_the_optimal_computable_b70d52_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_l9 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_computable_b70d52_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def choosing_the_optimal_computable_b70d52_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def choosing_the_optimal_computable_b70d52_protocol : IGProtocol choosing_the_optimal_computable_b70d52_s0 choosing_the_optimal_computable_b70d52_s15 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct choosing_the_optimal_computable_b70d52_s11 choosing_the_optimal_computable_b70d52_s11 = choosing_the_optimal_computable_b70d52_s11 (idempotent)
  (.seq (.arrow choosing_the_optimal_computable_b70d52_l0 choosing_the_optimal_computable_b70d52_s0 choosing_the_optimal_computable_b70d52_s1) (.seq (.prod (.arrow choosing_the_optimal_computable_b70d52_l1 choosing_the_optimal_computable_b70d52_s1 choosing_the_optimal_computable_b70d52_s11) (.arrow choosing_the_optimal_computable_b70d52_l1 choosing_the_optimal_computable_b70d52_s1 choosing_the_optimal_computable_b70d52_s11)) (.seq (.arrow choosing_the_optimal_computable_b70d52_l11 choosing_the_optimal_computable_b70d52_s11 choosing_the_optimal_computable_b70d52_s11) (.seq (.arrow choosing_the_optimal_computable_b70d52_l11 choosing_the_optimal_computable_b70d52_s11 choosing_the_optimal_computable_b70d52_s12) (.seq (.arrow choosing_the_optimal_computable_b70d52_l12 choosing_the_optimal_computable_b70d52_s12 choosing_the_optimal_computable_b70d52_s13) (.seq (.arrow choosing_the_optimal_computable_b70d52_l13 choosing_the_optimal_computable_b70d52_s13 choosing_the_optimal_computable_b70d52_s14) (.arrow choosing_the_optimal_computable_b70d52_l14 choosing_the_optimal_computable_b70d52_s14 choosing_the_optimal_computable_b70d52_s15)))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def choosing_the_optimal_computable_b70d52_true_arm : IGProtocol choosing_the_optimal_computable_b70d52_s0 choosing_the_optimal_computable_b70d52_s15 :=
  (choosing_the_optimal_computable_b70d52_protocol).restrictToEVALT

-- false arm
noncomputable def choosing_the_optimal_computable_b70d52_false_arm : IGProtocol choosing_the_optimal_computable_b70d52_s0 choosing_the_optimal_computable_b70d52_s15 :=
  (choosing_the_optimal_computable_b70d52_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def choosing_the_optimal_computable_b70d52_tier : OuroboricityTier := TierFunctor.obj choosing_the_optimal_computable_b70d52_s0
#eval choosing_the_optimal_computable_b70d52_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem choosing_the_optimal_computable_b70d52_frobenius :
    igFrobeniusAlg.mul choosing_the_optimal_computable_b70d52_s0 choosing_the_optimal_computable_b70d52_s0 = choosing_the_optimal_computable_b70d52_s0 :=
  igFrobAlg_self_fusion choosing_the_optimal_computable_b70d52_s0
