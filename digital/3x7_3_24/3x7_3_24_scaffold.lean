-- IGProtocol scaffold: VINIT → FSPLIT → IMSCRIB → AFWD → CLINK → AFWD → IMSCRIB → EVALT → FFUSE → IFIX → TANCH
-- Class: 3x7+3=24
-- Fingerprint: sig=(7,2,1,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=11
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(1, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [3] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [5] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [9] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [10] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def 3x7_3_24_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑚)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Initialize arithmetic processor)
  -- FSPLIT [1] (gran := 𐑚) (Split equation into LHS (3*7+3) and RHS (24)) / FFUSE [8] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (6 nodes)
      .seq
        (.arrow 𐑠 𐑚 𐑙)  -- [2] IMSCRIB | gram := 𐑠 | identity — self-imscription (Identify RHS as constant 24)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Execute multiplication 3 * 7)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [4] CLINK | fid := 𐑱 | composition — regime coherence (Compose result 21 with next operator (+))
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [5] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Execute addition 21 + 3)
      .seq
        (.arrow 𐑠 𐑚 𐑙)  -- [6] IMSCRIB | gram := 𐑠 | identity — self-imscription (Identify LHS result as 24)
        (.arrow ⊙ 𐑚 𐑙)  -- [7] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Affirm that LHS (24) matches RHS (24))
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [8]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [8] FFUSE | stoi := 𐑙 (Reconstitute the balanced equation)
  (.arrow 𐑭 𐑙 𐑡)  -- [9] IFIX | prot := 𐑭 | irreversible fixation — winding number (Commit 3x7+3=24 to permanent memory)
  (.arrow 𐑡 𐑭 𐑼)  -- [10] TANCH | top := 𐑡 | terminal object — connectivity boundary (Close calculation boundary)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def 3x7_3_24_true_arm : IGProtocol 𐑼 𐑡 :=
  (3x7_3_24_protocol).restrictToEVALT

-- ── Verification theorems ───────────────────────────────────────────────────

theorem 3x7_3_24_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
