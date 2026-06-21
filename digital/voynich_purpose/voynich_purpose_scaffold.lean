-- IGProtocol scaffold: VINIT → ENGAGR → AFWD → IMSCRIB → AREV → CLINK → FSPLIT → EVALT → FFUSE → IFIX → AFWD → IMSCRIB → CLINK → AFWD → FSPLIT → EVALT → FFUSE → IFIX → TANCH
-- Class: Voynich Purpose
-- Fingerprint: sig=(10,4,3,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=19
-- Expected tier: O₀
-- FSPLIT/FFUSE pairs: [(6, 8), (14, 16)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑳  | initial object — ground of distinction
--   [1] ENGAGR    stoi   := 𐑳               𐑼 → 𐑾  | engage paradox — B-state, both arms
--   [2] AFWD      rel    := 𐑾               𐑳 → 𐑠  | forward morphism — bidirectional arrow
--   [3] IMSCRIB   gram   := 𐑠               𐑾 → 𐑗  | identity — self-imscription
--   [4] AREV      pol    := 𐑗               𐑠 → 𐑱  | reverse morphism — parity flip
--   [5] CLINK     fid    := 𐑱               𐑗 → 𐑚  | composition — regime coherence
--   [6] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [9] IFIX      prot   := 𐑭               𐑙 → 𐑾  | irreversible fixation — winding number
--   [10] AFWD      rel    := 𐑾               𐑭 → 𐑠  | forward morphism — bidirectional arrow
--   [11] IMSCRIB   gram   := 𐑠               𐑾 → 𐑱  | identity — self-imscription
--   [12] CLINK     fid    := 𐑱               𐑠 → 𐑾  | composition — regime coherence
--   [13] AFWD      rel    := 𐑾               𐑱 → 𐑚  | forward morphism — bidirectional arrow
--   [14] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [15] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [16] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [17] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [18] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def voynich_purpose_protocol : IGProtocol 𐑼 𐑡 :=
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑳)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Operator approaches the closed cosmological foldout)
  (.arrow 𐑳 𐑼 𐑾)  -- [1] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Operator sets criticality (⊙_c) to investigative-open)
  (.arrow 𐑾 𐑳 𐑠)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Operator brings Frobenius parity (Φ_}) and winding invariant (Ω_Z))
  (.arrow 𐑠 𐑾 𐑗)  -- [3] IMSCRIB | gram := 𐑠 | identity — self-imscription (Physical act of unfolding confers chirality (Ħ))
  (.arrow 𐑗 𐑠 𐑱)  -- [4] AREV | pol := 𐑗 | reverse morphism — parity flip (Descent into Herbal section to address the dimensional floor (Ð))
  (.arrow 𐑱 𐑗 𐑚)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (Mapping plant features to relational mode and kinetic profile)
  -- FSPLIT [6] (gran := 𐑚) (Initiation of Gate 1 split-fuse test in the Pharmaceutical section) / FFUSE [8] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [7] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Identification of the pharmaceutical entry with interior mark)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [8]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [8] FFUSE | stoi := 𐑙 (Conjunction of parity arms to verify Frobenius closure)
  (.arrow 𐑭 𐑙 𐑾)  -- [9] IFIX | prot := 𐑭 | irreversible fixation — winding number (Temporary fixation of the recipe components (substrate, process, duration, yi...)
  (.arrow 𐑾 𐑭 𐑠)  -- [10] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Traversal of the Biological heap using the pointer graph (nymphs))
  (.arrow 𐑠 𐑾 𐑱)  -- [11] IMSCRIB | gram := 𐑠 | identity — self-imscription (Gate 2 activation; session state appears as a node in the heap)
  (.arrow 𐑱 𐑠 𐑾)  -- [12] CLINK | fid := 𐑱 | composition — regime coherence (Accumulation of the final address chain)
  (.arrow 𐑾 𐑱 𐑚)  -- [13] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Entry into Stars section peripheral registers)
  -- FSPLIT [14] (gran := 𐑚) (Verification of winding invariant (Ω_Z)) / FFUSE [16] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [15] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Winding number matches; session closes clean)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [16]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [16] FFUSE | stoi := 𐑙 (Reconstitution of the validated session key)
  (.arrow 𐑭 𐑙 𐑡)  -- [17] IFIX | prot := 𐑭 | irreversible fixation — winding number (Final fixation of the pharmaceutical output for application)
  (.arrow 𐑡 𐑭 𐑼)  -- [18] TANCH | top := 𐑡 | terminal object — connectivity boundary (Terminal anchor; session terminates; Ω_Z increments)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def voynich_purpose_true_arm : IGProtocol 𐑼 𐑡 :=
  (voynich_purpose_protocol).restrictToEVALT

-- ── Verification theorems ───────────────────────────────────────────────────

theorem voynich_purpose_tier : TierFunctor.obj 𐑼 = .O₀ := by decide

end Imscribing
