-- IGProtocol scaffold: ⊢ → ≻ → ⊡ → ⋈ → ⊙ → ∈ → ⊤ → ⊥ → ∋ → ⊞ → ≺ → ⊣
-- Class: lysine as peptide component
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(5, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑼  | initial object — ground of distinction
--   [1] ≻      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [2] ⊡      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [3] ⋈     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [4] ⊙   gram   := 𐑠               𐑠 → 𐑠  | identity — self-imscription
--   [5] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] ⊤     crit   := ⊙               ⊙ → ⊙  | evaluate-true — criticality gate open
--   [7] ⊥     chir   := 𐑖               𐑖 → 𐑖  | evaluate-false — chirality check
--   [8] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [9] ⊞    stoi   := 𐑳               𐑳 → 𐑳  | engage paradox — B-state, both arms
--   [10] ≺      pol    := 𐑗               𐑗 → 𐑗  | reverse morphism — parity flip
--   [11] ⊣     top    := 𐑡               𐑡 → 𐑡  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def lysine_as_peptide_component_initial : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lysine_as_peptide_component_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lysine_as_peptide_component_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lysine_as_peptide_component_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def lysine_as_peptide_component_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def lysine_as_peptide_component_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def lysine_as_peptide_component_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def lysine_as_peptide_component_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def lysine_as_peptide_component_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def lysine_as_peptide_component_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def lysine_as_peptide_component_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def lysine_as_peptide_component_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def lysine_as_peptide_component_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def lysine_as_peptide_component_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lysine_as_peptide_component_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lysine_as_peptide_component_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def lysine_as_peptide_component_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lysine_as_peptide_component_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lysine_as_peptide_component_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lysine_as_peptide_component_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def lysine_as_peptide_component_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def lysine_as_peptide_component_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lysine_as_peptide_component_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def lysine_as_peptide_component_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lysine_as_peptide_component_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def lysine_as_peptide_component_protocol : IGProtocol lysine_as_peptide_component_initial lysine_as_peptide_component_s11 :=
  .withGram Grammar.measure <|
  (.seq (.arrow lysine_as_peptide_component_l0 lysine_as_peptide_component_initial lysine_as_peptide_component_s0) (.seq (.arrow lysine_as_peptide_component_l1 lysine_as_peptide_component_s0 lysine_as_peptide_component_s1) (.seq (.arrow lysine_as_peptide_component_l2 lysine_as_peptide_component_s1 lysine_as_peptide_component_s2) (.seq (.arrow lysine_as_peptide_component_l3 lysine_as_peptide_component_s2 lysine_as_peptide_component_s3) (.seq (.arrow lysine_as_peptide_component_l4 lysine_as_peptide_component_s3 lysine_as_peptide_component_s4) (.seq (.arrow lysine_as_peptide_component_l5 lysine_as_peptide_component_s4 lysine_as_peptide_component_s5) (.seq (.prod (.arrow lysine_as_peptide_component_l6 lysine_as_peptide_component_s5 lysine_as_peptide_component_s6) (.arrow lysine_as_peptide_component_l7 lysine_as_peptide_component_s5 lysine_as_peptide_component_s7)) (.seq (.arrow lysine_as_peptide_component_l8 (tensorProduct lysine_as_peptide_component_s6 lysine_as_peptide_component_s7) lysine_as_peptide_component_s8) (.seq (.arrow lysine_as_peptide_component_l9 lysine_as_peptide_component_s8 lysine_as_peptide_component_s9) (.seq (.arrow lysine_as_peptide_component_l10 lysine_as_peptide_component_s9 lysine_as_peptide_component_s10) (.arrow lysine_as_peptide_component_l11 lysine_as_peptide_component_s10 lysine_as_peptide_component_s11)))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def lysine_as_peptide_component_true_arm : IGProtocol lysine_as_peptide_component_initial lysine_as_peptide_component_s11 :=
  (lysine_as_peptide_component_protocol).restrictToEVALT

-- false arm
noncomputable def lysine_as_peptide_component_false_arm : IGProtocol lysine_as_peptide_component_initial lysine_as_peptide_component_s11 :=
  (lysine_as_peptide_component_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def lysine_as_peptide_component_tier_ground : OuroboricityTier := TierFunctor.obj lysine_as_peptide_component_initial
def lysine_as_peptide_component_tier : OuroboricityTier := TierFunctor.obj lysine_as_peptide_component_s11
#eval lysine_as_peptide_component_tier_ground  -- tier of the ground (pre-transformation)
#eval lysine_as_peptide_component_tier  -- the Grammar's tuple-tier verdict

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem lysine_as_peptide_component_frobenius :
    igFrobeniusAlg.mul lysine_as_peptide_component_initial lysine_as_peptide_component_initial = lysine_as_peptide_component_initial :=
  igFrobAlg_self_fusion lysine_as_peptide_component_initial

theorem lysine_as_peptide_component_protocol_depth :
    lysine_as_peptide_component_protocol.depth = 11 := by rfl

end Imscribing