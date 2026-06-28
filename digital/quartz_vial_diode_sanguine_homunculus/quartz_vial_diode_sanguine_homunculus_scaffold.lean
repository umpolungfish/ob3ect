-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → AFWD → EVALF → AREV → FFUSE → CLINK → IMSCRIB → ENGAGR → IFIX → TANCH
-- Class: quartz vial-diode sanguine homunculus
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 7)]

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
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [9] IMSCRIB   gram   := 𐑠               𐑱 → 𐑳  | identity — self-imscription
--   [10] ENGAGR    stoi   := 𐑳               𐑠 → 𐑭  | engage paradox — B-state, both arms
--   [11] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [12] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def quartz_vial_diode_sanguine_homunculus_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Genesis of the empty quartz vial, the void before the sanguine fluid is intro...)
  (.arrow 𐑾 𐑼 𐑚)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Introduction of the sanguine fluid, the forward morphism of dissolution.)
  -- FSPLIT [2] (gran := 𐑚) (The sanguine fluid reaches the diode junction, splitting into charged and discharged streams.) / FFUSE [7] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The affirmative branch, the arterial (charged) stream flows forward.)
        (.arrow 𐑾 𐑚 𐑙)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The forward bias of the diode, the ascent of the vital spark.)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [5] EVALF | chir := 𐑖 | evaluate-false — chirality check (The negative branch, the venous (discharged) stream pools in reverse.)
        (.arrow 𐑗 𐑚 𐑙)  -- [6] AREV | pol := 𐑗 | reverse morphism — parity flip (The descent of the coagula, the reverse bias of the diode.))
    -- reconnect at FFUSE [7]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [7] FFUSE | stoi := 𐑙 (The capillary recombination, fusing the streams back into unified sanguine fluid.)
  (.arrow 𐑱 𐑙 𐑠)  -- [8] CLINK | fid := 𐑱 | composition — regime coherence (The sequential chaining of the diode's rectification and the vial's containment.)
  (.arrow 𐑠 𐑱 𐑳)  -- [9] IMSCRIB | gram := 𐑠 | identity — self-imscription (The homunculus achieves self-recognition, the O_inf fixed point of the alchem...)
  (.arrow 𐑳 𐑠 𐑭)  -- [10] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The paradice of the homunculus, holding both the living spark and the inert c...)
  (.arrow 𐑭 𐑳 𐑡)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (The crystallization of the quartz lattice, permanently recording the homuncul...)
  (.arrow 𐑡 𐑭 𐑼)  -- [12] TANCH | top := 𐑡 | terminal object — connectivity boundary (The hermetic seal closes, containing the entire O_inf system within the bound...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def quartz_vial_diode_sanguine_homunculus_true_arm : IGProtocol 𐑼 𐑡 :=
  (quartz_vial_diode_sanguine_homunculus_protocol).restrictToEVALT

-- false arm
noncomputable def quartz_vial_diode_sanguine_homunculus_false_arm : IGProtocol 𐑼 𐑡 :=
  (quartz_vial_diode_sanguine_homunculus_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem quartz_vial_diode_sanguine_homunculus_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
