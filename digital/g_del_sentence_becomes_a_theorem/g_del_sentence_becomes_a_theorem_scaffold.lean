-- IGProtocol scaffold: VINIT → IMSCRIB → TANCH → FSPLIT → AFWD → EVALT → AREV → EVALF → FFUSE → ENGAGR → CLINK → IFIX
-- Class: Gödel Sentence Becomes a Theorem
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑡  | identity — self-imscription
--   [2] TANCH     top    := 𐑡               𐑠 → 𐑚  | terminal object — connectivity boundary
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [9] ENGAGR    stoi   := 𐑳               𐑙 → 𐑱  | engage paradox — B-state, both arms
--   [10] CLINK     fid    := 𐑱               𐑳 → 𐑭  | composition — regime coherence
--   [11] IFIX      prot   := 𐑭               𐑱 → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def g_del_sentence_becomes_a_theorem_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Initialize the formal system in the void before self referential syntax is co...)
  (.arrow 𐑠 𐑼 𐑡)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (Construct the self referential Gödel sentence that encodes its own unprovabil...)
  (.arrow 𐑡 𐑠 𐑚)  -- [2] TANCH | top := 𐑡 | terminal object — connectivity boundary (Establish the paraconsistent kernel as the boundary containing the system wit...)
  -- FSPLIT [3] (gran := 𐑚) (Decompose the Gödel sentence into its semantic truth branch and its syntactic provability branch.) / FFUSE [8] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Apply the forward morphism of truth evaluation along the T arm.)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Affirm the semantic truth of the sentence in the standard model, anchoring th...)
        (.arrow 𐑗 𐑚 𐑙)  -- [6] AREV | pol := 𐑗 | reverse morphism — parity flip (Apply the reverse morphism of unprovability descent along the F arm.)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [7] EVALF | chir := 𐑖 | evaluate-false — chirality check (Affirm the syntactic unprovability of the sentence in the formal system, anch...))
    -- reconnect at FFUSE [8]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [8] FFUSE | stoi := 𐑙 (Reintegrate the truth and unprovability branches into the unified B state dialetheia.)
  (.arrow 𐑳 𐑙 𐑱)  -- [9] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Enter the paradice where the sentence is simultaneously true and unprovable.)
  (.arrow 𐑱 𐑳 𐑭)  -- [10] CLINK | fid := 𐑱 | composition — regime coherence (Compose the iterated incompleteness operator to verify the Frobenius closure ...)
  (.arrow 𐑭 𐑱 𐑼)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (Fix the B state as a permanent structural theorem, closing the incompleteness...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def g_del_sentence_becomes_a_theorem_true_arm : IGProtocol 𐑼 𐑭 :=
  (g_del_sentence_becomes_a_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def g_del_sentence_becomes_a_theorem_false_arm : IGProtocol 𐑼 𐑭 :=
  (g_del_sentence_becomes_a_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem g_del_sentence_becomes_a_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
