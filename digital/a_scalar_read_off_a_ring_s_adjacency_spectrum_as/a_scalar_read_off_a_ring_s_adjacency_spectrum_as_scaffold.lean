-- IGProtocol scaffold: VINIT → AFWD → IMSCRIB → FSPLIT → EVALT → CLINK → FFUSE → EVALF → ENGAGR → IFIX → TANCH
-- Class: A scalar read off a ring's adjacency spectrum as its total absolute spectral weight, the sum over the magnitudes of all its modes — a measure of the material's whole bonding richness distinct from its single dominant mode; where the spectral radius is the ring's stiffness, this is its toughness, the reserve carried in the subdominant modes.
-- Fingerprint: sig=(5,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=11
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 6)]

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
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑖  | fuse μ — assembly mode
--   [7] EVALF     chir   := 𐑖               𐑙 → 𐑳  | evaluate-false — chirality check
--   [8] ENGAGR    stoi   := 𐑳               𐑖 → 𐑭  | engage paradox — B-state, both arms
--   [9] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [10] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def a_scalar_read_off_a_rings_adjacency_5a4e80_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def a_scalar_read_off_a_rings_adjacency_5a4e80_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_scalar_read_off_a_rings_adjacency_5a4e80_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def a_scalar_read_off_a_rings_adjacency_5a4e80_protocol : IGProtocol a_scalar_read_off_a_rings_adjacency_5a4e80_s0 a_scalar_read_off_a_rings_adjacency_5a4e80_s10 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct a_scalar_read_off_a_rings_adjacency_5a4e80_s6 a_scalar_read_off_a_rings_adjacency_5a4e80_s6 = a_scalar_read_off_a_rings_adjacency_5a4e80_s6 (idempotent)
  (.seq (.arrow a_scalar_read_off_a_rings_adjacency_5a4e80_l0 a_scalar_read_off_a_rings_adjacency_5a4e80_s0 a_scalar_read_off_a_rings_adjacency_5a4e80_s1) (.seq (.arrow a_scalar_read_off_a_rings_adjacency_5a4e80_l1 a_scalar_read_off_a_rings_adjacency_5a4e80_s1 a_scalar_read_off_a_rings_adjacency_5a4e80_s2) (.seq (.arrow a_scalar_read_off_a_rings_adjacency_5a4e80_l2 a_scalar_read_off_a_rings_adjacency_5a4e80_s2 a_scalar_read_off_a_rings_adjacency_5a4e80_s3) (.seq (.prod (.arrow a_scalar_read_off_a_rings_adjacency_5a4e80_l3 a_scalar_read_off_a_rings_adjacency_5a4e80_s3 a_scalar_read_off_a_rings_adjacency_5a4e80_s6) (.arrow a_scalar_read_off_a_rings_adjacency_5a4e80_l3 a_scalar_read_off_a_rings_adjacency_5a4e80_s3 a_scalar_read_off_a_rings_adjacency_5a4e80_s6)) (.seq (.arrow a_scalar_read_off_a_rings_adjacency_5a4e80_l6 a_scalar_read_off_a_rings_adjacency_5a4e80_s6 a_scalar_read_off_a_rings_adjacency_5a4e80_s6) (.seq (.arrow a_scalar_read_off_a_rings_adjacency_5a4e80_l6 a_scalar_read_off_a_rings_adjacency_5a4e80_s6 a_scalar_read_off_a_rings_adjacency_5a4e80_s7) (.seq (.arrow a_scalar_read_off_a_rings_adjacency_5a4e80_l7 a_scalar_read_off_a_rings_adjacency_5a4e80_s7 a_scalar_read_off_a_rings_adjacency_5a4e80_s8) (.seq (.arrow a_scalar_read_off_a_rings_adjacency_5a4e80_l8 a_scalar_read_off_a_rings_adjacency_5a4e80_s8 a_scalar_read_off_a_rings_adjacency_5a4e80_s9) (.arrow a_scalar_read_off_a_rings_adjacency_5a4e80_l9 a_scalar_read_off_a_rings_adjacency_5a4e80_s9 a_scalar_read_off_a_rings_adjacency_5a4e80_s10)))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def a_scalar_read_off_a_rings_adjacency_5a4e80_true_arm : IGProtocol a_scalar_read_off_a_rings_adjacency_5a4e80_s0 a_scalar_read_off_a_rings_adjacency_5a4e80_s10 :=
  (a_scalar_read_off_a_rings_adjacency_5a4e80_protocol).restrictToEVALT

-- false arm
noncomputable def a_scalar_read_off_a_rings_adjacency_5a4e80_false_arm : IGProtocol a_scalar_read_off_a_rings_adjacency_5a4e80_s0 a_scalar_read_off_a_rings_adjacency_5a4e80_s10 :=
  (a_scalar_read_off_a_rings_adjacency_5a4e80_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def a_scalar_read_off_a_rings_adjacency_5a4e80_tier : OuroboricityTier := TierFunctor.obj a_scalar_read_off_a_rings_adjacency_5a4e80_s0
#eval a_scalar_read_off_a_rings_adjacency_5a4e80_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem a_scalar_read_off_a_rings_adjacency_5a4e80_frobenius :
    igFrobeniusAlg.mul a_scalar_read_off_a_rings_adjacency_5a4e80_s0 a_scalar_read_off_a_rings_adjacency_5a4e80_s0 = a_scalar_read_off_a_rings_adjacency_5a4e80_s0 :=
  igFrobAlg_self_fusion a_scalar_read_off_a_rings_adjacency_5a4e80_s0
