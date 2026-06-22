-- IGProtocol scaffold: VINIT → TANCH → AFWD → CLINK → FSPLIT → EVALT → CLINK → IFIX → AREV → EVALF → CLINK → ENGAGR → AREV → FSPLIT → EVALT → CLINK → IMSCRIB → FFUSE → IFIX → TANCH
-- Class: Barnette's Theorem
-- Fingerprint: sig=(11,3,4,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=20
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(13, 17)]

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
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [4] FSPLIT    gran   := 𐑚               𐑱 → ⊙  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑱  | evaluate-true — criticality gate open
--   [6] CLINK     fid    := 𐑱               ⊙ → 𐑭  | composition — regime coherence
--   [7] IFIX      prot   := 𐑭               𐑱 → 𐑗  | irreversible fixation — winding number
--   [8] AREV      pol    := 𐑗               𐑭 → 𐑖  | reverse morphism — parity flip
--   [9] EVALF     chir   := 𐑖               𐑗 → 𐑱  | evaluate-false — chirality check
--   [10] CLINK     fid    := 𐑱               𐑖 → 𐑳  | composition — regime coherence
--   [11] ENGAGR    stoi   := 𐑳               𐑱 → 𐑗  | engage paradox — B-state, both arms
--   [12] AREV      pol    := 𐑗               𐑳 → 𐑚  | reverse morphism — parity flip
--   [13] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [14] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [15] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [16] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [17] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [18] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [19] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def barnettes_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Initialize the search with no variables assigned; the formula is in void state.)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (Anchor the CNF formula as the boundary containing all possible satisfying ass...)
  (.arrow 𐑾 𐑡 𐑱)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Assign the first variable x₁ a truth value (forward morphism into the search ...)
  (.arrow 𐑱 𐑾 𐑚)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (Apply unit propagation to derive forced assignments from x₁'s value; compose ...)
  (.arrow 𐑚 𐑱 ⊙)  -- [4] FSPLIT | gran := 𐑚 | split δ — range decomposition (Branch on the next unassigned variable x₂ into two disjoint cases: x₂=true an...)
  (.arrow ⊙ 𐑚 𐑱)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Evaluate the T-arm (x₂=true): apply unit propagation and check for conflicts.)
  (.arrow 𐑱 ⊙ 𐑭)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (Continue propagation chain in the T-arm, composing further assignments.)
  (.arrow 𐑭 𐑱 𐑗)  -- [7] IFIX | prot := 𐑭 | irreversible fixation — winding number (If a conflict is detected in the T-arm, record the learned clause as a perman...)
  (.arrow 𐑗 𐑭 𐑖)  -- [8] AREV | pol := 𐑗 | reverse morphism — parity flip (Backtrack from the T-arm conflict; reverse the assignment x₂=true and descend...)
  (.arrow 𐑖 𐑗 𐑱)  -- [9] EVALF | chir := 𐑖 | evaluate-false — chirality check (Evaluate the F-arm (x₂=false): apply unit propagation and check for conflicts.)
  (.arrow 𐑱 𐑖 𐑳)  -- [10] CLINK | fid := 𐑱 | composition — regime coherence (Continue propagation chain in the F-arm, composing further assignments.)
  (.arrow 𐑳 𐑱 𐑗)  -- [11] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (If both x and ¬x are forced by unit propagation in the F-arm, enter paradice ...)
  (.arrow 𐑗 𐑳 𐑚)  -- [12] AREV | pol := 𐑗 | reverse morphism — parity flip (Backtrack from the F-arm paradice; reverse the assignment x₂=false and ascend...)
  -- FSPLIT [13] (gran := 𐑚) (Branch on the next unassigned variable x₃ into two disjoint cases: x₃=true and x₃=false.) / FFUSE [17] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [14] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Evaluate the T-arm (x₃=true): apply unit propagation and check for conflicts.)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [15] CLINK | fid := 𐑱 | composition — regime coherence (Continue propagation chain in the T-arm.)
        (.arrow 𐑠 𐑚 𐑙)  -- [16] IMSCRIB | gram := 𐑠 | identity — self-imscription (If all clauses are satisfied and all variables are assigned, the current assi...)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [17]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [17] FFUSE | stoi := 𐑙 (Merge the results from the T-arm and F-arm of the x₃ split: if either branch yields a satisfying assignment, the original formula is satisfiable.)
  (.arrow 𐑭 𐑙 𐑡)  -- [18] IFIX | prot := 𐑭 | irreversible fixation — winding number (Record the satisfying assignment as a permanent fact (or record unsatisfiabil...)
  (.arrow 𐑡 𐑭 𐑼)  -- [19] TANCH | top := 𐑡 | terminal object — connectivity boundary (Close the search: the formula's satisfiability status is now determined and a...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def barnettes_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (barnettes_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def barnettes_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (barnettes_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem barnettes_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
