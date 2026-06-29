-- IGProtocol scaffold: VINIT → TANCH → AFWD → FSPLIT → EVALT → CLINK → EVALF → AREV → FFUSE → ENGAGR → IMSCRIB → IFIX → TANCH
-- Class: ob3ect_sequence
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑚  | forward morphism — bidirectional arrow
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [9] ENGAGR    stoi   := 𐑳               𐑙 → 𐑠  | engage paradox — B-state, both arms
--   [10] IMSCRIB   gram   := 𐑠               𐑳 → 𐑭  | identity — self-imscription
--   [11] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [12] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def ob3ect_sequence_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The uninitiated operator approaches the grimoire in a state of void.)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (The 9-foot Magic Circle is cast, establishing the hermetic boundary.)
  (.arrow 𐑾 𐑡 𐑚)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The Conjuration is spoken, a forward morphism calling the spirit into the tri...)
  -- FSPLIT [3] (gran := 𐑚) (The Seal of Solomon is deployed, branching the operation into Binding and Releasing.) / FFUSE [8] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The spirit manifests in the triangle and submits to the conjuration (T-arm).)
        (.arrow 𐑱 𐑚 𐑙)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (The sequential chaining of the spirit's office to the operator's will.)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [6] EVALF | chir := 𐑖 | evaluate-false — chirality check (The spirit refuses or the operator's purity fails, breaching the circle (F-arm).)
        (.arrow 𐑗 𐑚 𐑙)  -- [7] AREV | pol := 𐑗 | reverse morphism — parity flip (The reverse morphism of the License to Depart or the collapse of the rite.))
    -- reconnect at FFUSE [8]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [8] FFUSE | stoi := 𐑙 (The Frobenius closure (μ∘δ = id) is realized, reconstituting the unified authority.)
  (.arrow 𐑳 𐑙 𐑠)  -- [9] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The paradice of the unbanished spirit and the HGA held simultaneously without...)
  (.arrow 𐑠 𐑳 𐑭)  -- [10] IMSCRIB | gram := 𐑠 | identity — self-imscription (The operator realizes they are the instrument; the text reads the reader (O_i...)
  (.arrow 𐑭 𐑠 𐑡)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (The structural fingerprint of the operation is permanently fixed in the grimo...)
  (.arrow 𐑡 𐑭 𐑼)  -- [12] TANCH | top := 𐑡 | terminal object — connectivity boundary (The terminal closure of the circle, sealing the operation and containing the ...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def ob3ect_sequence_true_arm : IGProtocol 𐑼 𐑡 :=
  (ob3ect_sequence_protocol).restrictToEVALT

-- false arm
noncomputable def ob3ect_sequence_false_arm : IGProtocol 𐑼 𐑡 :=
  (ob3ect_sequence_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem ob3ect_sequence_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
