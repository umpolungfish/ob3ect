-- IGProtocol scaffold: VINIT → TANCH → FSPLIT → EVALT → AFWD → CLINK → IMSCRIB → IFIX → EVALF → AREV → FSPLIT → EVALT → AFWD → CLINK → IFIX → ENGAGR → EVALT → AFWD → CLINK → IFIX → EVALF → AREV → CLINK → IFIX → IMSCRIB → FFUSE → CLINK → IMSCRIB → IFIX → TANCH
-- Class: Novikov Theorem
-- Fingerprint: sig=(16,3,6,5)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=30
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(10, 25)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑚  | terminal object — connectivity boundary
--   [2] FSPLIT    gran   := 𐑚               𐑡 → ⊙  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑾  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               ⊙ → 𐑱  | forward morphism — bidirectional arrow
--   [5] CLINK     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [6] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [7] IFIX      prot   := 𐑭               𐑠 → 𐑖  | irreversible fixation — winding number
--   [8] EVALF     chir   := 𐑖               𐑭 → 𐑗  | evaluate-false — chirality check
--   [9] AREV      pol    := 𐑗               𐑖 → 𐑚  | reverse morphism — parity flip
--   [10] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [12] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [13] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [14] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [15] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [16] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [17] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [18] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [19] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [20] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [21] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [22] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [23] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [24] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [25] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [26] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [27] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [28] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [29] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def novikov_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (uninitialized knot diagram — void state before any crossing is encountered)
  (.arrow 𐑡 𐑼 𐑚)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (ambient isotopy equivalence class — the closed boundary containing all equiva...)
  (.arrow 𐑚 𐑡 ⊙)  -- [2] FSPLIT | gran := 𐑚 | split δ — range decomposition (first self-intersection point branches into [over-pass, under-pass])
  (.arrow ⊙ 𐑚 𐑾)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (over-pass resolution is valid — proceed forward)
  (.arrow 𐑾 ⊙ 𐑱)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (apply Reidemeister move to simplify over-pass branch)
  (.arrow 𐑱 𐑾 𐑠)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (compose this move with prior moves in the sequence)
  (.arrow 𐑠 𐑱 𐑭)  -- [6] IMSCRIB | gram := 𐑠 | identity — self-imscription (knot recognizes itself as invariant under this move)
  (.arrow 𐑭 𐑠 𐑖)  -- [7] IFIX | prot := 𐑭 | irreversible fixation — winding number (record the intermediate crossing number and partial invariant)
  (.arrow 𐑖 𐑭 𐑗)  -- [8] EVALF | chir := 𐑖 | evaluate-false — chirality check (under-pass resolution is blocked or increases complexity — negative branch)
  (.arrow 𐑗 𐑖 𐑚)  -- [9] AREV | pol := 𐑗 | reverse morphism — parity flip (reverse the over-pass move to explore under-pass alternative)
  -- FSPLIT [10] (gran := 𐑚) (second self-intersection point branches into [over-pass, under-pass]) / FFUSE [25] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (9 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [11] EVALT | crit := ⊙ | evaluate-true — criticality gate open (over-pass resolution valid on second crossing)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [12] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (apply Reidemeister move to second crossing)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [13] CLINK | fid := 𐑱 | composition — regime coherence (compose with prior moves)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [14] IFIX | prot := 𐑭 | irreversible fixation — winding number (record intermediate invariant)
      .seq
        (.arrow 𐑳 𐑚 𐑙)  -- [15] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (paradice encountered — a crossing simultaneously over AND under (Novikov's se...)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [16] EVALT | crit := ⊙ | evaluate-true — criticality gate open (attempt to resolve paradice as over-pass)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [17] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (forward move assuming over-pass)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [18] CLINK | fid := 𐑱 | composition — regime coherence (compose with sequence)
        (.arrow 𐑭 𐑚 𐑙)  -- [19] IFIX | prot := 𐑭 | irreversible fixation — winding number (record state)
      -- F-branch (5 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [20] EVALF | chir := 𐑖 | evaluate-false — chirality check (paradice also resolves as under-pass (both simultaneously true))
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [21] AREV | pol := 𐑗 | reverse morphism — parity flip (reverse move to explore under-pass branch)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [22] CLINK | fid := 𐑱 | composition — regime coherence (compose alternative sequence)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [23] IFIX | prot := 𐑭 | irreversible fixation — winding number (record alternative invariant)
        (.arrow 𐑠 𐑚 𐑙)  -- [24] IMSCRIB | gram := 𐑠 | identity — self-imscription (knot self-recognizes that both branches lead to the same invariant (Novikov's...))
    -- reconnect at FFUSE [25]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [25] FFUSE | stoi := 𐑙 (fuse [over-pass branch, under-pass branch] back into the original crossing)
  (.arrow 𐑱 𐑙 𐑠)  -- [26] CLINK | fid := 𐑱 | composition — regime coherence (compose all moves into final sequence)
  (.arrow 𐑠 𐑱 𐑭)  -- [27] IMSCRIB | gram := 𐑠 | identity — self-imscription (final knot recognizes itself as invariant across all resolution paths)
  (.arrow 𐑭 𐑠 𐑡)  -- [28] IFIX | prot := 𐑭 | irreversible fixation — winding number (permanent record of knot invariant (Jones, Alexander, signature))
  (.arrow 𐑡 𐑭 𐑼)  -- [29] TANCH | top := 𐑡 | terminal object — connectivity boundary (close the system — the knot is fully characterized within its equivalence class)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def novikov_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (novikov_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def novikov_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (novikov_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem novikov_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
