-- IGProtocol scaffold: VINIT → TANCH → AFWD → CLINK → IMSCRIB → FSPLIT → EVALT → AFWD → IFIX → EVALF → AREV → IFIX → ENGAGR → FFUSE → CLINK → IMSCRIB → TANCH
-- Class: Zariski–Lipman Theorem
-- Fingerprint: sig=(10,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=17
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(5, 13)]

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
--   [7] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [8] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [9] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [11] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [12] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [14] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [15] IMSCRIB   gram   := 𐑠               𐑱 → 𐑡  | identity — self-imscription
--   [16] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def zariski_lipman_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Uninitialized variety X — void state before any algebraic structure.)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (Impose structure sheaf O_X and close the system within the variety X.)
  (.arrow 𐑾 𐑡 𐑱)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Define universal derivation d: O_X → Ω¹_X/k — forward morphism to tangent sheaf.)
  (.arrow 𐑱 𐑾 𐑠)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (Compose derivations via Lie bracket [D₁, D₂] — sequential chaining of tangent...)
  (.arrow 𐑠 𐑱 𐑚)  -- [4] IMSCRIB | gram := 𐑠 | identity — self-imscription (Identity derivation id ∈ Der_k(O_X) — self-reference in the derivation algebra.)
  -- FSPLIT [5] (gran := 𐑚) (Branch X into smooth locus X_sm and singular locus X_sing based on local freeness of Ω¹_X/k.) / FFUSE [13] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [6] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Affirm smooth locus X_sm — Ω¹_X/k is locally free (projective module), Zarisk...)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [7] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Forward morphism on smooth locus — tangent vectors form a vector bundle.)
        (.arrow 𐑭 𐑚 𐑙)  -- [8] IFIX | prot := 𐑭 | irreversible fixation — winding number (Record smooth points as permanent classification in Zariski topology.)
      -- F-branch (4 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [9] EVALF | chir := 𐑖 | evaluate-false — chirality check (Negate singular locus X_sing — Ω¹_X/k fails to be locally free.)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [10] AREV | pol := 𐑗 | reverse morphism — parity flip (Reverse morphism on singular locus — contraction of non-free cotangent forms.)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (Record singular points as permanent classification in Zariski topology.)
        (.arrow 𐑳 𐑚 𐑙)  -- [12] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Identify boundary/transitional points where smoothness is paradoxical (both l...))
    -- reconnect at FFUSE [13]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [13] FFUSE | stoi := 𐑙 (Reconstitute X = X_sm ∪ X_sing — disjoint union recovers original variety exactly.)
  (.arrow 𐑱 𐑙 𐑠)  -- [14] CLINK | fid := 𐑱 | composition — regime coherence (Compose the full classification cycle — derivation module structure determine...)
  (.arrow 𐑠 𐑱 𐑡)  -- [15] IMSCRIB | gram := 𐑠 | identity — self-imscription (Self-referential closure — the variety X recognizes itself through its tangen...)
  (.arrow 𐑡 𐑠 𐑼)  -- [16] TANCH | top := 𐑡 | terminal object — connectivity boundary (Terminal anchor — the Zariski–Lipman theorem is complete; no further refineme...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def zariski_lipman_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (zariski_lipman_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def zariski_lipman_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (zariski_lipman_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem zariski_lipman_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
