-- IGProtocol scaffold: VINIT → TANCH → AFWD → AFWD → CLINK → FSPLIT → EVALT → AFWD → CLINK → EVALF → AREV → IMSCRIB → FFUSE → CLINK → FSPLIT → EVALT → AFWD → EVALF → AREV → FFUSE → CLINK → IMSCRIB → ENGAGR → IFIX → IFIX → TANCH
-- Class: Union-Closed Sets Theorem
-- Fingerprint: sig=(15,4,5,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=26
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(5, 12), (14, 19)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑾  | forward morphism — bidirectional arrow
--   [3] AFWD      rel    := 𐑾               𐑾 → 𐑱  | forward morphism — bidirectional arrow
--   [4] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [8] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [9] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [11] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [13] CLINK     fid    := 𐑱               𐑙 → 𐑚  | composition — regime coherence
--   [14] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [15] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [16] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [17] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [18] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [19] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [20] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [21] IMSCRIB   gram   := 𐑠               𐑱 → 𐑳  | identity — self-imscription
--   [22] ENGAGR    stoi   := 𐑳               𐑠 → 𐑭  | engage paradox — B-state, both arms
--   [23] IFIX      prot   := 𐑭               𐑳 → 𐑭  | irreversible fixation — winding number
--   [24] IFIX      prot   := 𐑭               𐑭 → 𐑡  | irreversible fixation — winding number
--   [25] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def union_closed_sets_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Initialize the family F as empty; no sets exist yet, void state (00))
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (Establish X as the universal ground set and boundary; all unions must remain ...)
  (.arrow 𐑾 𐑡 𐑾)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Add first set A to F; forward morphism toward closure)
  (.arrow 𐑾 𐑾 𐑱)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Add second set B to F; continue forward)
  (.arrow 𐑱 𐑾 𐑚)  -- [4] CLINK | fid := 𐑱 | composition — regime coherence (Compose the union operation: form A ∪ B)
  -- FSPLIT [5] (gran := 𐑚) (Branch on membership test: does A ∪ B belong to F?) / FFUSE [12] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [6] EVALT | crit := ⊙ | evaluate-true — criticality gate open (T-arm: A ∪ B ∈ F confirmed; closure property holds for this pair (state 01))
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [7] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (T-arm: add A ∪ B to F explicitly; forward morphism to extend closure)
        (.arrow 𐑱 𐑚 𐑙)  -- [8] CLINK | fid := 𐑱 | composition — regime coherence (T-arm: chain further unions with existing members)
      -- F-branch (3 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [9] EVALF | chir := 𐑖 | evaluate-false — chirality check (F-arm: A ∪ B ∉ F; closure property violated (state 10))
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [10] AREV | pol := 𐑗 | reverse morphism — parity flip (F-arm: reverse morphism; descend to examine why closure failed; parity flip)
        (.arrow 𐑠 𐑚 𐑙)  -- [11] IMSCRIB | gram := 𐑠 | identity — self-imscription (F-arm: self-reference check; does F ∪ F = F? (identity on F)))
    -- reconnect at FFUSE [12]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [12] FFUSE | stoi := 𐑙 (Reconstitute: merge both branches; if T-arm dominates, F is union-closed; if F-arm dominates, F is not union-closed)
  (.arrow 𐑱 𐑙 𐑚)  -- [13] CLINK | fid := 𐑱 | composition — regime coherence (Iterate: for all remaining pairs (C, D) in F, repeat the union and membership...)
  -- FSPLIT [14] (gran := 𐑚) (Branch again on next pair membership) / FFUSE [19] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [15] EVALT | crit := ⊙ | evaluate-true — criticality gate open (T-arm: C ∪ D ∈ F; closure holds)
        (.arrow 𐑾 𐑚 𐑙)  -- [16] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (T-arm: add C ∪ D to F)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [17] EVALF | chir := 𐑖 | evaluate-false — chirality check (F-arm: C ∪ D ∉ F; closure fails)
        (.arrow 𐑗 𐑚 𐑙)  -- [18] AREV | pol := 𐑗 | reverse morphism — parity flip (F-arm: reverse morphism; examine failure))
    -- reconnect at FFUSE [19]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [19] FFUSE | stoi := 𐑙 (Reconstitute after second pair)
  (.arrow 𐑱 𐑙 𐑠)  -- [20] CLINK | fid := 𐑱 | composition — regime coherence (Continue composition through all pairs until saturation)
  (.arrow 𐑠 𐑱 𐑳)  -- [21] IMSCRIB | gram := 𐑠 | identity — self-imscription (Final self-reference: the completed family F recognizes itself; F ∪ F = F)
  (.arrow 𐑳 𐑠 𐑭)  -- [22] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (If the domain exhibits undecidable or superposed closure (e.g., in constructi...)
  (.arrow 𐑭 𐑳 𐑭)  -- [23] IFIX | prot := 𐑭 | irreversible fixation — winding number (Permanent record: F_final is fixed as the maximal union-closed family; append...)
  (.arrow 𐑭 𐑭 𐑡)  -- [24] IFIX | prot := 𐑭 | irreversible fixation — winding number (Record the closure verdict: PASS (F is union-closed) or FAIL (F is not union-...)
  (.arrow 𐑡 𐑭 𐑼)  -- [25] TANCH | top := 𐑡 | terminal object — connectivity boundary (Seal the boundary; the system is now closed and complete)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def union_closed_sets_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (union_closed_sets_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def union_closed_sets_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (union_closed_sets_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem union_closed_sets_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
