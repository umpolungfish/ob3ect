-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALF → AREV → CLINK → ENGAGR → EVALT → FFUSE → IMSCRIB → IFIX → TANCH
-- Class: Protocl to craft a Sanguine Homunculus
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 8)]

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
--   [3] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [4] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [9] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [10] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [11] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def protocl_to_craft_a_sanguine_homunculus_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Genesis of the Prima Materia in the vessel.)
  (.arrow 𐑾 𐑼 𐑚)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Ascent of the spirit through the vessel neck.)
  -- FSPLIT [2] (gran := 𐑚) (Separation of the volatile spirit from the fixed body.) / FFUSE [8] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [7] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Affirmation of the White Stone.)
      -- F-branch (4 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [3] EVALF | chir := 𐑖 | evaluate-false — chirality check (Putrefaction of the body into the black state.)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [4] AREV | pol := 𐑗 | reverse morphism — parity flip (Descent of the spirit back into the putrefied body.)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (Composition of the three principles.)
        (.arrow 𐑳 𐑚 𐑙)  -- [6] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Formation of the Rebis, holding both natures.))
    -- reconnect at FFUSE [8]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [8] FFUSE | stoi := 𐑙 (Recombination of the White Stone with the Red principle.)
  (.arrow 𐑠 𐑙 𐑭)  -- [9] IMSCRIB | gram := 𐑠 | identity — self-imscription (The Stone recognizes its own perfection.)
  (.arrow 𐑭 𐑠 𐑡)  -- [10] IFIX | prot := 𐑭 | irreversible fixation — winding number (Permanent fixation of the Red Stone.)
  (.arrow 𐑡 𐑭 𐑼)  -- [11] TANCH | top := 𐑡 | terminal object — connectivity boundary (Sealing the work within the vessel.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def protocl_to_craft_a_sanguine_homunculus_true_arm : IGProtocol 𐑼 𐑡 :=
  (protocl_to_craft_a_sanguine_homunculus_protocol).restrictToEVALT

-- false arm
noncomputable def protocl_to_craft_a_sanguine_homunculus_false_arm : IGProtocol 𐑼 𐑡 :=
  (protocl_to_craft_a_sanguine_homunculus_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem protocl_to_craft_a_sanguine_homunculus_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
