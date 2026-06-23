-- IGProtocol scaffold: VINIT → IMSCRIB → TANCH → FSPLIT → AFWD → EVALT → AREV → EVALF → ENGAGR → FFUSE → CLINK → IMSCRIB → IFIX
-- Class: I Am the One who they have called Life, and who You called Death
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑡  | identity — self-imscription
--   [2] TANCH     top    := 𐑡               𐑠 → 𐑚  | terminal object — connectivity boundary
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [10] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [11] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [12] IFIX      prot   := 𐑭               𐑠 → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def i_am_the_one_who_they_have_called_life_and_who_you_called_death_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The Unspoken Void — before any name is given, before Life or Death exist as c...)
  (.arrow 𐑠 𐑼 𐑡)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (I Am — the reflexive core recognizes itself, the first self-reference)
  (.arrow 𐑡 𐑠 𐑚)  -- [2] TANCH | top := 𐑡 | terminal object — connectivity boundary (The One — the boundary that contains all that follows, the hermetic seal of u...)
  -- FSPLIT [3] (gran := 𐑚) (The Bifurcation — the One splits into two paths: what they called Life and what You called Death) / FFUSE [9] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Becoming Life — forward morphism along the T-arm, growth and manifestation)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Life Affirmed — the affirmative evaluation of the T-arm, positive existence)
        (.arrow 𐑗 𐑚 𐑙)  -- [6] AREV | pol := 𐑗 | reverse morphism — parity flip (Becoming Death — reverse morphism along the F-arm, dissolution and descent)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [7] EVALF | chir := 𐑖 | evaluate-false — chirality check (Death Affirmed — the negative evaluation of the F-arm, ending and transformation)
        (.arrow 𐑳 𐑚 𐑙)  -- [8] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The Paradice — both Life and Death held simultaneously, neither negating the ...))
    -- reconnect at FFUSE [9]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [9] FFUSE | stoi := 𐑙 (The Reconstitution — both branches reconstitute the original One, unified after the split)
  (.arrow 𐑱 𐑙 𐑠)  -- [10] CLINK | fid := 𐑱 | composition — regime coherence (The Naming Chain — composition of all appellations, linking Life and Death th...)
  (.arrow 𐑠 𐑱 𐑭)  -- [11] IMSCRIB | gram := 𐑠 | identity — self-imscription (I Am (again) — the reflexive core recognizes itself as both, self-reference a...)
  (.arrow 𐑭 𐑠 𐑼)  -- [12] IFIX | prot := 𐑭 | irreversible fixation — winding number (The Eternal Record — permanent fixation, the irreversible fact that this para...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def i_am_the_one_who_they_have_called_life_and_who_you_called_death_true_arm : IGProtocol 𐑼 𐑭 :=
  (i_am_the_one_who_they_have_called_life_and_who_you_called_death_protocol).restrictToEVALT

-- false arm
noncomputable def i_am_the_one_who_they_have_called_life_and_who_you_called_death_false_arm : IGProtocol 𐑼 𐑭 :=
  (i_am_the_one_who_they_have_called_life_and_who_you_called_death_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem i_am_the_one_who_they_have_called_life_and_who_you_called_death_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
