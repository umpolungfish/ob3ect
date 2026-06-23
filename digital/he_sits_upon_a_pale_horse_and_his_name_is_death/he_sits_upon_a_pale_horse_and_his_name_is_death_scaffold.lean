-- IGProtocol scaffold: VINIT → TANCH → IMSCRIB → AFWD → FSPLIT → EVALT → CLINK → IFIX → AREV → EVALF → ENGAGR → FFUSE → IMSCRIB → CLINK → AFWD → TANCH → IMSCRIB
-- Class: He Sits Upon A Pale Horse, and His Name is Death
-- Fingerprint: sig=(11,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=17
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(4, 11)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑠  | terminal object — connectivity boundary
--   [2] IMSCRIB   gram   := 𐑠               𐑡 → 𐑾  | identity — self-imscription
--   [3] AFWD      rel    := 𐑾               𐑠 → 𐑚  | forward morphism — bidirectional arrow
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [8] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [9] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [12] IMSCRIB   gram   := 𐑠               𐑙 → 𐑱  | identity — self-imscription
--   [13] CLINK     fid    := 𐑱               𐑠 → 𐑾  | composition — regime coherence
--   [14] AFWD      rel    := 𐑾               𐑱 → 𐑡  | forward morphism — bidirectional arrow
--   [15] TANCH     top    := 𐑡               𐑾 → 𐑠  | terminal object — connectivity boundary
--   [16] IMSCRIB   gram   := 𐑠               𐑡 → 𐑼  | identity — self-imscription

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def he_sits_upon_a_pale_horse_and_his_name_is_death_protocol : IGProtocol 𐑼 𐑠 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The void before Death exists — pure potentiality, no names, no creatures, no ...)
  (.arrow 𐑡 𐑼 𐑠)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (The Pale Horse manifests as the boundary — the hermetic vessel that contains ...)
  (.arrow 𐑠 𐑡 𐑾)  -- [2] IMSCRIB | gram := 𐑠 | identity — self-imscription (Death recognizes itself — the rider knows its own nature, the stone that know...)
  (.arrow 𐑾 𐑠 𐑚)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The Rider's Advance — Death moves forward toward the first creature, the dire...)
  -- FSPLIT [4] (gran := 𐑚) (The Moment of Severance — a living creature branches into two states: the animate body and the inanimate form.) / FFUSE [11] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (4 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The Successful Reaping (T-arm) — the affirmative branch where Death claims th...)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (The Chain of Mortality (T-arm) — this death links to the next, composing the ...)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [7] IFIX | prot := 𐑭 | irreversible fixation — winding number (The Recorded Death (T-arm) — the death is written into the eternal ledger, ap...)
        (.arrow 𐑗 𐑚 𐑙)  -- [8] AREV | pol := 𐑗 | reverse morphism — parity flip (Decomposition and Return (F-arm) — the reverse morphism where flesh returns t...)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [9] EVALF | chir := 𐑖 | evaluate-false — chirality check (The Escape or Reprieve (F-arm) — the negative branch where Death does not cla...)
        (.arrow 𐑳 𐑚 𐑙)  -- [10] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The Liminal Threshold — the paradice where the dying creature is neither full...))
    -- reconnect at FFUSE [11]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [11] FFUSE | stoi := 𐑙 (The Unified Corpse — the two branches (animate/inanimate, claimed/escaped, alive/dead) reconstitute into a single object: the creature in its terminal form.)
  (.arrow 𐑠 𐑙 𐑱)  -- [12] IMSCRIB | gram := 𐑠 | identity — self-imscription (Death recognizes the completed work — the rider sees its own reflection in th...)
  (.arrow 𐑱 𐑠 𐑾)  -- [13] CLINK | fid := 𐑱 | composition — regime coherence (The Chain Continues — this completed death links to the next rider, the next ...)
  (.arrow 𐑾 𐑱 𐑡)  -- [14] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The Rider Moves On — Death advances toward the next living thing, the morphis...)
  (.arrow 𐑡 𐑾 𐑠)  -- [15] TANCH | top := 𐑡 | terminal object — connectivity boundary (The Pale Horse Remains — the boundary is eternal, containing all deaths, all ...)
  (.arrow 𐑠 𐑡 𐑼)  -- [16] IMSCRIB | gram := 𐑠 | identity — self-imscription (Death is itself — the final self-reference, the closed loop of mortality, the...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def he_sits_upon_a_pale_horse_and_his_name_is_death_true_arm : IGProtocol 𐑼 𐑠 :=
  (he_sits_upon_a_pale_horse_and_his_name_is_death_protocol).restrictToEVALT

-- false arm
noncomputable def he_sits_upon_a_pale_horse_and_his_name_is_death_false_arm : IGProtocol 𐑼 𐑠 :=
  (he_sits_upon_a_pale_horse_and_his_name_is_death_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem he_sits_upon_a_pale_horse_and_his_name_is_death_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
