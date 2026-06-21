-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → IFIX → FSPLIT → EVALT → CLINK → ENGAGR → EVALF → AREV → FFUSE → IMSCRIB → IFIX → TANCH
-- Class: a rock
-- Fingerprint: sig=(7,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=14
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(4, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑭  | forward morphism — bidirectional arrow
--   [3] IFIX      prot   := 𐑭               𐑾 → 𐑚  | irreversible fixation — winding number
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [11] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [12] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [13] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def a_rock_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Magmatic cooling begins the genesis of the lithic object.)
  (.arrow 𐑠 𐑼 𐑾)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (The specific mineral composition identifies itself through crystallization.)
  (.arrow 𐑾 𐑠 𐑭)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Lithification transforms the cooling melt into a primary igneous body.)
  (.arrow 𐑭 𐑾 𐑚)  -- [3] IFIX | prot := 𐑭 | irreversible fixation — winding number (A trace mineral inclusion is permanently trapped, recording the initial cooli...)
  -- FSPLIT [4] (gran := 𐑚) (Tectonic stress creates a fault line, branching the rock into two potential paths.) / FFUSE [10] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The primary mass maintains cohesion despite the stress.)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (The rock undergoes successive layers of sedimentation on its surface.)
        (.arrow 𐑳 𐑚 𐑙)  -- [7] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Under extreme pressure, the rock enters a metamorphic state, being both its o...)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [8] EVALF | chir := 𐑖 | evaluate-false — chirality check (A surface fracture occurs due to thermal expansion.)
        (.arrow 𐑗 𐑚 𐑙)  -- [9] AREV | pol := 𐑗 | reverse morphism — parity flip (Erosion begins to strip away the fractured surface layers.))
    -- reconnect at FFUSE [10]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [10] FFUSE | stoi := 𐑙 (Subduction and heat fuse the fractured and original components back into a unified metamorphic whole.)
  (.arrow 𐑠 𐑙 𐑭)  -- [11] IMSCRIB | gram := 𐑠 | identity — self-imscription (The rock recognizes its new, transformed identity.)
  (.arrow 𐑭 𐑠 𐑡)  -- [12] IFIX | prot := 𐑭 | irreversible fixation — winding number (A permanent deformation pattern is etched into the crystalline lattice.)
  (.arrow 𐑡 𐑭 𐑼)  -- [13] TANCH | top := 𐑡 | terminal object — connectivity boundary (The rock reaches a state of surface stability, anchored in the crust.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def a_rock_true_arm : IGProtocol 𐑼 𐑡 :=
  (a_rock_protocol).restrictToEVALT

-- false arm
noncomputable def a_rock_false_arm : IGProtocol 𐑼 𐑡 :=
  (a_rock_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem a_rock_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
