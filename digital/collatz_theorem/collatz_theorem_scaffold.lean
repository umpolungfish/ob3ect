-- IGProtocol scaffold: VINIT → IFIX → IMSCRIB → FSPLIT → EVALT → AREV → EVALF → AFWD → FFUSE → IFIX → CLINK → ENGAGR → IMSCRIB → FSPLIT → AREV → AFWD → FFUSE → IFIX → TANCH
-- Class: Collatz Theorem
-- Fingerprint: sig=(9,4,3,3)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=19
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 8), (13, 16)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑭  | initial object — ground of distinction
--   [1] IFIX      prot   := 𐑭               𐑼 → 𐑠  | irreversible fixation — winding number
--   [2] IMSCRIB   gram   := 𐑠               𐑭 → 𐑚  | identity — self-imscription
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [9] IFIX      prot   := 𐑭               𐑙 → 𐑱  | irreversible fixation — winding number
--   [10] CLINK     fid    := 𐑱               𐑭 → 𐑳  | composition — regime coherence
--   [11] ENGAGR    stoi   := 𐑳               𐑱 → 𐑠  | engage paradox — B-state, both arms
--   [12] IMSCRIB   gram   := 𐑠               𐑳 → 𐑚  | identity — self-imscription
--   [13] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [14] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [15] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [16] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [17] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [18] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def collatz_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑭)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Select initial positive integer n.)
  (.arrow 𐑭 𐑼 𐑠)  -- [1] IFIX | prot := 𐑭 | irreversible fixation — winding number (Record n in the trajectory log.)
  (.arrow 𐑠 𐑭 𐑚)  -- [2] IMSCRIB | gram := 𐑠 | identity — self-imscription (Check if n equals 1.)
  -- FSPLIT [3] (gran := 𐑚) (Evaluate n mod 2.) / FFUSE [8] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (If even, route to the damping arm.)
        (.arrow 𐑗 𐑚 𐑙)  -- [5] AREV | pol := 𐑗 | reverse morphism — parity flip (Apply n / 2.)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [6] EVALF | chir := 𐑖 | evaluate-false — chirality check (If odd, route to the amplification arm.)
        (.arrow 𐑾 𐑚 𐑙)  -- [7] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Apply 3n + 1.))
    -- reconnect at FFUSE [8]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [8] FFUSE | stoi := 𐑙 (Reconstitute the new integer n'.)
  (.arrow 𐑭 𐑙 𐑱)  -- [9] IFIX | prot := 𐑭 | irreversible fixation — winding number (Record n' in the trajectory log.)
  (.arrow 𐑱 𐑭 𐑳)  -- [10] CLINK | fid := 𐑱 | composition — regime coherence (Compose the previous result with the next iteration.)
  (.arrow 𐑳 𐑱 𐑠)  -- [11] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Hold the tension of the two-step memory (Markov order 2).)
  (.arrow 𐑠 𐑳 𐑚)  -- [12] IMSCRIB | gram := 𐑠 | identity — self-imscription (Self-referential check for the 1-4-2-1 cycle.)
  -- FSPLIT [13] (gran := 𐑚) (Evaluate parity of n'.) / FFUSE [16] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [14] AREV | pol := 𐑗 | reverse morphism — parity flip (Perform damping if even.)
        (.arrow 𐑾 𐑚 𐑙)  -- [15] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Perform amplification if odd.)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [16]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [16] FFUSE | stoi := 𐑙 (Reconstitute n''.)
  (.arrow 𐑭 𐑙 𐑡)  -- [17] IFIX | prot := 𐑭 | irreversible fixation — winding number (Permanently fix the state in the sequence.)
  (.arrow 𐑡 𐑭 𐑼)  -- [18] TANCH | top := 𐑡 | terminal object — connectivity boundary (Terminate process when n reaches the anchor 1.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def collatz_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (collatz_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def collatz_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (collatz_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem collatz_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
