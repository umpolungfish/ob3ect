-- IGProtocol scaffold: VINIT → TANCH → AFWD → CLINK → IMSCRIB → FSPLIT → AFWD → EVALT → AREV → EVALF → FFUSE → EVALT → IFIX → CLINK → IMSCRIB → ENGAGR → AREV → CLINK → AFWD → IMSCRIB → IFIX → TANCH
-- Class: Artin's Theorem on Primitive Roots
-- Fingerprint: sig=(14,2,4,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=22
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(5, 10)]

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
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [9] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] FFUSE     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [11] EVALT     crit   := ⊙               𐑙 → 𐑭  | evaluate-true — criticality gate open
--   [12] IFIX      prot   := 𐑭               ⊙ → 𐑱  | irreversible fixation — winding number
--   [13] CLINK     fid    := 𐑱               𐑭 → 𐑠  | composition — regime coherence
--   [14] IMSCRIB   gram   := 𐑠               𐑱 → 𐑳  | identity — self-imscription
--   [15] ENGAGR    stoi   := 𐑳               𐑠 → 𐑗  | engage paradox — B-state, both arms
--   [16] AREV      pol    := 𐑗               𐑳 → 𐑱  | reverse morphism — parity flip
--   [17] CLINK     fid    := 𐑱               𐑗 → 𐑾  | composition — regime coherence
--   [18] AFWD      rel    := 𐑾               𐑱 → 𐑠  | forward morphism — bidirectional arrow
--   [19] IMSCRIB   gram   := 𐑠               𐑾 → 𐑭  | identity — self-imscription
--   [20] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [21] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def artins_theorem_on_primitive_roots_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (initialize candidate g with no properties; void state (00))
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (establish the modulus n and the multiplicative group (ℤ/nℤ)* with order φ(n);...)
  (.arrow 𐑾 𐑡 𐑱)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (compute φ(n) using Euler's totient function; forward morphism toward the targ...)
  (.arrow 𐑱 𐑾 𐑠)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (compose the factorization of φ(n) into prime powers; chain the divisor structure)
  (.arrow 𐑠 𐑱 𐑚)  -- [4] IMSCRIB | gram := 𐑠 | identity — self-imscription (recognize the identity element 1 ≡ g^0 (mod n); self-reference point of the g...)
  -- FSPLIT [5] (gran := 𐑚) (branch on the divisors of φ(n); split into T-branch (d = φ(n)) and F-branch (proper divisors d < φ(n))) / FFUSE [10] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [6] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (on T-branch, compute g^φ(n) mod n; forward exponentiation toward the full order)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [7] EVALT | crit := ⊙ | evaluate-true — criticality gate open (on T-branch, evaluate g^φ(n) ≡ 1 (mod n) as true; Euler's theorem guarantees ...)
        (.arrow 𐑗 𐑚 𐑙)  -- [8] AREV | pol := 𐑗 | reverse morphism — parity flip (on F-branch, for each proper divisor d of φ(n), compute g^d mod n; reverse de...)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [9] EVALF | chir := 𐑖 | evaluate-false — chirality check (on F-branch, test if g^d ≡ 1 (mod n) for any proper divisor d; if true, g is ...))
    -- reconnect at FFUSE [10]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 ⊙)  -- [10] FFUSE | stoi := 𐑙 (fuse the two branches; if F-branch found no proper divisor d with g^d ≡ 1, then ord(g) = φ(n))
  (.arrow ⊙ 𐑙 𐑭)  -- [11] EVALT | crit := ⊙ | evaluate-true — criticality gate open (final affirmative: g is a primitive root; ord(g) = φ(n); g generates (ℤ/nℤ)*)
  (.arrow 𐑭 ⊙ 𐑱)  -- [12] IFIX | prot := 𐑭 | irreversible fixation — winding number (record g in the canonical list of primitive roots mod n; append-only, permane...)
  (.arrow 𐑱 𐑭 𐑠)  -- [13] CLINK | fid := 𐑱 | composition — regime coherence (compose the verification: if g is primitive, then g^k generates all elements ...)
  (.arrow 𐑠 𐑱 𐑳)  -- [14] IMSCRIB | gram := 𐑠 | identity — self-imscription (self-reference: the set of all primitive roots mod n is closed under the grou...)
  (.arrow 𐑳 𐑠 𐑗)  -- [15] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (paradice state: Artin's theorem asserts primitive roots exist for n ∈ {1, 2, ...)
  (.arrow 𐑗 𐑳 𐑱)  -- [16] AREV | pol := 𐑗 | reverse morphism — parity flip (reverse morphism: given a primitive root g, the inverse g^(-1) ≡ g^(φ(n)-1) (...)
  (.arrow 𐑱 𐑗 𐑾)  -- [17] CLINK | fid := 𐑱 | composition — regime coherence (compose the orbit structure: if g is primitive, then {g^1, g^2, ..., g^φ(n)} ...)
  (.arrow 𐑾 𐑱 𐑠)  -- [18] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (forward morphism: the exponent k advances from 1 to φ(n); each step generates...)
  (.arrow 𐑠 𐑾 𐑭)  -- [19] IMSCRIB | gram := 𐑠 | identity — self-imscription (identity recognition: g^φ(n) ≡ 1 (mod n) is the fixed point; the cycle closes...)
  (.arrow 𐑭 𐑠 𐑡)  -- [20] IFIX | prot := 𐑭 | irreversible fixation — winding number (record the complete orbit of g; permanent enumeration of all group elements g...)
  (.arrow 𐑡 𐑭 𐑼)  -- [21] TANCH | top := 𐑡 | terminal object — connectivity boundary (close the boundary: the set of all primitive roots mod n, together with the g...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def artins_theorem_on_primitive_roots_true_arm : IGProtocol 𐑼 𐑡 :=
  (artins_theorem_on_primitive_roots_protocol).restrictToEVALT

-- false arm
noncomputable def artins_theorem_on_primitive_roots_false_arm : IGProtocol 𐑼 𐑡 :=
  (artins_theorem_on_primitive_roots_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem artins_theorem_on_primitive_roots_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
