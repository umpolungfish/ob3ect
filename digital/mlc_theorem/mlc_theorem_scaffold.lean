-- IGProtocol scaffold: VINIT → TANCH → CLINK → FSPLIT → EVALT → AFWD → CLINK → FSPLIT → EVALT → AFWD → IFIX → CLINK → EVALT → ENGAGR → AREV → EVALF → AFWD → CLINK → EVALT → IFIX → FFUSE → IMSCRIB → CLINK → EVALT → AFWD → FSPLIT → EVALT → AFWD → CLINK → EVALT → IFIX → AREV → EVALF → AFWD → CLINK → EVALT → ENGAGR → IFIX → FFUSE → IMSCRIB → CLINK → EVALT → AFWD → FSPLIT → EVALT → AFWD → IMSCRIB → IFIX → EVALF → AREV → CLINK → EVALT → ENGAGR → FFUSE → IMSCRIB → IFIX → TANCH
-- Class: MLC Theorem
-- Fingerprint: sig=(27,7,17,6)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=57
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(7, 20), (25, 38), (43, 53)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑱  | terminal object — connectivity boundary
--   [2] CLINK     fid    := 𐑱               𐑡 → 𐑚  | composition — regime coherence
--   [3] FSPLIT    gran   := 𐑚               𐑱 → ⊙  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑾  | evaluate-true — criticality gate open
--   [5] AFWD      rel    := 𐑾               ⊙ → 𐑱  | forward morphism — bidirectional arrow
--   [6] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [9] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [10] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [11] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [12] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [13] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [14] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [15] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [16] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [17] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [18] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [19] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [20] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [21] IMSCRIB   gram   := 𐑠               𐑙 → 𐑱  | identity — self-imscription
--   [22] CLINK     fid    := 𐑱               𐑠 → ⊙  | composition — regime coherence
--   [23] EVALT     crit   := ⊙               𐑱 → 𐑾  | evaluate-true — criticality gate open
--   [24] AFWD      rel    := 𐑾               ⊙ → 𐑚  | forward morphism — bidirectional arrow
--   [25] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [26] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [27] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [28] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [29] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [30] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [31] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [32] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [33] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [34] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [35] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [36] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [37] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [38] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [39] IMSCRIB   gram   := 𐑠               𐑙 → 𐑱  | identity — self-imscription
--   [40] CLINK     fid    := 𐑱               𐑠 → ⊙  | composition — regime coherence
--   [41] EVALT     crit   := ⊙               𐑱 → 𐑾  | evaluate-true — criticality gate open
--   [42] AFWD      rel    := 𐑾               ⊙ → 𐑚  | forward morphism — bidirectional arrow
--   [43] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [44] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [45] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [46] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [47] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [48] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [49] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [50] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [51] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [52] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [53] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [54] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [55] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [56] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def mlc_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (initialize empty constraint system with no variables, no clauses, no assignments)
  (.arrow 𐑡 𐑼 𐑱)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (establish the MLC decision boundary — the set of all valid satisfying assignm...)
  (.arrow 𐑱 𐑡 𐑚)  -- [2] CLINK | fid := 𐑱 | composition — regime coherence (compose first multilinear clause into the system; chain it to the boundary)
  (.arrow 𐑚 𐑱 ⊙)  -- [3] FSPLIT | gran := 𐑚 | split δ — range decomposition (branch on first unassigned variable v₁; split into v₁=TRUE and v₁=FALSE)
  (.arrow ⊙ 𐑚 𐑾)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (evaluate T-arm (v₁=TRUE) against all clauses; check satisfiability)
  (.arrow 𐑾 ⊙ 𐑱)  -- [5] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (if T-arm satisfies, propagate forward; assign next variable v₂ in T-arm)
  (.arrow 𐑱 𐑾 𐑚)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (compose second multilinear clause; chain it through T-arm assignments)
  -- FSPLIT [7] (gran := 𐑚) (branch on v₂ within T-arm; split into v₂=TRUE and v₂=FALSE) / FFUSE [20] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (7 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [8] EVALT | crit := ⊙ | evaluate-true — criticality gate open (evaluate T-arm of v₂ split; check clause satisfaction)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [9] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (if satisfied, propagate forward; continue assigning variables)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [10] IFIX | prot := 𐑭 | irreversible fixation — winding number (record learned clause from T-arm propagation; append to constraint database)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [11] CLINK | fid := 𐑱 | composition — regime coherence (compose third multilinear clause; chain through current assignments)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [12] EVALT | crit := ⊙ | evaluate-true — criticality gate open (evaluate current assignment against new clause)
      .seq
        (.arrow 𐑳 𐑚 𐑙)  -- [13] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (if clause is satisfiable under current ordering but unsatisfiable under alter...)
        (.arrow 𐑗 𐑚 𐑙)  -- [14] AREV | pol := 𐑗 | reverse morphism — parity flip (if T-arm violates a clause, backtrack; reverse morphism to previous decision ...)
      -- F-branch (5 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [15] EVALF | chir := 𐑖 | evaluate-false — chirality check (evaluate F-arm (v₂=FALSE) against all clauses; check satisfiability)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [16] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (if F-arm satisfies, propagate forward; assign next variable in F-arm)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [17] CLINK | fid := 𐑱 | composition — regime coherence (compose fourth multilinear clause; chain through F-arm assignments)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [18] EVALT | crit := ⊙ | evaluate-true — criticality gate open (evaluate F-arm against new clause)
        (.arrow 𐑭 𐑚 𐑙)  -- [19] IFIX | prot := 𐑭 | irreversible fixation — winding number (record learned clause from F-arm; append to constraint database))
    -- reconnect at FFUSE [20]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [20] FFUSE | stoi := 𐑙 (both T-arm and F-arm branches have been explored; reconstitute original partial assignment by merging satisfactions)
  (.arrow 𐑠 𐑙 𐑱)  -- [21] IMSCRIB | gram := 𐑠 | identity — self-imscription (the merged assignment is a fixed point; it satisfies all clauses it touches; ...)
  (.arrow 𐑱 𐑠 ⊙)  -- [22] CLINK | fid := 𐑱 | composition — regime coherence (compose fifth multilinear clause; chain through fixed-point assignment)
  (.arrow ⊙ 𐑱 𐑾)  -- [23] EVALT | crit := ⊙ | evaluate-true — criticality gate open (evaluate fixed-point against new clause)
  (.arrow 𐑾 ⊙ 𐑚)  -- [24] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (if satisfied, continue forward; assign remaining variables)
  -- FSPLIT [25] (gran := 𐑚) (branch on next unassigned variable v₃; split into v₃=TRUE and v₃=FALSE) / FFUSE [38] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (6 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [26] EVALT | crit := ⊙ | evaluate-true — criticality gate open (evaluate T-arm of v₃ split)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [27] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (propagate forward if satisfied)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [28] CLINK | fid := 𐑱 | composition — regime coherence (compose sixth multilinear clause)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [29] EVALT | crit := ⊙ | evaluate-true — criticality gate open (evaluate against new clause)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [30] IFIX | prot := 𐑭 | irreversible fixation — winding number (record learned clause; append to database)
        (.arrow 𐑗 𐑚 𐑙)  -- [31] AREV | pol := 𐑗 | reverse morphism — parity flip (if violation detected, backtrack; reverse morphism)
      -- F-branch (6 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [32] EVALF | chir := 𐑖 | evaluate-false — chirality check (evaluate F-arm of v₃ split)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [33] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (if F-arm satisfies, propagate forward)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [34] CLINK | fid := 𐑱 | composition — regime coherence (compose seventh multilinear clause)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [35] EVALT | crit := ⊙ | evaluate-true — criticality gate open (evaluate F-arm against new clause)
      .seq
        (.arrow 𐑳 𐑚 𐑙)  -- [36] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (if clause enters paradice state (both satisfiable and unsatisfiable), hold bo...)
        (.arrow 𐑭 𐑚 𐑙)  -- [37] IFIX | prot := 𐑭 | irreversible fixation — winding number (record conflict; append to constraint database))
    -- reconnect at FFUSE [38]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [38] FFUSE | stoi := 𐑙 (merge T-arm and F-arm branches; reconstitute partial assignment)
  (.arrow 𐑠 𐑙 𐑱)  -- [39] IMSCRIB | gram := 𐑠 | identity — self-imscription (merged assignment is a fixed point; self-reference)
  (.arrow 𐑱 𐑠 ⊙)  -- [40] CLINK | fid := 𐑱 | composition — regime coherence (compose eighth multilinear clause; chain through fixed-point)
  (.arrow ⊙ 𐑱 𐑾)  -- [41] EVALT | crit := ⊙ | evaluate-true — criticality gate open (evaluate fixed-point against new clause)
  (.arrow 𐑾 ⊙ 𐑚)  -- [42] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (if satisfied, continue forward; assign remaining variables)
  -- FSPLIT [43] (gran := 𐑚) (branch on final unassigned variable vₙ; split into vₙ=TRUE and vₙ=FALSE) / FFUSE [53] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (4 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [44] EVALT | crit := ⊙ | evaluate-true — criticality gate open (evaluate T-arm of vₙ split against all clauses)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [45] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (if all clauses satisfied, propagate forward; complete assignment found)
      .seq
        (.arrow 𐑠 𐑚 𐑙)  -- [46] IMSCRIB | gram := 𐑠 | identity — self-imscription (complete assignment is a fixed point; satisfies all clauses; self-reference a...)
        (.arrow 𐑭 𐑚 𐑙)  -- [47] IFIX | prot := 𐑭 | irreversible fixation — winding number (record complete satisfying assignment; append to solution database)
      -- F-branch (5 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [48] EVALF | chir := 𐑖 | evaluate-false — chirality check (evaluate F-arm of vₙ split against all clauses)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [49] AREV | pol := 𐑗 | reverse morphism — parity flip (if F-arm violates any clause, backtrack; reverse morphism)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [50] CLINK | fid := 𐑱 | composition — regime coherence (compose final multilinear clause; chain through all branches)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [51] EVALT | crit := ⊙ | evaluate-true — criticality gate open (evaluate all branches against final clause)
        (.arrow 𐑳 𐑚 𐑙)  -- [52] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (if final clause is simultaneously satisfiable and unsatisfiable across branch...))
    -- reconnect at FFUSE [53]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [53] FFUSE | stoi := 𐑙 (merge all branches; reconstitute original constraint system)
  (.arrow 𐑠 𐑙 𐑭)  -- [54] IMSCRIB | gram := 𐑠 | identity — self-imscription (the merged system is a fixed point; all clauses satisfied; self-reference)
  (.arrow 𐑭 𐑠 𐑡)  -- [55] IFIX | prot := 𐑭 | irreversible fixation — winding number (record final learned clause; append to constraint database)
  (.arrow 𐑡 𐑭 𐑼)  -- [56] TANCH | top := 𐑡 | terminal object — connectivity boundary (close the MLC decision boundary; all variables assigned, all clauses evaluate...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def mlc_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (mlc_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def mlc_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (mlc_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem mlc_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
