-- IGProtocol scaffold: ⊢ → ∈ → ≻ → ⋈ → ≻ → ⋈ → ⊥ → ⋈ → ≻ → ⋈ → ≻ → ⋈ → ⊤ → ⊞ → ≺ → ⊡ → ∋ → ⊙ → ⊣
-- Class: table_free_winding_by_leaping
-- Fingerprint: sig=(13,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=19
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(1, 16)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [3] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [4] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [9] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [10] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [11] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [12] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [13] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [14] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [15] ⊡      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [16] ∋     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [17] ⊙   gram   := 𐑠               𐑙 → 𐑡  | identity — self-imscription
--   [18] ⊣     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def table_free_winding_by_leaping_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def table_free_winding_by_leaping_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def table_free_winding_by_leaping_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def table_free_winding_by_leaping_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def table_free_winding_by_leaping_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def table_free_winding_by_leaping_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def table_free_winding_by_leaping_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_l10 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def table_free_winding_by_leaping_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def table_free_winding_by_leaping_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def table_free_winding_by_leaping_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def table_free_winding_by_leaping_protocol : IGProtocol table_free_winding_by_leaping_s0 table_free_winding_by_leaping_s18 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct table_free_winding_by_leaping_s16 table_free_winding_by_leaping_s16 = table_free_winding_by_leaping_s16 (idempotent)
  (.seq (.arrow table_free_winding_by_leaping_l0 table_free_winding_by_leaping_s0 table_free_winding_by_leaping_s1) (.seq (.prod (.arrow table_free_winding_by_leaping_l1 table_free_winding_by_leaping_s1 table_free_winding_by_leaping_s16) (.arrow table_free_winding_by_leaping_l1 table_free_winding_by_leaping_s1 table_free_winding_by_leaping_s16)) (.seq (.arrow table_free_winding_by_leaping_l16 table_free_winding_by_leaping_s16 table_free_winding_by_leaping_s16) (.seq (.arrow table_free_winding_by_leaping_l16 table_free_winding_by_leaping_s16 table_free_winding_by_leaping_s17) (.arrow table_free_winding_by_leaping_l17 table_free_winding_by_leaping_s17 table_free_winding_by_leaping_s18)))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def table_free_winding_by_leaping_true_arm : IGProtocol table_free_winding_by_leaping_s0 table_free_winding_by_leaping_s18 :=
  (table_free_winding_by_leaping_protocol).restrictToEVALT

-- false arm
noncomputable def table_free_winding_by_leaping_false_arm : IGProtocol table_free_winding_by_leaping_s0 table_free_winding_by_leaping_s18 :=
  (table_free_winding_by_leaping_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def table_free_winding_by_leaping_tier_ground : OuroboricityTier := TierFunctor.obj table_free_winding_by_leaping_s0
def table_free_winding_by_leaping_tier : OuroboricityTier := TierFunctor.obj table_free_winding_by_leaping_s18
#eval table_free_winding_by_leaping_tier_ground  -- tier of the ground (pre-transformation)
#eval table_free_winding_by_leaping_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem table_free_winding_by_leaping_frobenius :
    igFrobeniusAlg.mul table_free_winding_by_leaping_s0 table_free_winding_by_leaping_s0 = table_free_winding_by_leaping_s0 :=
  igFrobAlg_self_fusion table_free_winding_by_leaping_s0
