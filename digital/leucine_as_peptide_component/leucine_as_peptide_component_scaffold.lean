-- IGProtocol scaffold: ⊢ → ≻ → ⋈ → ⊙ → ∈ → ⊤ → ⊥ → ⊞ → ∋ → ≺ → ⊣ → ⊡
-- Class: leucine as peptide component
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(4, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑼  | initial object — ground of distinction
--   [1] ≻      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [2] ⋈     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [3] ⊙   gram   := 𐑠               𐑠 → 𐑠  | identity — self-imscription
--   [4] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] ⊤     crit   := ⊙               ⊙ → ⊙  | evaluate-true — criticality gate open
--   [6] ⊥     chir   := 𐑖               𐑖 → 𐑖  | evaluate-false — chirality check
--   [7] ⊞    stoi   := 𐑳               𐑳 → 𐑳  | engage paradox — B-state, both arms
--   [8] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [9] ≺      pol    := 𐑗               𐑗 → 𐑗  | reverse morphism — parity flip
--   [10] ⊣     top    := 𐑡               𐑡 → 𐑡  | terminal object — connectivity boundary
--   [11] ⊡      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def leucine_as_peptide_component_initial : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def leucine_as_peptide_component_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def leucine_as_peptide_component_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def leucine_as_peptide_component_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def leucine_as_peptide_component_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def leucine_as_peptide_component_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def leucine_as_peptide_component_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def leucine_as_peptide_component_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def leucine_as_peptide_component_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def leucine_as_peptide_component_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def leucine_as_peptide_component_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def leucine_as_peptide_component_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def leucine_as_peptide_component_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def leucine_as_peptide_component_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def leucine_as_peptide_component_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def leucine_as_peptide_component_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def leucine_as_peptide_component_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def leucine_as_peptide_component_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def leucine_as_peptide_component_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def leucine_as_peptide_component_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def leucine_as_peptide_component_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def leucine_as_peptide_component_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def leucine_as_peptide_component_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def leucine_as_peptide_component_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def leucine_as_peptide_component_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def leucine_as_peptide_component_protocol : IGProtocol leucine_as_peptide_component_initial leucine_as_peptide_component_s11 :=
  .withGram Grammar.measure <|
  (.seq (.arrow leucine_as_peptide_component_l0 leucine_as_peptide_component_initial leucine_as_peptide_component_s0) (.seq (.arrow leucine_as_peptide_component_l1 leucine_as_peptide_component_s0 leucine_as_peptide_component_s1) (.seq (.arrow leucine_as_peptide_component_l2 leucine_as_peptide_component_s1 leucine_as_peptide_component_s2) (.seq (.arrow leucine_as_peptide_component_l3 leucine_as_peptide_component_s2 leucine_as_peptide_component_s3) (.seq (.arrow leucine_as_peptide_component_l4 leucine_as_peptide_component_s3 leucine_as_peptide_component_s4) (.seq (.prod (.arrow leucine_as_peptide_component_l5 leucine_as_peptide_component_s4 leucine_as_peptide_component_s5) (.seq (.arrow leucine_as_peptide_component_l6 leucine_as_peptide_component_s4 leucine_as_peptide_component_s6) (.arrow leucine_as_peptide_component_l7 leucine_as_peptide_component_s6 leucine_as_peptide_component_s7))) (.seq (.arrow leucine_as_peptide_component_l8 (tensorProduct leucine_as_peptide_component_s5 leucine_as_peptide_component_s7) leucine_as_peptide_component_s8) (.seq (.arrow leucine_as_peptide_component_l9 leucine_as_peptide_component_s8 leucine_as_peptide_component_s9) (.seq (.arrow leucine_as_peptide_component_l10 leucine_as_peptide_component_s9 leucine_as_peptide_component_s10) (.arrow leucine_as_peptide_component_l11 leucine_as_peptide_component_s10 leucine_as_peptide_component_s11))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def leucine_as_peptide_component_true_arm : IGProtocol leucine_as_peptide_component_initial leucine_as_peptide_component_s11 :=
  (leucine_as_peptide_component_protocol).restrictToEVALT

-- false arm
noncomputable def leucine_as_peptide_component_false_arm : IGProtocol leucine_as_peptide_component_initial leucine_as_peptide_component_s11 :=
  (leucine_as_peptide_component_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def leucine_as_peptide_component_tier_ground : OuroboricityTier := TierFunctor.obj leucine_as_peptide_component_initial
def leucine_as_peptide_component_tier : OuroboricityTier := TierFunctor.obj leucine_as_peptide_component_s11
#eval leucine_as_peptide_component_tier_ground  -- tier of the ground (pre-transformation)
#eval leucine_as_peptide_component_tier  -- the Grammar's tuple-tier verdict

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem leucine_as_peptide_component_frobenius :
    igFrobeniusAlg.mul leucine_as_peptide_component_initial leucine_as_peptide_component_initial = leucine_as_peptide_component_initial :=
  igFrobAlg_self_fusion leucine_as_peptide_component_initial

theorem leucine_as_peptide_component_protocol_depth :
    leucine_as_peptide_component_protocol.depth = 11 := by rfl

end Imscribing