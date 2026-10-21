-- IGProtocol scaffold: ⊢ → ⊙ → ∈ → ⊤ → ⊥ → ⊞ → ∋ → ⋈ → ≻ → ≺ → ⊡ → ⊣
-- Class: semiprime internal structure
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(2, 6)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑼  | initial object — ground of distinction
--   [1] ⊙   gram   := 𐑠               𐑠 → 𐑠  | identity — self-imscription
--   [2] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] ⊤     crit   := ⊙               ⊙ → ⊙  | evaluate-true — criticality gate open
--   [4] ⊥     chir   := 𐑖               𐑖 → 𐑖  | evaluate-false — chirality check
--   [5] ⊞    stoi   := 𐑳               𐑳 → 𐑳  | engage paradox — B-state, both arms
--   [6] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [7] ⋈     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [8] ≻      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [9] ≺      pol    := 𐑗               𐑗 → 𐑗  | reverse morphism — parity flip
--   [10] ⊡      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [11] ⊣     top    := 𐑡               𐑡 → 𐑡  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def semiprime_internal_structure_initial : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def semiprime_internal_structure_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def semiprime_internal_structure_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def semiprime_internal_structure_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def semiprime_internal_structure_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def semiprime_internal_structure_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def semiprime_internal_structure_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def semiprime_internal_structure_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def semiprime_internal_structure_s7 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def semiprime_internal_structure_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def semiprime_internal_structure_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def semiprime_internal_structure_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def semiprime_internal_structure_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def semiprime_internal_structure_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def semiprime_internal_structure_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def semiprime_internal_structure_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def semiprime_internal_structure_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def semiprime_internal_structure_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def semiprime_internal_structure_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def semiprime_internal_structure_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def semiprime_internal_structure_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def semiprime_internal_structure_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def semiprime_internal_structure_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def semiprime_internal_structure_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def semiprime_internal_structure_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def semiprime_internal_structure_protocol : IGProtocol semiprime_internal_structure_initial semiprime_internal_structure_s11 :=
  .withGram Grammar.measure <|
  (.seq (.arrow semiprime_internal_structure_l0 semiprime_internal_structure_initial semiprime_internal_structure_s0) (.seq (.arrow semiprime_internal_structure_l1 semiprime_internal_structure_s0 semiprime_internal_structure_s1) (.seq (.arrow semiprime_internal_structure_l2 semiprime_internal_structure_s1 semiprime_internal_structure_s2) (.seq (.prod (.arrow semiprime_internal_structure_l3 semiprime_internal_structure_s2 semiprime_internal_structure_s3) (.seq (.arrow semiprime_internal_structure_l4 semiprime_internal_structure_s2 semiprime_internal_structure_s4) (.arrow semiprime_internal_structure_l5 semiprime_internal_structure_s4 semiprime_internal_structure_s5))) (.seq (.arrow semiprime_internal_structure_l6 (tensorProduct semiprime_internal_structure_s3 semiprime_internal_structure_s5) semiprime_internal_structure_s6) (.seq (.arrow semiprime_internal_structure_l7 semiprime_internal_structure_s6 semiprime_internal_structure_s7) (.seq (.arrow semiprime_internal_structure_l8 semiprime_internal_structure_s7 semiprime_internal_structure_s8) (.seq (.arrow semiprime_internal_structure_l9 semiprime_internal_structure_s8 semiprime_internal_structure_s9) (.seq (.arrow semiprime_internal_structure_l10 semiprime_internal_structure_s9 semiprime_internal_structure_s10) (.arrow semiprime_internal_structure_l11 semiprime_internal_structure_s10 semiprime_internal_structure_s11))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def semiprime_internal_structure_true_arm : IGProtocol semiprime_internal_structure_initial semiprime_internal_structure_s11 :=
  (semiprime_internal_structure_protocol).restrictToEVALT

-- false arm
noncomputable def semiprime_internal_structure_false_arm : IGProtocol semiprime_internal_structure_initial semiprime_internal_structure_s11 :=
  (semiprime_internal_structure_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def semiprime_internal_structure_tier_ground : OuroboricityTier := TierFunctor.obj semiprime_internal_structure_initial
def semiprime_internal_structure_tier : OuroboricityTier := TierFunctor.obj semiprime_internal_structure_s11
#eval semiprime_internal_structure_tier_ground  -- tier of the ground (pre-transformation)
#eval semiprime_internal_structure_tier  -- the Grammar's tuple-tier verdict

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem semiprime_internal_structure_frobenius :
    igFrobeniusAlg.mul semiprime_internal_structure_initial semiprime_internal_structure_initial = semiprime_internal_structure_initial :=
  igFrobAlg_self_fusion semiprime_internal_structure_initial

theorem semiprime_internal_structure_protocol_depth :
    semiprime_internal_structure_protocol.depth = 11 := by rfl

end Imscribing