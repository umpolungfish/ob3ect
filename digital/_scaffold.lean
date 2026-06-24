-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → AFWD → EVALT → EVALF → AREV → FFUSE → CLINK → IMSCRIB → IFIX → ENGAGR → TANCH
-- Class: ob3ect_sequence
-- Fingerprint: sig=(7,2,4,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=14
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
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [9] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [10] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [11] IFIX      prot   := 𐑭               𐑠 → 𐑳  | irreversible fixation — winding number
--   [12] ENGAGR    stoi   := 𐑳               𐑭 → 𐑡  | engage paradox — B-state, both arms
--   [13] TANCH     top    := 𐑡               𐑳 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def ob3ect_sequence_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (void — genesis of unstructured text before any primitive assignment)
  (.arrow 𐑾 𐑼 𐑚)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (imscribe — forward morphism: raw manuscript → 12-primitive Imscription tuple)
  -- FSPLIT [2] (gran := 𐑚) (Frobenius_gate — bifurcates the tuple into phi_c (T) and kin (F) evaluation branches) / FFUSE [8] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (monad_pass — T-arm anchor: phi_c_gate affirms monad criticality)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (kinetic_check — T-arm forward: evaluates kinetic character against egg threshold)
        (.arrow ⊙ 𐑚 𐑙)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (egg_pass — T-arm anchor: k_slow_gate affirms egg deliberation)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [6] EVALF | chir := 𐑖 | evaluate-false — chirality check (woe_fail — F-arm anchor: phi_c_gate rejects sub/super-criticality)
        (.arrow 𐑗 𐑚 𐑙)  -- [7] AREV | pol := 𐑗 | reverse morphism — parity flip (decode — F-arm reverse: descends to crystal address / score computation))
    -- reconnect at FFUSE [8]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [8] FFUSE | stoi := 𐑙 (reconstitute — reunites T and F arms, recovering exact original Imscription state)
  (.arrow 𐑱 𐑙 𐑠)  -- [9] CLINK | fid := 𐑱 | composition — regime coherence (score_chain — composes gate outcomes into final C(s) ∈ [0,1])
  (.arrow 𐑠 𐑱 𐑭)  -- [10] IMSCRIB | gram := 𐑠 | identity — self-imscription (self_model — identity: text recognizes itself as gatekeeper)
  (.arrow 𐑭 𐑠 𐑳)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (crystal_addr — ROM fixation: permanent O_∞ structural record)
  (.arrow 𐑳 𐑭 𐑡)  -- [12] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (roar_pole — B-state: complex-axis criticality holds real and complex poles si...)
  (.arrow 𐑡 𐑳 𐑼)  -- [13] TANCH | top := 𐑡 | terminal object — connectivity boundary (O_infinity — terminal anchor: closes the gatekeeper system at Frobenius closure)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def ob3ect_sequence_true_arm : IGProtocol 𐑼 𐑡 :=
  (ob3ect_sequence_protocol).restrictToEVALT

-- false arm
noncomputable def ob3ect_sequence_false_arm : IGProtocol 𐑼 𐑡 :=
  (ob3ect_sequence_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem ob3ect_sequence_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
