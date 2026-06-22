-- IGProtocol scaffold: VINIT → TANCH → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → FSPLIT → EVALT → AFWD → CLINK → EVALF → AREV → CLINK → ENGAGR → IMSCRIB → FFUSE → EVALT → IFIX → IFIX → IFIX → IFIX → IFIX → IFIX → IFIX → IFIX → IFIX → IFIX → IFIX → IFIX → CLINK → IMSCRIB → TANCH → IMSCRIB
-- Class: Sunflower Theorem
-- Fingerprint: sig=(21,2,4,12)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=39
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(12, 21)]

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
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑾  | composition — regime coherence
--   [4] AFWD      rel    := 𐑾               𐑱 → 𐑱  | forward morphism — bidirectional arrow
--   [5] CLINK     fid    := 𐑱               𐑾 → 𐑾  | composition — regime coherence
--   [6] AFWD      rel    := 𐑾               𐑱 → 𐑱  | forward morphism — bidirectional arrow
--   [7] CLINK     fid    := 𐑱               𐑾 → 𐑾  | composition — regime coherence
--   [8] AFWD      rel    := 𐑾               𐑱 → 𐑱  | forward morphism — bidirectional arrow
--   [9] CLINK     fid    := 𐑱               𐑾 → 𐑾  | composition — regime coherence
--   [10] AFWD      rel    := 𐑾               𐑱 → 𐑱  | forward morphism — bidirectional arrow
--   [11] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [12] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [13] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [14] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [15] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [16] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [17] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [18] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [19] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [20] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [21] FFUSE     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [22] EVALT     crit   := ⊙               𐑙 → 𐑭  | evaluate-true — criticality gate open
--   [23] IFIX      prot   := 𐑭               ⊙ → 𐑭  | irreversible fixation — winding number
--   [24] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [25] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [26] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [27] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [28] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [29] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [30] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [31] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [32] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [33] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [34] IFIX      prot   := 𐑭               𐑭 → 𐑱  | irreversible fixation — winding number
--   [35] CLINK     fid    := 𐑱               𐑭 → 𐑠  | composition — regime coherence
--   [36] IMSCRIB   gram   := 𐑠               𐑱 → 𐑡  | identity — self-imscription
--   [37] TANCH     top    := 𐑡               𐑠 → 𐑠  | terminal object — connectivity boundary
--   [38] IMSCRIB   gram   := 𐑠               𐑡 → 𐑼  | identity — self-imscription

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def sunflower_theorem_protocol : IGProtocol 𐑼 𐑠 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (uninitialized seed disk — no positions, no angles, no Fibonacci sequence)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (the complete spiral pattern at convergence — boundary that contains all seeds...)
  (.arrow 𐑾 𐑡 𐑱)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (first seed placed at 0° — forward morphism begins; angular increment rule est...)
  (.arrow 𐑱 𐑾 𐑾)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (composition of first angular step — seed 1 at 137.5° (1 × golden angle))
  (.arrow 𐑾 𐑱 𐑱)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (second seed placed at 275° — forward morphism continues; spiral grows outward)
  (.arrow 𐑱 𐑾 𐑾)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (composition of second angular step — seed 2 at 2 × 137.5° = 275° mod 360°)
  (.arrow 𐑾 𐑱 𐑱)  -- [6] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (third seed placed at 52.5° — forward morphism continues; spiral wraps around)
  (.arrow 𐑱 𐑾 𐑾)  -- [7] CLINK | fid := 𐑱 | composition — regime coherence (composition of third angular step — seed 3 at 3 × 137.5° = 412.5° mod 360° = ...)
  (.arrow 𐑾 𐑱 𐑱)  -- [8] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (fourth seed placed at 190° — forward morphism continues; spiral densifies)
  (.arrow 𐑱 𐑾 𐑾)  -- [9] CLINK | fid := 𐑱 | composition — regime coherence (composition of fourth angular step — seed 4 at 4 × 137.5° = 550° mod 360° = 190°)
  (.arrow 𐑾 𐑱 𐑱)  -- [10] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (fifth seed placed at 327.5° — forward morphism continues; Fibonacci number 5 ...)
  (.arrow 𐑱 𐑾 𐑚)  -- [11] CLINK | fid := 𐑱 | composition — regime coherence (composition of fifth angular step — seed 5 at 5 × 137.5° = 687.5° mod 360° = ...)
  -- FSPLIT [12] (gran := 𐑚) (bifurcation into clockwise and counterclockwise spiral arms — one spiral branches into two observable directions) / FFUSE [21] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [13] EVALT | crit := ⊙ | evaluate-true — criticality gate open (clockwise arm converges — consecutive Fibonacci numbers form radii; ratio app...)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [14] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (clockwise spiral continues outward — seeds 6, 7, 8... placed at golden angles...)
        (.arrow 𐑱 𐑚 𐑙)  -- [15] CLINK | fid := 𐑱 | composition — regime coherence (composition of clockwise steps — each seed position is sum of all prior rotat...)
      -- F-branch (5 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [16] EVALF | chir := 𐑖 | evaluate-false — chirality check (counterclockwise arm converges — same Fibonacci radii, opposite rotation dire...)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [17] AREV | pol := 𐑗 | reverse morphism — parity flip (counterclockwise spiral traced backward — reverse morphism unwinding the cloc...)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [18] CLINK | fid := 𐑱 | composition — regime coherence (composition of counterclockwise steps — each seed position is sum of all prio...)
      .seq
        (.arrow 𐑳 𐑚 𐑙)  -- [19] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (both spiral arms held simultaneously — observer perceives clockwise and count...)
        (.arrow 𐑠 𐑚 𐑙)  -- [20] IMSCRIB | gram := 𐑠 | identity — self-imscription (spiral recognizes itself — Fibonacci sequence embedded in seed counts; self-s...))
    -- reconnect at FFUSE [21]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 ⊙)  -- [21] FFUSE | stoi := 𐑙 (reconstitution of unified spiral from dual arms — clockwise and counterclockwise fuse back into single golden-angle rule)
  (.arrow ⊙ 𐑙 𐑭)  -- [22] EVALT | crit := ⊙ | evaluate-true — criticality gate open (unified spiral converges to golden ratio — FFUSE result equals FSPLIT input; ...)
  (.arrow 𐑭 ⊙ 𐑭)  -- [23] IFIX | prot := 𐑭 | irreversible fixation — winding number (seed position 1 recorded as permanent — 0° position immutable; append-only gr...)
  (.arrow 𐑭 𐑭 𐑭)  -- [24] IFIX | prot := 𐑭 | irreversible fixation — winding number (seed position 2 recorded as permanent — 137.5° position immutable; spiral gro...)
  (.arrow 𐑭 𐑭 𐑭)  -- [25] IFIX | prot := 𐑭 | irreversible fixation — winding number (seed position 3 recorded as permanent — 275° position immutable; no revision ...)
  (.arrow 𐑭 𐑭 𐑭)  -- [26] IFIX | prot := 𐑭 | irreversible fixation — winding number (seed position 4 recorded as permanent — 52.5° position immutable; ROM fixatio...)
  (.arrow 𐑭 𐑭 𐑭)  -- [27] IFIX | prot := 𐑭 | irreversible fixation — winding number (seed position 5 recorded as permanent — 190° position immutable; Fibonacci li...)
  (.arrow 𐑭 𐑭 𐑭)  -- [28] IFIX | prot := 𐑭 | irreversible fixation — winding number (seed position 6 recorded as permanent — 327.5° position immutable; spiral den...)
  (.arrow 𐑭 𐑭 𐑭)  -- [29] IFIX | prot := 𐑭 | irreversible fixation — winding number (seed position 7 recorded as permanent — 104.5° position immutable; pattern cr...)
  (.arrow 𐑭 𐑭 𐑭)  -- [30] IFIX | prot := 𐑭 | irreversible fixation — winding number (seed position 8 recorded as permanent — 242° position immutable; Fibonacci 8 ...)
  (.arrow 𐑭 𐑭 𐑭)  -- [31] IFIX | prot := 𐑭 | irreversible fixation — winding number (seed position 13 recorded as permanent — Fibonacci 13 reached; spiral converg...)
  (.arrow 𐑭 𐑭 𐑭)  -- [32] IFIX | prot := 𐑭 | irreversible fixation — winding number (seed position 21 recorded as permanent — Fibonacci 21 reached; golden ratio r...)
  (.arrow 𐑭 𐑭 𐑭)  -- [33] IFIX | prot := 𐑭 | irreversible fixation — winding number (seed position 34 recorded as permanent — Fibonacci 34 reached; golden ratio r...)
  (.arrow 𐑭 𐑭 𐑱)  -- [34] IFIX | prot := 𐑭 | irreversible fixation — winding number (seed position 55 recorded as permanent — Fibonacci 55 reached; golden ratio r...)
  (.arrow 𐑱 𐑭 𐑠)  -- [35] CLINK | fid := 𐑱 | composition — regime coherence (composition of all angular steps — the entire spiral is the chaining of n × 1...)
  (.arrow 𐑠 𐑱 𐑡)  -- [36] IMSCRIB | gram := 𐑠 | identity — self-imscription (the spiral recognizes its own recursive structure — Fibonacci sequence self-r...)
  (.arrow 𐑡 𐑠 𐑠)  -- [37] TANCH | top := 𐑡 | terminal object — connectivity boundary (the complete spiral pattern at convergence — boundary closes; all seeds posit...)
  (.arrow 𐑠 𐑡 𐑼)  -- [38] IMSCRIB | gram := 𐑠 | identity — self-imscription (final self-reference — the spiral returns to itself; the pattern recognizes i...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def sunflower_theorem_true_arm : IGProtocol 𐑼 𐑠 :=
  (sunflower_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def sunflower_theorem_false_arm : IGProtocol 𐑼 𐑠 :=
  (sunflower_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem sunflower_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
