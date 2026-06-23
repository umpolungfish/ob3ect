-- IGProtocol scaffold: VINIT → TANCH → FSPLIT → AFWD → EVALT → AREV → CLINK → IMSCRIB → IFIX → FSPLIT → AFWD → EVALT → AREV → CLINK → IMSCRIB → IFIX → ENGAGR → FSPLIT → AFWD → EVALT → FFUSE → IMSCRIB → IFIX → TANCH
-- Class: Zosimos' Stilling
-- Fingerprint: sig=(13,4,4,3)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=24
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(17, 20)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑚  | terminal object — connectivity boundary
--   [2] FSPLIT    gran   := 𐑚               𐑡 → 𐑾  | split δ — range decomposition
--   [3] AFWD      rel    := 𐑾               𐑚 → ⊙  | forward morphism — bidirectional arrow
--   [4] EVALT     crit   := ⊙               𐑾 → 𐑗  | evaluate-true — criticality gate open
--   [5] AREV      pol    := 𐑗               ⊙ → 𐑱  | reverse morphism — parity flip
--   [6] CLINK     fid    := 𐑱               𐑗 → 𐑠  | composition — regime coherence
--   [7] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [8] IFIX      prot   := 𐑭               𐑠 → 𐑚  | irreversible fixation — winding number
--   [9] FSPLIT    gran   := 𐑚               𐑭 → 𐑾  | split δ — range decomposition
--   [10] AFWD      rel    := 𐑾               𐑚 → ⊙  | forward morphism — bidirectional arrow
--   [11] EVALT     crit   := ⊙               𐑾 → 𐑗  | evaluate-true — criticality gate open
--   [12] AREV      pol    := 𐑗               ⊙ → 𐑱  | reverse morphism — parity flip
--   [13] CLINK     fid    := 𐑱               𐑗 → 𐑠  | composition — regime coherence
--   [14] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [15] IFIX      prot   := 𐑭               𐑠 → 𐑳  | irreversible fixation — winding number
--   [16] ENGAGR    stoi   := 𐑳               𐑭 → 𐑚  | engage paradox — B-state, both arms
--   [17] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [18] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [19] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [20] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [21] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [22] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [23] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def zosimos_stilling_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (prima materia emerges — undifferentiated chaos, the void before naming)
  (.arrow 𐑡 𐑼 𐑚)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (the alembic is sealed — the hermetic boundary closes, containing all that fol...)
  (.arrow 𐑚 𐑡 𐑾)  -- [2] FSPLIT | gran := 𐑚 | split δ — range decomposition (the first separation — prima materia splits into volatile spirit (ascending) ...)
  (.arrow 𐑾 𐑚 ⊙)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (sublimation begins — the spirit rises as vapor toward the top of the vessel)
  (.arrow ⊙ 𐑾 𐑗)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (the vapor condenses successfully — it reaches the cooling surface and begins ...)
  (.arrow 𐑗 ⊙ 𐑱)  -- [5] AREV | pol := 𐑗 | reverse morphism — parity flip (condensation completes — the liquid descends back down the walls of the alembic)
  (.arrow 𐑱 𐑗 𐑠)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (circulation established — the cycle of ascent and descent chains together, re...)
  (.arrow 𐑠 𐑱 𐑭)  -- [7] IMSCRIB | gram := 𐑠 | identity — self-imscription (the substance recognizes itself — after each cycle, the stone knows its own n...)
  (.arrow 𐑭 𐑠 𐑚)  -- [8] IFIX | prot := 𐑭 | irreversible fixation — winding number (the first record is fixed — the completion of one cycle is permanently inscri...)
  (.arrow 𐑚 𐑭 𐑾)  -- [9] FSPLIT | gran := 𐑚 | split δ — range decomposition (the second separation — the now-refined substance splits again into spirit an...)
  (.arrow 𐑾 𐑚 ⊙)  -- [10] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (sublimation repeats — the spirit rises again, more refined than before)
  (.arrow ⊙ 𐑾 𐑗)  -- [11] EVALT | crit := ⊙ | evaluate-true — criticality gate open (successful refinement — the vapor condenses more purely, more completely)
  (.arrow 𐑗 ⊙ 𐑱)  -- [12] AREV | pol := 𐑗 | reverse morphism — parity flip (the descent continues — the liquid falls again, carrying greater perfection)
  (.arrow 𐑱 𐑗 𐑠)  -- [13] CLINK | fid := 𐑱 | composition — regime coherence (the circulation deepens — each cycle compounds the previous transformation)
  (.arrow 𐑠 𐑱 𐑭)  -- [14] IMSCRIB | gram := 𐑠 | identity — self-imscription (self-recognition deepens — the stone knows itself more intimately with each turn)
  (.arrow 𐑭 𐑠 𐑳)  -- [15] IFIX | prot := 𐑭 | irreversible fixation — winding number (the second record is fixed — another permanent mark in the stone's memory)
  (.arrow 𐑳 𐑭 𐑚)  -- [16] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (the albedo stage arrives — whitening and blackening held simultaneously, neit...)
  -- FSPLIT [17] (gran := 𐑚) (the third separation — the substance splits once more, now at the threshold of perfection) / FFUSE [20] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [18] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (the final sublimation — the spirit rises for the last time, approaching its u...)
        (.arrow ⊙ 𐑚 𐑙)  -- [19] EVALT | crit := ⊙ | evaluate-true — criticality gate open (the ultimate condensation — the vapor becomes the Red Stone, fixed and perfect)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [20]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [20] FFUSE | stoi := 𐑙 (the conjunction — spirit and body reunite in the vessel as the completed Red Stone)
  (.arrow 𐑠 𐑙 𐑭)  -- [21] IMSCRIB | gram := 𐑠 | identity — self-imscription (the stone recognizes itself as complete — the Work is finished, the substance...)
  (.arrow 𐑭 𐑠 𐑡)  -- [22] IFIX | prot := 𐑭 | irreversible fixation — winding number (the final record is fixed — the completion of the Work is permanently inscrib...)
  (.arrow 𐑡 𐑭 𐑼)  -- [23] TANCH | top := 𐑡 | terminal object — connectivity boundary (the alembic remains sealed — the boundary holds, containing the perfected sto...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def zosimos_stilling_true_arm : IGProtocol 𐑼 𐑡 :=
  (zosimos_stilling_protocol).restrictToEVALT

-- ── Verification theorems ───────────────────────────────────────────────────

theorem zosimos_stilling_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
