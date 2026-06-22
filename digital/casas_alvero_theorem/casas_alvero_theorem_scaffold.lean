-- IGProtocol scaffold: VINIT → AFWD → AFWD → AFWD → CLINK → CLINK → CLINK → CLINK → FSPLIT → EVALT → AFWD → IFIX → FFUSE → EVALF → AREV → IFIX → FFUSE → ENGAGR → IMSCRIB → TANCH
-- Class: Casas-Alvero Theorem
-- Fingerprint: sig=(12,3,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=20
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(8, 12)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑾  | forward morphism — bidirectional arrow
--   [2] AFWD      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [3] AFWD      rel    := 𐑾               𐑾 → 𐑱  | forward morphism — bidirectional arrow
--   [4] CLINK     fid    := 𐑱               𐑾 → 𐑱  | composition — regime coherence
--   [5] CLINK     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [6] CLINK     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [7] CLINK     fid    := 𐑱               𐑱 → 𐑚  | composition — regime coherence
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [11] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑖  | fuse μ — assembly mode
--   [13] EVALF     chir   := 𐑖               𐑙 → 𐑗  | evaluate-false — chirality check
--   [14] AREV      pol    := 𐑗               𐑖 → 𐑭  | reverse morphism — parity flip
--   [15] IFIX      prot   := 𐑭               𐑗 → 𐑙  | irreversible fixation — winding number
--   [16] FFUSE     stoi   := 𐑙               𐑭 → 𐑳  | fuse μ — assembly mode
--   [17] ENGAGR    stoi   := 𐑳               𐑙 → 𐑠  | engage paradox — B-state, both arms
--   [18] IMSCRIB   gram   := 𐑠               𐑳 → 𐑡  | identity — self-imscription
--   [19] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def casas_alvero_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (initialize with unspecified polynomial P(x) of degree n; no structure assumed)
  (.arrow 𐑾 𐑼 𐑾)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (compute first derivative P'(x); forward morphism toward derivative chain)
  (.arrow 𐑾 𐑾 𐑾)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (compute second derivative P''(x); continue ascending chain)
  (.arrow 𐑾 𐑾 𐑱)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (compute third derivative P'''(x); extend chain)
  (.arrow 𐑱 𐑾 𐑱)  -- [4] CLINK | fid := 𐑱 | composition — regime coherence (begin composition of gcd operations; chain gcd(P, P') as first link)
  (.arrow 𐑱 𐑱 𐑱)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (compose gcd result with P''; link gcd(gcd(P, P'), P''))
  (.arrow 𐑱 𐑱 𐑱)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (continue chaining gcd through all derivatives up to P^(n-1))
  (.arrow 𐑱 𐑱 𐑚)  -- [7] CLINK | fid := 𐑱 | composition — regime coherence (final composition yields gcd(P, P', P'', ..., P^(n-1)))
  -- FSPLIT [8] (gran := 𐑚) (branch on whether final gcd is a nonzero constant or a nonconstant polynomial) / FFUSE [12] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [9] EVALT | crit := ⊙ | evaluate-true — criticality gate open (T-branch activated; gcd is constant; affirm that all roots are simple)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [10] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (on T-branch, forward morphism confirms root multiplicity = 1 for all roots)
        (.arrow 𐑭 𐑚 𐑙)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (record the factorization P = (x - r₁)(x - r₂)...(x - rₙ) with all mᵢ = 1)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [12]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑖)  -- [12] FFUSE | stoi := 𐑙 (T-branch fuses back; reconstitute P from simple-root structure)
  (.arrow 𐑖 𐑙 𐑗)  -- [13] EVALF | chir := 𐑖 | evaluate-false — chirality check (F-branch activated; gcd is nonconstant; affirm that at least one root is repe...)
  (.arrow 𐑗 𐑖 𐑭)  -- [14] AREV | pol := 𐑗 | reverse morphism — parity flip (on F-branch, reverse morphism descends from gcd structure to identify repeate...)
  (.arrow 𐑭 𐑗 𐑙)  -- [15] IFIX | prot := 𐑭 | irreversible fixation — winding number (record the factorization P = (x - r₁)^m₁ · ... · (x - rₖ)^mₖ with some mᵢ > 1)
  (.arrow 𐑙 𐑭 𐑳)  -- [16] FFUSE | stoi := 𐑙 | fuse μ — assembly mode (F-branch fuses back; reconstitute P from repeated-root structure)
  (.arrow 𐑳 𐑙 𐑠)  -- [17] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (paradice state emerges at the boundary between T and F branches; both multipl...)
  (.arrow 𐑠 𐑳 𐑡)  -- [18] IMSCRIB | gram := 𐑠 | identity — self-imscription (self-reference: P is the measure of itself; the theorem's conclusion (all roo...)
  (.arrow 𐑡 𐑠 𐑼)  -- [19] TANCH | top := 𐑡 | terminal object — connectivity boundary (terminal anchor closes the system; Casas-Alvero constraint gcd(P, P', ..., P^...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def casas_alvero_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (casas_alvero_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def casas_alvero_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (casas_alvero_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem casas_alvero_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
