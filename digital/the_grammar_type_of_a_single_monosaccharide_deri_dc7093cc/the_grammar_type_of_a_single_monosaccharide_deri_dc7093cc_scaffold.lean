-- IGProtocol scaffold: ⊢ → ≻ → ⊣ → ⊙ → ∈ → ⊤ → ⊥ → ⊞ → ∋ → ⋈ → ⊡ → ≺ → ⊙ → ⊣
-- Class: The grammar type of a single monosaccharide, derived from the functional groups its ring carries rather than assigned. Report the type of each mammalian N-glycan sugar and which functional group forces each mark.
-- Fingerprint: sig=(8,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=14
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(4, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] ≻      rel    := 𐑾               𐑼 → 𐑡  | forward morphism — bidirectional arrow
--   [2] ⊣     top    := 𐑡               𐑾 → 𐑠  | terminal object — connectivity boundary
--   [3] ⊙   gram   := 𐑠               𐑡 → 𐑚  | identity — self-imscription
--   [4] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [8] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [9] ⋈     fid    := 𐑱               𐑙 → 𐑭  | composition — regime coherence
--   [10] ⊡      prot   := 𐑭               𐑱 → 𐑗  | irreversible fixation — winding number
--   [11] ≺      pol    := 𐑗               𐑭 → 𐑠  | reverse morphism — parity flip
--   [12] ⊙   gram   := 𐑠               𐑗 → 𐑡  | identity — self-imscription
--   [13] ⊣     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_grammar_type_of_a_single_454765_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_grammar_type_of_a_single_454765_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_grammar_type_of_a_single_454765_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_grammar_type_of_a_single_454765_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_grammar_type_of_a_single_454765_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_grammar_type_of_a_single_454765_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_grammar_type_of_a_single_454765_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_grammar_type_of_a_single_454765_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_type_of_a_single_454765_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_grammar_type_of_a_single_454765_protocol : IGProtocol the_grammar_type_of_a_single_454765_s0 the_grammar_type_of_a_single_454765_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_grammar_type_of_a_single_454765_s8 the_grammar_type_of_a_single_454765_s8 = the_grammar_type_of_a_single_454765_s8 (idempotent)
  (.seq (.arrow the_grammar_type_of_a_single_454765_l0 the_grammar_type_of_a_single_454765_s0 the_grammar_type_of_a_single_454765_s1) (.seq (.arrow the_grammar_type_of_a_single_454765_l1 the_grammar_type_of_a_single_454765_s1 the_grammar_type_of_a_single_454765_s2) (.seq (.arrow the_grammar_type_of_a_single_454765_l2 the_grammar_type_of_a_single_454765_s2 the_grammar_type_of_a_single_454765_s3) (.seq (.arrow the_grammar_type_of_a_single_454765_l3 the_grammar_type_of_a_single_454765_s3 the_grammar_type_of_a_single_454765_s4) (.seq (.prod (.arrow the_grammar_type_of_a_single_454765_l4 the_grammar_type_of_a_single_454765_s4 the_grammar_type_of_a_single_454765_s8) (.arrow the_grammar_type_of_a_single_454765_l4 the_grammar_type_of_a_single_454765_s4 the_grammar_type_of_a_single_454765_s8)) (.seq (.arrow the_grammar_type_of_a_single_454765_l8 the_grammar_type_of_a_single_454765_s8 the_grammar_type_of_a_single_454765_s8) (.seq (.arrow the_grammar_type_of_a_single_454765_l8 the_grammar_type_of_a_single_454765_s8 the_grammar_type_of_a_single_454765_s9) (.seq (.arrow the_grammar_type_of_a_single_454765_l9 the_grammar_type_of_a_single_454765_s9 the_grammar_type_of_a_single_454765_s10) (.seq (.arrow the_grammar_type_of_a_single_454765_l10 the_grammar_type_of_a_single_454765_s10 the_grammar_type_of_a_single_454765_s11) (.seq (.arrow the_grammar_type_of_a_single_454765_l11 the_grammar_type_of_a_single_454765_s11 the_grammar_type_of_a_single_454765_s12) (.arrow the_grammar_type_of_a_single_454765_l12 the_grammar_type_of_a_single_454765_s12 the_grammar_type_of_a_single_454765_s13)))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_grammar_type_of_a_single_454765_true_arm : IGProtocol the_grammar_type_of_a_single_454765_s0 the_grammar_type_of_a_single_454765_s13 :=
  (the_grammar_type_of_a_single_454765_protocol).restrictToEVALT

-- false arm
noncomputable def the_grammar_type_of_a_single_454765_false_arm : IGProtocol the_grammar_type_of_a_single_454765_s0 the_grammar_type_of_a_single_454765_s13 :=
  (the_grammar_type_of_a_single_454765_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def the_grammar_type_of_a_single_454765_tier_ground : OuroboricityTier := TierFunctor.obj the_grammar_type_of_a_single_454765_s0
def the_grammar_type_of_a_single_454765_tier : OuroboricityTier := TierFunctor.obj the_grammar_type_of_a_single_454765_s13
#eval the_grammar_type_of_a_single_454765_tier_ground  -- tier of the ground (pre-transformation)
#eval the_grammar_type_of_a_single_454765_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_grammar_type_of_a_single_454765_frobenius :
    igFrobeniusAlg.mul the_grammar_type_of_a_single_454765_s0 the_grammar_type_of_a_single_454765_s0 = the_grammar_type_of_a_single_454765_s0 :=
  igFrobAlg_self_fusion the_grammar_type_of_a_single_454765_s0
