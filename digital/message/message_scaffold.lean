-- IGProtocol scaffold: VINIT → AFWD → IFIX → CLINK → AREV → FSPLIT → EVALT → EVALF → ENGAGR → FFUSE → IMSCRIB → TANCH → CLINK → AFWD → IFIX → CLINK → AREV → IMSCRIB → ENGAGR → IFIX → TANCH
-- Class: Message
-- Fingerprint: sig=(12,2,4,3)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=21
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(5, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑭  | forward morphism — bidirectional arrow
--   [2] IFIX      prot   := 𐑭               𐑾 → 𐑱  | irreversible fixation — winding number
--   [3] CLINK     fid    := 𐑱               𐑭 → 𐑗  | composition — regime coherence
--   [4] AREV      pol    := 𐑗               𐑱 → 𐑚  | reverse morphism — parity flip
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [10] IMSCRIB   gram   := 𐑠               𐑙 → 𐑡  | identity — self-imscription
--   [11] TANCH     top    := 𐑡               𐑠 → 𐑱  | terminal object — connectivity boundary
--   [12] CLINK     fid    := 𐑱               𐑡 → 𐑾  | composition — regime coherence
--   [13] AFWD      rel    := 𐑾               𐑱 → 𐑭  | forward morphism — bidirectional arrow
--   [14] IFIX      prot   := 𐑭               𐑾 → 𐑱  | irreversible fixation — winding number
--   [15] CLINK     fid    := 𐑱               𐑭 → 𐑗  | composition — regime coherence
--   [16] AREV      pol    := 𐑗               𐑱 → 𐑠  | reverse morphism — parity flip
--   [17] IMSCRIB   gram   := 𐑠               𐑗 → 𐑳  | identity — self-imscription
--   [18] ENGAGR    stoi   := 𐑳               𐑠 → 𐑭  | engage paradox — B-state, both arms
--   [19] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [20] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def message_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The sender has an intention — a thought, a meaning to convey. This exists onl...)
  (.arrow 𐑾 𐑼 𐑭)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The sender encodes the intention into utterance — symbols, phonemes, marks, g...)
  (.arrow 𐑭 𐑾 𐑱)  -- [2] IFIX | prot := 𐑭 | irreversible fixation — winding number (The utterance is recorded in a permanent medium — written, carved, archived. ...)
  (.arrow 𐑱 𐑭 𐑗)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (The recorded utterance is transmitted — passed from sender to receiver throug...)
  (.arrow 𐑗 𐑱 𐑚)  -- [4] AREV | pol := 𐑗 | reverse morphism — parity flip (The receiver decodes the utterance — transforms the external form back into i...)
  -- FSPLIT [5] (gran := 𐑚) (The utterance admits multiple interpretations. The same marks/sounds yield different meanings in different receivers or in the same receiver at different times.) / FFUSE [9] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [6] EVALT | crit := ⊙ | evaluate-true — criticality gate open (In receiver A's decoding, the utterance means X. The receiver understands thi...)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [7] EVALF | chir := 𐑖 | evaluate-false — chirality check (In receiver B's decoding, the utterance means Y, which contradicts X. The rec...)
        (.arrow 𐑳 𐑚 𐑙)  -- [8] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The utterance is simultaneously understood as both X and Y without resolution...))
    -- reconnect at FFUSE [9]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [9] FFUSE | stoi := 𐑙 (Multiple receivers compare their decodings. They discover that both X and Y are valid readings of the same utterance. The branches reconstitute the original utterance's full semantic content.)
  (.arrow 𐑠 𐑙 𐑡)  -- [10] IMSCRIB | gram := 𐑠 | identity — self-imscription (The receiver's decoded thought matches the sender's original intention exactl...)
  (.arrow 𐑡 𐑠 𐑱)  -- [11] TANCH | top := 𐑡 | terminal object — connectivity boundary (The transmission is complete. The message has been received, decoded, and rec...)
  (.arrow 𐑱 𐑡 𐑾)  -- [12] CLINK | fid := 𐑱 | composition — regime coherence (A new message is triggered by the reception of the first. The receiver become...)
  (.arrow 𐑾 𐑱 𐑭)  -- [13] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The receiver encodes their response — a new utterance triggered by understand...)
  (.arrow 𐑭 𐑾 𐑱)  -- [14] IFIX | prot := 𐑭 | irreversible fixation — winding number (The response is recorded. It becomes a permanent artifact.)
  (.arrow 𐑱 𐑭 𐑗)  -- [15] CLINK | fid := 𐑱 | composition — regime coherence (The response is transmitted back to the original sender.)
  (.arrow 𐑗 𐑱 𐑠)  -- [16] AREV | pol := 𐑗 | reverse morphism — parity flip (The original sender decodes the response.)
  (.arrow 𐑠 𐑗 𐑳)  -- [17] IMSCRIB | gram := 𐑠 | identity — self-imscription (The original sender recognizes their own intention reflected in the receiver'...)
  (.arrow 𐑳 𐑠 𐑭)  -- [18] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The message and its response form a paradice: both are simultaneously true an...)
  (.arrow 𐑭 𐑳 𐑡)  -- [19] IFIX | prot := 𐑭 | irreversible fixation — winding number (The entire exchange is archived. The message-system becomes a record.)
  (.arrow 𐑡 𐑭 𐑼)  -- [20] TANCH | top := 𐑡 | terminal object — connectivity boundary (The boundary closes. The message is complete — not because it has been perfec...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def message_true_arm : IGProtocol 𐑼 𐑡 :=
  (message_protocol).restrictToEVALT

-- false arm
noncomputable def message_false_arm : IGProtocol 𐑼 𐑡 :=
  (message_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem message_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
