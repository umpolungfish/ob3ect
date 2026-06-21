-- IGProtocol scaffold: VINIT → AFWD → IMSCRIB → FSPLIT → EVALT → EVALF → ENGAGR → FFUSE → CLINK → IFIX
-- Class: photon
-- Fingerprint: sig=(4,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=10
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑠  | forward morphism — bidirectional arrow
--   [2] IMSCRIB   gram   := 𐑠               𐑾 → 𐑚  | identity — self-imscription
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] CLINK     fid    := 𐑱               𐑙 → 𐑭  | composition — regime coherence
--   [9] IFIX      prot   := 𐑭               𐑱 → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def photon_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Vacuum fluctuation prepares the potential for excitation)
  (.arrow 𐑾 𐑼 𐑠)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Energy is injected, creating a forward-moving wave-packet)
  (.arrow 𐑠 𐑾 𐑚)  -- [2] IMSCRIB | gram := 𐑠 | identity — self-imscription (The photon identifies its frequency and polarization state)
  -- FSPLIT [3] (gran := 𐑚) (The photon encounters a beam-splitter, branching into Path T and Path F) / FFUSE [7] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Path T undergoes phase-shift toward constructive alignment)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [5] EVALF | chir := 𐑖 | evaluate-false — chirality check (Path F undergoes phase-shift toward destructive alignment)
        (.arrow 𐑳 𐑚 𐑙)  -- [6] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The photon exists as a non-local superposition across both paths))
    -- reconnect at FFUSE [7]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [7] FFUSE | stoi := 𐑙 (The paths converge at a detector, reconstituting the single photon identity)
  (.arrow 𐑱 𐑙 𐑭)  -- [8] CLINK | fid := 𐑱 | composition — regime coherence (The photon continues its trajectory toward a matter boundary)
  (.arrow 𐑭 𐑱 𐑼)  -- [9] IFIX | prot := 𐑭 | irreversible fixation — winding number (The photon strikes a sensor, permanently recording its position and ending it...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def photon_true_arm : IGProtocol 𐑼 𐑭 :=
  (photon_protocol).restrictToEVALT

-- false arm
noncomputable def photon_false_arm : IGProtocol 𐑼 𐑭 :=
  (photon_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem photon_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
