-- IGProtocol scaffold: AFWD → AREV → CLINK → IMSCRIB → FSPLIT → FFUSE → EVALT → EVALF → ENGAGR → IFIX
-- Class: AFWD
-- Fingerprint: sig=(4,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=10
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(4, 5)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] AFWD      rel    := 𐑾               𐑾 → 𐑗  | forward morphism — bidirectional arrow
--   [1] AREV      pol    := 𐑗               𐑾 → 𐑱  | reverse morphism — parity flip
--   [2] CLINK     fid    := 𐑱               𐑗 → 𐑠  | composition — regime coherence
--   [3] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] FFUSE     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [6] EVALT     crit   := ⊙               𐑙 → 𐑖  | evaluate-true — criticality gate open
--   [7] EVALF     chir   := 𐑖               ⊙ → 𐑳  | evaluate-false — chirality check
--   [8] ENGAGR    stoi   := 𐑳               𐑖 → 𐑭  | engage paradox — B-state, both arms
--   [9] IFIX      prot   := 𐑭               𐑳 → 𐑾  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def afwd_s0 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def afwd_s1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def afwd_s2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def afwd_s3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def afwd_s4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def afwd_s5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def afwd_s6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def afwd_s7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def afwd_s8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def afwd_s9 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def afwd_l0 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def afwd_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def afwd_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def afwd_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def afwd_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def afwd_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def afwd_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def afwd_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def afwd_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def afwd_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def afwd_protocol : IGProtocol afwd_s0 afwd_s9 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct afwd_s5 afwd_s5 = afwd_s5 (idempotent)
  (.seq (.arrow afwd_l0 afwd_s0 afwd_s1) (.seq (.arrow afwd_l1 afwd_s1 afwd_s2) (.seq (.arrow afwd_l2 afwd_s2 afwd_s3) (.seq (.arrow afwd_l3 afwd_s3 afwd_s4) (.seq (.prod (.arrow afwd_l4 afwd_s4 afwd_s5) (.arrow afwd_l4 afwd_s4 afwd_s5)) (.seq (.arrow afwd_l5 afwd_s5 afwd_s5) (.seq (.arrow afwd_l5 afwd_s5 afwd_s6) (.seq (.arrow afwd_l6 afwd_s6 afwd_s7) (.seq (.arrow afwd_l7 afwd_s7 afwd_s8) (.arrow afwd_l8 afwd_s8 afwd_s9))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def afwd_true_arm : IGProtocol afwd_s0 afwd_s9 :=
  (afwd_protocol).restrictToEVALT

-- false arm
noncomputable def afwd_false_arm : IGProtocol afwd_s0 afwd_s9 :=
  (afwd_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂.
def afwd_tier_ground : OuroboricityTier := TierFunctor.obj afwd_s0
def afwd_tier : OuroboricityTier := TierFunctor.obj afwd_s9
#eval afwd_tier_ground  -- tier of the ground (pre-transformation)
#eval afwd_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem afwd_frobenius :
    igFrobeniusAlg.mul afwd_s0 afwd_s0 = afwd_s0 :=
  igFrobAlg_self_fusion afwd_s0
