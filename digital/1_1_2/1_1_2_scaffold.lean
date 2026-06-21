-- IGProtocol scaffold: VINIT → AFWD → IMSCRIB → FSPLIT → EVALT → AFWD → EVALT → ENGAGR → FFUSE → CLINK → IMSCRIB → EVALT → IFIX → TANCH
-- Class: 1+1=2
-- Fingerprint: sig=(7,2,4,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=14
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑠  | forward morphism — bidirectional arrow
--   [2] IMSCRIB   gram   := 𐑠               𐑾 → 𐑚  | identity — self-imscription
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [9] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [10] IMSCRIB   gram   := 𐑠               𐑱 → ⊙  | identity — self-imscription
--   [11] EVALT     crit   := ⊙               𐑠 → 𐑭  | evaluate-true — criticality gate open
--   [12] IFIX      prot   := 𐑭               ⊙ → 𐑡  | irreversible fixation — winding number
--   [13] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def 1_1_2_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Initialize the numeric vacuum at 0.)
  (.arrow 𐑾 𐑼 𐑠)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Apply successor function to reach the first unit (1).)
  (.arrow 𐑠 𐑾 𐑚)  -- [2] IMSCRIB | gram := 𐑠 | identity — self-imscription (Identify and stabilize the first unit as a distinct entity.)
  -- FSPLIT [3] (gran := 𐑚) (Branch the operational intent into two parallel unit requirements.) / FFUSE [8] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (4 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Confirm the first branch contains a valid unit (1).)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [5] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Apply successor function on the second branch to generate the second unit (1).)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [6] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Confirm the second branch contains a valid unit (1).)
        (.arrow 𐑳 𐑚 𐑙)  -- [7] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Hold both units in the additive workspace (1+1) without yet collapsing to a sum.)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [8]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [8] FFUSE | stoi := 𐑙 (Perform the addition, merging the two units into a single result.)
  (.arrow 𐑱 𐑙 𐑠)  -- [9] CLINK | fid := 𐑱 | composition — regime coherence (Compose the result of the fusion with the equality operator.)
  (.arrow 𐑠 𐑱 ⊙)  -- [10] IMSCRIB | gram := 𐑠 | identity — self-imscription (Recognize the resulting value as the successor of the successor of zero.)
  (.arrow ⊙ 𐑠 𐑭)  -- [11] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Verify that the calculated sum (2) matches the terminal target (2).)
  (.arrow 𐑭 ⊙ 𐑡)  -- [12] IFIX | prot := 𐑭 | irreversible fixation — winding number (Record the identity 1+1=2 into the permanent mathematical record.)
  (.arrow 𐑡 𐑭 𐑼)  -- [13] TANCH | top := 𐑡 | terminal object — connectivity boundary (Close the operation within the boundary of arithmetic law.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def 1_1_2_true_arm : IGProtocol 𐑼 𐑡 :=
  (1_1_2_protocol).restrictToEVALT

-- ── Verification theorems ───────────────────────────────────────────────────

theorem 1_1_2_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
