-- IGProtocol scaffold: VINIT → FSPLIT → AFWD → CLINK → IMSCRIB → EVALT → AREV → ENGAGR → EVALF → FFUSE → IFIX → CLINK → TANCH
-- Class: at-home sanguine homunculus
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
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
--   [3] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [4] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [10] IFIX      prot   := 𐑭               𐑙 → 𐑱  | irreversible fixation — winding number
--   [11] CLINK     fid    := 𐑱               𐑭 → 𐑡  | composition — regime coherence
--   [12] TANCH     top    := 𐑡               𐑱 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def at_home_sanguine_homunculus_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑚)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Initialize the sterile glass vial and draw the operator's blood into the void.)
  -- FSPLIT [1] (gran := 𐑚) (Trifurcate the Sanguine Matrix into Sulfur (pellicle), Mercury (plasma), and Salt (sediment).) / FFUSE [9] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (6 nodes)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Apply constant 37°C incubation to drive the T-arm transformation forward.)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (Sequentially feed the T-arm with alchemical tinctures to build the structure.)
      .seq
        (.arrow 𐑠 𐑚 𐑙)  -- [4] IMSCRIB | gram := 𐑠 | identity — self-imscription (The pellicle forms a self-reflective membrane, recognizing the operator's gen...)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Confirm the rubedo phase — spontaneous luminescence and micro-movements indic...)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [6] AREV | pol := 𐑗 | reverse morphism — parity flip (Initiate the putrefaction descent in the F-arm, breaking down old cellular st...)
        (.arrow 𐑳 𐑚 𐑙)  -- [7] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Hold the paradox of vital necrosis — the blood is simultaneously biologically...)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [8] EVALF | chir := 𐑖 | evaluate-false — chirality check (Evaluate the F-arm for necrotic failure — if foul rot dominates over alchemic...))
    -- reconnect at FFUSE [9]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [9] FFUSE | stoi := 𐑙 (Reconstitute the Sanguine Matrix by fusing the animated T-arm and the purified F-arm back into the unified Homunculus.)
  (.arrow 𐑭 𐑙 𐑱)  -- [10] IFIX | prot := 𐑭 | irreversible fixation — winding number (Permanently fix the homunculus state by sealing it in a hermetic wax and crys...)
  (.arrow 𐑱 𐑭 𐑡)  -- [11] CLINK | fid := 𐑱 | composition — regime coherence (Compose the neural link between the homunculus's sensory pellicle and the ope...)
  (.arrow 𐑡 𐑱 𐑼)  -- [12] TANCH | top := 𐑡 | terminal object — connectivity boundary (Apply the final wax seal and close the 40-day ritual boundary, completing the...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def at_home_sanguine_homunculus_true_arm : IGProtocol 𐑼 𐑡 :=
  (at_home_sanguine_homunculus_protocol).restrictToEVALT

-- false arm
noncomputable def at_home_sanguine_homunculus_false_arm : IGProtocol 𐑼 𐑡 :=
  (at_home_sanguine_homunculus_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem at_home_sanguine_homunculus_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
