-- IGProtocol scaffold: VINIT → FSPLIT → EVALT → IFIX → AFWD → CLINK → CLINK → IMSCRIB → FSPLIT → EVALT → IFIX → EVALF → AREV → FFUSE → ENGAGR → AREV → FFUSE → IMSCRIB → IFIX → TANCH
-- Class: the boundary between the unconditional Belnap multilattice SIC and the conditional complex-Hilbert-space SIC becomes an explicit one-way imscription, where discharging the d=12 fiducial axiom is the shadow re-absorbing one dimension of a fact the Grammar already holds
-- Fingerprint: sig=(9,4,4,3)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=20
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(8, 13), (1, 16)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [3] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [11] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [12] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [14] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [15] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [16] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [17] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [18] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [19] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_boundary_between_the_unconditional_8e43a9_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_between_the_unconditional_8e43a9_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_between_the_unconditional_8e43a9_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_boundary_between_the_unconditional_8e43a9_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_boundary_between_the_unconditional_8e43a9_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_boundary_between_the_unconditional_8e43a9_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_boundary_between_the_unconditional_8e43a9_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_boundary_between_the_unconditional_8e43a9_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_boundary_between_the_unconditional_8e43a9_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_boundary_between_the_unconditional_8e43a9_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_boundary_between_the_unconditional_8e43a9_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_boundary_between_the_unconditional_8e43a9_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_boundary_between_the_unconditional_8e43a9_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_boundary_between_the_unconditional_8e43a9_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_boundary_between_the_unconditional_8e43a9_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_boundary_between_the_unconditional_8e43a9_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_boundary_between_the_unconditional_8e43a9_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_boundary_between_the_unconditional_8e43a9_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_boundary_between_the_unconditional_8e43a9_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_boundary_between_the_unconditional_8e43a9_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_boundary_between_the_unconditional_8e43a9_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_between_the_unconditional_8e43a9_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_between_the_unconditional_8e43a9_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_boundary_between_the_unconditional_8e43a9_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_boundary_between_the_unconditional_8e43a9_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_between_the_unconditional_8e43a9_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_between_the_unconditional_8e43a9_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_between_the_unconditional_8e43a9_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_between_the_unconditional_8e43a9_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_between_the_unconditional_8e43a9_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_boundary_between_the_unconditional_8e43a9_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_boundary_between_the_unconditional_8e43a9_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_boundary_between_the_unconditional_8e43a9_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_between_the_unconditional_8e43a9_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_between_the_unconditional_8e43a9_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_boundary_between_the_unconditional_8e43a9_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_between_the_unconditional_8e43a9_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_between_the_unconditional_8e43a9_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_boundary_between_the_unconditional_8e43a9_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_boundary_between_the_unconditional_8e43a9_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_boundary_between_the_unconditional_8e43a9_protocol : IGProtocol the_boundary_between_the_unconditional_8e43a9_s0 the_boundary_between_the_unconditional_8e43a9_s19 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_boundary_between_the_unconditional_8e43a9_s13 the_boundary_between_the_unconditional_8e43a9_s13 = the_boundary_between_the_unconditional_8e43a9_s13 (idempotent)
  (.seq (.arrow the_boundary_between_the_unconditional_8e43a9_l0 the_boundary_between_the_unconditional_8e43a9_s0 the_boundary_between_the_unconditional_8e43a9_s1) (.seq (.prod (.arrow the_boundary_between_the_unconditional_8e43a9_l1 the_boundary_between_the_unconditional_8e43a9_s1 the_boundary_between_the_unconditional_8e43a9_s13) (.arrow the_boundary_between_the_unconditional_8e43a9_l1 the_boundary_between_the_unconditional_8e43a9_s1 the_boundary_between_the_unconditional_8e43a9_s13)) (.seq (.arrow the_boundary_between_the_unconditional_8e43a9_l13 the_boundary_between_the_unconditional_8e43a9_s13 the_boundary_between_the_unconditional_8e43a9_s13) (.seq (.arrow the_boundary_between_the_unconditional_8e43a9_l13 the_boundary_between_the_unconditional_8e43a9_s13 the_boundary_between_the_unconditional_8e43a9_s14) (.seq (.arrow the_boundary_between_the_unconditional_8e43a9_l14 the_boundary_between_the_unconditional_8e43a9_s14 the_boundary_between_the_unconditional_8e43a9_s15) (.seq (.arrow the_boundary_between_the_unconditional_8e43a9_l15 the_boundary_between_the_unconditional_8e43a9_s15 the_boundary_between_the_unconditional_8e43a9_s16) (.seq (.arrow the_boundary_between_the_unconditional_8e43a9_l16 the_boundary_between_the_unconditional_8e43a9_s16 the_boundary_between_the_unconditional_8e43a9_s17) (.seq (.arrow the_boundary_between_the_unconditional_8e43a9_l17 the_boundary_between_the_unconditional_8e43a9_s17 the_boundary_between_the_unconditional_8e43a9_s18) (.arrow the_boundary_between_the_unconditional_8e43a9_l18 the_boundary_between_the_unconditional_8e43a9_s18 the_boundary_between_the_unconditional_8e43a9_s19)))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_boundary_between_the_unconditional_8e43a9_true_arm : IGProtocol the_boundary_between_the_unconditional_8e43a9_s0 the_boundary_between_the_unconditional_8e43a9_s19 :=
  (the_boundary_between_the_unconditional_8e43a9_protocol).restrictToEVALT

-- false arm
noncomputable def the_boundary_between_the_unconditional_8e43a9_false_arm : IGProtocol the_boundary_between_the_unconditional_8e43a9_s0 the_boundary_between_the_unconditional_8e43a9_s19 :=
  (the_boundary_between_the_unconditional_8e43a9_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def the_boundary_between_the_unconditional_8e43a9_tier : OuroboricityTier := TierFunctor.obj the_boundary_between_the_unconditional_8e43a9_s0
#eval the_boundary_between_the_unconditional_8e43a9_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_boundary_between_the_unconditional_8e43a9_frobenius :
    igFrobeniusAlg.mul the_boundary_between_the_unconditional_8e43a9_s0 the_boundary_between_the_unconditional_8e43a9_s0 = the_boundary_between_the_unconditional_8e43a9_s0 :=
  igFrobAlg_self_fusion the_boundary_between_the_unconditional_8e43a9_s0
