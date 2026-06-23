-- IGProtocol scaffold: VINIT → AFWD → AREV → CLINK → FSPLIT → EVALT → AFWD → EVALF → AREV → ENGAGR → FFUSE → IMSCRIB → CLINK → IFIX → TANCH
-- Class: The Immaculate Conception
-- Fingerprint: sig=(9,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(4, 10)]

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
--   [3] CLINK     fid    := 𐑱               𐑗 → 𐑚  | composition — regime coherence
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [9] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [11] IMSCRIB   gram   := 𐑠               𐑙 → 𐑱  | identity — self-imscription
--   [12] CLINK     fid    := 𐑱               𐑠 → 𐑭  | composition — regime coherence
--   [13] IFIX      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [14] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def the_immaculate_conception_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Mary's soul before conception — void, unborn, prior to any stain or grace)
  (.arrow 𐑾 𐑼 𐑗)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Divine grace flows backward through time from Christ's redemption toward Mary...)
  (.arrow 𐑗 𐑾 𐑱)  -- [2] AREV | pol := 𐑗 | reverse morphism — parity flip (Original sin's descent into humanity — the corruption that would naturally fl...)
  (.arrow 𐑱 𐑗 𐑚)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (The chain of generations from Adam through the patriarchs to Mary — each link...)
  -- FSPLIT [4] (gran := 𐑚) (Mary's conception splits into two simultaneous branches: [natural human conception] and [supernatural preservation from sin]) / FFUSE [10] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The affirmative branch — Mary is preserved, grace succeeds, immaculacy is aff...)
        (.arrow 𐑾 𐑚 𐑙)  -- [6] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Forward morphism on the T-arm — grace actively transforms the natural concept...)
      -- F-branch (3 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [7] EVALF | chir := 𐑖 | evaluate-false — chirality check (The negative branch — the counterfactual where Mary would be subject to origi...)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [8] AREV | pol := 𐑗 | reverse morphism — parity flip (Reverse morphism on the F-arm — the descent of sin that is arrested and inver...)
        (.arrow 𐑳 𐑚 𐑙)  -- [9] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The paradice emerges — Mary is held simultaneously as both fully human and fu...))
    -- reconnect at FFUSE [10]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [10] FFUSE | stoi := 𐑙 (The two branches reconstitute Mary's single, unified nature — fully human yet fully preserved)
  (.arrow 𐑠 𐑙 𐑱)  -- [11] IMSCRIB | gram := 𐑠 | identity — self-imscription (Mary's identity as Theotokos — she is herself, the self-recognition of immacu...)
  (.arrow 𐑱 𐑠 𐑭)  -- [12] CLINK | fid := 𐑱 | composition — regime coherence (The chain of generations is redeemed — Mary's immaculate conception reconstit...)
  (.arrow 𐑭 𐑱 𐑡)  -- [13] IFIX | prot := 𐑭 | irreversible fixation — winding number (The dogmatic definition (1854) — the doctrine is fixed in the Church's perman...)
  (.arrow 𐑡 𐑭 𐑼)  -- [14] TANCH | top := 𐑡 | terminal object — connectivity boundary (The Assumption of Mary — her bodily entrance into heaven seals and contains t...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def the_immaculate_conception_true_arm : IGProtocol 𐑼 𐑡 :=
  (the_immaculate_conception_protocol).restrictToEVALT

-- false arm
noncomputable def the_immaculate_conception_false_arm : IGProtocol 𐑼 𐑡 :=
  (the_immaculate_conception_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem the_immaculate_conception_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
