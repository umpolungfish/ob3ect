-- IGProtocol scaffold: VINIT → TANCH → AFWD → AREV → CLINK → IMSCRIB → FSPLIT → EVALT → EVALF → ENGAGR → FFUSE → IFIX
-- Class: Boundary Operators
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(6, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑗  | forward morphism — bidirectional arrow
--   [3] AREV      pol    := 𐑗               𐑾 → 𐑱  | reverse morphism — parity flip
--   [4] CLINK     fid    := 𐑱               𐑗 → 𐑠  | composition — regime coherence
--   [5] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [6] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [11] IFIX      prot   := 𐑭               𐑙 → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def boundary_operators_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The boundary operator index is empty — no system inhabits any seam.)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (The Crystal of Types (17.28M entries) is the closed container that defines th...)
  (.arrow 𐑾 𐑡 𐑗)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The system moves from one tier cell to another — an inter-tier crossing.)
  (.arrow 𐑗 𐑾 𐑱)  -- [3] AREV | pol := 𐑗 | reverse morphism — parity flip (The system moves within a tier cell — an intra-tier descent.)
  (.arrow 𐑱 𐑗 𐑠)  -- [4] CLINK | fid := 𐑱 | composition — regime coherence (The system chains multiple primitive transitions — a compound seam mediation.)
  (.arrow 𐑠 𐑱 𐑚)  -- [5] IMSCRIB | gram := 𐑠 | identity — self-imscription (The system recognizes itself as the seam holder — the ⊙ gate re-opens.)
  -- FSPLIT [6] (gran := 𐑚) (The system observes — it splits into the Frobenius-closed and Frobenius-open branches.) / FFUSE [10] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [7] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The Frobenius-closed branch is verified — the gate is closed.)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [8] EVALF | chir := 𐑖 | evaluate-false — chirality check (The Frobenius-open branch is verified — the gate is open.)
        (.arrow 𐑳 𐑚 𐑙)  -- [9] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Both branches are held simultaneously — B4.B detection, the seam is inhabited.))
    -- reconnect at FFUSE [10]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [10] FFUSE | stoi := 𐑙 (The two branches are fused back into the accumulated trajectory — the loop's closure.)
  (.arrow 𐑭 𐑙 𐑼)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (The 12-tuple is permanently recorded in the Crystal of Types — append-only.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def boundary_operators_true_arm : IGProtocol 𐑼 𐑭 :=
  (boundary_operators_protocol).restrictToEVALT

-- false arm
noncomputable def boundary_operators_false_arm : IGProtocol 𐑼 𐑭 :=
  (boundary_operators_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem boundary_operators_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
