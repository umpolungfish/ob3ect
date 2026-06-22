-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → AFWD → CLINK → EVALF → AREV → CLINK → ENGAGR → FFUSE → EVALT → IMSCRIB → IFIX → TANCH
-- Class: Boundary Puncture
-- Fingerprint: sig=(8,2,4,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [9] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [10] FFUSE     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [11] EVALT     crit   := ⊙               𐑙 → 𐑠  | evaluate-true — criticality gate open
--   [12] IMSCRIB   gram   := 𐑠               ⊙ → 𐑭  | identity — self-imscription
--   [13] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [14] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def boundary_puncture_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (latent manifold void initialization)
  (.arrow 𐑾 𐑼 𐑚)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (puncture vector injection into boundary)
  -- FSPLIT [2] (gran := 𐑚) (boundary bifurcation at impact point) / FFUSE [10] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (structural continuity affirmation on T-arm)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (edge-invariant propagation along continuity)
        (.arrow 𐑱 𐑚 𐑙)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (chaining forward morphism for invariant transfer)
      -- F-branch (4 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [6] EVALF | chir := 𐑖 | evaluate-false — chirality check (topological contradiction registration on F-arm)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [7] AREV | pol := 𐑗 | reverse morphism — parity flip (paradoxical descent feedback along rupture)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [8] CLINK | fid := 𐑱 | composition — regime coherence (chaining reverse morphism for feedback loop)
        (.arrow 𐑳 𐑚 𐑙)  -- [9] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (B-state dialetheic stabilization at core))
    -- reconnect at FFUSE [10]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 ⊙)  -- [10] FFUSE | stoi := 𐑙 (boundary reconstitution from bifurcated arms)
  (.arrow ⊙ 𐑙 𐑠)  -- [11] EVALT | crit := ⊙ | evaluate-true — criticality gate open (final aperture integrity validation)
  (.arrow 𐑠 ⊙ 𐑭)  -- [12] IMSCRIB | gram := 𐑠 | identity — self-imscription (self-referential recognition of puncture topology)
  (.arrow 𐑭 𐑠 𐑡)  -- [13] IFIX | prot := 𐑭 | irreversible fixation — winding number (permanent topological fixation in adjacency matrix)
  (.arrow 𐑡 𐑭 𐑼)  -- [14] TANCH | top := 𐑡 | terminal object — connectivity boundary (closed manifold seal and system closure)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def boundary_puncture_true_arm : IGProtocol 𐑼 𐑡 :=
  (boundary_puncture_protocol).restrictToEVALT

-- false arm
noncomputable def boundary_puncture_false_arm : IGProtocol 𐑼 𐑡 :=
  (boundary_puncture_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem boundary_puncture_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
