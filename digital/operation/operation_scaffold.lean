-- IGProtocol scaffold: VINIT → TANCH → AFWD → IMSCRIB → CLINK → FSPLIT → EVALT → EVALF → FFUSE → ENGAGR → AREV → IFIX
-- Class: Operation
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(5, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑠  | forward morphism — bidirectional arrow
--   [3] IMSCRIB   gram   := 𐑠               𐑾 → 𐑱  | identity — self-imscription
--   [4] CLINK     fid    := 𐑱               𐑠 → 𐑚  | composition — regime coherence
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [9] ENGAGR    stoi   := 𐑳               𐑙 → 𐑗  | engage paradox — B-state, both arms
--   [10] AREV      pol    := 𐑗               𐑳 → 𐑭  | reverse morphism — parity flip
--   [11] IFIX      prot   := 𐑭               𐑗 → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def operation_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The uninitiated void, the operator in ordinary consciousness before the ritua...)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (The Magic Circle is drawn, establishing the 9-foot boundary that contains and...)
  (.arrow 𐑾 𐑡 𐑠)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Consecration of instruments and self, moving forward into the operational state.)
  (.arrow 𐑠 𐑾 𐑱)  -- [3] IMSCRIB | gram := 𐑠 | identity — self-imscription (The Operator's Will asserts itself, recognizing its own authority and identit...)
  (.arrow 𐑱 𐑠 𐑚)  -- [4] CLINK | fid := 𐑱 | composition — regime coherence (The sequential ritual steps are chained: purification, incense, prayer, and p...)
  -- FSPLIT [5] (gran := 𐑚) (The Conjuration is spoken, splitting the operational intent into the Invocation and the Constraint.) / FFUSE [8] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [6] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The Spirit Manifests in the triangle, appearing and obeying the operator's de...)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [7] EVALF | chir := 𐑖 | evaluate-false — chirality check (The Spirit Refuses or resists, the conjuration fails to compel the entity (F-...))
    -- reconnect at FFUSE [8]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [8] FFUSE | stoi := 𐑙 (The License to Depart is granted, the spirit is released, and the ritual loop is closed, reconstituting the Completed Magical Operation.)
  (.arrow 𐑳 𐑙 𐑗)  -- [9] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The Grimoire's Paradox is held: the seal that summons is simultaneously the s...)
  (.arrow 𐑗 𐑳 𐑭)  -- [10] AREV | pol := 𐑗 | reverse morphism — parity flip (Banishing and clearing the space, the descent from the operational state back...)
  (.arrow 𐑭 𐑗 𐑼)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (The Grimoire Record is inscribed, the permanent fixation of the seal and the ...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def operation_true_arm : IGProtocol 𐑼 𐑭 :=
  (operation_protocol).restrictToEVALT

-- false arm
noncomputable def operation_false_arm : IGProtocol 𐑼 𐑭 :=
  (operation_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem operation_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
