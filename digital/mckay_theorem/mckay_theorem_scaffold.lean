-- IGProtocol scaffold: VINIT → TANCH → IMSCRIB → FSPLIT → AFWD → EVALT → CLINK → AREV → EVALF → CLINK → FFUSE → IFIX → ENGAGR → IMSCRIB → CLINK → TANCH
-- Class: McKay Theorem
-- Fingerprint: sig=(10,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=16
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑠  | terminal object — connectivity boundary
--   [2] IMSCRIB   gram   := 𐑠               𐑡 → 𐑚  | identity — self-imscription
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [11] IFIX      prot   := 𐑭               𐑙 → 𐑳  | irreversible fixation — winding number
--   [12] ENGAGR    stoi   := 𐑳               𐑭 → 𐑠  | engage paradox — B-state, both arms
--   [13] IMSCRIB   gram   := 𐑠               𐑳 → 𐑱  | identity — self-imscription
--   [14] CLINK     fid    := 𐑱               𐑠 → 𐑡  | composition — regime coherence
--   [15] TANCH     top    := 𐑡               𐑱 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def mckay_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (initialize with empty graph ∅; no vertices, no edges, no coloring yet)
  (.arrow 𐑡 𐑼 𐑠)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (establish boundary as the complete graph K_n or the terminal chromatic polyno...)
  (.arrow 𐑠 𐑡 𐑚)  -- [2] IMSCRIB | gram := 𐑠 | identity — self-imscription (recognize P(G,k) as self-referential identity; the polynomial is invariant un...)
  -- FSPLIT [3] (gran := 𐑚) (select an edge e ∈ E(G) and fork into two branches: deletion and contraction) / FFUSE [10] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (4 nodes)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (forward morphism on T-arm (deletion branch): remove edge e, keep both endpoin...)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (evaluate T-arm: if G-e is a base case (single vertex or empty), return known ...)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (compose recursively on T-arm: if G-e is not base case, apply FSPLIT again to G-e)
        (.arrow 𐑗 𐑚 𐑙)  -- [7] AREV | pol := 𐑗 | reverse morphism — parity flip (reverse morphism on F-arm (contraction branch): merge endpoints of edge e int...)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [8] EVALF | chir := 𐑖 | evaluate-false — chirality check (evaluate F-arm: if G/e is a base case, return known P(G/e,k))
        (.arrow 𐑱 𐑚 𐑙)  -- [9] CLINK | fid := 𐑱 | composition — regime coherence (compose recursively on F-arm: if G/e is not base case, apply FSPLIT again to G/e))
    -- reconnect at FFUSE [10]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [10] FFUSE | stoi := 𐑙 (recombine both branches via McKay recurrence: P(G,k) = P(G-e,k) - P(G/e,k))
  (.arrow 𐑭 𐑙 𐑳)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (record computed P(G,k) in memoization table; permanent, append-only, cannot b...)
  (.arrow 𐑳 𐑭 𐑠)  -- [12] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (recognize that non-isomorphic graphs may yield identical chromatic polynomial...)
  (.arrow 𐑠 𐑳 𐑱)  -- [13] IMSCRIB | gram := 𐑠 | identity — self-imscription (verify self-consistency: P(G,k) is independent of edge selection; any edge e ...)
  (.arrow 𐑱 𐑠 𐑡)  -- [14] CLINK | fid := 𐑱 | composition — regime coherence (chain all deletion-contraction steps into a single compositional witness of t...)
  (.arrow 𐑡 𐑱 𐑼)  -- [15] TANCH | top := 𐑡 | terminal object — connectivity boundary (close the boundary: all possible colorings of G are now enumerated and verifi...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def mckay_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (mckay_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def mckay_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (mckay_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem mckay_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
