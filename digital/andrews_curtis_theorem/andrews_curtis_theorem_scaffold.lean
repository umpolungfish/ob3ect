-- IGProtocol scaffold: VINIT → TANCH → AFWD → AFWD → IMSCRIB → FSPLIT → EVALT → AFWD → CLINK → IFIX → AREV → EVALF → ENGAGR → FFUSE → IMSCRIB → AFWD → AFWD → FSPLIT → EVALT → CLINK → IFIX → AREV → EVALF → ENGAGR → FFUSE → IMSCRIB → AFWD → AFWD → FSPLIT → EVALT → CLINK → IFIX → AREV → EVALF → ENGAGR → FFUSE → IMSCRIB → CLINK → IFIX → ENGAGR → TANCH
-- Class: Andrews–Curtis Theorem
-- Fingerprint: sig=(21,6,10,4)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=41
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(5, 13), (17, 24), (28, 35)]

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
--   [3] AFWD      rel    := 𐑾               𐑾 → 𐑠  | forward morphism — bidirectional arrow
--   [4] IMSCRIB   gram   := 𐑠               𐑾 → 𐑚  | identity — self-imscription
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [8] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [9] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [10] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [11] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [12] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [14] IMSCRIB   gram   := 𐑠               𐑙 → 𐑾  | identity — self-imscription
--   [15] AFWD      rel    := 𐑾               𐑠 → 𐑾  | forward morphism — bidirectional arrow
--   [16] AFWD      rel    := 𐑾               𐑾 → 𐑚  | forward morphism — bidirectional arrow
--   [17] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [18] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [19] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [20] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [21] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [22] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [23] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [24] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [25] IMSCRIB   gram   := 𐑠               𐑙 → 𐑾  | identity — self-imscription
--   [26] AFWD      rel    := 𐑾               𐑠 → 𐑾  | forward morphism — bidirectional arrow
--   [27] AFWD      rel    := 𐑾               𐑾 → 𐑚  | forward morphism — bidirectional arrow
--   [28] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [29] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [30] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [31] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [32] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [33] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [34] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [35] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [36] IMSCRIB   gram   := 𐑠               𐑙 → 𐑱  | identity — self-imscription
--   [37] CLINK     fid    := 𐑱               𐑠 → 𐑭  | composition — regime coherence
--   [38] IFIX      prot   := 𐑭               𐑱 → 𐑳  | irreversible fixation — winding number
--   [39] ENGAGR    stoi   := 𐑳               𐑭 → 𐑡  | engage paradox — B-state, both arms
--   [40] TANCH     top    := 𐑡               𐑳 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def andrews_curtis_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (genesis — the empty word, no generators or relators yet named)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (anchor — the trivial group identity ⟨ | ⟩ as the terminal boundary all presen...)
  (.arrow 𐑾 𐑡 𐑾)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (introduce first generator g₁ — forward morphism, adding structure)
  (.arrow 𐑾 𐑾 𐑠)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (introduce first relator r₁ = g₁ — forward morphism, balancing the presentation)
  (.arrow 𐑠 𐑾 𐑚)  -- [4] IMSCRIB | gram := 𐑠 | identity — self-imscription (the presentation ⟨g₁ | g₁⟩ is identical to itself — self-reference)
  -- FSPLIT [5] (gran := 𐑚) (branch into two balanced presentations — one via Nielsen move (invert g₁), one via relator substitution) / FFUSE [13] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (5 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [6] EVALT | crit := ⊙ | evaluate-true — criticality gate open (first branch succeeds — the inverted presentation ⟨g₁⁻¹ | g₁⁻¹⟩ is equivalent...)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [7] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (apply Nielsen transformation to first branch — forward morphism through prese...)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [8] CLINK | fid := 𐑱 | composition — regime coherence (compose the Nielsen move with the identity — sequential chaining)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [9] IFIX | prot := 𐑭 | irreversible fixation — winding number (record the move sequence as permanent witness — append-only log of the transf...)
        (.arrow 𐑗 𐑚 𐑙)  -- [10] AREV | pol := 𐑗 | reverse morphism — parity flip (apply inverse Nielsen move on second branch — reverse morphism, descent back)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [11] EVALF | chir := 𐑖 | evaluate-false — chirality check (second branch equivalence not yet established — negative evaluation, conjectu...)
        (.arrow 𐑳 𐑚 𐑙)  -- [12] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (both branches held simultaneously — the paradice of the Andrews–Curtis conjec...))
    -- reconnect at FFUSE [13]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [13] FFUSE | stoi := 𐑙 (attempt to fuse both branches back to original presentation — reconstitution)
  (.arrow 𐑠 𐑙 𐑾)  -- [14] IMSCRIB | gram := 𐑠 | identity — self-imscription (if fusion succeeds, the original presentation is recovered — self-identity co...)
  (.arrow 𐑾 𐑠 𐑾)  -- [15] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (introduce second generator g₂ — forward morphism, expanding structure)
  (.arrow 𐑾 𐑾 𐑚)  -- [16] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (introduce second relator r₂ — forward morphism, maintaining balance)
  -- FSPLIT [17] (gran := 𐑚) (branch into presentations with two generators and two relators) / FFUSE [24] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (4 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [18] EVALT | crit := ⊙ | evaluate-true — criticality gate open (first branch of two-generator case — equivalence via Andrews–Curtis moves)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [19] CLINK | fid := 𐑱 | composition — regime coherence (compose multiple Nielsen transformations — sequential chaining of moves)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [20] IFIX | prot := 𐑭 | irreversible fixation — winding number (record the multi-move sequence — permanent witness to the path)
        (.arrow 𐑗 𐑚 𐑙)  -- [21] AREV | pol := 𐑗 | reverse morphism — parity flip (inverse move on second branch — reverse morphism)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [22] EVALF | chir := 𐑖 | evaluate-false — chirality check (second branch of two-generator case — equivalence not established)
        (.arrow 𐑳 𐑚 𐑙)  -- [23] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (paradice deepens — for two-generator balanced presentations, the conjecture r...))
    -- reconnect at FFUSE [24]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [24] FFUSE | stoi := 𐑙 (attempt fusion of two-generator branches)
  (.arrow 𐑠 𐑙 𐑾)  -- [25] IMSCRIB | gram := 𐑠 | identity — self-imscription (self-identity of the two-generator presentation)
  (.arrow 𐑾 𐑠 𐑾)  -- [26] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (introduce third generator g₃ — forward morphism, further expansion)
  (.arrow 𐑾 𐑾 𐑚)  -- [27] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (introduce third relator r₃ — forward morphism, balance maintained)
  -- FSPLIT [28] (gran := 𐑚) (branch into presentations with three generators and three relators) / FFUSE [35] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (4 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [29] EVALT | crit := ⊙ | evaluate-true — criticality gate open (first branch of three-generator case — equivalence via Andrews–Curtis moves)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [30] CLINK | fid := 𐑱 | composition — regime coherence (compose Nielsen transformations for three-generator case)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [31] IFIX | prot := 𐑭 | irreversible fixation — winding number (record the three-generator move sequence)
        (.arrow 𐑗 𐑚 𐑙)  -- [32] AREV | pol := 𐑗 | reverse morphism — parity flip (inverse move on second branch of three-generator case)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [33] EVALF | chir := 𐑖 | evaluate-false — chirality check (second branch of three-generator case — equivalence not established)
        (.arrow 𐑳 𐑚 𐑙)  -- [34] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (paradice extends — the conjecture remains open for all balanced presentations...))
    -- reconnect at FFUSE [35]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [35] FFUSE | stoi := 𐑙 (attempt fusion of three-generator branches)
  (.arrow 𐑠 𐑙 𐑱)  -- [36] IMSCRIB | gram := 𐑠 | identity — self-imscription (self-identity of the three-generator presentation)
  (.arrow 𐑱 𐑠 𐑭)  -- [37] CLINK | fid := 𐑱 | composition — regime coherence (compose all recorded move sequences into a single witness chain)
  (.arrow 𐑭 𐑱 𐑳)  -- [38] IFIX | prot := 𐑭 | irreversible fixation — winding number (final permanent record — the complete history of all Andrews–Curtis moves att...)
  (.arrow 𐑳 𐑭 𐑡)  -- [39] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (the conjecture itself — held in paradice: all balanced presentations of the t...)
  (.arrow 𐑡 𐑳 𐑼)  -- [40] TANCH | top := 𐑡 | terminal object — connectivity boundary (terminal anchor — the conjecture's boundary; all balanced presentations must ...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def andrews_curtis_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (andrews_curtis_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def andrews_curtis_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (andrews_curtis_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem andrews_curtis_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
