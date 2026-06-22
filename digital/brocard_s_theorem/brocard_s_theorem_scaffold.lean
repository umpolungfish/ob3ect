-- IGProtocol scaffold: VINIT → TANCH → AFWD → AFWD → AFWD → CLINK → IMSCRIB → FSPLIT → EVALT → AREV → AREV → AREV → EVALF → FFUSE → ENGAGR → IMSCRIB → IFIX → CLINK → IMSCRIB
-- Class: Brocard's Theorem
-- Fingerprint: sig=(13,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=19
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(7, 13)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑾  | forward morphism — bidirectional arrow
--   [3] AFWD      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [4] AFWD      rel    := 𐑾               𐑾 → 𐑱  | forward morphism — bidirectional arrow
--   [5] CLINK     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [6] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [9] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [11] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [12] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [14] ENGAGR    stoi   := 𐑳               𐑙 → 𐑠  | engage paradox — B-state, both arms
--   [15] IMSCRIB   gram   := 𐑠               𐑳 → 𐑭  | identity — self-imscription
--   [16] IFIX      prot   := 𐑭               𐑠 → 𐑱  | irreversible fixation — winding number
--   [17] CLINK     fid    := 𐑱               𐑭 → 𐑠  | composition — regime coherence
--   [18] IMSCRIB   gram   := 𐑠               𐑱 → 𐑼  | identity — self-imscription

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def brocards_theorem_protocol : IGProtocol 𐑼 𐑠 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (three vertices A, B, C emerge from void; no structure yet)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (circumcircle is drawn, sealing the boundary; all Brocard constructions must l...)
  (.arrow 𐑾 𐑡 𐑾)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (angle bisector from vertex A toward the interior, directed forward)
  (.arrow 𐑾 𐑾 𐑾)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (angle bisector from vertex B toward the interior, directed forward)
  (.arrow 𐑾 𐑾 𐑱)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (angle bisector from vertex C toward the interior, directed forward)
  (.arrow 𐑱 𐑾 𐑠)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (the three angle bisectors compose; they meet at a single point Ω (first Broca...)
  (.arrow 𐑠 𐑱 𐑚)  -- [6] IMSCRIB | gram := 𐑠 | identity — self-imscription (the Brocard angle ω is recognized as the invariant self-reference; it is the ...)
  -- FSPLIT [7] (gran := 𐑚) (Ω splits into two paths: forward (T-arm) and isogonal reflection (F-arm)) / FFUSE [13] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (4 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [8] EVALT | crit := ⊙ | evaluate-true — criticality gate open (T-arm affirms: Ω is real, unique, and lies strictly inside the triangle)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [9] AREV | pol := 𐑗 | reverse morphism — parity flip (F-arm begins with isogonal conjugacy; the angle bisectors are reflected acros...)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [10] AREV | pol := 𐑗 | reverse morphism — parity flip (isogonal reflection of the second angle bisector)
        (.arrow 𐑗 𐑚 𐑙)  -- [11] AREV | pol := 𐑗 | reverse morphism — parity flip (isogonal reflection of the third angle bisector)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [12] EVALF | chir := 𐑖 | evaluate-false — chirality check (F-arm evaluates: the reflected bisectors meet at Ω', the second Brocard point))
    -- reconnect at FFUSE [13]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [13] FFUSE | stoi := 𐑙 (the two arms (T-arm with Ω, F-arm with Ω') fuse back into a single coherent Brocard configuration)
  (.arrow 𐑳 𐑙 𐑠)  -- [14] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (both Ω and Ω' are held simultaneously; they share the same Brocard angle ω; p...)
  (.arrow 𐑠 𐑳 𐑭)  -- [15] IMSCRIB | gram := 𐑠 | identity — self-imscription (the Brocard angle ω is re-recognized as the identity that binds both points; ...)
  (.arrow 𐑭 𐑠 𐑱)  -- [16] IFIX | prot := 𐑭 | irreversible fixation — winding number (the Brocard angle ω is permanently recorded as an immutable property of trian...)
  (.arrow 𐑱 𐑭 𐑠)  -- [17] CLINK | fid := 𐑱 | composition — regime coherence (the complete Brocard configuration (Ω, Ω', ω) is composed into the triangle's...)
  (.arrow 𐑠 𐑱 𐑼)  -- [18] IMSCRIB | gram := 𐑠 | identity — self-imscription (the entire Brocard structure recognizes itself as a closed, self-referential ...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def brocards_theorem_true_arm : IGProtocol 𐑼 𐑠 :=
  (brocards_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def brocards_theorem_false_arm : IGProtocol 𐑼 𐑠 :=
  (brocards_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem brocards_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
