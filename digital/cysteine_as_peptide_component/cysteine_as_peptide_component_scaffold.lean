-- IGProtocol scaffold: ⊢ → ≻ → ⋈ → ∈ → ⊤ → ⊥ → ∋ → ⊞ → ⊡ → ⊣
-- Class: cysteine as peptide component
-- Fingerprint: sig=(4,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=10
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(3, 6)]

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
--   [3] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] ⊤     crit   := ⊙               ⊙ → ⊙  | evaluate-true — criticality gate open
--   [5] ⊥     chir   := 𐑖               𐑖 → 𐑖  | evaluate-false — chirality check
--   [6] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [7] ⊞    stoi   := 𐑳               𐑳 → 𐑳  | engage paradox — B-state, both arms
--   [8] ⊡      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [9] ⊣     top    := 𐑡               𐑡 → 𐑡  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def cysteine_as_peptide_component_initial : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cysteine_as_peptide_component_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cysteine_as_peptide_component_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cysteine_as_peptide_component_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cysteine_as_peptide_component_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cysteine_as_peptide_component_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def cysteine_as_peptide_component_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def cysteine_as_peptide_component_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def cysteine_as_peptide_component_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def cysteine_as_peptide_component_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def cysteine_as_peptide_component_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def cysteine_as_peptide_component_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cysteine_as_peptide_component_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cysteine_as_peptide_component_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cysteine_as_peptide_component_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cysteine_as_peptide_component_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def cysteine_as_peptide_component_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def cysteine_as_peptide_component_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cysteine_as_peptide_component_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def cysteine_as_peptide_component_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def cysteine_as_peptide_component_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def cysteine_as_peptide_component_protocol : IGProtocol cysteine_as_peptide_component_initial cysteine_as_peptide_component_s9 :=
  .withGram Grammar.measure <|
  (.seq (.arrow cysteine_as_peptide_component_l0 cysteine_as_peptide_component_initial cysteine_as_peptide_component_s0) (.seq (.arrow cysteine_as_peptide_component_l1 cysteine_as_peptide_component_s0 cysteine_as_peptide_component_s1) (.seq (.arrow cysteine_as_peptide_component_l2 cysteine_as_peptide_component_s1 cysteine_as_peptide_component_s2) (.seq (.arrow cysteine_as_peptide_component_l3 cysteine_as_peptide_component_s2 cysteine_as_peptide_component_s3) (.seq (.prod (.arrow cysteine_as_peptide_component_l4 cysteine_as_peptide_component_s3 cysteine_as_peptide_component_s4) (.arrow cysteine_as_peptide_component_l5 cysteine_as_peptide_component_s3 cysteine_as_peptide_component_s5)) (.seq (.arrow cysteine_as_peptide_component_l6 (tensorProduct cysteine_as_peptide_component_s4 cysteine_as_peptide_component_s5) cysteine_as_peptide_component_s6) (.seq (.arrow cysteine_as_peptide_component_l7 cysteine_as_peptide_component_s6 cysteine_as_peptide_component_s7) (.seq (.arrow cysteine_as_peptide_component_l8 cysteine_as_peptide_component_s7 cysteine_as_peptide_component_s8) (.arrow cysteine_as_peptide_component_l9 cysteine_as_peptide_component_s8 cysteine_as_peptide_component_s9)))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def cysteine_as_peptide_component_true_arm : IGProtocol cysteine_as_peptide_component_initial cysteine_as_peptide_component_s9 :=
  (cysteine_as_peptide_component_protocol).restrictToEVALT

-- false arm
noncomputable def cysteine_as_peptide_component_false_arm : IGProtocol cysteine_as_peptide_component_initial cysteine_as_peptide_component_s9 :=
  (cysteine_as_peptide_component_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def cysteine_as_peptide_component_tier_ground : OuroboricityTier := TierFunctor.obj cysteine_as_peptide_component_initial
def cysteine_as_peptide_component_tier : OuroboricityTier := TierFunctor.obj cysteine_as_peptide_component_s9
#eval cysteine_as_peptide_component_tier_ground  -- tier of the ground (pre-transformation)
#eval cysteine_as_peptide_component_tier  -- the Grammar's tuple-tier verdict

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem cysteine_as_peptide_component_frobenius :
    igFrobeniusAlg.mul cysteine_as_peptide_component_initial cysteine_as_peptide_component_initial = cysteine_as_peptide_component_initial :=
  igFrobAlg_self_fusion cysteine_as_peptide_component_initial

theorem cysteine_as_peptide_component_protocol_depth :
    cysteine_as_peptide_component_protocol.depth = 9 := by rfl

end Imscribing