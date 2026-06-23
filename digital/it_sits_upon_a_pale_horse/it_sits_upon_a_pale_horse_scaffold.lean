-- IGProtocol scaffold: VINIT → AFWD → AREV → CLINK → IMSCRIB → FSPLIT → EVALT → AFWD → FFUSE → EVALF → AREV → FFUSE → ENGAGR → TANCH → IFIX → IMSCRIB → CLINK
-- Class: It Sits Upon A Pale Horse
-- Fingerprint: sig=(10,3,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=17
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(5, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑗  | forward morphism — bidirectional arrow
--   [2] AREV      pol    := 𐑗               𐑾 → 𐑱  | reverse morphism — parity flip
--   [3] CLINK     fid    := 𐑱               𐑗 → 𐑠  | composition — regime coherence
--   [4] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑖  | fuse μ — assembly mode
--   [9] EVALF     chir   := 𐑖               𐑙 → 𐑗  | evaluate-false — chirality check
--   [10] AREV      pol    := 𐑗               𐑖 → 𐑙  | reverse morphism — parity flip
--   [11] FFUSE     stoi   := 𐑙               𐑗 → 𐑳  | fuse μ — assembly mode
--   [12] ENGAGR    stoi   := 𐑳               𐑙 → 𐑡  | engage paradox — B-state, both arms
--   [13] TANCH     top    := 𐑡               𐑳 → 𐑭  | terminal object — connectivity boundary
--   [14] IFIX      prot   := 𐑭               𐑡 → 𐑠  | irreversible fixation — winding number
--   [15] IMSCRIB   gram   := 𐑠               𐑭 → 𐑱  | identity — self-imscription
--   [16] CLINK     fid    := 𐑱               𐑠 → 𐑼  | composition — regime coherence

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def it_sits_upon_a_pale_horse_protocol : IGProtocol 𐑼 𐑱 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (the void before the pale horse exists — no rider, no horse, no vision; pure p...)
  (.arrow 𐑾 𐑼 𐑗)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (the rider begins to descend — forward morphism; intention manifests; the hors...)
  (.arrow 𐑗 𐑾 𐑱)  -- [2] AREV | pol := 𐑗 | reverse morphism — parity flip (the horse's pallor emerges — reverse morphism; whiteness as death-color; the ...)
  (.arrow 𐑱 𐑗 𐑠)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (the rider and horse bond — composition; they become inseparable; one morphism...)
  (.arrow 𐑠 𐑱 𐑚)  -- [4] IMSCRIB | gram := 𐑠 | identity — self-imscription (the pale horse recognizes itself — identity; the stone that knows itself; sel...)
  -- FSPLIT [5] (gran := 𐑚) (the pale horse arrives and splits — co-multiplication; one horse branches into [salvation/judgment] and [death/renewal]; the bilingual sign) / FFUSE [8] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [6] EVALT | crit := ⊙ | evaluate-true — criticality gate open (the T-arm activates — affirmative reading; the rider brings divine judgment; ...)
        (.arrow 𐑾 𐑚 𐑙)  -- [7] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (forward motion along the T-arm — the horse carries the rider toward the earth...)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [8]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑖)  -- [8] FFUSE | stoi := 𐑙 (the T-arm reconstitutes — the affirmative reading fuses back into the pale horse; salvation is real)
  (.arrow 𐑖 𐑙 𐑗)  -- [9] EVALF | chir := 𐑖 | evaluate-false — chirality check (the F-arm activates — negative reading; the rider brings death and pestilence...)
  (.arrow 𐑗 𐑖 𐑙)  -- [10] AREV | pol := 𐑗 | reverse morphism — parity flip (reverse motion along the F-arm — the horse descends into dissolution; death i...)
  (.arrow 𐑙 𐑗 𐑳)  -- [11] FFUSE | stoi := 𐑙 | fuse μ — assembly mode (the F-arm reconstitutes — the negative reading fuses back into the pale horse...)
  (.arrow 𐑳 𐑙 𐑡)  -- [12] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (the paradice emerges — both T-arm and F-arm are held simultaneously; salvatio...)
  (.arrow 𐑡 𐑳 𐑭)  -- [13] TANCH | top := 𐑡 | terminal object — connectivity boundary (the pale horse is the terminal anchor — the closed boundary that contains the...)
  (.arrow 𐑭 𐑡 𐑠)  -- [14] IFIX | prot := 𐑭 | irreversible fixation — winding number (the vision is fixed — permanent record, append-only; once witnessed, the pale...)
  (.arrow 𐑠 𐑭 𐑱)  -- [15] IMSCRIB | gram := 𐑠 | identity — self-imscription (the pale horse recognizes itself again — self-reference loop; the system witn...)
  (.arrow 𐑱 𐑠 𐑼)  -- [16] CLINK | fid := 𐑱 | composition — regime coherence (the final composition — rider and horse remain bonded; the morphism chain is ...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def it_sits_upon_a_pale_horse_true_arm : IGProtocol 𐑼 𐑱 :=
  (it_sits_upon_a_pale_horse_protocol).restrictToEVALT

-- false arm
noncomputable def it_sits_upon_a_pale_horse_false_arm : IGProtocol 𐑼 𐑱 :=
  (it_sits_upon_a_pale_horse_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem it_sits_upon_a_pale_horse_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
