-- IGProtocol scaffold: VINIT → TANCH → IMSCRIB → AFWD → FSPLIT → EVALT → EVALF → ENGAGR → CLINK → FFUSE → AREV → IFIX
-- Class: profitable boundary puncture
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(4, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑠  | terminal object — connectivity boundary
--   [2] IMSCRIB   gram   := 𐑠               𐑡 → 𐑾  | identity — self-imscription
--   [3] AFWD      rel    := 𐑾               𐑠 → 𐑚  | forward morphism — bidirectional arrow
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [8] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [10] AREV      pol    := 𐑗               𐑙 → 𐑭  | reverse morphism — parity flip
--   [11] IFIX      prot   := 𐑭               𐑗 → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def profitable_boundary_puncture_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Genesis of the raw network state before any exchange perimeter is established.)
  (.arrow 𐑡 𐑼 𐑠)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (Establishment of the cryptographic boundary that contains the validation logic.)
  (.arrow 𐑠 𐑡 𐑾)  -- [2] IMSCRIB | gram := 𐑠 | identity — self-imscription (The boundary achieves self awareness and recognizes its own perimeter state.)
  (.arrow 𐑾 𐑠 𐑚)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Injection of the atomic arbitrage order directed toward the boundary.)
  -- FSPLIT [4] (gran := 𐑚) (The validation gate splits the atomic order into distinct buy and sell legs.) / FFUSE [9] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The buy leg evaluates as authorized and profitable on the true branch.)
      -- F-branch (3 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [6] EVALF | chir := 𐑖 | evaluate-false — chirality check (The sell leg evaluates as blocked or unprofitable on the false branch.)
      .seq
        (.arrow 𐑳 𐑚 𐑙)  -- [7] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The system enters a paradice holding both execution states in the mempool.)
        (.arrow 𐑱 𐑚 𐑙)  -- [8] CLINK | fid := 𐑱 | composition — regime coherence (Composition of the evaluated legs into a unified execution chain.))
    -- reconnect at FFUSE [9]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑗)  -- [9] FFUSE | stoi := 𐑙 (The settlement engine fuses the legs back into the single atomic arbitrage order.)
  (.arrow 𐑗 𐑙 𐑭)  -- [10] AREV | pol := 𐑗 | reverse morphism — parity flip (Descent of the extracted profit back to the originator across the boundary.)
  (.arrow 𐑭 𐑗 𐑼)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (Permanent fixation of the settled transaction into the immutable audit trail.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def profitable_boundary_puncture_true_arm : IGProtocol 𐑼 𐑭 :=
  (profitable_boundary_puncture_protocol).restrictToEVALT

-- false arm
noncomputable def profitable_boundary_puncture_false_arm : IGProtocol 𐑼 𐑭 :=
  (profitable_boundary_puncture_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem profitable_boundary_puncture_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
