-- IGProtocol scaffold: VINIT → FSPLIT → AFWD → EVALT → IMSCRIB → CLINK → FFUSE → AREV → EVALF → ENGAGR → FSPLIT → AFWD → EVALT → CLINK → FFUSE → IMSCRIB → AREV → FSPLIT → EVALF → CLINK → FFUSE → ENGAGR → IFIX → TANCH
-- Class: mind
-- Fingerprint: sig=(11,6,6,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=24
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(1, 6), (10, 14), (17, 20)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [7] AREV      pol    := 𐑗               𐑙 → 𐑖  | reverse morphism — parity flip
--   [8] EVALF     chir   := 𐑖               𐑗 → 𐑳  | evaluate-false — chirality check
--   [9] ENGAGR    stoi   := 𐑳               𐑖 → 𐑚  | engage paradox — B-state, both arms
--   [10] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [12] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [13] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [14] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [15] IMSCRIB   gram   := 𐑠               𐑙 → 𐑗  | identity — self-imscription
--   [16] AREV      pol    := 𐑗               𐑠 → 𐑚  | reverse morphism — parity flip
--   [17] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [18] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [19] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [20] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [21] ENGAGR    stoi   := 𐑳               𐑙 → 𐑭  | engage paradox — B-state, both arms
--   [22] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [23] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def mind_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑚)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (genesis of awareness as pure potential before attention)
  -- FSPLIT [1] (gran := 𐑚) (cognitive processing bifurcates into conscious and unconscious streams) / FFUSE [6] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (4 nodes)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (attention moves outward toward external objects and stimuli)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (conscious validation of attended objects and recognition of patterns)
      .seq
        (.arrow 𐑠 𐑚 𐑙)  -- [4] IMSCRIB | gram := 𐑠 | identity — self-imscription (self-recognition mechanism activates, mind identifies as mind)
        (.arrow 𐑱 𐑚 𐑙)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (binding operation integrates multimodal inputs into unified percepts)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [6]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑗)  -- [6] FFUSE | stoi := 𐑙 (conscious and unconscious processing streams reunite to form coherent experience)
  (.arrow 𐑗 𐑙 𐑖)  -- [7] AREV | pol := 𐑗 | reverse morphism — parity flip (recursive loop returns attention inward for self-reflection and metacognition)
  (.arrow 𐑖 𐑗 𐑳)  -- [8] EVALF | chir := 𐑖 | evaluate-false — chirality check (rejection mechanism filters out contradictory or impossible content)
  (.arrow 𐑳 𐑖 𐑚)  -- [9] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (paradoxical self-observation where observer and observed become indistinguish...)
  -- FSPLIT [10] (gran := 𐑚) (second-level split where self-awareness splits into subject and self-object) / FFUSE [14] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [11] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (attention turns toward internal mental processes and their dynamics)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [12] EVALT | crit := ⊙ | evaluate-true — criticality gate open (validation of self-knowledge and understanding of own cognitive mechanisms)
        (.arrow 𐑱 𐑚 𐑙)  -- [13] CLINK | fid := 𐑱 | composition — regime coherence (integration of external and internal attention into unified awareness)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [14]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [14] FFUSE | stoi := 𐑙 (reunification of inner and outer attention into integrated consciousness)
  (.arrow 𐑠 𐑙 𐑗)  -- [15] IMSCRIB | gram := 𐑠 | identity — self-imscription (higher-order self-model validates its own existence as a conscious system)
  (.arrow 𐑗 𐑠 𐑚)  -- [16] AREV | pol := 𐑗 | reverse morphism — parity flip (deep introspection enters the recursive loop of infinite self-regression)
  -- FSPLIT [17] (gran := 𐑚) (fundamental split between the knowing subject and the process of knowing) / FFUSE [20] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (0 nodes)
      (.refl 𐑙)  -- T-branch: empty arc (direct to FFUSE.T)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [18] EVALF | chir := 𐑖 | evaluate-false — chirality check (recognition of cognitive limitations and boundaries of awareness)
        (.arrow 𐑱 𐑚 𐑙)  -- [19] CLINK | fid := 𐑱 | composition — regime coherence (binding of temporal sequences creates continuous narrative self))
    -- reconnect at FFUSE [20]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [20] FFUSE | stoi := 𐑙 (final integration of all cognitive streams into stable phenomenal consciousness)
  (.arrow 𐑳 𐑙 𐑭)  -- [21] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (maintenance of the paradox where mind observes its own observation process)
  (.arrow 𐑭 𐑳 𐑡)  -- [22] IFIX | prot := 𐑭 | irreversible fixation — winding number (crystallization of stable self-model into enduring personality pattern)
  (.arrow 𐑡 𐑭 𐑼)  -- [23] TANCH | top := 𐑡 | terminal object — connectivity boundary (completion of conscious system with stable boundary conditions)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def mind_true_arm : IGProtocol 𐑼 𐑡 :=
  (mind_protocol).restrictToEVALT

-- false arm
noncomputable def mind_false_arm : IGProtocol 𐑼 𐑡 :=
  (mind_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem mind_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
