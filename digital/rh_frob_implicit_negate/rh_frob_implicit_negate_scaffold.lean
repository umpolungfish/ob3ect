-- IGProtocol scaffold: ⊢ → ⊣ → ≻ → ∈ → ≻ → ⊤ → ≺ → ⊥ → ⋈ → ⊙ → ∋ → ⊞ → ◻ → ⊣
-- Class: rh_frob_implicit_negate
-- Fingerprint: sig=(8,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=14
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(3, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] ⊣     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] ≻      rel    := 𐑾               𐑡 → 𐑚  | forward morphism — bidirectional arrow
--   [3] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [9] ⊙   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [10] ∋     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [11] ⊞    stoi   := 𐑳               𐑙 → 𐑭  | engage paradox — B-state, both arms
--   [12] ◻      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [13] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def rh_frob_implicit_negate_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def rh_frob_implicit_negate_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def rh_frob_implicit_negate_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def rh_frob_implicit_negate_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_frob_implicit_negate_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def rh_frob_implicit_negate_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def rh_frob_implicit_negate_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def rh_frob_implicit_negate_protocol : IGProtocol rh_frob_implicit_negate_s0 rh_frob_implicit_negate_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct rh_frob_implicit_negate_s10 rh_frob_implicit_negate_s10 = rh_frob_implicit_negate_s10 (idempotent)
  (.seq (.arrow rh_frob_implicit_negate_l0 rh_frob_implicit_negate_s0 rh_frob_implicit_negate_s1) (.seq (.arrow rh_frob_implicit_negate_l1 rh_frob_implicit_negate_s1 rh_frob_implicit_negate_s2) (.seq (.arrow rh_frob_implicit_negate_l2 rh_frob_implicit_negate_s2 rh_frob_implicit_negate_s3) (.seq (.prod (.arrow rh_frob_implicit_negate_l3 rh_frob_implicit_negate_s3 rh_frob_implicit_negate_s10) (.arrow rh_frob_implicit_negate_l3 rh_frob_implicit_negate_s3 rh_frob_implicit_negate_s10)) (.seq (.arrow rh_frob_implicit_negate_l10 rh_frob_implicit_negate_s10 rh_frob_implicit_negate_s10) (.seq (.arrow rh_frob_implicit_negate_l10 rh_frob_implicit_negate_s10 rh_frob_implicit_negate_s11) (.seq (.arrow rh_frob_implicit_negate_l11 rh_frob_implicit_negate_s11 rh_frob_implicit_negate_s12) (.arrow rh_frob_implicit_negate_l12 rh_frob_implicit_negate_s12 rh_frob_implicit_negate_s13))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def rh_frob_implicit_negate_true_arm : IGProtocol rh_frob_implicit_negate_s0 rh_frob_implicit_negate_s13 :=
  (rh_frob_implicit_negate_protocol).restrictToEVALT

-- false arm
noncomputable def rh_frob_implicit_negate_false_arm : IGProtocol rh_frob_implicit_negate_s0 rh_frob_implicit_negate_s13 :=
  (rh_frob_implicit_negate_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def rh_frob_implicit_negate_tier_ground : OuroboricityTier := TierFunctor.obj rh_frob_implicit_negate_s0
def rh_frob_implicit_negate_tier : OuroboricityTier := TierFunctor.obj rh_frob_implicit_negate_s13
#eval rh_frob_implicit_negate_tier_ground  -- tier of the ground (pre-transformation)
#eval rh_frob_implicit_negate_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem rh_frob_implicit_negate_frobenius :
    igFrobeniusAlg.mul rh_frob_implicit_negate_s0 rh_frob_implicit_negate_s0 = rh_frob_implicit_negate_s0 :=
  igFrobAlg_self_fusion rh_frob_implicit_negate_s0
