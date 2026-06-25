-- IGProtocol scaffold: VINIT → AFWD → AFWD → FSPLIT → EVALT → FFUSE → IFIX → AREV
-- Class: OMG particle
-- Fingerprint: sig=(4,2,1,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=8
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 5)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑾  | forward morphism — bidirectional arrow
--   [2] AFWD      rel    := 𐑾               𐑾 → 𐑚  | forward morphism — bidirectional arrow
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [6] IFIX      prot   := 𐑭               𐑙 → 𐑗  | irreversible fixation — winding number
--   [7] AREV      pol    := 𐑗               𐑭 → 𐑼  | reverse morphism — parity flip

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def omg_particle_protocol : IGProtocol 𐑼 𐑗 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (the void before the OMG particle exists)
  (.arrow 𐑾 𐑼 𐑾)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (the emergence of the OMG particle from quantum fluctuations)
  (.arrow 𐑾 𐑾 𐑚)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (the particle enters an excited state)
  -- FSPLIT [3] (gran := 𐑚) (the particle branches into possible energy states) / FFUSE [5] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (successful interaction with another particle)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [5]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [5] FFUSE | stoi := 𐑙 (the states reconstitute back into the OMG particle)
  (.arrow 𐑭 𐑙 𐑗)  -- [6] IFIX | prot := 𐑭 | irreversible fixation — winding number (the record of the OMG particle's existence is permanently inscribed)
  (.arrow 𐑗 𐑭 𐑼)  -- [7] AREV | pol := 𐑗 | reverse morphism — parity flip (the decay of the OMG particle back into the quantum field)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def omg_particle_true_arm : IGProtocol 𐑼 𐑗 :=
  (omg_particle_protocol).restrictToEVALT

-- ── Verification theorems ───────────────────────────────────────────────────

theorem omg_particle_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
