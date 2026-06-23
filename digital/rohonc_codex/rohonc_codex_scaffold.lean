-- IGProtocol scaffold: VINIT → AFWD → CLINK → FSPLIT → EVALT → EVALF → FFUSE → AREV → ENGAGR → IMSCRIB → CLINK → IFIX → TANCH
-- Class: Rohonc Codex
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 6)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑱  | forward morphism — bidirectional arrow
--   [2] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [7] AREV      pol    := 𐑗               𐑙 → 𐑳  | reverse morphism — parity flip
--   [8] ENGAGR    stoi   := 𐑳               𐑗 → 𐑠  | engage paradox — B-state, both arms
--   [9] IMSCRIB   gram   := 𐑠               𐑳 → 𐑱  | identity — self-imscription
--   [10] CLINK     fid    := 𐑱               𐑠 → 𐑭  | composition — regime coherence
--   [11] IFIX      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [12] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def rohonc_codex_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Genesis of the codex as an unknown artifact before analysis begins)
  (.arrow 𐑾 𐑼 𐑱)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Forward morphism of initial paleographic analysis toward target meaning)
  (.arrow 𐑱 𐑾 𐑚)  -- [2] CLINK | fid := 𐑱 | composition — regime coherence (Sequential chaining of glyph sequences into candidate pseudo-words)
  -- FSPLIT [3] (gran := 𐑚) (Co-multiplication branching into competing hermeneutic paths) / FFUSE [6] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Affirmative branch — matches known morphological rules)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [5] EVALF | chir := 𐑖 | evaluate-false — chirality check (Negative branch — fails frequency distribution test))
    -- reconnect at FFUSE [6]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑗)  -- [6] FFUSE | stoi := 𐑙 (Multiplication reconstituting the candidate word from both T and F arms)
  (.arrow 𐑗 𐑙 𐑳)  -- [7] AREV | pol := 𐑗 | reverse morphism — parity flip (Contravariant descent — deconstructs residual false hypotheses)
  (.arrow 𐑳 𐑗 𐑠)  -- [8] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Paradice — simultaneously holds authentic and forged evidence without resolution)
  (.arrow 𐑠 𐑳 𐑱)  -- [9] IMSCRIB | gram := 𐑠 | identity — self-imscription (Identity — the codex's internal script references its own structural rules)
  (.arrow 𐑱 𐑠 𐑭)  -- [10] CLINK | fid := 𐑱 | composition — regime coherence (Composition — links self-reference to external scholarly corpus)
  (.arrow 𐑭 𐑱 𐑡)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (ROM fixation — permanently records the unresolved paradice state)
  (.arrow 𐑡 𐑭 𐑼)  -- [12] TANCH | top := 𐑡 | terminal object — connectivity boundary (Terminal anchor — seals the manuscript within the historical archive)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def rohonc_codex_true_arm : IGProtocol 𐑼 𐑡 :=
  (rohonc_codex_protocol).restrictToEVALT

-- false arm
noncomputable def rohonc_codex_false_arm : IGProtocol 𐑼 𐑡 :=
  (rohonc_codex_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem rohonc_codex_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
