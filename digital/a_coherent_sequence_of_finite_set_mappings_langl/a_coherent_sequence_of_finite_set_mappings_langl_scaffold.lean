-- IGProtocol scaffold: VINIT → AFWD → IMSCRIB → FSPLIT → EVALT → AFWD → IFIX → FFUSE → CLINK → AFWD → FSPLIT → EVALT → IMSCRIB → FFUSE → TANCH
-- Class: a coherent sequence of finite set mappings \langle f_n:n<\omega\rangle such that, for every (n<\omega), f_n:[\aleph_{n+1}]^{n+1}\to\aleph_{n+1}
-- Fingerprint: sig=(8,4,2,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=15
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 7), (10, 13)]

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
--   [5] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] CLINK     fid    := 𐑱               𐑙 → 𐑾  | composition — regime coherence
--   [9] AFWD      rel    := 𐑾               𐑱 → 𐑚  | forward morphism — bidirectional arrow
--   [10] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [12] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [14] TANCH     top    := 𐑡               𐑙 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def a_coherent_sequence_of_finite_set_9df61e_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_coherent_sequence_of_finite_set_9df61e_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_coherent_sequence_of_finite_set_9df61e_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_coherent_sequence_of_finite_set_9df61e_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_coherent_sequence_of_finite_set_9df61e_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_coherent_sequence_of_finite_set_9df61e_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_coherent_sequence_of_finite_set_9df61e_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_coherent_sequence_of_finite_set_9df61e_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_coherent_sequence_of_finite_set_9df61e_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_coherent_sequence_of_finite_set_9df61e_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_coherent_sequence_of_finite_set_9df61e_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_coherent_sequence_of_finite_set_9df61e_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_coherent_sequence_of_finite_set_9df61e_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_coherent_sequence_of_finite_set_9df61e_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_coherent_sequence_of_finite_set_9df61e_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def a_coherent_sequence_of_finite_set_9df61e_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_coherent_sequence_of_finite_set_9df61e_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_coherent_sequence_of_finite_set_9df61e_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_coherent_sequence_of_finite_set_9df61e_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_coherent_sequence_of_finite_set_9df61e_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_coherent_sequence_of_finite_set_9df61e_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_coherent_sequence_of_finite_set_9df61e_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_coherent_sequence_of_finite_set_9df61e_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_coherent_sequence_of_finite_set_9df61e_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_coherent_sequence_of_finite_set_9df61e_l9 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_coherent_sequence_of_finite_set_9df61e_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_coherent_sequence_of_finite_set_9df61e_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_coherent_sequence_of_finite_set_9df61e_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_coherent_sequence_of_finite_set_9df61e_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_coherent_sequence_of_finite_set_9df61e_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def a_coherent_sequence_of_finite_set_9df61e_protocol : IGProtocol a_coherent_sequence_of_finite_set_9df61e_s0 a_coherent_sequence_of_finite_set_9df61e_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct a_coherent_sequence_of_finite_set_9df61e_s7 a_coherent_sequence_of_finite_set_9df61e_s7 = a_coherent_sequence_of_finite_set_9df61e_s7 (idempotent)
  (.seq (.arrow a_coherent_sequence_of_finite_set_9df61e_l0 a_coherent_sequence_of_finite_set_9df61e_s0 a_coherent_sequence_of_finite_set_9df61e_s1) (.seq (.arrow a_coherent_sequence_of_finite_set_9df61e_l1 a_coherent_sequence_of_finite_set_9df61e_s1 a_coherent_sequence_of_finite_set_9df61e_s2) (.seq (.arrow a_coherent_sequence_of_finite_set_9df61e_l2 a_coherent_sequence_of_finite_set_9df61e_s2 a_coherent_sequence_of_finite_set_9df61e_s3) (.seq (.prod (.arrow a_coherent_sequence_of_finite_set_9df61e_l3 a_coherent_sequence_of_finite_set_9df61e_s3 a_coherent_sequence_of_finite_set_9df61e_s7) (.arrow a_coherent_sequence_of_finite_set_9df61e_l3 a_coherent_sequence_of_finite_set_9df61e_s3 a_coherent_sequence_of_finite_set_9df61e_s7)) (.seq (.arrow a_coherent_sequence_of_finite_set_9df61e_l7 a_coherent_sequence_of_finite_set_9df61e_s7 a_coherent_sequence_of_finite_set_9df61e_s7) (.seq (.arrow a_coherent_sequence_of_finite_set_9df61e_l7 a_coherent_sequence_of_finite_set_9df61e_s7 a_coherent_sequence_of_finite_set_9df61e_s8) (.seq (.arrow a_coherent_sequence_of_finite_set_9df61e_l8 a_coherent_sequence_of_finite_set_9df61e_s8 a_coherent_sequence_of_finite_set_9df61e_s9) (.seq (.arrow a_coherent_sequence_of_finite_set_9df61e_l9 a_coherent_sequence_of_finite_set_9df61e_s9 a_coherent_sequence_of_finite_set_9df61e_s10) (.seq (.arrow a_coherent_sequence_of_finite_set_9df61e_l10 a_coherent_sequence_of_finite_set_9df61e_s10 a_coherent_sequence_of_finite_set_9df61e_s11) (.seq (.arrow a_coherent_sequence_of_finite_set_9df61e_l11 a_coherent_sequence_of_finite_set_9df61e_s11 a_coherent_sequence_of_finite_set_9df61e_s12) (.seq (.arrow a_coherent_sequence_of_finite_set_9df61e_l12 a_coherent_sequence_of_finite_set_9df61e_s12 a_coherent_sequence_of_finite_set_9df61e_s13) (.arrow a_coherent_sequence_of_finite_set_9df61e_l13 a_coherent_sequence_of_finite_set_9df61e_s13 a_coherent_sequence_of_finite_set_9df61e_s14))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def a_coherent_sequence_of_finite_set_9df61e_true_arm : IGProtocol a_coherent_sequence_of_finite_set_9df61e_s0 a_coherent_sequence_of_finite_set_9df61e_s14 :=
  (a_coherent_sequence_of_finite_set_9df61e_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def a_coherent_sequence_of_finite_set_9df61e_tier : OuroboricityTier := TierFunctor.obj a_coherent_sequence_of_finite_set_9df61e_s0
#eval a_coherent_sequence_of_finite_set_9df61e_tier  -- the Grammar's own verdict on its tier
