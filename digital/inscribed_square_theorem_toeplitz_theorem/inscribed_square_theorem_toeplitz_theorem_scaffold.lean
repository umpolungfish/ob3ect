-- IGProtocol scaffold: VINIT → TANCH → AFWD → CLINK → IFIX → AFWD → CLINK → IFIX → AFWD → CLINK → IFIX → AFWD → CLINK → IFIX → FSPLIT → EVALT → IMSCRIB → IFIX → FFUSE → EVALF → AREV → AFWD → CLINK → IFIX → FSPLIT → EVALT → IMSCRIB → IFIX → FFUSE → EVALF → AREV → AFWD → CLINK → IFIX → AFWD → CLINK → IFIX → FSPLIT → EVALT → IMSCRIB → IFIX → FFUSE → ENGAGR → IMSCRIB → IFIX → FFUSE → TANCH
-- Class: Inscribed Square Theorem (Toeplitz' Theorem)
-- Fingerprint: sig=(23,7,6,11)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=47
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(14, 18), (24, 28), (37, 41)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑱  | forward morphism — bidirectional arrow
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑭  | composition — regime coherence
--   [4] IFIX      prot   := 𐑭               𐑱 → 𐑾  | irreversible fixation — winding number
--   [5] AFWD      rel    := 𐑾               𐑭 → 𐑱  | forward morphism — bidirectional arrow
--   [6] CLINK     fid    := 𐑱               𐑾 → 𐑭  | composition — regime coherence
--   [7] IFIX      prot   := 𐑭               𐑱 → 𐑾  | irreversible fixation — winding number
--   [8] AFWD      rel    := 𐑾               𐑭 → 𐑱  | forward morphism — bidirectional arrow
--   [9] CLINK     fid    := 𐑱               𐑾 → 𐑭  | composition — regime coherence
--   [10] IFIX      prot   := 𐑭               𐑱 → 𐑾  | irreversible fixation — winding number
--   [11] AFWD      rel    := 𐑾               𐑭 → 𐑱  | forward morphism — bidirectional arrow
--   [12] CLINK     fid    := 𐑱               𐑾 → 𐑭  | composition — regime coherence
--   [13] IFIX      prot   := 𐑭               𐑱 → 𐑚  | irreversible fixation — winding number
--   [14] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [15] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [16] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [17] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [18] FFUSE     stoi   := 𐑙               𐑙 → 𐑖  | fuse μ — assembly mode
--   [19] EVALF     chir   := 𐑖               𐑙 → 𐑗  | evaluate-false — chirality check
--   [20] AREV      pol    := 𐑗               𐑖 → 𐑾  | reverse morphism — parity flip
--   [21] AFWD      rel    := 𐑾               𐑗 → 𐑱  | forward morphism — bidirectional arrow
--   [22] CLINK     fid    := 𐑱               𐑾 → 𐑭  | composition — regime coherence
--   [23] IFIX      prot   := 𐑭               𐑱 → 𐑚  | irreversible fixation — winding number
--   [24] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [25] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [26] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [27] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [28] FFUSE     stoi   := 𐑙               𐑙 → 𐑖  | fuse μ — assembly mode
--   [29] EVALF     chir   := 𐑖               𐑙 → 𐑗  | evaluate-false — chirality check
--   [30] AREV      pol    := 𐑗               𐑖 → 𐑾  | reverse morphism — parity flip
--   [31] AFWD      rel    := 𐑾               𐑗 → 𐑱  | forward morphism — bidirectional arrow
--   [32] CLINK     fid    := 𐑱               𐑾 → 𐑭  | composition — regime coherence
--   [33] IFIX      prot   := 𐑭               𐑱 → 𐑾  | irreversible fixation — winding number
--   [34] AFWD      rel    := 𐑾               𐑭 → 𐑱  | forward morphism — bidirectional arrow
--   [35] CLINK     fid    := 𐑱               𐑾 → 𐑭  | composition — regime coherence
--   [36] IFIX      prot   := 𐑭               𐑱 → 𐑚  | irreversible fixation — winding number
--   [37] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [38] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [39] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [40] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [41] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [42] ENGAGR    stoi   := 𐑳               𐑙 → 𐑠  | engage paradox — B-state, both arms
--   [43] IMSCRIB   gram   := 𐑠               𐑳 → 𐑭  | identity — self-imscription
--   [44] IFIX      prot   := 𐑭               𐑠 → 𐑙  | irreversible fixation — winding number
--   [45] FFUSE     stoi   := 𐑙               𐑭 → 𐑡  | fuse μ — assembly mode
--   [46] TANCH     top    := 𐑡               𐑙 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def inscribed_square_theorem_toeplitz_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (initialize empty configuration — no vertices placed on C yet)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (anchor the Jordan curve C as the immutable boundary containing all vertices)
  (.arrow 𐑾 𐑡 𐑱)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (begin continuous deformation — move first vertex v1 along C in forward direction)
  (.arrow 𐑱 𐑾 𐑭)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (compose v1 placement with curve topology — v1 is now bound to C)
  (.arrow 𐑭 𐑱 𐑾)  -- [4] IFIX | prot := 𐑭 | irreversible fixation — winding number (record v1 position permanently in the proof witness)
  (.arrow 𐑾 𐑭 𐑱)  -- [5] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (move second vertex v2 along C, forward from v1)
  (.arrow 𐑱 𐑾 𐑭)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (compose v2 placement with v1 and curve — v2 now bound to C)
  (.arrow 𐑭 𐑱 𐑾)  -- [7] IFIX | prot := 𐑭 | irreversible fixation — winding number (record v2 position permanently)
  (.arrow 𐑾 𐑭 𐑱)  -- [8] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (move third vertex v3 along C, forward from v2)
  (.arrow 𐑱 𐑾 𐑭)  -- [9] CLINK | fid := 𐑱 | composition — regime coherence (compose v3 placement — v3 now bound to C)
  (.arrow 𐑭 𐑱 𐑾)  -- [10] IFIX | prot := 𐑭 | irreversible fixation — winding number (record v3 position permanently)
  (.arrow 𐑾 𐑭 𐑱)  -- [11] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (move fourth vertex v4 along C, forward from v3)
  (.arrow 𐑱 𐑾 𐑭)  -- [12] CLINK | fid := 𐑱 | composition — regime coherence (compose v4 placement — v4 now bound to C, completing the quadrilateral)
  (.arrow 𐑭 𐑱 𐑚)  -- [13] IFIX | prot := 𐑭 | irreversible fixation — winding number (record v4 position permanently)
  -- FSPLIT [14] (gran := 𐑚) (branch into two cases — check if (v1,v3) and (v2,v4) are perpendicular diagonals) / FFUSE [18] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [15] EVALT | crit := ⊙ | evaluate-true — criticality gate open (T-branch — test orthogonality: angle between diagonals = 90°?)
      .seq
        (.arrow 𐑠 𐑚 𐑙)  -- [16] IMSCRIB | gram := 𐑠 | identity — self-imscription (if T-branch succeeds, the square recognizes itself as the fixed point of insc...)
        (.arrow 𐑭 𐑚 𐑙)  -- [17] IFIX | prot := 𐑭 | irreversible fixation — winding number (record the inscribed square configuration as permanent theorem witness)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [18]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑖)  -- [18] FFUSE | stoi := 𐑙 (T-branch fuses back — orthogonal square reconstitutes the original curve C)
  (.arrow 𐑖 𐑙 𐑗)  -- [19] EVALF | chir := 𐑖 | evaluate-false — chirality check (F-branch — angle ≠ 90°; configuration does not form a square yet)
  (.arrow 𐑗 𐑖 𐑾)  -- [20] AREV | pol := 𐑗 | reverse morphism — parity flip (F-branch reversal — backtrack v4 position, descend to prior state)
  (.arrow 𐑾 𐑗 𐑱)  -- [21] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (F-branch forward — try next position for v4 along C)
  (.arrow 𐑱 𐑾 𐑭)  -- [22] CLINK | fid := 𐑱 | composition — regime coherence (recompose v4 with new position)
  (.arrow 𐑭 𐑱 𐑚)  -- [23] IFIX | prot := 𐑭 | irreversible fixation — winding number (record new v4 attempt)
  -- FSPLIT [24] (gran := 𐑚) (re-branch — check orthogonality again with new v4) / FFUSE [28] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [25] EVALT | crit := ⊙ | evaluate-true — criticality gate open (if orthogonal now, T-branch succeeds)
      .seq
        (.arrow 𐑠 𐑚 𐑙)  -- [26] IMSCRIB | gram := 𐑠 | identity — self-imscription (square recognizes itself)
        (.arrow 𐑭 𐑚 𐑙)  -- [27] IFIX | prot := 𐑭 | irreversible fixation — winding number (record success)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [28]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑖)  -- [28] FFUSE | stoi := 𐑙 (T-branch fuses back to C)
  (.arrow 𐑖 𐑙 𐑗)  -- [29] EVALF | chir := 𐑖 | evaluate-false — chirality check (if still non-orthogonal, F-branch continues iteration)
  (.arrow 𐑗 𐑖 𐑾)  -- [30] AREV | pol := 𐑗 | reverse morphism — parity flip (backtrack v3, descend to prior state)
  (.arrow 𐑾 𐑗 𐑱)  -- [31] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (try next position for v3)
  (.arrow 𐑱 𐑾 𐑭)  -- [32] CLINK | fid := 𐑱 | composition — regime coherence (recompose v3)
  (.arrow 𐑭 𐑱 𐑾)  -- [33] IFIX | prot := 𐑭 | irreversible fixation — winding number (record v3 attempt)
  (.arrow 𐑾 𐑭 𐑱)  -- [34] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (move v4 forward again from new v3)
  (.arrow 𐑱 𐑾 𐑭)  -- [35] CLINK | fid := 𐑱 | composition — regime coherence (recompose v4)
  (.arrow 𐑭 𐑱 𐑚)  -- [36] IFIX | prot := 𐑭 | irreversible fixation — winding number (record v4 attempt)
  -- FSPLIT [37] (gran := 𐑚) (re-branch — check orthogonality) / FFUSE [41] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [38] EVALT | crit := ⊙ | evaluate-true — criticality gate open (if orthogonal, T-branch succeeds)
      .seq
        (.arrow 𐑠 𐑚 𐑙)  -- [39] IMSCRIB | gram := 𐑠 | identity — self-imscription (square recognizes itself)
        (.arrow 𐑭 𐑚 𐑙)  -- [40] IFIX | prot := 𐑭 | irreversible fixation — winding number (record success)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [41]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [41] FFUSE | stoi := 𐑙 (T-branch fuses back to C)
  (.arrow 𐑳 𐑙 𐑠)  -- [42] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (paradice case — if curve admits multiple inscribed squares (e.g., circle), bo...)
  (.arrow 𐑠 𐑳 𐑭)  -- [43] IMSCRIB | gram := 𐑠 | identity — self-imscription (all inscribed squares recognize themselves as fixed points)
  (.arrow 𐑭 𐑠 𐑙)  -- [44] IFIX | prot := 𐑭 | irreversible fixation — winding number (record all solutions as permanent witnesses)
  (.arrow 𐑙 𐑭 𐑡)  -- [45] FFUSE | stoi := 𐑙 | fuse μ — assembly mode (all branches fuse back to the same Jordan curve C)
  (.arrow 𐑡 𐑙 𐑼)  -- [46] TANCH | top := 𐑡 | terminal object — connectivity boundary (close the system — the theorem is complete; C contains at least one inscribed...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def inscribed_square_theorem_toeplitz_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (inscribed_square_theorem_toeplitz_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def inscribed_square_theorem_toeplitz_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (inscribed_square_theorem_toeplitz_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem inscribed_square_theorem_toeplitz_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
