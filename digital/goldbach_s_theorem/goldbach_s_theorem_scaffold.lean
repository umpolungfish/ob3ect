-- IGProtocol scaffold: VINIT → TANCH → AFWD → FSPLIT → AFWD → EVALT → IFIX → CLINK → IMSCRIB → AREV → EVALF → ENGAGR → FFUSE → CLINK → AFWD → FSPLIT → AFWD → EVALT → IFIX → CLINK → IMSCRIB → AREV → EVALF → ENGAGR → FFUSE → CLINK → AFWD → FSPLIT → AFWD → EVALT → IFIX → CLINK → IMSCRIB → AREV → EVALF → ENGAGR → FFUSE → CLINK → TANCH
-- Class: Goldbach's Theorem
-- Fingerprint: sig=(21,6,9,3)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=39
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 12), (15, 24), (27, 36)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑚  | forward morphism — bidirectional arrow
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [7] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [9] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [13] CLINK     fid    := 𐑱               𐑙 → 𐑾  | composition — regime coherence
--   [14] AFWD      rel    := 𐑾               𐑱 → 𐑚  | forward morphism — bidirectional arrow
--   [15] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [16] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [17] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [18] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [19] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [20] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [21] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [22] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [23] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [24] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [25] CLINK     fid    := 𐑱               𐑙 → 𐑾  | composition — regime coherence
--   [26] AFWD      rel    := 𐑾               𐑱 → 𐑚  | forward morphism — bidirectional arrow
--   [27] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [28] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [29] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [30] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [31] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [32] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [33] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [34] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [35] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [36] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [37] CLINK     fid    := 𐑱               𐑙 → 𐑡  | composition — regime coherence
--   [38] TANCH     top    := 𐑡               𐑱 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def goldbachs_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (genesis of the unproven conjecture; void state before any even number is exam...)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (anchor the boundary condition — every even n ≥ 4 must decompose into two primes)
  (.arrow 𐑾 𐑡 𐑚)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (begin forward enumeration of even numbers starting from 4)
  -- FSPLIT [3] (gran := 𐑚) (partition the current even number n into all possible pairs (a, b) where a + b = n) / FFUSE [12] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (6 nodes)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (for each pair (a, b), test whether both a and b are prime)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (if both a and b are prime, mark this decomposition as successful)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [6] IFIX | prot := 𐑭 | irreversible fixation — winding number (record the verified decomposition permanently (e.g., 4 = 2+2))
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [7] CLINK | fid := 𐑱 | composition — regime coherence (link this verified case to the chain of evidence)
      .seq
        (.arrow 𐑠 𐑚 𐑙)  -- [8] IMSCRIB | gram := 𐑠 | identity — self-imscription (recognize the decomposition as an instance of the identity n = p₁ + p₂)
        (.arrow 𐑗 𐑚 𐑙)  -- [9] AREV | pol := 𐑗 | reverse morphism — parity flip (if no prime pair found, reverse-trace through the factorization to understand...)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [10] EVALF | chir := 𐑖 | evaluate-false — chirality check (if all pairs fail the primality test, mark this as a potential counterexample)
        (.arrow 𐑳 𐑚 𐑙)  -- [11] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (if some pairs are prime and others are not, hold both states simultaneously (...))
    -- reconnect at FFUSE [12]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [12] FFUSE | stoi := 𐑙 (reconstitute n from the verified prime pair, confirming FFUSE(FSPLIT(n)) = n)
  (.arrow 𐑱 𐑙 𐑾)  -- [13] CLINK | fid := 𐑱 | composition — regime coherence (compose this result into the chain of all verified cases)
  (.arrow 𐑾 𐑱 𐑚)  -- [14] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (advance to the next even number)
  -- FSPLIT [15] (gran := 𐑚) (partition the next even number) / FFUSE [24] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (6 nodes)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [16] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (test all pairs for primality)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [17] EVALT | crit := ⊙ | evaluate-true — criticality gate open (record successful decompositions)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [18] IFIX | prot := 𐑭 | irreversible fixation — winding number (append to the permanent record)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [19] CLINK | fid := 𐑱 | composition — regime coherence (extend the chain)
      .seq
        (.arrow 𐑠 𐑚 𐑙)  -- [20] IMSCRIB | gram := 𐑠 | identity — self-imscription (each case recognizes itself as an instance of the conjecture)
        (.arrow 𐑗 𐑚 𐑙)  -- [21] AREV | pol := 𐑗 | reverse morphism — parity flip (trace back through failures to understand the structure)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [22] EVALF | chir := 𐑖 | evaluate-false — chirality check (mark any counterexample (none found to date))
        (.arrow 𐑳 𐑚 𐑙)  -- [23] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (hold undecidable states in paradice))
    -- reconnect at FFUSE [24]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [24] FFUSE | stoi := 𐑙 (reconstitute from prime pairs)
  (.arrow 𐑱 𐑙 𐑾)  -- [25] CLINK | fid := 𐑱 | composition — regime coherence (compose into the growing chain)
  (.arrow 𐑾 𐑱 𐑚)  -- [26] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (continue enumeration indefinitely)
  -- FSPLIT [27] (gran := 𐑚) (partition each new even number) / FFUSE [36] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (6 nodes)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [28] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (test primality of all pairs)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [29] EVALT | crit := ⊙ | evaluate-true — criticality gate open (record successes)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [30] IFIX | prot := 𐑭 | irreversible fixation — winding number (append irreversibly)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [31] CLINK | fid := 𐑱 | composition — regime coherence (extend the chain of evidence)
      .seq
        (.arrow 𐑠 𐑚 𐑙)  -- [32] IMSCRIB | gram := 𐑠 | identity — self-imscription (self-recognize each instance)
        (.arrow 𐑗 𐑚 𐑙)  -- [33] AREV | pol := 𐑗 | reverse morphism — parity flip (reverse-trace failures)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [34] EVALF | chir := 𐑖 | evaluate-false — chirality check (mark counterexamples (none found))
        (.arrow 𐑳 𐑚 𐑙)  -- [35] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (hold paradice states))
    -- reconnect at FFUSE [36]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [36] FFUSE | stoi := 𐑙 (reconstitute from prime pairs)
  (.arrow 𐑱 𐑙 𐑡)  -- [37] CLINK | fid := 𐑱 | composition — regime coherence (compose into the infinite chain)
  (.arrow 𐑡 𐑱 𐑼)  -- [38] TANCH | top := 𐑡 | terminal object — connectivity boundary (the boundary remains: every even n ≥ 4 must decompose into two primes)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def goldbachs_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (goldbachs_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def goldbachs_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (goldbachs_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem goldbachs_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
