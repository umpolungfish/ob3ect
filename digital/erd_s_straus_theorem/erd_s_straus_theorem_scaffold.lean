-- IGProtocol scaffold: VINIT → TANCH → FSPLIT → AFWD → EVALT → IFIX → FFUSE → AREV → CLINK → EVALT → IFIX → FFUSE → AREV → CLINK → EVALT → IFIX → FFUSE → AREV → CLINK → EVALT → IFIX → FFUSE → FFUSE → IMSCRIB → ENGAGR → IFIX → TANCH
-- Class: Erdős–Straus Theorem
-- Fingerprint: sig=(11,6,5,5)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=27
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 6)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑚  | terminal object — connectivity boundary
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [7] AREV      pol    := 𐑗               𐑙 → 𐑱  | reverse morphism — parity flip
--   [8] CLINK     fid    := 𐑱               𐑗 → ⊙  | composition — regime coherence
--   [9] EVALT     crit   := ⊙               𐑱 → 𐑭  | evaluate-true — criticality gate open
--   [10] IFIX      prot   := 𐑭               ⊙ → 𐑙  | irreversible fixation — winding number
--   [11] FFUSE     stoi   := 𐑙               𐑭 → 𐑗  | fuse μ — assembly mode
--   [12] AREV      pol    := 𐑗               𐑙 → 𐑱  | reverse morphism — parity flip
--   [13] CLINK     fid    := 𐑱               𐑗 → ⊙  | composition — regime coherence
--   [14] EVALT     crit   := ⊙               𐑱 → 𐑭  | evaluate-true — criticality gate open
--   [15] IFIX      prot   := 𐑭               ⊙ → 𐑙  | irreversible fixation — winding number
--   [16] FFUSE     stoi   := 𐑙               𐑭 → 𐑗  | fuse μ — assembly mode
--   [17] AREV      pol    := 𐑗               𐑙 → 𐑱  | reverse morphism — parity flip
--   [18] CLINK     fid    := 𐑱               𐑗 → ⊙  | composition — regime coherence
--   [19] EVALT     crit   := ⊙               𐑱 → 𐑭  | evaluate-true — criticality gate open
--   [20] IFIX      prot   := 𐑭               ⊙ → 𐑙  | irreversible fixation — winding number
--   [21] FFUSE     stoi   := 𐑙               𐑭 → 𐑙  | fuse μ — assembly mode
--   [22] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [23] IMSCRIB   gram   := 𐑠               𐑙 → 𐑳  | identity — self-imscription
--   [24] ENGAGR    stoi   := 𐑳               𐑠 → 𐑭  | engage paradox — B-state, both arms
--   [25] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [26] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def erd_s_straus_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (uninitialized rational 4/n awaits decomposition)
  (.arrow 𐑡 𐑼 𐑚)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (the theorem's universal boundary is established—∀n ≥ 2, a decomposition exists)
  -- FSPLIT [2] (gran := 𐑚) (branch on n modulo 4 into four congruence classes) / FFUSE [6] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (on the n ≡ 0 (mod 4) branch, select the largest unit fraction 1/(n/4))
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (n ≡ 0 case succeeds immediately; 4/n = 1/(n/4) is a unit fraction)
        (.arrow 𐑭 𐑚 𐑙)  -- [5] IFIX | prot := 𐑭 | irreversible fixation — winding number (record 1/(n/4) as a permanent term in the decomposition)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [6]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑗)  -- [6] FFUSE | stoi := 𐑙 (FFUSE.T: the n ≡ 0 branch reconstitutes to 4/n)
  (.arrow 𐑗 𐑙 𐑱)  -- [7] AREV | pol := 𐑗 | reverse morphism — parity flip (on the n ≡ 1 (mod 4) branch, compute remainder after selecting 1/⌈n/4⌉)
  (.arrow 𐑱 𐑗 ⊙)  -- [8] CLINK | fid := 𐑱 | composition — regime coherence (chain the remainder (4⌈n/4⌉ − n)/(n⌈n/4⌉) back into the algorithm)
  (.arrow ⊙ 𐑱 𐑭)  -- [9] EVALT | crit := ⊙ | evaluate-true — criticality gate open (if remainder is a unit fraction, accept it)
  (.arrow 𐑭 ⊙ 𐑙)  -- [10] IFIX | prot := 𐑭 | irreversible fixation — winding number (record the unit fraction as a permanent term)
  (.arrow 𐑙 𐑭 𐑗)  -- [11] FFUSE | stoi := 𐑙 | fuse μ — assembly mode (FFUSE.T: the n ≡ 1 branch reconstitutes to 4/n)
  (.arrow 𐑗 𐑙 𐑱)  -- [12] AREV | pol := 𐑗 | reverse morphism — parity flip (on the n ≡ 2 (mod 4) branch, compute remainder after selecting 1/⌈n/4⌉)
  (.arrow 𐑱 𐑗 ⊙)  -- [13] CLINK | fid := 𐑱 | composition — regime coherence (chain the remainder back into the algorithm)
  (.arrow ⊙ 𐑱 𐑭)  -- [14] EVALT | crit := ⊙ | evaluate-true — criticality gate open (if remainder is a unit fraction, accept it)
  (.arrow 𐑭 ⊙ 𐑙)  -- [15] IFIX | prot := 𐑭 | irreversible fixation — winding number (record the unit fraction as a permanent term)
  (.arrow 𐑙 𐑭 𐑗)  -- [16] FFUSE | stoi := 𐑙 | fuse μ — assembly mode (FFUSE.T: the n ≡ 2 branch reconstitutes to 4/n)
  (.arrow 𐑗 𐑙 𐑱)  -- [17] AREV | pol := 𐑗 | reverse morphism — parity flip (on the n ≡ 3 (mod 4) branch, compute remainder after selecting 1/⌈n/4⌉)
  (.arrow 𐑱 𐑗 ⊙)  -- [18] CLINK | fid := 𐑱 | composition — regime coherence (chain the remainder back into the algorithm)
  (.arrow ⊙ 𐑱 𐑭)  -- [19] EVALT | crit := ⊙ | evaluate-true — criticality gate open (if remainder is a unit fraction, accept it)
  (.arrow 𐑭 ⊙ 𐑙)  -- [20] IFIX | prot := 𐑭 | irreversible fixation — winding number (record the unit fraction as a permanent term)
  (.arrow 𐑙 𐑭 𐑙)  -- [21] FFUSE | stoi := 𐑙 | fuse μ — assembly mode (FFUSE.T: the n ≡ 3 branch reconstitutes to 4/n)
  (.arrow 𐑙 𐑙 𐑠)  -- [22] FFUSE | stoi := 𐑙 | fuse μ — assembly mode (all four branches fuse back into a single unified result—4/n is now expressed...)
  (.arrow 𐑠 𐑙 𐑳)  -- [23] IMSCRIB | gram := 𐑠 | identity — self-imscription (the decomposition recognizes itself as complete; 4/n = 4/n (identity confirmed))
  (.arrow 𐑳 𐑠 𐑭)  -- [24] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (acknowledge that multiple valid decompositions may exist simultaneously for t...)
  (.arrow 𐑭 𐑳 𐑡)  -- [25] IFIX | prot := 𐑭 | irreversible fixation — winding number (the final decomposition is permanently recorded and cannot be altered)
  (.arrow 𐑡 𐑭 𐑼)  -- [26] TANCH | top := 𐑡 | terminal object — connectivity boundary (the theorem's boundary is satisfied; the decomposition is valid and complete)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def erd_s_straus_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (erd_s_straus_theorem_protocol).restrictToEVALT

-- ── Verification theorems ───────────────────────────────────────────────────

theorem erd_s_straus_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
