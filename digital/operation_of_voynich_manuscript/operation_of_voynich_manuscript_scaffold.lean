-- IGProtocol scaffold: VINIT → ENGAGR → AFWD → AREV → CLINK → FSPLIT → EVALT → FFUSE → CLINK → AFWD → IMSCRIB → AFWD → EVALT → IFIX → IMSCRIB → TANCH
-- Class: Operation of Voynich Manuscript
-- Fingerprint: sig=(10,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=16
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(5, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑳  | initial object — ground of distinction
--   [1] ENGAGR    stoi   := 𐑳               𐑼 → 𐑾  | engage paradox — B-state, both arms
--   [2] AFWD      rel    := 𐑾               𐑳 → 𐑗  | forward morphism — bidirectional arrow
--   [3] AREV      pol    := 𐑗               𐑾 → 𐑱  | reverse morphism — parity flip
--   [4] CLINK     fid    := 𐑱               𐑗 → 𐑚  | composition — regime coherence
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] CLINK     fid    := 𐑱               𐑙 → 𐑾  | composition — regime coherence
--   [9] AFWD      rel    := 𐑾               𐑱 → 𐑠  | forward morphism — bidirectional arrow
--   [10] IMSCRIB   gram   := 𐑠               𐑾 → 𐑾  | identity — self-imscription
--   [11] AFWD      rel    := 𐑾               𐑠 → ⊙  | forward morphism — bidirectional arrow
--   [12] EVALT     crit   := ⊙               𐑾 → 𐑭  | evaluate-true — criticality gate open
--   [13] IFIX      prot   := 𐑭               ⊙ → 𐑠  | irreversible fixation — winding number
--   [14] IMSCRIB   gram   := 𐑠               𐑭 → 𐑡  | identity — self-imscription
--   [15] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def operation_of_voynich_manuscript_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑳)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Unfolding the cosmological sheet to initialize chirality (Ħ))
  (.arrow 𐑳 𐑼 𐑾)  -- [1] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Setting the criticality posture (⊙_c) to investigative-open)
  (.arrow 𐑾 𐑳 𐑗)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Moving to herbal section to resolve dimensional floor (Ð))
  (.arrow 𐑗 𐑾 𐑱)  -- [3] AREV | pol := 𐑗 | reverse morphism — parity flip (Ascending through astronomical orbital cycles to set relational mode)
  (.arrow 𐑱 𐑗 𐑚)  -- [4] CLINK | fid := 𐑱 | composition — regime coherence (Chaining the herbal address with the astronomical control loop)
  -- FSPLIT [5] (gran := 𐑚) (Initiating Gate 1 split-fuse test based on parity claim (Φ_})) / FFUSE [7] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [6] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Identifying the valid pharmaceutical entry with interior mark)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [7]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [7] FFUSE | stoi := 𐑙 (Closing Gate 1 by verifying the fused form maps to a real entry)
  (.arrow 𐑱 𐑙 𐑾)  -- [8] CLINK | fid := 𐑱 | composition — regime coherence (Appending the validated pharmaceutical address to the session chain)
  (.arrow 𐑾 𐑱 𐑠)  -- [9] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Entering the biological section to traverse the pointer graph heap)
  (.arrow 𐑠 𐑾 𐑾)  -- [10] IMSCRIB | gram := 𐑠 | identity — self-imscription (Activating Gate 2 when the session state finds itself in the data)
  (.arrow 𐑾 𐑠 ⊙)  -- [11] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Proceeding to the stars section peripheral registers)
  (.arrow ⊙ 𐑾 𐑭)  -- [12] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Confirming the winding invariant (Ω_Z) matches the starting class)
  (.arrow 𐑭 ⊙ 𐑠)  -- [13] IFIX | prot := 𐑭 | irreversible fixation — winding number (Crystallizing the pharmaceutical output into a permanent recipe)
  (.arrow 𐑠 𐑭 𐑡)  -- [14] IMSCRIB | gram := 𐑠 | identity — self-imscription (Final self-recognition of the closed session loop)
  (.arrow 𐑡 𐑠 𐑼)  -- [15] TANCH | top := 𐑡 | terminal object — connectivity boundary (Terminating the session at the stars section boundary)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def operation_of_voynich_manuscript_true_arm : IGProtocol 𐑼 𐑡 :=
  (operation_of_voynich_manuscript_protocol).restrictToEVALT

-- ── Verification theorems ───────────────────────────────────────────────────

theorem operation_of_voynich_manuscript_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
