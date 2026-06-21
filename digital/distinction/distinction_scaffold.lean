-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → IMSCRIB → IFIX → AREV → EVALF → ENGAGR → FFUSE → CLINK → TANCH
-- Class: Distinction
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [5] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [6] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [10] CLINK     fid    := 𐑱               𐑙 → 𐑡  | composition — regime coherence
--   [11] TANCH     top    := 𐑡               𐑱 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def distinction_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The primordial unmarked space is established.)
  (.arrow 𐑾 𐑼 𐑚)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (A boundary is drawn, severing the space.)
  -- FSPLIT [2] (gran := 𐑚) (The space bifurcates into two distinct domains.) / FFUSE [9] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (4 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The 'Inside' is identified as the primary value.)
      .seq
        (.arrow 𐑠 𐑚 𐑙)  -- [4] IMSCRIB | gram := 𐑠 | identity — self-imscription (The 'Inside' recognizes itself as the marked state.)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [5] IFIX | prot := 𐑭 | irreversible fixation — winding number (The first mark is recorded as a permanent distinction.)
        (.arrow 𐑗 𐑚 𐑙)  -- [6] AREV | pol := 𐑗 | reverse morphism — parity flip (The gaze turns toward the 'Outside'.)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [7] EVALF | chir := 𐑖 | evaluate-false — chirality check (The 'Outside' is identified as the void/background.)
        (.arrow 𐑳 𐑚 𐑙)  -- [8] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The observer holds both the inside and outside in a single view of the boundary.))
    -- reconnect at FFUSE [9]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [9] FFUSE | stoi := 𐑙 (The distinction is collapsed, reuniting the sides.)
  (.arrow 𐑱 𐑙 𐑡)  -- [10] CLINK | fid := 𐑱 | composition — regime coherence (The result of the collapse is composed with the original space.)
  (.arrow 𐑡 𐑱 𐑼)  -- [11] TANCH | top := 𐑡 | terminal object — connectivity boundary (The system is closed within the Law of Crossing.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def distinction_true_arm : IGProtocol 𐑼 𐑡 :=
  (distinction_protocol).restrictToEVALT

-- false arm
noncomputable def distinction_false_arm : IGProtocol 𐑼 𐑡 :=
  (distinction_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem distinction_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
