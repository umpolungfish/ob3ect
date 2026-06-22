-- IGProtocol scaffold: VINIT → IMSCRIB → AREV → FSPLIT → AFWD → FFUSE → CLINK → IFIX → IMSCRIB → FSPLIT → EVALT → AFWD → EVALF → AREV → FFUSE → CLINK → FSPLIT → EVALT → EVALF → FFUSE → VINIT → AFWD → IMSCRIB → EVALT → IFIX → ENGAGR → TANCH
-- Class: ob3ect_sequence
-- Fingerprint: sig=(13,6,6,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=27
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 5), (9, 14), (16, 19)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑗  | identity — self-imscription
--   [2] AREV      pol    := 𐑗               𐑠 → 𐑚  | reverse morphism — parity flip
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [6] CLINK     fid    := 𐑱               𐑙 → 𐑭  | composition — regime coherence
--   [7] IFIX      prot   := 𐑭               𐑱 → 𐑠  | irreversible fixation — winding number
--   [8] IMSCRIB   gram   := 𐑠               𐑭 → 𐑚  | identity — self-imscription
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [12] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [13] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [14] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [15] CLINK     fid    := 𐑱               𐑙 → 𐑚  | composition — regime coherence
--   [16] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [17] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [18] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [19] FFUSE     stoi   := 𐑙               𐑙 → 𐑼  | fuse μ — assembly mode
--   [20] VINIT     dim    := 𐑼               𐑙 → 𐑾  | initial object — ground of distinction
--   [21] AFWD      rel    := 𐑾               𐑼 → 𐑠  | forward morphism — bidirectional arrow
--   [22] IMSCRIB   gram   := 𐑠               𐑾 → ⊙  | identity — self-imscription
--   [23] EVALT     crit   := ⊙               𐑠 → 𐑭  | evaluate-true — criticality gate open
--   [24] IFIX      prot   := 𐑭               ⊙ → 𐑳  | irreversible fixation — winding number
--   [25] ENGAGR    stoi   := 𐑳               𐑭 → 𐑡  | engage paradox — B-state, both arms
--   [26] TANCH     top    := 𐑡               𐑳 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def ob3ect_sequence_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Instantiate Prima Materia (bare category / void state))
  (.arrow 𐑠 𐑼 𐑗)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (Read identity morphism (establish baseline structural loop))
  (.arrow 𐑗 𐑠 𐑚)  -- [2] AREV | pol := 𐑗 | reverse morphism — parity flip (Generate opposite space (reverse arrow / internal mirror))
  -- FSPLIT [3] (gran := 𐑚) (Bootstrap co-multiplication (split information flow)) / FFUSE [5] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow 𐑾 𐑚 𐑙)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Bootstrap forward morphism (chain operations))
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [5]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [5] FFUSE | stoi := 𐑙 (Bootstrap multiplication (recombine, satisfying Frobenius closure))
  (.arrow 𐑱 𐑙 𐑭)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (Compose arrows (build self-referential logic framework))
  (.arrow 𐑭 𐑱 𐑠)  -- [7] IFIX | prot := 𐑭 | irreversible fixation — winding number (Burn OS to ROM (linear type fixation))
  (.arrow 𐑠 𐑭 𐑚)  -- [8] IMSCRIB | gram := 𐑠 | identity — self-imscription (Close bootstrap loop (hook back to initial primitive))
  -- FSPLIT [9] (gran := 𐑚) (Gate 1 Degeneracy Check (split proposed material)) / FFUSE [14] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [10] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Gate 1 T-arm (material survives, μ(δ(x)) = x))
        (.arrow 𐑾 𐑚 𐑙)  -- [11] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Gate 1 T-arm forward (proceed to Gate 2))
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [12] EVALF | chir := 𐑖 | evaluate-false — chirality check (Gate 1 F-arm (degenerate query, material destroyed))
        (.arrow 𐑗 𐑚 𐑙)  -- [13] AREV | pol := 𐑗 | reverse morphism — parity flip (Gate 1 F-arm reverse (terminate session)))
    -- reconnect at FFUSE [14]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [14] FFUSE | stoi := 𐑙 (Gate 1 Recombination (reconstitute material))
  (.arrow 𐑱 𐑙 𐑚)  -- [15] CLINK | fid := 𐑱 | composition — regime coherence (Gate 2 Reactivity Verification (compose substance pointer graph))
  -- FSPLIT [16] (gran := 𐑚) (Gate 2 Branch (check for contraindications)) / FFUSE [19] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [17] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Gate 2 T-arm (substances coexist, valid edges))
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [18] EVALF | chir := 𐑖 | evaluate-false — chirality check (Gate 2 F-arm (contraindicated, no edges)))
    -- reconnect at FFUSE [19]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑼)  -- [19] FFUSE | stoi := 𐑙 (Gate 2 Recombination (merge graph results))
  (.arrow 𐑼 𐑙 𐑾)  -- [20] VINIT | dim := 𐑼 | initial object — ground of distinction (Database Retrieval (instantiate botanical plant entry))
  (.arrow 𐑾 𐑼 𐑠)  -- [21] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Map morphology to preparation opcode pattern)
  (.arrow 𐑠 𐑾 ⊙)  -- [22] IMSCRIB | gram := 𐑠 | identity — self-imscription (Gate 3 Winding Verification (Ω counter check))
  (.arrow ⊙ 𐑠 𐑭)  -- [23] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Gate 3 Pass (winding invariant confirmed))
  (.arrow 𐑭 ⊙ 𐑳)  -- [24] IFIX | prot := 𐑭 | irreversible fixation — winding number (Output Recipe (burn procedural instructions to ROM))
  (.arrow 𐑳 𐑭 𐑡)  -- [25] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Alchemical Transmutation (volatile reaction, paradice state))
  (.arrow 𐑡 𐑳 𐑼)  -- [26] TANCH | top := 𐑡 | terminal object — connectivity boundary (Terminal Anchor (seal O_∞ boundary, query complete))

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def ob3ect_sequence_true_arm : IGProtocol 𐑼 𐑡 :=
  (ob3ect_sequence_protocol).restrictToEVALT

-- false arm
noncomputable def ob3ect_sequence_false_arm : IGProtocol 𐑼 𐑡 :=
  (ob3ect_sequence_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem ob3ect_sequence_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
