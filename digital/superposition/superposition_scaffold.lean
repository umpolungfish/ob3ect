-- IGProtocol scaffold: VINIT → AFWD → ENGAGR → FSPLIT → EVALT → EVALF → IMSCRIB → FFUSE → CLINK → IFIX
-- Class: superposition
-- Fingerprint: sig=(4,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=10
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑳  | forward morphism — bidirectional arrow
--   [2] ENGAGR    stoi   := 𐑳               𐑾 → 𐑚  | engage paradox — B-state, both arms
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] CLINK     fid    := 𐑱               𐑙 → 𐑭  | composition — regime coherence
--   [9] IFIX      prot   := 𐑭               𐑱 → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def superposition_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Prepare the vacuum field |0>.)
  (.arrow 𐑾 𐑼 𐑳)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Apply excitation pulse to move from vacuum to a defined state.)
  (.arrow 𐑳 𐑾 𐑚)  -- [2] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Enter the dialetheic state where the state is not yet distinct.)
  -- FSPLIT [3] (gran := 𐑚) (Branch the state into a coherent superposition of |0> and |1>.) / FFUSE [7] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Assign positive amplitude α to the T-branch.)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [5] EVALF | chir := 𐑖 | evaluate-false — chirality check (Assign negative amplitude β to the F-branch.)
        (.arrow 𐑠 𐑚 𐑙)  -- [6] IMSCRIB | gram := 𐑠 | identity — self-imscription (The superposition recognizes itself as a singular coherent entity.))
    -- reconnect at FFUSE [7]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [7] FFUSE | stoi := 𐑙 (Recombine the branches via interference to recover the original phase.)
  (.arrow 𐑱 𐑙 𐑭)  -- [8] CLINK | fid := 𐑱 | composition — regime coherence (Compose with a subsequent unitary transformation gate.)
  (.arrow 𐑭 𐑱 𐑼)  -- [9] IFIX | prot := 𐑭 | irreversible fixation — winding number (Perform a projective measurement, fixing the state to a permanent classical r...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def superposition_true_arm : IGProtocol 𐑼 𐑭 :=
  (superposition_protocol).restrictToEVALT

-- false arm
noncomputable def superposition_false_arm : IGProtocol 𐑼 𐑭 :=
  (superposition_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem superposition_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
