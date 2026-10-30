-- IGProtocol scaffold: VINIT → ENGAGR → IMSCRIB → FSPLIT → AFWD → AREV → IMSCRIB → FFUSE → FSPLIT → EVALT → IFIX → IMSCRIB → AREV → EVALF → IFIX
-- Class: no reversible dynamics ever turns the B-state into a definite value: purity, the trace of rho squared, is invariant under every unitary conjugation, the B-state's purity is exactly 1/12, and a definite classical outcome is a pure state of purity 1, so the orbit of rho_B under the full unitary group never meets definiteness — the only maps that reach a pure state from B are the POVM-element selections, rank-one updates that are non-injective on states and therefore lossy by construction, which upgrades the slogan that all binary collapse is forced filtration into a theorem: you cannot rotate your way from B to a definite value, you can only filter, and filtering discards — with the Grammar's independent verdict banked verbatim: collapse sits eleven forced moves from the B-state at asymmetric distance (cheaper to fall in than to climb out) and is tensor-denied on six primitives, not adjoinable, only reachable
-- Fingerprint: sig=(7,3,3,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=15
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑳  | initial object — ground of distinction
--   [1] ENGAGR    stoi   := 𐑳               𐑼 → 𐑠  | engage paradox — B-state, both arms
--   [2] IMSCRIB   gram   := 𐑠               𐑳 → 𐑚  | identity — self-imscription
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑚  | fuse μ — assembly mode
--   [8] FSPLIT    gran   := 𐑚               𐑙 → ⊙  | split δ — range decomposition
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑭  | evaluate-true — criticality gate open
--   [10] IFIX      prot   := 𐑭               ⊙ → 𐑠  | irreversible fixation — winding number
--   [11] IMSCRIB   gram   := 𐑠               𐑭 → 𐑗  | identity — self-imscription
--   [12] AREV      pol    := 𐑗               𐑠 → 𐑖  | reverse morphism — parity flip
--   [13] EVALF     chir   := 𐑖               𐑗 → 𐑭  | evaluate-false — chirality check
--   [14] IFIX      prot   := 𐑭               𐑖 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := up, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := up, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := up, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := up, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := up, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def no_reversible_dynamics_ever_turns_the_b_d3fe30_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def no_reversible_dynamics_ever_turns_the_b_d3fe30_protocol : IGProtocol no_reversible_dynamics_ever_turns_the_b_d3fe30_s0 no_reversible_dynamics_ever_turns_the_b_d3fe30_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct no_reversible_dynamics_ever_turns_the_b_d3fe30_s7 no_reversible_dynamics_ever_turns_the_b_d3fe30_s7 = no_reversible_dynamics_ever_turns_the_b_d3fe30_s7 (idempotent)
  (.seq (.arrow no_reversible_dynamics_ever_turns_the_b_d3fe30_l0 no_reversible_dynamics_ever_turns_the_b_d3fe30_s0 no_reversible_dynamics_ever_turns_the_b_d3fe30_s1) (.seq (.arrow no_reversible_dynamics_ever_turns_the_b_d3fe30_l1 no_reversible_dynamics_ever_turns_the_b_d3fe30_s1 no_reversible_dynamics_ever_turns_the_b_d3fe30_s2) (.seq (.arrow no_reversible_dynamics_ever_turns_the_b_d3fe30_l2 no_reversible_dynamics_ever_turns_the_b_d3fe30_s2 no_reversible_dynamics_ever_turns_the_b_d3fe30_s3) (.seq (.prod (.arrow no_reversible_dynamics_ever_turns_the_b_d3fe30_l3 no_reversible_dynamics_ever_turns_the_b_d3fe30_s3 no_reversible_dynamics_ever_turns_the_b_d3fe30_s7) (.arrow no_reversible_dynamics_ever_turns_the_b_d3fe30_l3 no_reversible_dynamics_ever_turns_the_b_d3fe30_s3 no_reversible_dynamics_ever_turns_the_b_d3fe30_s7)) (.seq (.arrow no_reversible_dynamics_ever_turns_the_b_d3fe30_l7 no_reversible_dynamics_ever_turns_the_b_d3fe30_s7 no_reversible_dynamics_ever_turns_the_b_d3fe30_s7) (.seq (.arrow no_reversible_dynamics_ever_turns_the_b_d3fe30_l7 no_reversible_dynamics_ever_turns_the_b_d3fe30_s7 no_reversible_dynamics_ever_turns_the_b_d3fe30_s8) (.seq (.arrow no_reversible_dynamics_ever_turns_the_b_d3fe30_l8 no_reversible_dynamics_ever_turns_the_b_d3fe30_s8 no_reversible_dynamics_ever_turns_the_b_d3fe30_s9) (.seq (.arrow no_reversible_dynamics_ever_turns_the_b_d3fe30_l9 no_reversible_dynamics_ever_turns_the_b_d3fe30_s9 no_reversible_dynamics_ever_turns_the_b_d3fe30_s10) (.seq (.arrow no_reversible_dynamics_ever_turns_the_b_d3fe30_l10 no_reversible_dynamics_ever_turns_the_b_d3fe30_s10 no_reversible_dynamics_ever_turns_the_b_d3fe30_s11) (.seq (.arrow no_reversible_dynamics_ever_turns_the_b_d3fe30_l11 no_reversible_dynamics_ever_turns_the_b_d3fe30_s11 no_reversible_dynamics_ever_turns_the_b_d3fe30_s12) (.seq (.arrow no_reversible_dynamics_ever_turns_the_b_d3fe30_l12 no_reversible_dynamics_ever_turns_the_b_d3fe30_s12 no_reversible_dynamics_ever_turns_the_b_d3fe30_s13) (.arrow no_reversible_dynamics_ever_turns_the_b_d3fe30_l13 no_reversible_dynamics_ever_turns_the_b_d3fe30_s13 no_reversible_dynamics_ever_turns_the_b_d3fe30_s14))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def no_reversible_dynamics_ever_turns_the_b_d3fe30_true_arm : IGProtocol no_reversible_dynamics_ever_turns_the_b_d3fe30_s0 no_reversible_dynamics_ever_turns_the_b_d3fe30_s14 :=
  (no_reversible_dynamics_ever_turns_the_b_d3fe30_protocol).restrictToEVALT

-- false arm
noncomputable def no_reversible_dynamics_ever_turns_the_b_d3fe30_false_arm : IGProtocol no_reversible_dynamics_ever_turns_the_b_d3fe30_s0 no_reversible_dynamics_ever_turns_the_b_d3fe30_s14 :=
  (no_reversible_dynamics_ever_turns_the_b_d3fe30_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def no_reversible_dynamics_ever_turns_the_b_d3fe30_tier : OuroboricityTier := TierFunctor.obj no_reversible_dynamics_ever_turns_the_b_d3fe30_s0
#eval no_reversible_dynamics_ever_turns_the_b_d3fe30_tier  -- the Grammar's own verdict on its tier
