-- IGProtocol scaffold: VINIT → IMSCRIB → CLINK → FSPLIT → EVALT → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → FFUSE → IMSCRIB → AREV → EVALT → IFIX → TANCH
-- Class: 3x5=15
-- Fingerprint: sig=(15,2,2,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=20
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 14)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑱  | identity — self-imscription
--   [2] CLINK     fid    := 𐑱               𐑠 → 𐑚  | composition — regime coherence
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [8] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [9] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [10] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [11] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [12] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [13] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [14] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [15] IMSCRIB   gram   := 𐑠               𐑙 → 𐑗  | identity — self-imscription
--   [16] AREV      pol    := 𐑗               𐑠 → ⊙  | reverse morphism — parity flip
--   [17] EVALT     crit   := ⊙               𐑗 → 𐑭  | evaluate-true — criticality gate open
--   [18] IFIX      prot   := 𐑭               ⊙ → 𐑡  | irreversible fixation — winding number
--   [19] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def 3x5_15_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Initialize the numeric workspace.)
  (.arrow 𐑠 𐑼 𐑱)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (Identify the base unit (1) to build the multiplicand.)
  (.arrow 𐑱 𐑠 𐑚)  -- [2] CLINK | fid := 𐑱 | composition — regime coherence (Compose units to form the multiplicand (3).)
  -- FSPLIT [3] (gran := 𐑚) (Branch the execution logic into the multiplier count (5 iterations).) / FFUSE [14] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (10 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Enter the truth-arm where addition is performed.)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [5] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Add 3 to the accumulator.)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (Chain the next addition.)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [7] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Add 3 to the accumulator (Total 6).)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [8] CLINK | fid := 𐑱 | composition — regime coherence (Chain the next addition.)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [9] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Add 3 to the accumulator (Total 9).)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [10] CLINK | fid := 𐑱 | composition — regime coherence (Chain the next addition.)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [11] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Add 3 to the accumulator (Total 12).)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [12] CLINK | fid := 𐑱 | composition — regime coherence (Chain the next addition.)
        (.arrow 𐑾 𐑚 𐑙)  -- [13] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Add 3 to the accumulator (Total 15).)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [14]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [14] FFUSE | stoi := 𐑙 (Recombine the iterative branches into a single result.)
  (.arrow 𐑠 𐑙 𐑗)  -- [15] IMSCRIB | gram := 𐑠 | identity — self-imscription (Self-recognition of the result as the product.)
  (.arrow 𐑗 𐑠 ⊙)  -- [16] AREV | pol := 𐑗 | reverse morphism — parity flip (Verify by dividing 15 by 5 to return to 3.)
  (.arrow ⊙ 𐑗 𐑭)  -- [17] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Confirm the result matches the terminal anchor.)
  (.arrow 𐑭 ⊙ 𐑡)  -- [18] IFIX | prot := 𐑭 | irreversible fixation — winding number (Permanently record the result 15.)
  (.arrow 𐑡 𐑭 𐑼)  -- [19] TANCH | top := 𐑡 | terminal object — connectivity boundary (Close the system at the product 15.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def 3x5_15_true_arm : IGProtocol 𐑼 𐑡 :=
  (3x5_15_protocol).restrictToEVALT

-- ── Verification theorems ───────────────────────────────────────────────────

theorem 3x5_15_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
