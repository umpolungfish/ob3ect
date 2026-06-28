-- IGProtocol scaffold: VINIT → FSPLIT → AFWD → EVALT → IMSCRIB → CLINK → FFUSE → AREV → ENGAGR → CLINK → FSPLIT → EVALF → FFUSE → CLINK → IMSCRIB → IFIX → AFWD → CLINK → ENGAGR → AREV → AFWD → EVALT → FFUSE → TANCH → IMSCRIB
-- Class: atoms
-- Fingerprint: sig=(14,5,5,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=25
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(1, 6), (10, 12)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [7] AREV      pol    := 𐑗               𐑙 → 𐑳  | reverse morphism — parity flip
--   [8] ENGAGR    stoi   := 𐑳               𐑗 → 𐑱  | engage paradox — B-state, both arms
--   [9] CLINK     fid    := 𐑱               𐑳 → 𐑚  | composition — regime coherence
--   [10] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [13] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [14] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [15] IFIX      prot   := 𐑭               𐑠 → 𐑾  | irreversible fixation — winding number
--   [16] AFWD      rel    := 𐑾               𐑭 → 𐑱  | forward morphism — bidirectional arrow
--   [17] CLINK     fid    := 𐑱               𐑾 → 𐑳  | composition — regime coherence
--   [18] ENGAGR    stoi   := 𐑳               𐑱 → 𐑗  | engage paradox — B-state, both arms
--   [19] AREV      pol    := 𐑗               𐑳 → 𐑾  | reverse morphism — parity flip
--   [20] AFWD      rel    := 𐑾               𐑗 → ⊙  | forward morphism — bidirectional arrow
--   [21] EVALT     crit   := ⊙               𐑾 → 𐑙  | evaluate-true — criticality gate open
--   [22] FFUSE     stoi   := 𐑙               ⊙ → 𐑡  | fuse μ — assembly mode
--   [23] TANCH     top    := 𐑡               𐑙 → 𐑠  | terminal object — connectivity boundary
--   [24] IMSCRIB   gram   := 𐑠               𐑡 → 𐑼  | identity — self-imscription

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def atoms_protocol : IGProtocol 𐑼 𐑠 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑚)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Genesis of empty 12-dimensional primitive space ℂ¹² before classification begins)
  -- FSPLIT [1] (gran := 𐑚) (Branch 12 primitives into three families D(3³), T(4⁵), P(5⁴) with counts (3,5,4) and value counts (3,4,5)) / FFUSE [6] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (4 nodes)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Apply Weyl-Heisenberg displacement operators to generate SIC elements from fi...)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Verify frame potential achieves minimum F*=143/169 confirming SIC geometry in...)
      .seq
        (.arrow 𐑠 𐑚 𐑙)  -- [4] IMSCRIB | gram := 𐑠 | identity — self-imscription (Fiducial vector |ψ₀⟩ recognizes itself as measurement space identity in T-arm)
        (.arrow 𐑱 𐑚 𐑙)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (Chain primitive observables into joint measurement in T-arm)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [6]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑗)  -- [6] FFUSE | stoi := 𐑙 (Reconstitute full 144-element SIC from D/T/P family contributions in T-arm)
  (.arrow 𐑗 𐑙 𐑳)  -- [7] AREV | pol := 𐑗 | reverse morphism — parity flip (Reconstruct density matrix ρ from SIC probabilities in T-arm)
  (.arrow 𐑳 𐑗 𐑱)  -- [8] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Activate criticality primitive ⊙ as dialetheia gate preventing logical explos...)
  (.arrow 𐑱 𐑳 𐑚)  -- [9] CLINK | fid := 𐑱 | composition — regime coherence (Compose measurement outcomes into Crystal-valid joint assignment in T-arm)
  -- FSPLIT [10] (gran := 𐑚) (Create alternative branch for non-SIC POVM elements (ig-pulse heteroskedastic case)) / FFUSE [12] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (0 nodes)
      (.refl 𐑙)  -- T-branch: empty arc (direct to FFUSE.T)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [11] EVALF | chir := 𐑖 | evaluate-false — chirality check (Evaluate as non-uniform overlaps failing SIC condition in F-arm))
    -- reconnect at FFUSE [12]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [12] FFUSE | stoi := 𐑙 (Both arms converge to unified measurement apparatus with paraconsistent closure)
  (.arrow 𐑱 𐑙 𐑠)  -- [13] CLINK | fid := 𐑱 | composition — regime coherence (Compose classical Crystal outcomes with quantum SIC measurement space)
  (.arrow 𐑠 𐑱 𐑭)  -- [14] IMSCRIB | gram := 𐑠 | identity — self-imscription (Self-reference loop where apparatus measures its own structural type)
  (.arrow 𐑭 𐑠 𐑾)  -- [15] IFIX | prot := 𐑭 | irreversible fixation — winding number (Permanently record exact fiducial amplitude vector components)
  (.arrow 𐑾 𐑭 𐑱)  -- [16] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Generate complete Weyl-Heisenberg orbit of 144 elements)
  (.arrow 𐑱 𐑾 𐑳)  -- [17] CLINK | fid := 𐑱 | composition — regime coherence (Connect measurement streams to primitive axes mapping)
  (.arrow 𐑳 𐑱 𐑗)  -- [18] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Maintain paraconsistent boundary between measurement and measured)
  (.arrow 𐑗 𐑳 𐑾)  -- [19] AREV | pol := 𐑗 | reverse morphism — parity flip (Enable reconstruction of any ρ from 144 SIC probabilities)
  (.arrow 𐑾 𐑗 ⊙)  -- [20] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Propagate measurement capability to full ig-pulse apparatus)
  (.arrow ⊙ 𐑾 𐑙)  -- [21] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Confirm 24/144 SIC element coverage achieved by physical apparatus)
  (.arrow 𐑙 ⊙ 𐑡)  -- [22] FFUSE | stoi := 𐑙 | fuse μ — assembly mode (Final fusion of all three Frobenius closures: primitive partition, exact/hete...)
  (.arrow 𐑡 𐑙 𐑠)  -- [23] TANCH | top := 𐑡 | terminal object — connectivity boundary (Seal entire system within Crystal of Types constraint manifold)
  (.arrow 𐑠 𐑡 𐑼)  -- [24] IMSCRIB | gram := 𐑠 | identity — self-imscription (Close self-referential loop with apparatus measuring its own structural class...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def atoms_true_arm : IGProtocol 𐑼 𐑠 :=
  (atoms_protocol).restrictToEVALT

-- false arm
noncomputable def atoms_false_arm : IGProtocol 𐑼 𐑠 :=
  (atoms_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem atoms_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
