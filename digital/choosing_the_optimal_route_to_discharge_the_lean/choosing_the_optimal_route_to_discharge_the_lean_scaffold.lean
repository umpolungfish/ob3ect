-- IGProtocol scaffold: VINIT → TANCH → FSPLIT → AFWD → EVALT → AFWD → EVALF → AREV → ENGAGR → AFWD → EVALT → CLINK → FFUSE → IMSCRIB → IFIX
-- Class: Choosing the optimal route to discharge the Lean axiom crystal_forces_d12_sic, existence of a dimension-12 SIC-POVM fiducial vector. The coordinate field is known exactly: the ray class field of Q(sqrt 13) of conductor 3d=36, degree 288 over Q, ray class group cyclic structure 6-6-2-2, with a moduli subfield of degree 32. Materials in hand: a verified 1500-digit fiducial witness, a proven-correct computable number-field arithmetic engine in Lean using List-of-rationals reduction discharged by native_decide, the octic moduli field, and PARI bnrclassfield which yields the field as a relative tower of cyclic pieces over Q(sqrt 13). VINIT is the open axiom. TANCH the boundary is the degree-288 ray class field. AFWD builds the tower layer by layer toward the coordinates. AREV backs off a layer whose native_decide cost explodes. FSPLIT decomposes the ray class group into independent cyclic sub-extensions built separately. FFUSE composes them back into the full field and verifies the 143 Gram overlap identities, so FFUSE of FSPLIT is identity when the composed field reproduces the fiducial. ENGAGR is a layer simultaneously structurally buildable and computationally infeasible, the tension the route must resolve.
-- Fingerprint: sig=(8,2,4,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 12)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑚  | terminal object — connectivity boundary
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [13] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [14] IFIX      prot   := 𐑭               𐑠 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def choosing_the_optimal_route_to_discharge_cec884_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def choosing_the_optimal_route_to_discharge_cec884_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_l9 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def choosing_the_optimal_route_to_discharge_cec884_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def choosing_the_optimal_route_to_discharge_cec884_protocol : IGProtocol choosing_the_optimal_route_to_discharge_cec884_s0 choosing_the_optimal_route_to_discharge_cec884_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct choosing_the_optimal_route_to_discharge_cec884_s12 choosing_the_optimal_route_to_discharge_cec884_s12 = choosing_the_optimal_route_to_discharge_cec884_s12 (idempotent)
  (.seq (.arrow choosing_the_optimal_route_to_discharge_cec884_l0 choosing_the_optimal_route_to_discharge_cec884_s0 choosing_the_optimal_route_to_discharge_cec884_s1) (.seq (.arrow choosing_the_optimal_route_to_discharge_cec884_l1 choosing_the_optimal_route_to_discharge_cec884_s1 choosing_the_optimal_route_to_discharge_cec884_s2) (.seq (.prod (.arrow choosing_the_optimal_route_to_discharge_cec884_l2 choosing_the_optimal_route_to_discharge_cec884_s2 choosing_the_optimal_route_to_discharge_cec884_s12) (.arrow choosing_the_optimal_route_to_discharge_cec884_l2 choosing_the_optimal_route_to_discharge_cec884_s2 choosing_the_optimal_route_to_discharge_cec884_s12)) (.seq (.arrow choosing_the_optimal_route_to_discharge_cec884_l12 choosing_the_optimal_route_to_discharge_cec884_s12 choosing_the_optimal_route_to_discharge_cec884_s12) (.seq (.arrow choosing_the_optimal_route_to_discharge_cec884_l12 choosing_the_optimal_route_to_discharge_cec884_s12 choosing_the_optimal_route_to_discharge_cec884_s13) (.arrow choosing_the_optimal_route_to_discharge_cec884_l13 choosing_the_optimal_route_to_discharge_cec884_s13 choosing_the_optimal_route_to_discharge_cec884_s14))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def choosing_the_optimal_route_to_discharge_cec884_true_arm : IGProtocol choosing_the_optimal_route_to_discharge_cec884_s0 choosing_the_optimal_route_to_discharge_cec884_s14 :=
  (choosing_the_optimal_route_to_discharge_cec884_protocol).restrictToEVALT

-- false arm
noncomputable def choosing_the_optimal_route_to_discharge_cec884_false_arm : IGProtocol choosing_the_optimal_route_to_discharge_cec884_s0 choosing_the_optimal_route_to_discharge_cec884_s14 :=
  (choosing_the_optimal_route_to_discharge_cec884_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def choosing_the_optimal_route_to_discharge_cec884_tier : OuroboricityTier := TierFunctor.obj choosing_the_optimal_route_to_discharge_cec884_s0
#eval choosing_the_optimal_route_to_discharge_cec884_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem choosing_the_optimal_route_to_discharge_cec884_frobenius :
    igFrobeniusAlg.mul choosing_the_optimal_route_to_discharge_cec884_s0 choosing_the_optimal_route_to_discharge_cec884_s0 = choosing_the_optimal_route_to_discharge_cec884_s0 :=
  igFrobAlg_self_fusion choosing_the_optimal_route_to_discharge_cec884_s0
