-- IGProtocol scaffold: VINIT → TANCH → FSPLIT → EVALT → AFWD → EVALF → AREV → CLINK → FFUSE → IMSCRIB → IFIX → ENGAGR → CLINK → IMSCRIB → IFIX → AFWD → AREV → FSPLIT → EVALT → EVALF → ENGAGR → FFUSE → CLINK → IMSCRIB → IFIX → AFWD → AREV → FSPLIT → EVALT → EVALF → ENGAGR → FFUSE → CLINK → IMSCRIB → IFIX → TANCH
-- Class: Rota's Basis Theorem
-- Fingerprint: sig=(17,6,9,4)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=36
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 8), (17, 21), (27, 31)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑚  | terminal object — connectivity boundary
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [9] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [10] IFIX      prot   := 𐑭               𐑠 → 𐑳  | irreversible fixation — winding number
--   [11] ENGAGR    stoi   := 𐑳               𐑭 → 𐑱  | engage paradox — B-state, both arms
--   [12] CLINK     fid    := 𐑱               𐑳 → 𐑠  | composition — regime coherence
--   [13] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [14] IFIX      prot   := 𐑭               𐑠 → 𐑾  | irreversible fixation — winding number
--   [15] AFWD      rel    := 𐑾               𐑭 → 𐑗  | forward morphism — bidirectional arrow
--   [16] AREV      pol    := 𐑗               𐑾 → 𐑚  | reverse morphism — parity flip
--   [17] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [18] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [19] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [20] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [21] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [22] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [23] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [24] IFIX      prot   := 𐑭               𐑠 → 𐑾  | irreversible fixation — winding number
--   [25] AFWD      rel    := 𐑾               𐑭 → 𐑗  | forward morphism — bidirectional arrow
--   [26] AREV      pol    := 𐑗               𐑾 → 𐑚  | reverse morphism — parity flip
--   [27] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [28] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [29] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [30] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [31] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [32] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [33] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [34] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [35] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def rotas_basis_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (initialize with the empty independent set ∅; no elements selected, no rank as...)
  (.arrow 𐑡 𐑼 𐑚)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (invoke the matroid M as the boundary; all operations must respect the exchang...)
  -- FSPLIT [2] (gran := 𐑚) (given two bases B₁ and B₂, split into two branches: (T) find e ∈ B₁ − B₂, (F) find f ∈ B₂ − B₁) / FFUSE [8] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (T-branch affirms: e exists in the symmetric difference B₁ − B₂; augmentation ...)
        (.arrow 𐑾 𐑚 𐑙)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (T-branch morphism: move forward by adding e to (B₁ − e) to form an intermedia...)
      -- F-branch (3 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [5] EVALF | chir := 𐑖 | evaluate-false — chirality check (F-branch affirms: f exists in the symmetric difference B₂ − B₁; deletion is p...)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [6] AREV | pol := 𐑗 | reverse morphism — parity flip (F-branch morphism: move backward by removing e from B₁ to form (B₁ − e); pari...)
        (.arrow 𐑱 𐑚 𐑙)  -- [7] CLINK | fid := 𐑱 | composition — regime coherence (compose the two morphisms into a single exchange operation: (B₁ − e) ∪ f))
    -- reconnect at FFUSE [8]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [8] FFUSE | stoi := 𐑙 (fuse the two branches back into a single basis B₃ = (B₁ − e) ∪ f; the exchange axiom guarantees this is a basis)
  (.arrow 𐑠 𐑙 𐑭)  -- [9] IMSCRIB | gram := 𐑠 | identity — self-imscription (B₃ recognizes itself as a maximal independent set of rank r(M); self-referenc...)
  (.arrow 𐑭 𐑠 𐑳)  -- [10] IFIX | prot := 𐑭 | irreversible fixation — winding number (record B₃ as a permanent, append-only entry in the basis lattice; this basis ...)
  (.arrow 𐑳 𐑭 𐑱)  -- [11] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (acknowledge that B₁, B₂, and B₃ are all simultaneously valid bases; the matro...)
  (.arrow 𐑱 𐑳 𐑠)  -- [12] CLINK | fid := 𐑱 | composition — regime coherence (compose the exchange operation with the identity to form a loop: (B₁, B₂) → B...)
  (.arrow 𐑠 𐑱 𐑭)  -- [13] IMSCRIB | gram := 𐑠 | identity — self-imscription (each new basis recognizes itself as part of the same matroid; the exchange pr...)
  (.arrow 𐑭 𐑠 𐑾)  -- [14] IFIX | prot := 𐑭 | irreversible fixation — winding number (record each new basis as a permanent entry; the basis lattice grows append-only)
  (.arrow 𐑾 𐑭 𐑗)  -- [15] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (forward morphism: move from one basis to another via exchange; the matroid st...)
  (.arrow 𐑗 𐑾 𐑚)  -- [16] AREV | pol := 𐑗 | reverse morphism — parity flip (reverse morphism: move backward from one basis to another via inverse exchang...)
  -- FSPLIT [17] (gran := 𐑚) (given a basis B and an element e ∉ B, split into two branches: (T) adding e creates a unique circuit C(e), (F) the circuit is empty (contradiction)) / FFUSE [21] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [18] EVALT | crit := ⊙ | evaluate-true — criticality gate open (T-branch affirms: the circuit C(e) exists; the matroid has a well-defined cir...)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [19] EVALF | chir := 𐑖 | evaluate-false — chirality check (F-branch affirms: no circuit exists; the element e is independent of B (contr...)
        (.arrow 𐑳 𐑚 𐑙)  -- [20] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (both branches are held simultaneously; the circuit and its absence coexist in...))
    -- reconnect at FFUSE [21]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [21] FFUSE | stoi := 𐑙 (fuse the circuit branches back into the basis B; the exchange property ensures that removing any element from C(e) and adding e yields a basis)
  (.arrow 𐑱 𐑙 𐑠)  -- [22] CLINK | fid := 𐑱 | composition — regime coherence (compose the circuit operation with the basis operation; the matroid is define...)
  (.arrow 𐑠 𐑱 𐑭)  -- [23] IMSCRIB | gram := 𐑠 | identity — self-imscription (the matroid recognizes itself as a self-dual structure; bases and circuits ar...)
  (.arrow 𐑭 𐑠 𐑾)  -- [24] IFIX | prot := 𐑭 | irreversible fixation — winding number (record the circuit structure as a permanent, append-only entry; the matroid's...)
  (.arrow 𐑾 𐑭 𐑗)  -- [25] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (forward morphism: move from the basis lattice to the circuit lattice; the mat...)
  (.arrow 𐑗 𐑾 𐑚)  -- [26] AREV | pol := 𐑗 | reverse morphism — parity flip (reverse morphism: move from the circuit lattice back to the basis lattice; th...)
  -- FSPLIT [27] (gran := 𐑚) (given a matroid M, split into two branches: (T) M is realizable over a field F, (F) M is non-realizable (abstract)) / FFUSE [31] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [28] EVALT | crit := ⊙ | evaluate-true — criticality gate open (T-branch affirms: M has a matrix representation; the exchange property corres...)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [29] EVALF | chir := 𐑖 | evaluate-false — chirality check (F-branch affirms: M is abstract; the exchange property is purely combinatoria...)
        (.arrow 𐑳 𐑚 𐑙)  -- [30] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (both branches are held simultaneously; the matroid is both realizable and abs...))
    -- reconnect at FFUSE [31]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [31] FFUSE | stoi := 𐑙 (fuse the two branches back into the matroid M; the exchange axiom holds regardless of representation)
  (.arrow 𐑱 𐑙 𐑠)  -- [32] CLINK | fid := 𐑱 | composition — regime coherence (compose the realizability operation with the exchange operation; the matroid ...)
  (.arrow 𐑠 𐑱 𐑭)  -- [33] IMSCRIB | gram := 𐑠 | identity — self-imscription (the matroid recognizes itself as representation-independent; the exchange pro...)
  (.arrow 𐑭 𐑠 𐑡)  -- [34] IFIX | prot := 𐑭 | irreversible fixation — winding number (record the matroid's exchange axiom as a permanent, append-only entry; the ma...)
  (.arrow 𐑡 𐑭 𐑼)  -- [35] TANCH | top := 𐑡 | terminal object — connectivity boundary (close the system; all bases, circuits, and exchange operations are contained ...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def rotas_basis_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (rotas_basis_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def rotas_basis_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (rotas_basis_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem rotas_basis_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
