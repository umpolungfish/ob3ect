-- IGProtocol scaffold: VINIT → TANCH → AFWD → CLINK → FSPLIT → EVALT → AFWD → FSPLIT → EVALF → AREV → CLINK → FFUSE → ENGAGR → IMSCRIB → CLINK → IFIX → AFWD → FSPLIT → EVALT → FFUSE → IMSCRIB → CLINK → IFIX → AREV → EVALT → FFUSE → IMSCRIB → CLINK → IFIX → TANCH
-- Class: Operation of the Rohonc Codex
-- Fingerprint: sig=(16,6,5,3)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=30
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(7, 11), (17, 19), (4, 25)]

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
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [12] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [13] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [14] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [15] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [16] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [17] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [18] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [19] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [20] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [21] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [22] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [23] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [24] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [25] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [26] IMSCRIB   gram   := 𐑠               𐑙 → 𐑱  | identity — self-imscription
--   [27] CLINK     fid    := 𐑱               𐑠 → 𐑭  | composition — regime coherence
--   [28] IFIX      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [29] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def operation_of_the_rohonc_codex_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Codex unopened — void state before decipherment begins)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (Leather binding — terminal anchor containing the manuscript system)
  (.arrow 𐑾 𐑡 𐑱)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Forward reading — advancing left-to-right across folio lines)
  (.arrow 𐑱 𐑾 𐑚)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (Glyph chaining — linking character to character into word forms)
  -- FSPLIT [4] (gran := 𐑚) (Ambiguous glyph — branching into phonetic and semantic candidate paths) / FFUSE [25] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (10 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Confirmed reading — accepting proposed phonetic mapping on T-arm)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [6] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Forward reading — advancing along T-arm to next glyph)
      .seq
        (.arrow 𐑳 𐑚 𐑙)  -- [12] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Dual cipher layer — holding competing interpretations simultaneously)
      .seq
        (.arrow 𐑠 𐑚 𐑙)  -- [13] IMSCRIB | gram := 𐑠 | identity — self-imscription (Scribe's hand — script pattern self-recognizing structural rules)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [14] CLINK | fid := 𐑱 | composition — regime coherence (Glyph chaining — linking resolved word to adjacent illustration)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [15] IFIX | prot := 𐑭 | irreversible fixation — winding number (Marginal annotation — permanently recording confirmed translation)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [16] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Forward reading — advancing to next folio block)
      .seq
        (.arrow 𐑠 𐑚 𐑙)  -- [20] IMSCRIB | gram := 𐑠 | identity — self-imscription (Scribe's hand — stylistic markers self-referencing author identity)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [21] CLINK | fid := 𐑱 | composition — regime coherence (Glyph chaining — chaining sentence to narrative arc)
        (.arrow 𐑭 𐑚 𐑙)  -- [22] IFIX | prot := 𐑭 | irreversible fixation — winding number (Marginal annotation — appending completed folio to archival log)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [23] AREV | pol := 𐑗 | reverse morphism — parity flip (Backtracking — reversing to cross-reference marginal index)
        (.arrow ⊙ 𐑚 𐑙)  -- [24] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Confirmed reading — confirming index cross-match))
    -- reconnect at FFUSE [25]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [25] FFUSE | stoi := 𐑙 (Contextual convergence — fusing index data with main text)
  -- FSPLIT [7] (gran := 𐑚) (Ambiguous glyph — branching next character into historical linguistics paths) / FFUSE [11] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (0 nodes)
      (.refl 𐑙)  -- T-branch: empty arc (direct to FFUSE.T)
      -- F-branch (3 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [8] EVALF | chir := 𐑖 | evaluate-false — chirality check (Rejected hypothesis — discarding mismatched etymological root on F-arm)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [9] AREV | pol := 𐑗 | reverse morphism — parity flip (Backtracking — reversing descent path on F-arm to re-examine sequence)
        (.arrow 𐑱 𐑚 𐑙)  -- [10] CLINK | fid := 𐑱 | composition — regime coherence (Glyph chaining — re-linking corrected phonetic sequence))
    -- reconnect at FFUSE [11]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑙)  -- [11] FFUSE | stoi := 𐑙 (Contextual convergence — fusing T and F arms back to original glyph form)
  -- FSPLIT [17] (gran := 𐑚) (Ambiguous glyph — branching new cluster into syntactic parse trees) / FFUSE [19] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [18] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Confirmed reading — validating syntactic structure on T-arm)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [19]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑙)  -- [19] FFUSE | stoi := 𐑙 (Contextual convergence — fusing parse trees into coherent sentence)
  (.arrow 𐑠 𐑙 𐑱)  -- [26] IMSCRIB | gram := 𐑠 | identity — self-imscription (Scribe's hand — codex self-recognizing complete semantic loop)
  (.arrow 𐑱 𐑠 𐑭)  -- [27] CLINK | fid := 𐑱 | composition — regime coherence (Glyph chaining — assembling final decoded narrative)
  (.arrow 𐑭 𐑱 𐑡)  -- [28] IFIX | prot := 𐑭 | irreversible fixation — winding number (Marginal annotation — locking final translation in permanent record)
  (.arrow 𐑡 𐑭 𐑼)  -- [29] TANCH | top := 𐑡 | terminal object — connectivity boundary (Leather binding — closing the binding and sealing the decipherment system)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def operation_of_the_rohonc_codex_true_arm : IGProtocol 𐑼 𐑡 :=
  (operation_of_the_rohonc_codex_protocol).restrictToEVALT

-- false arm
noncomputable def operation_of_the_rohonc_codex_false_arm : IGProtocol 𐑼 𐑡 :=
  (operation_of_the_rohonc_codex_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem operation_of_the_rohonc_codex_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
