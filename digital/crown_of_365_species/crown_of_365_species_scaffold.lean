-- IGProtocol scaffold: VINIT → FSPLIT → AFWD → EVALT → CLINK → IMSCRIB → ENGAGR → AREV → EVALF → FFUSE → IFIX → TANCH
-- Class: crown of 365 species
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(1, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [5] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [6] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [10] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [11] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def crown_of_365_species_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑚)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (unmanifest crown before emanation)
  -- FSPLIT [1] (gran := 𐑚) (crown branches into 365 distinct species) / FFUSE [9] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (6 nodes)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (each species ascends carrying light-spark)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (affirmative reception of imperishable light)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [4] CLINK | fid := 𐑱 | composition — regime coherence (species chained into enneads and decads)
      .seq
        (.arrow 𐑠 𐑚 𐑙)  -- [5] IMSCRIB | gram := 𐑠 | identity — self-imscription (crown recognizes itself as self-complete)
      .seq
        (.arrow 𐑳 𐑚 𐑙)  -- [6] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (excess light held as simultaneous darkness)
        (.arrow 𐑗 𐑚 𐑙)  -- [7] AREV | pol := 𐑗 | reverse morphism — parity flip (descent of light-spark into outer aeons)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [8] EVALF | chir := 𐑖 | evaluate-false — chirality check (poverty state when light is withdrawn))
    -- reconnect at FFUSE [9]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [9] FFUSE | stoi := 𐑙 (all 365 species reunite into original crown)
  (.arrow 𐑭 𐑙 𐑡)  -- [10] IFIX | prot := 𐑭 | irreversible fixation — winding number (eternal sealing of crown in imperishable aeon)
  (.arrow 𐑡 𐑭 𐑼)  -- [11] TANCH | top := 𐑡 | terminal object — connectivity boundary (boundary closes, containing the whole pleroma)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def crown_of_365_species_true_arm : IGProtocol 𐑼 𐑡 :=
  (crown_of_365_species_protocol).restrictToEVALT

-- false arm
noncomputable def crown_of_365_species_false_arm : IGProtocol 𐑼 𐑡 :=
  (crown_of_365_species_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem crown_of_365_species_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
