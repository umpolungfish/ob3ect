-- IGProtocol scaffold: ⊢ → ⊙ → ∈ → ≻ → ⊤ → ≺ → ⊥ → ∋ → ⋈ → ⊞ → ◻ → ⊣
-- Class: collatz_one_ge_junctions
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(2, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] ⊙   gram   := 𐑠               𐑼 → 𐑚  | identity — self-imscription
--   [2] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] ⋈     fid    := 𐑱               𐑙 → 𐑳  | composition — regime coherence
--   [9] ⊞    stoi   := 𐑳               𐑱 → 𐑭  | engage paradox — B-state, both arms
--   [10] ◻      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [11] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def collatz_one_ge_junctions_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_one_ge_junctions_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_one_ge_junctions_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_one_ge_junctions_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_one_ge_junctions_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def collatz_one_ge_junctions_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def collatz_one_ge_junctions_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def collatz_one_ge_junctions_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def collatz_one_ge_junctions_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def collatz_one_ge_junctions_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def collatz_one_ge_junctions_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_one_ge_junctions_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def collatz_one_ge_junctions_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_one_ge_junctions_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_one_ge_junctions_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_one_ge_junctions_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_one_ge_junctions_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def collatz_one_ge_junctions_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_one_ge_junctions_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def collatz_one_ge_junctions_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_one_ge_junctions_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_one_ge_junctions_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def collatz_one_ge_junctions_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def collatz_one_ge_junctions_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def collatz_one_ge_junctions_protocol : IGProtocol collatz_one_ge_junctions_s0 collatz_one_ge_junctions_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct collatz_one_ge_junctions_s7 collatz_one_ge_junctions_s7 = collatz_one_ge_junctions_s7 (idempotent)
  (.seq (.arrow collatz_one_ge_junctions_l0 collatz_one_ge_junctions_s0 collatz_one_ge_junctions_s1) (.seq (.arrow collatz_one_ge_junctions_l1 collatz_one_ge_junctions_s1 collatz_one_ge_junctions_s2) (.seq (.prod (.arrow collatz_one_ge_junctions_l2 collatz_one_ge_junctions_s2 collatz_one_ge_junctions_s7) (.arrow collatz_one_ge_junctions_l2 collatz_one_ge_junctions_s2 collatz_one_ge_junctions_s7)) (.seq (.arrow collatz_one_ge_junctions_l7 collatz_one_ge_junctions_s7 collatz_one_ge_junctions_s7) (.seq (.arrow collatz_one_ge_junctions_l7 collatz_one_ge_junctions_s7 collatz_one_ge_junctions_s8) (.seq (.arrow collatz_one_ge_junctions_l8 collatz_one_ge_junctions_s8 collatz_one_ge_junctions_s9) (.seq (.arrow collatz_one_ge_junctions_l9 collatz_one_ge_junctions_s9 collatz_one_ge_junctions_s10) (.arrow collatz_one_ge_junctions_l10 collatz_one_ge_junctions_s10 collatz_one_ge_junctions_s11))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def collatz_one_ge_junctions_true_arm : IGProtocol collatz_one_ge_junctions_s0 collatz_one_ge_junctions_s11 :=
  (collatz_one_ge_junctions_protocol).restrictToEVALT

-- false arm
noncomputable def collatz_one_ge_junctions_false_arm : IGProtocol collatz_one_ge_junctions_s0 collatz_one_ge_junctions_s11 :=
  (collatz_one_ge_junctions_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def collatz_one_ge_junctions_tier_ground : OuroboricityTier := TierFunctor.obj collatz_one_ge_junctions_s0
def collatz_one_ge_junctions_tier : OuroboricityTier := TierFunctor.obj collatz_one_ge_junctions_s11
#eval collatz_one_ge_junctions_tier_ground  -- tier of the ground (pre-transformation)
#eval collatz_one_ge_junctions_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem collatz_one_ge_junctions_frobenius :
    igFrobeniusAlg.mul collatz_one_ge_junctions_s0 collatz_one_ge_junctions_s0 = collatz_one_ge_junctions_s0 :=
  igFrobAlg_self_fusion collatz_one_ge_junctions_s0
