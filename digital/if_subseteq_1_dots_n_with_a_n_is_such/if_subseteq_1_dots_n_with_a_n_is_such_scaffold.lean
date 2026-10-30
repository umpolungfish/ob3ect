-- IGProtocol scaffold: VINIT → AFWD → IMSCRIB → CLINK → AFWD → FSPLIT → EVALT → AREV → EVALF → FFUSE → ENGAGR → AFWD → IFIX → TANCH
-- Class: If  \subseteq \{1,\dots,N}$ with $|A|=n$ is such that all subset sums $\sum_{a \in S} a$ are distinct for all  \subseteq A$ then the lower bound is  \gg 2^n$
-- Fingerprint: sig=(8,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=14
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(5, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑠  | forward morphism — bidirectional arrow
--   [2] IMSCRIB   gram   := 𐑠               𐑾 → 𐑱  | identity — self-imscription
--   [3] CLINK     fid    := 𐑱               𐑠 → 𐑾  | composition — regime coherence
--   [4] AFWD      rel    := 𐑾               𐑱 → 𐑚  | forward morphism — bidirectional arrow
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [10] ENGAGR    stoi   := 𐑳               𐑙 → 𐑾  | engage paradox — B-state, both arms
--   [11] AFWD      rel    := 𐑾               𐑳 → 𐑭  | forward morphism — bidirectional arrow
--   [12] IFIX      prot   := 𐑭               𐑾 → 𐑡  | irreversible fixation — winding number
--   [13] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l11 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_protocol : IGProtocol if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s0 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s9 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s9 = if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s9 (idempotent)
  (.seq (.arrow if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l0 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s0 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s1) (.seq (.arrow if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l1 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s1 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s2) (.seq (.arrow if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l2 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s2 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s3) (.seq (.arrow if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l3 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s3 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s4) (.seq (.arrow if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l4 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s4 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s5) (.seq (.prod (.arrow if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l5 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s5 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s9) (.arrow if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l5 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s5 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s9)) (.seq (.arrow if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l9 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s9 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s9) (.seq (.arrow if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l9 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s9 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s10) (.seq (.arrow if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l10 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s10 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s11) (.seq (.arrow if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l11 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s11 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s12) (.arrow if_subseteq_1_dots_n_with_a_n_is_such_8f6866_l12 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s12 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s13)))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_true_arm : IGProtocol if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s0 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s13 :=
  (if_subseteq_1_dots_n_with_a_n_is_such_8f6866_protocol).restrictToEVALT

-- false arm
noncomputable def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_false_arm : IGProtocol if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s0 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s13 :=
  (if_subseteq_1_dots_n_with_a_n_is_such_8f6866_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def if_subseteq_1_dots_n_with_a_n_is_such_8f6866_tier : OuroboricityTier := TierFunctor.obj if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s0
#eval if_subseteq_1_dots_n_with_a_n_is_such_8f6866_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem if_subseteq_1_dots_n_with_a_n_is_such_8f6866_frobenius :
    igFrobeniusAlg.mul if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s0 if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s0 = if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s0 :=
  igFrobAlg_self_fusion if_subseteq_1_dots_n_with_a_n_is_such_8f6866_s0
