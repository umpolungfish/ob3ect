-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → AFWD → AREV → EVALT → AFWD → AREV → EVALF → ENGAGR → FFUSE → CLINK → IFIX → TANCH
-- Class: perfect_cuboid_proof_v2 block seq
-- Fingerprint: sig=(8,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=14
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 10)]

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
--   [3] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [11] CLINK     fid    := 𐑱               𐑙 → 𐑭  | composition — regime coherence
--   [12] IFIX      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [13] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def perfect_cuboid_proof_v2_block_seq_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def perfect_cuboid_proof_v2_block_seq_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def perfect_cuboid_proof_v2_block_seq_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def perfect_cuboid_proof_v2_block_seq_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def perfect_cuboid_proof_v2_block_seq_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def perfect_cuboid_proof_v2_block_seq_protocol : IGProtocol perfect_cuboid_proof_v2_block_seq_s0 perfect_cuboid_proof_v2_block_seq_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct perfect_cuboid_proof_v2_block_seq_s10 perfect_cuboid_proof_v2_block_seq_s10 = perfect_cuboid_proof_v2_block_seq_s10 (idempotent)
  (.seq (.arrow perfect_cuboid_proof_v2_block_seq_l0 perfect_cuboid_proof_v2_block_seq_s0 perfect_cuboid_proof_v2_block_seq_s1) (.seq (.arrow perfect_cuboid_proof_v2_block_seq_l1 perfect_cuboid_proof_v2_block_seq_s1 perfect_cuboid_proof_v2_block_seq_s2) (.seq (.prod (.arrow perfect_cuboid_proof_v2_block_seq_l2 perfect_cuboid_proof_v2_block_seq_s2 perfect_cuboid_proof_v2_block_seq_s10) (.arrow perfect_cuboid_proof_v2_block_seq_l2 perfect_cuboid_proof_v2_block_seq_s2 perfect_cuboid_proof_v2_block_seq_s10)) (.seq (.arrow perfect_cuboid_proof_v2_block_seq_l10 perfect_cuboid_proof_v2_block_seq_s10 perfect_cuboid_proof_v2_block_seq_s10) (.seq (.arrow perfect_cuboid_proof_v2_block_seq_l10 perfect_cuboid_proof_v2_block_seq_s10 perfect_cuboid_proof_v2_block_seq_s11) (.seq (.arrow perfect_cuboid_proof_v2_block_seq_l11 perfect_cuboid_proof_v2_block_seq_s11 perfect_cuboid_proof_v2_block_seq_s12) (.arrow perfect_cuboid_proof_v2_block_seq_l12 perfect_cuboid_proof_v2_block_seq_s12 perfect_cuboid_proof_v2_block_seq_s13)))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def perfect_cuboid_proof_v2_block_seq_true_arm : IGProtocol perfect_cuboid_proof_v2_block_seq_s0 perfect_cuboid_proof_v2_block_seq_s13 :=
  (perfect_cuboid_proof_v2_block_seq_protocol).restrictToEVALT

-- false arm
noncomputable def perfect_cuboid_proof_v2_block_seq_false_arm : IGProtocol perfect_cuboid_proof_v2_block_seq_s0 perfect_cuboid_proof_v2_block_seq_s13 :=
  (perfect_cuboid_proof_v2_block_seq_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def perfect_cuboid_proof_v2_block_seq_tier : OuroboricityTier := TierFunctor.obj perfect_cuboid_proof_v2_block_seq_s0
#eval perfect_cuboid_proof_v2_block_seq_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem perfect_cuboid_proof_v2_block_seq_frobenius :
    igFrobeniusAlg.mul perfect_cuboid_proof_v2_block_seq_s0 perfect_cuboid_proof_v2_block_seq_s0 = perfect_cuboid_proof_v2_block_seq_s0 :=
  igFrobAlg_self_fusion perfect_cuboid_proof_v2_block_seq_s0
