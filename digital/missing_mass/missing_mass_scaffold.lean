-- IGProtocol scaffold: VINIT → AFWD → CLINK → FSPLIT → EVALT → FFUSE → AREV → IMSCRIB → EVALF → ENGAGR
-- Class: Missing Mass
-- Fingerprint: sig=(5,2,3,0)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=10
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 5)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑱  | forward morphism — bidirectional arrow
--   [2] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [6] AREV      pol    := 𐑗               𐑙 → 𐑠  | reverse morphism — parity flip
--   [7] IMSCRIB   gram   := 𐑠               𐑗 → 𐑖  | identity — self-imscription
--   [8] EVALF     chir   := 𐑖               𐑠 → 𐑳  | evaluate-false — chirality check
--   [9] ENGAGR    stoi   := 𐑳               𐑖 → 𐑼  | engage paradox — B-state, both arms

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def missing_mass_protocol : IGProtocol 𐑼 𐑳 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (initialize missing mass concept)
  (.arrow 𐑾 𐑼 𐑱)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (describe energy transfer processes)
  (.arrow 𐑱 𐑾 𐑚)  -- [2] CLINK | fid := 𐑱 | composition — regime coherence (establish mass-energy relationship)
  -- FSPLIT [3] (gran := 𐑚) (branch into dark matter and baryonic matter sources) / FFUSE [5] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (confirm observational evidence of mass)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [5]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑗)  -- [5] FFUSE | stoi := 𐑙 (reconstitute total mass from sources)
  (.arrow 𐑗 𐑙 𐑠)  -- [6] AREV | pol := 𐑗 | reverse morphism — parity flip (describe gravitational effects of mass)
  (.arrow 𐑠 𐑗 𐑖)  -- [7] IMSCRIB | gram := 𐑠 | identity — self-imscription (record mass conservation principles)
  (.arrow 𐑖 𐑠 𐑳)  -- [8] EVALF | chir := 𐑖 | evaluate-false — chirality check (indicate theoretical predictions of mass)
  (.arrow 𐑳 𐑖 𐑼)  -- [9] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (hold both missing mass and observed anomalies)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def missing_mass_true_arm : IGProtocol 𐑼 𐑳 :=
  (missing_mass_protocol).restrictToEVALT

-- false arm
noncomputable def missing_mass_false_arm : IGProtocol 𐑼 𐑳 :=
  (missing_mass_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem missing_mass_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
