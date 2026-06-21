-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → EVALT → AREV → FFUSE → CLINK → FSPLIT → EVALF → AFWD → FFUSE → ENGAGR → IFIX → CLINK → TANCH
-- Class: 0/1
-- Fingerprint: sig=(7,4,3,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=15
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 5), (7, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑚  | identity — self-imscription
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [6] CLINK     fid    := 𐑱               𐑙 → 𐑚  | composition — regime coherence
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [11] ENGAGR    stoi   := 𐑳               𐑙 → 𐑭  | engage paradox — B-state, both arms
--   [12] IFIX      prot   := 𐑭               𐑳 → 𐑱  | irreversible fixation — winding number
--   [13] CLINK     fid    := 𐑱               𐑭 → 𐑡  | composition — regime coherence
--   [14] TANCH     top    := 𐑡               𐑱 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def 0_1_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The uninitialized state of the number theory kernel.)
  (.arrow 𐑠 𐑼 𐑚)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (The integer recognizes its own value in the sequence.)
  -- FSPLIT [2] (gran := 𐑚) (The parity check forks the logic path.) / FFUSE [5] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The integer evaluates as even.)
        (.arrow 𐑗 𐑚 𐑙)  -- [4] AREV | pol := 𐑗 | reverse morphism — parity flip (The n/2 operation is applied to descend.)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [5]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [5] FFUSE | stoi := 𐑙 (The trajectory merges back to a single value.)
  (.arrow 𐑱 𐑙 𐑚)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (The result is composed with the next iteration.)
  -- FSPLIT [7] (gran := 𐑚) (The parity check forks again.) / FFUSE [10] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (0 nodes)
      (.refl 𐑙)  -- T-branch: empty arc (direct to FFUSE.T)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [8] EVALF | chir := 𐑖 | evaluate-false — chirality check (The integer evaluates as odd.)
        (.arrow 𐑾 𐑚 𐑙)  -- [9] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The 3n+1 operation is applied to amplify.))
    -- reconnect at FFUSE [10]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [10] FFUSE | stoi := 𐑙 (The trajectory merges back to a single value.)
  (.arrow 𐑳 𐑙 𐑭)  -- [11] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The system holds the tension between amplification and damping (Belnap Both).)
  (.arrow 𐑭 𐑳 𐑱)  -- [12] IFIX | prot := 𐑭 | irreversible fixation — winding number (The stopping time is permanently recorded in the kernel.)
  (.arrow 𐑱 𐑭 𐑡)  -- [13] CLINK | fid := 𐑱 | composition — regime coherence (Chaining iterations until the terminal cycle is reached.)
  (.arrow 𐑡 𐑱 𐑼)  -- [14] TANCH | top := 𐑡 | terminal object — connectivity boundary (The trajectory enters the 1-4-2-1 cycle, closing the system boundary.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def 0_1_true_arm : IGProtocol 𐑼 𐑡 :=
  (0_1_protocol).restrictToEVALT

-- false arm
noncomputable def 0_1_false_arm : IGProtocol 𐑼 𐑡 :=
  (0_1_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem 0_1_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
