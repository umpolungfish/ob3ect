-- IGProtocol scaffold: VINIT → TANCH → AFWD → CLINK → IMSCRIB → FSPLIT → EVALT → AFWD → CLINK → EVALF → AREV → CLINK → FFUSE → ENGAGR → AREV → IFIX → IFIX → AREV → TANCH → IMSCRIB
-- Class: Anthropos
-- Fingerprint: sig=(13,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=20
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(5, 12)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑱  | forward morphism — bidirectional arrow
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [4] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [8] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [9] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [11] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [13] ENGAGR    stoi   := 𐑳               𐑙 → 𐑗  | engage paradox — B-state, both arms
--   [14] AREV      pol    := 𐑗               𐑳 → 𐑭  | reverse morphism — parity flip
--   [15] IFIX      prot   := 𐑭               𐑗 → 𐑭  | irreversible fixation — winding number
--   [16] IFIX      prot   := 𐑭               𐑭 → 𐑗  | irreversible fixation — winding number
--   [17] AREV      pol    := 𐑗               𐑭 → 𐑡  | reverse morphism — parity flip
--   [18] TANCH     top    := 𐑡               𐑗 → 𐑠  | terminal object — connectivity boundary
--   [19] IMSCRIB   gram   := 𐑠               𐑡 → 𐑼  | identity — self-imscription

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def anthropos_protocol : IGProtocol 𐑼 𐑠 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (potentiality — the unborn human, genetic substrate, cosmic dust not yet organ...)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (death — the absolute boundary that closes and contains all human meaning; mor...)
  (.arrow 𐑾 𐑡 𐑱)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (growth — the forward morphism from infancy through childhood, accumulation of...)
  (.arrow 𐑱 𐑾 𐑠)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (narrative — the chaining of moments into a coherent life story; memory bindin...)
  (.arrow 𐑠 𐑱 𐑚)  -- [4] IMSCRIB | gram := 𐑠 | identity — self-imscription (self-recognition — the 'I am' moment; consciousness knowing itself; the refle...)
  -- FSPLIT [5] (gran := 𐑚) (the birth of choice — one unified potential branches into two arms: authentic agency (T) and constraint (F)) / FFUSE [12] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [6] EVALT | crit := ⊙ | evaluate-true — criticality gate open (affirmation — the yes-saying, the embrace of existence despite suffering; the...)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [7] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (action — forward morphism along the T-arm; the human exercising agency, takin...)
        (.arrow 𐑱 𐑚 𐑙)  -- [8] CLINK | fid := 𐑱 | composition — regime coherence (integration of action — the chaining of choices into a coherent narrative of ...)
      -- F-branch (3 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [9] EVALF | chir := 𐑖 | evaluate-false — chirality check (negation — the refusal, the denial, the flight from responsibility; the F-arm...)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [10] AREV | pol := 𐑗 | reverse morphism — parity flip (descent into constraint — the reverse morphism along the F-arm; the human con...)
        (.arrow 𐑱 𐑚 𐑙)  -- [11] CLINK | fid := 𐑱 | composition — regime coherence (integration of constraint — the chaining of limitations into a narrative of f...))
    -- reconnect at FFUSE [12]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [12] FFUSE | stoi := 𐑙 (integration of choice — the two branches (freedom and constraint) fuse back into a single human life)
  (.arrow 𐑳 𐑙 𐑗)  -- [13] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (the paradice of anthropos — simultaneously free and bound, mortal and meaning...)
  (.arrow 𐑗 𐑳 𐑭)  -- [14] AREV | pol := 𐑗 | reverse morphism — parity flip (aging — the reverse morphism of decay, forgetting, loss of capacity, return t...)
  (.arrow 𐑭 𐑗 𐑭)  -- [15] IFIX | prot := 𐑭 | irreversible fixation — winding number (memory and artifact — the permanent record that outlasts the individual; what...)
  (.arrow 𐑭 𐑭 𐑗)  -- [16] IFIX | prot := 𐑭 | irreversible fixation — winding number (witness — the irreversible fixation of the life in the memory of others; the ...)
  (.arrow 𐑗 𐑭 𐑡)  -- [17] AREV | pol := 𐑗 | reverse morphism — parity flip (dissolution — the final descent; the body returning to matter; consciousness ...)
  (.arrow 𐑡 𐑗 𐑠)  -- [18] TANCH | top := 𐑡 | terminal object — connectivity boundary (death — the terminal anchor is reached; the boundary is closed; the human lif...)
  (.arrow 𐑠 𐑡 𐑼)  -- [19] IMSCRIB | gram := 𐑠 | identity — self-imscription (legacy — the self-recognition that persists in culture, in others, in the wor...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def anthropos_true_arm : IGProtocol 𐑼 𐑠 :=
  (anthropos_protocol).restrictToEVALT

-- false arm
noncomputable def anthropos_false_arm : IGProtocol 𐑼 𐑠 :=
  (anthropos_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem anthropos_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
