-- IGProtocol scaffold: ⊢ → ⊣ → ≻ → ⋈ → ⊙ → ≻ → ⊤ → ⊥ → ∈ → ⊞ → ≻ → ≺ → ⋈ → ∋ → ◻ → ≺ → ⋈ → ≺ → ⊣ → ⊙ → ⊢
-- Class: x86_instruction_set
-- Fingerprint: sig=(15,2,3,1)
--   self_ref=True | frobenius_order=1
--   dialetheia_complete=True | period=21
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(8, 13)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] ⊣     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] ≻      rel    := 𐑾               𐑡 → 𐑱  | forward morphism — bidirectional arrow
--   [3] ⋈     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [4] ⊙   gram   := 𐑠               𐑱 → 𐑾  | identity — self-imscription
--   [5] ≻      rel    := 𐑾               𐑠 → ⊙  | forward morphism — bidirectional arrow
--   [6] ⊤     crit   := ⊙               𐑾 → 𐑖  | evaluate-true — criticality gate open
--   [7] ⊥     chir   := 𐑖               ⊙ → 𐑚  | evaluate-false — chirality check
--   [8] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [10] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [11] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [12] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [13] ∋     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [14] ◻      prot   := 𐑭               𐑙 → 𐑗  | irreversible fixation — winding number
--   [15] ≺      pol    := 𐑗               𐑭 → 𐑱  | reverse morphism — parity flip
--   [16] ⋈     fid    := 𐑱               𐑗 → 𐑗  | composition — regime coherence
--   [17] ≺      pol    := 𐑗               𐑱 → 𐑡  | reverse morphism — parity flip
--   [18] ⊣     top    := 𐑡               𐑗 → 𐑠  | terminal object — connectivity boundary
--   [19] ⊙   gram   := 𐑠               𐑡 → 𐑼  | identity — self-imscription
--   [20] ⊢     dim    := 𐑼               𐑠 → 𐑼  | initial object — ground of distinction

-- ── Back-propagation edges (self-referential loop) ──────────────────────
--   ⊙ positions: [4, 19]
--   ◻    positions: [14]
--   Back-prop: ⊙→◻ (LinFix) — igProtoCopy_isDagger axiom applies
--   Weighted: ⋈→⊙ — feeds next winding via .seq after .prod

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def x86_instruction_set_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def x86_instruction_set_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def x86_instruction_set_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def x86_instruction_set_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def x86_instruction_set_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def x86_instruction_set_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def x86_instruction_set_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def x86_instruction_set_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def x86_instruction_set_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def x86_instruction_set_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def x86_instruction_set_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def x86_instruction_set_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def x86_instruction_set_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def x86_instruction_set_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def x86_instruction_set_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def x86_instruction_set_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def x86_instruction_set_l10 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def x86_instruction_set_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def x86_instruction_set_l20 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def x86_instruction_set_protocol : IGProtocol x86_instruction_set_s0 x86_instruction_set_s20 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct x86_instruction_set_s13 x86_instruction_set_s13 = x86_instruction_set_s13 (idempotent)
  (.seq (.arrow x86_instruction_set_l0 x86_instruction_set_s0 x86_instruction_set_s1) (.seq (.arrow x86_instruction_set_l1 x86_instruction_set_s1 x86_instruction_set_s2) (.seq (.arrow x86_instruction_set_l2 x86_instruction_set_s2 x86_instruction_set_s3) (.seq (.arrow x86_instruction_set_l3 x86_instruction_set_s3 x86_instruction_set_s4) (.seq (.arrow x86_instruction_set_l4 x86_instruction_set_s4 x86_instruction_set_s5) (.seq (.arrow x86_instruction_set_l5 x86_instruction_set_s5 x86_instruction_set_s6) (.seq (.arrow x86_instruction_set_l6 x86_instruction_set_s6 x86_instruction_set_s7) (.seq (.arrow x86_instruction_set_l7 x86_instruction_set_s7 x86_instruction_set_s8) (.seq (.prod (.arrow x86_instruction_set_l8 x86_instruction_set_s8 x86_instruction_set_s13) (.arrow x86_instruction_set_l8 x86_instruction_set_s8 x86_instruction_set_s13)) (.seq (.arrow x86_instruction_set_l13 x86_instruction_set_s13 x86_instruction_set_s13) (.seq (.arrow x86_instruction_set_l13 x86_instruction_set_s13 x86_instruction_set_s14) (.seq (.arrow x86_instruction_set_l14 x86_instruction_set_s14 x86_instruction_set_s15) (.seq (.arrow x86_instruction_set_l15 x86_instruction_set_s15 x86_instruction_set_s16) (.seq (.arrow x86_instruction_set_l16 x86_instruction_set_s16 x86_instruction_set_s17) (.seq (.arrow x86_instruction_set_l17 x86_instruction_set_s17 x86_instruction_set_s18) (.seq (.arrow x86_instruction_set_l18 x86_instruction_set_s18 x86_instruction_set_s19) (.arrow x86_instruction_set_l19 x86_instruction_set_s19 x86_instruction_set_s20)))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def x86_instruction_set_true_arm : IGProtocol x86_instruction_set_s0 x86_instruction_set_s20 :=
  (x86_instruction_set_protocol).restrictToEVALT

-- false arm
noncomputable def x86_instruction_set_false_arm : IGProtocol x86_instruction_set_s0 x86_instruction_set_s20 :=
  (x86_instruction_set_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def x86_instruction_set_tier_ground : OuroboricityTier := TierFunctor.obj x86_instruction_set_s0
def x86_instruction_set_tier : OuroboricityTier := TierFunctor.obj x86_instruction_set_s20
#eval x86_instruction_set_tier_ground  -- tier of the ground (pre-transformation)
#eval x86_instruction_set_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem x86_instruction_set_frobenius :
    igFrobeniusAlg.mul x86_instruction_set_s0 x86_instruction_set_s0 = x86_instruction_set_s0 :=
  igFrobAlg_self_fusion x86_instruction_set_s0

-- Self-reference: Δ is a dagger and μ = Δ†
theorem x86_instruction_set_self_ref :
    (igProtoDelta x86_instruction_set_s0 (by decide)).isDagger = true ∧
    igProtoMu_depth (paralogical_dagger (by decide)) = 1 := by
  constructor
  · exact igProtoCopy_isDagger
  · exact igProtoMu_depth

-- Loop closure: period=21, depth=1
theorem x86_instruction_set_loop_closure :
    ∃ (loop : IGProtocol x86_instruction_set_s0 x86_instruction_set_s20),
      loop = x86_instruction_set_protocol ∧
      loop.period = 21 ∧ loop.depth = 1 := by
  exact ⟨_, rfl, by decide, by decide⟩

-- igProtoCopy_isDagger licenses ⊙→◻ burn
-- ⋈→⊙ weighted edge: .seq continuation
