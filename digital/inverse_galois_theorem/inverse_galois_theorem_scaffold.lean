-- IGProtocol scaffold: VINIT → TANCH → AFWD → CLINK → IMSCRIB → FSPLIT → EVALT → AREV → EVALF → FFUSE → ENGAGR → IFIX → CLINK → AREV → FSPLIT → EVALT → FFUSE → IFIX → ENGAGR → IMSCRIB → TANCH → AREV → CLINK → IFIX
-- Class: Inverse Galois Theorem
-- Fingerprint: sig=(12,4,5,3)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=24
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(5, 9), (14, 16)]

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
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [10] ENGAGR    stoi   := 𐑳               𐑙 → 𐑭  | engage paradox — B-state, both arms
--   [11] IFIX      prot   := 𐑭               𐑳 → 𐑱  | irreversible fixation — winding number
--   [12] CLINK     fid    := 𐑱               𐑭 → 𐑗  | composition — regime coherence
--   [13] AREV      pol    := 𐑗               𐑱 → 𐑚  | reverse morphism — parity flip
--   [14] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [15] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [16] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [17] IFIX      prot   := 𐑭               𐑙 → 𐑳  | irreversible fixation — winding number
--   [18] ENGAGR    stoi   := 𐑳               𐑭 → 𐑠  | engage paradox — B-state, both arms
--   [19] IMSCRIB   gram   := 𐑠               𐑳 → 𐑡  | identity — self-imscription
--   [20] TANCH     top    := 𐑡               𐑠 → 𐑗  | terminal object — connectivity boundary
--   [21] AREV      pol    := 𐑗               𐑡 → 𐑱  | reverse morphism — parity flip
--   [22] CLINK     fid    := 𐑱               𐑗 → 𐑭  | composition — regime coherence
--   [23] IFIX      prot   := 𐑭               𐑱 → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def inverse_galois_theorem_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The abstract finite group G emerges from void — no field extension yet exists.)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (The algebraic closure ℚ̄ (or base field F) is established as the hermetic bou...)
  (.arrow 𐑾 𐑡 𐑱)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Construct a field extension K/F such that Gal(K/F) ≅ G — forward morphism tow...)
  (.arrow 𐑱 𐑾 𐑠)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (Compose Galois automorphisms σ, τ ∈ Gal(K/F) to generate the full group struc...)
  (.arrow 𐑠 𐑱 𐑚)  -- [4] IMSCRIB | gram := 𐑠 | identity — self-imscription (The identity automorphism id_K is recognized as the self-referential element ...)
  -- FSPLIT [5] (gran := 𐑚) (A normal subgroup N ⊲ G induces a split into H = Gal(K/K^N) and quotient G/N = Gal(K^N/F).) / FFUSE [9] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [6] EVALT | crit := ⊙ | evaluate-true — criticality gate open (If G is solvable, the T-branch activates: K is constructible by nested radica...)
        (.arrow 𐑗 𐑚 𐑙)  -- [7] AREV | pol := 𐑗 | reverse morphism — parity flip (The Galois correspondence descends from K to the fixed field K^N via the cont...)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [8] EVALF | chir := 𐑖 | evaluate-false — chirality check (If G is not solvable (e.g., S₅), the F-branch activates: K cannot be expresse...))
    -- reconnect at FFUSE [9]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [9] FFUSE | stoi := 𐑙 (The intermediate field K^N mediates the fusion of H and G/N back into G = Gal(K/F).)
  (.arrow 𐑳 𐑙 𐑭)  -- [10] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The paradice emerges: G is simultaneously realizable over ℚ and unrealizable ...)
  (.arrow 𐑭 𐑳 𐑱)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (The explicit construction of K/F with Gal(K/F) ≅ G is recorded permanently in...)
  (.arrow 𐑱 𐑭 𐑗)  -- [12] CLINK | fid := 𐑱 | composition — regime coherence (Further compositions of automorphisms generate all elements of G from generat...)
  (.arrow 𐑗 𐑱 𐑚)  -- [13] AREV | pol := 𐑗 | reverse morphism — parity flip (The inverse Galois correspondence maps subgroups back to intermediate fields,...)
  -- FSPLIT [14] (gran := 𐑚) (A second normal subgroup N' ⊲ G induces a further split into H' and G/N'.) / FFUSE [16] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [15] EVALT | crit := ⊙ | evaluate-true — criticality gate open (If the quotient G/N' is solvable, the T-branch extends: the intermediate exte...)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [16]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [16] FFUSE | stoi := 𐑙 (The second intermediate field K^N' fuses with H' to reconstitute the layer above K^N.)
  (.arrow 𐑭 𐑙 𐑳)  -- [17] IFIX | prot := 𐑭 | irreversible fixation — winding number (Each intermediate field and its Galois group are recorded as permanent facts.)
  (.arrow 𐑳 𐑭 𐑠)  -- [18] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The full tower F ⊆ K^N' ⊆ K^N ⊆ K enters a paradice: each layer is simultaneo...)
  (.arrow 𐑠 𐑳 𐑡)  -- [19] IMSCRIB | gram := 𐑠 | identity — self-imscription (The identity automorphism is recognized at every level of the tower, confirmi...)
  (.arrow 𐑡 𐑠 𐑗)  -- [20] TANCH | top := 𐑡 | terminal object — connectivity boundary (The algebraic closure ℚ̄ remains the terminal anchor, containing all realizat...)
  (.arrow 𐑗 𐑡 𐑱)  -- [21] AREV | pol := 𐑗 | reverse morphism — parity flip (The complete Galois correspondence is established: every subgroup of G corres...)
  (.arrow 𐑱 𐑗 𐑭)  -- [22] CLINK | fid := 𐑱 | composition — regime coherence (The composition of all automorphisms generates the full group G, closing the ...)
  (.arrow 𐑭 𐑱 𐑼)  -- [23] IFIX | prot := 𐑭 | irreversible fixation — winding number (The Inverse Galois Theorem itself — the statement that every finite group is ...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def inverse_galois_theorem_true_arm : IGProtocol 𐑼 𐑭 :=
  (inverse_galois_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def inverse_galois_theorem_false_arm : IGProtocol 𐑼 𐑭 :=
  (inverse_galois_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem inverse_galois_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
