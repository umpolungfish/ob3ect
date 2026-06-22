-- IGProtocol scaffold: VINIT → TANCH → IMSCRIB → AFWD → FSPLIT → EVALT → CLINK → IFIX → AREV → EVALF → CLINK → IMSCRIB → FSPLIT → ENGAGR → FFUSE → IFIX → TANCH
-- Class: No-Three-in-Line Theorem
-- Fingerprint: sig=(9,3,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=17
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(12, 14)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑠  | terminal object — connectivity boundary
--   [2] IMSCRIB   gram   := 𐑠               𐑡 → 𐑾  | identity — self-imscription
--   [3] AFWD      rel    := 𐑾               𐑠 → 𐑚  | forward morphism — bidirectional arrow
--   [4] FSPLIT    gran   := 𐑚               𐑾 → ⊙  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑱  | evaluate-true — criticality gate open
--   [6] CLINK     fid    := 𐑱               ⊙ → 𐑭  | composition — regime coherence
--   [7] IFIX      prot   := 𐑭               𐑱 → 𐑗  | irreversible fixation — winding number
--   [8] AREV      pol    := 𐑗               𐑭 → 𐑖  | reverse morphism — parity flip
--   [9] EVALF     chir   := 𐑖               𐑗 → 𐑱  | evaluate-false — chirality check
--   [10] CLINK     fid    := 𐑱               𐑖 → 𐑠  | composition — regime coherence
--   [11] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [12] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [13] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [14] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [15] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [16] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def no_three_in_line_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (initialize empty grid; no points placed, no collinearity constraints active)
  (.arrow 𐑡 𐑼 𐑠)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (establish the boundary of the system; the maximal valid configuration that ca...)
  (.arrow 𐑠 𐑡 𐑾)  -- [2] IMSCRIB | gram := 𐑠 | identity — self-imscription (the configuration recognizes itself as valid if and only if no three of its p...)
  (.arrow 𐑾 𐑠 𐑚)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (forward morphism; attempt to add a new point to the current configuration)
  (.arrow 𐑚 𐑾 ⊙)  -- [4] FSPLIT | gran := 𐑚 | split δ — range decomposition (branch on collinearity test; split the (configuration, candidate-point) pair ...)
  (.arrow ⊙ 𐑚 𐑱)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (true branch; the candidate point does not form a line with any existing pair ...)
  (.arrow 𐑱 ⊙ 𐑭)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (compose the point-addition step; chain this decision into the configuration h...)
  (.arrow 𐑭 𐑱 𐑗)  -- [7] IFIX | prot := 𐑭 | irreversible fixation — winding number (lock the updated configuration as a permanent record; append to the log of va...)
  (.arrow 𐑗 𐑭 𐑖)  -- [8] AREV | pol := 𐑗 | reverse morphism — parity flip (reverse morphism; if needed, remove a previously added point to backtrack and...)
  (.arrow 𐑖 𐑗 𐑱)  -- [9] EVALF | chir := 𐑖 | evaluate-false — chirality check (false branch; the candidate point would form a collinear triple with an exist...)
  (.arrow 𐑱 𐑖 𐑠)  -- [10] CLINK | fid := 𐑱 | composition — regime coherence (compose the rejection decision; record that this point cannot be added to the...)
  (.arrow 𐑠 𐑱 𐑚)  -- [11] IMSCRIB | gram := 𐑠 | identity — self-imscription (re-verify the configuration identity; confirm that the current state still sa...)
  -- FSPLIT [12] (gran := 𐑚) (branch on the next candidate point; repeat the collinearity test for a different point) / FFUSE [14] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow 𐑳 𐑚 𐑙)  -- [13] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (paradice state; a point placement is simultaneously valid and invalid due to ...)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [14]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [14] FFUSE | stoi := 𐑙 (reconstitute the configuration state; merge the T-branch (point added) and F-branch (point rejected) back into a single stable configuration)
  (.arrow 𐑭 𐑙 𐑡)  -- [15] IFIX | prot := 𐑭 | irreversible fixation — winding number (lock the final configuration as a permanent record; this configuration is now...)
  (.arrow 𐑡 𐑭 𐑼)  -- [16] TANCH | top := 𐑡 | terminal object — connectivity boundary (close the system; the maximal valid configuration has been reached or the sea...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def no_three_in_line_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (no_three_in_line_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def no_three_in_line_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (no_three_in_line_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem no_three_in_line_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
