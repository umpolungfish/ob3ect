-- IGProtocol scaffold: VINIT → AFWD → IMSCRIB → FSPLIT → EVALT → AREV → EVALF → FFUSE → CLINK → IFIX → ENGAGR → TANCH
-- Class: Primitive-First Plasma Physics
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑠  | forward morphism — bidirectional arrow
--   [2] IMSCRIB   gram   := 𐑠               𐑾 → 𐑚  | identity — self-imscription
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] CLINK     fid    := 𐑱               𐑙 → 𐑭  | composition — regime coherence
--   [9] IFIX      prot   := 𐑭               𐑱 → 𐑳  | irreversible fixation — winding number
--   [10] ENGAGR    stoi   := 𐑳               𐑭 → 𐑡  | engage paradox — B-state, both arms
--   [11] TANCH     top    := 𐑡               𐑳 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def primitive_first_plasma_physics_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def primitive_first_plasma_physics_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def primitive_first_plasma_physics_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def primitive_first_plasma_physics_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def primitive_first_plasma_physics_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def primitive_first_plasma_physics_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def primitive_first_plasma_physics_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def primitive_first_plasma_physics_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def primitive_first_plasma_physics_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def primitive_first_plasma_physics_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def primitive_first_plasma_physics_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def primitive_first_plasma_physics_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def primitive_first_plasma_physics_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def primitive_first_plasma_physics_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def primitive_first_plasma_physics_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def primitive_first_plasma_physics_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def primitive_first_plasma_physics_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def primitive_first_plasma_physics_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def primitive_first_plasma_physics_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def primitive_first_plasma_physics_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def primitive_first_plasma_physics_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def primitive_first_plasma_physics_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def primitive_first_plasma_physics_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def primitive_first_plasma_physics_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def primitive_first_plasma_physics_protocol : IGProtocol primitive_first_plasma_physics_s0 primitive_first_plasma_physics_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct primitive_first_plasma_physics_s7 primitive_first_plasma_physics_s7 = primitive_first_plasma_physics_s7 (idempotent)
  (.seq (.arrow primitive_first_plasma_physics_l0 primitive_first_plasma_physics_s0 primitive_first_plasma_physics_s1) (.seq (.arrow primitive_first_plasma_physics_l1 primitive_first_plasma_physics_s1 primitive_first_plasma_physics_s2) (.seq (.arrow primitive_first_plasma_physics_l2 primitive_first_plasma_physics_s2 primitive_first_plasma_physics_s3) (.seq (.prod (.arrow primitive_first_plasma_physics_l3 primitive_first_plasma_physics_s3 primitive_first_plasma_physics_s7) (.arrow primitive_first_plasma_physics_l3 primitive_first_plasma_physics_s3 primitive_first_plasma_physics_s7)) (.seq (.arrow primitive_first_plasma_physics_l7 primitive_first_plasma_physics_s7 primitive_first_plasma_physics_s7) (.seq (.arrow primitive_first_plasma_physics_l7 primitive_first_plasma_physics_s7 primitive_first_plasma_physics_s8) (.seq (.arrow primitive_first_plasma_physics_l8 primitive_first_plasma_physics_s8 primitive_first_plasma_physics_s9) (.seq (.arrow primitive_first_plasma_physics_l9 primitive_first_plasma_physics_s9 primitive_first_plasma_physics_s10) (.arrow primitive_first_plasma_physics_l10 primitive_first_plasma_physics_s10 primitive_first_plasma_physics_s11)))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def primitive_first_plasma_physics_true_arm : IGProtocol primitive_first_plasma_physics_s0 primitive_first_plasma_physics_s11 :=
  (primitive_first_plasma_physics_protocol).restrictToEVALT

-- false arm
noncomputable def primitive_first_plasma_physics_false_arm : IGProtocol primitive_first_plasma_physics_s0 primitive_first_plasma_physics_s11 :=
  (primitive_first_plasma_physics_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def primitive_first_plasma_physics_tier : OuroboricityTier := TierFunctor.obj primitive_first_plasma_physics_s0
#eval primitive_first_plasma_physics_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem primitive_first_plasma_physics_frobenius :
    igFrobeniusAlg.mul primitive_first_plasma_physics_s0 primitive_first_plasma_physics_s0 = primitive_first_plasma_physics_s0 :=
  igFrobAlg_self_fusion primitive_first_plasma_physics_s0
