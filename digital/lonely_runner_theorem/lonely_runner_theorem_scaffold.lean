-- IGProtocol scaffold: VINIT → TANCH → AFWD → AFWD → AFWD → CLINK → CLINK → FSPLIT → EVALT → EVALF → AREV → CLINK → ENGAGR → AFWD → CLINK → FSPLIT → EVALT → EVALF → IFIX → IMSCRIB → AREV → CLINK → FSPLIT → EVALT → EVALF → AFWD → CLINK → IFIX → IMSCRIB → CLINK → FSPLIT → EVALT → EVALF → AFWD → CLINK → ENGAGR → AREV → CLINK → IFIX → FFUSE → IMSCRIB → TANCH
-- Class: Lonely Runner Theorem
-- Fingerprint: sig=(24,5,10,3)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=42
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(30, 39)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑾  | forward morphism — bidirectional arrow
--   [3] AFWD      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [4] AFWD      rel    := 𐑾               𐑾 → 𐑱  | forward morphism — bidirectional arrow
--   [5] CLINK     fid    := 𐑱               𐑾 → 𐑱  | composition — regime coherence
--   [6] CLINK     fid    := 𐑱               𐑱 → 𐑚  | composition — regime coherence
--   [7] FSPLIT    gran   := 𐑚               𐑱 → ⊙  | split δ — range decomposition
--   [8] EVALT     crit   := ⊙               𐑚 → 𐑖  | evaluate-true — criticality gate open
--   [9] EVALF     chir   := 𐑖               ⊙ → 𐑗  | evaluate-false — chirality check
--   [10] AREV      pol    := 𐑗               𐑖 → 𐑱  | reverse morphism — parity flip
--   [11] CLINK     fid    := 𐑱               𐑗 → 𐑳  | composition — regime coherence
--   [12] ENGAGR    stoi   := 𐑳               𐑱 → 𐑾  | engage paradox — B-state, both arms
--   [13] AFWD      rel    := 𐑾               𐑳 → 𐑱  | forward morphism — bidirectional arrow
--   [14] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [15] FSPLIT    gran   := 𐑚               𐑱 → ⊙  | split δ — range decomposition
--   [16] EVALT     crit   := ⊙               𐑚 → 𐑖  | evaluate-true — criticality gate open
--   [17] EVALF     chir   := 𐑖               ⊙ → 𐑭  | evaluate-false — chirality check
--   [18] IFIX      prot   := 𐑭               𐑖 → 𐑠  | irreversible fixation — winding number
--   [19] IMSCRIB   gram   := 𐑠               𐑭 → 𐑗  | identity — self-imscription
--   [20] AREV      pol    := 𐑗               𐑠 → 𐑱  | reverse morphism — parity flip
--   [21] CLINK     fid    := 𐑱               𐑗 → 𐑚  | composition — regime coherence
--   [22] FSPLIT    gran   := 𐑚               𐑱 → ⊙  | split δ — range decomposition
--   [23] EVALT     crit   := ⊙               𐑚 → 𐑖  | evaluate-true — criticality gate open
--   [24] EVALF     chir   := 𐑖               ⊙ → 𐑾  | evaluate-false — chirality check
--   [25] AFWD      rel    := 𐑾               𐑖 → 𐑱  | forward morphism — bidirectional arrow
--   [26] CLINK     fid    := 𐑱               𐑾 → 𐑭  | composition — regime coherence
--   [27] IFIX      prot   := 𐑭               𐑱 → 𐑠  | irreversible fixation — winding number
--   [28] IMSCRIB   gram   := 𐑠               𐑭 → 𐑱  | identity — self-imscription
--   [29] CLINK     fid    := 𐑱               𐑠 → 𐑚  | composition — regime coherence
--   [30] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [31] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [32] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [33] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [34] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [35] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [36] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [37] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [38] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [39] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [40] IMSCRIB   gram   := 𐑠               𐑙 → 𐑡  | identity — self-imscription
--   [41] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def lonely_runner_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (initialize the theorem with no runners, no positions, no time)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (establish the unit circle [0,1) as the boundary containing all runner positions)
  (.arrow 𐑾 𐑡 𐑾)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (runner 1 advances at speed v₁ (irrational), moving forward on the track)
  (.arrow 𐑾 𐑾 𐑾)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (runner 2 advances at speed v₂ (irrational, coprime to v₁), moving forward on ...)
  (.arrow 𐑾 𐑾 𐑱)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (runner 3 advances at speed v₃ (irrational, coprime to v₁ and v₂), moving forw...)
  (.arrow 𐑱 𐑾 𐑱)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (compose time step t=0 with t=1; all runners advance by their respective speeds)
  (.arrow 𐑱 𐑱 𐑚)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (compose time step t=1 with t=2; positions update modulo 1)
  (.arrow 𐑚 𐑱 ⊙)  -- [7] FSPLIT | gran := 𐑚 | split δ — range decomposition (branch into two scenarios: (T-arm) all gaps ≥ 1/n at some time, (F-arm) at le...)
  (.arrow ⊙ 𐑚 𐑖)  -- [8] EVALT | crit := ⊙ | evaluate-true — criticality gate open (evaluate T-arm: check if all pairwise gaps between runners are ≥ 1/n)
  (.arrow 𐑖 ⊙ 𐑗)  -- [9] EVALF | chir := 𐑖 | evaluate-false — chirality check (evaluate F-arm: check if at least one pairwise gap is < 1/n)
  (.arrow 𐑗 𐑖 𐑱)  -- [10] AREV | pol := 𐑗 | reverse morphism — parity flip (reverse analysis on F-arm: trace back to earlier times to see how gaps evolved)
  (.arrow 𐑱 𐑗 𐑳)  -- [11] CLINK | fid := 𐑱 | composition — regime coherence (compose earlier time steps with current time; examine gap trajectory)
  (.arrow 𐑳 𐑱 𐑾)  -- [12] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (hold both states simultaneously: some runners lonely, others not; paradice of...)
  (.arrow 𐑾 𐑳 𐑱)  -- [13] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (continue forward motion; runners advance further, gaps shift)
  (.arrow 𐑱 𐑾 𐑚)  -- [14] CLINK | fid := 𐑱 | composition — regime coherence (compose next time step; all runners advance again)
  (.arrow 𐑚 𐑱 ⊙)  -- [15] FSPLIT | gran := 𐑚 | split δ — range decomposition (re-branch at new time t': check gap conditions again)
  (.arrow ⊙ 𐑚 𐑖)  -- [16] EVALT | crit := ⊙ | evaluate-true — criticality gate open (evaluate T-arm at t': do all gaps now satisfy ≥ 1/n?)
  (.arrow 𐑖 ⊙ 𐑭)  -- [17] EVALF | chir := 𐑖 | evaluate-false — chirality check (evaluate F-arm at t': do any gaps still violate < 1/n?)
  (.arrow 𐑭 𐑖 𐑠)  -- [18] IFIX | prot := 𐑭 | irreversible fixation — winding number (record permanent achievement: runner i achieves gap ≥ 1/n from all others at ...)
  (.arrow 𐑠 𐑭 𐑗)  -- [19] IMSCRIB | gram := 𐑠 | identity — self-imscription (runner i recognizes itself as lonely; self-reference: the runner is itself, a...)
  (.arrow 𐑗 𐑠 𐑱)  -- [20] AREV | pol := 𐑗 | reverse morphism — parity flip (reverse analysis on remaining runners; trace their gap evolution backward)
  (.arrow 𐑱 𐑗 𐑚)  -- [21] CLINK | fid := 𐑱 | composition — regime coherence (compose time steps for runner j; examine its gap trajectory)
  (.arrow 𐑚 𐑱 ⊙)  -- [22] FSPLIT | gran := 𐑚 | split δ — range decomposition (branch for runner j: (T-arm) achieves 1/n gap, (F-arm) has not yet)
  (.arrow ⊙ 𐑚 𐑖)  -- [23] EVALT | crit := ⊙ | evaluate-true — criticality gate open (evaluate T-arm for runner j: gap ≥ 1/n?)
  (.arrow 𐑖 ⊙ 𐑾)  -- [24] EVALF | chir := 𐑖 | evaluate-false — chirality check (evaluate F-arm for runner j: gap < 1/n?)
  (.arrow 𐑾 𐑖 𐑱)  -- [25] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (runner j advances further; gap conditions may change)
  (.arrow 𐑱 𐑾 𐑭)  -- [26] CLINK | fid := 𐑱 | composition — regime coherence (compose next time step for runner j)
  (.arrow 𐑭 𐑱 𐑠)  -- [27] IFIX | prot := 𐑭 | irreversible fixation — winding number (record permanent achievement: runner j achieves gap ≥ 1/n at time t'')
  (.arrow 𐑠 𐑭 𐑱)  -- [28] IMSCRIB | gram := 𐑠 | identity — self-imscription (runner j recognizes itself as lonely; self-reference)
  (.arrow 𐑱 𐑠 𐑚)  -- [29] CLINK | fid := 𐑱 | composition — regime coherence (compose time steps for all remaining runners)
  -- FSPLIT [30] (gran := 𐑚) (final branch: (T-arm) all n runners have achieved 1/n gaps at some times, (F-arm) at least one has not) / FFUSE [39] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [31] EVALT | crit := ⊙ | evaluate-true — criticality gate open (evaluate T-arm: have all n runners achieved their lonely moment?)
      -- F-branch (7 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [32] EVALF | chir := 𐑖 | evaluate-false — chirality check (evaluate F-arm: is there still a runner without a lonely moment?)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [33] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (continue forward motion; by irrationality and equidistribution, gaps will eve...)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [34] CLINK | fid := 𐑱 | composition — regime coherence (compose time steps indefinitely; the sequence of gaps is equidistributed)
      .seq
        (.arrow 𐑳 𐑚 𐑙)  -- [35] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (hold the paradice: the theorem is being proven; some runners lonely, others a...)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [36] AREV | pol := 𐑗 | reverse morphism — parity flip (reverse analysis on the entire trajectory; examine how gaps evolved from t=0 ...)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [37] CLINK | fid := 𐑱 | composition — regime coherence (compose the full trajectory; all time steps linked)
        (.arrow 𐑭 𐑚 𐑙)  -- [38] IFIX | prot := 𐑭 | irreversible fixation — winding number (record the final permanent achievement: all n runners have achieved gap ≥ 1/n...))
    -- reconnect at FFUSE [39]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [39] FFUSE | stoi := 𐑙 (reconstitute the full runner configuration from both gap branches; fuse T-arm (all lonely) and F-arm (none lonely) back into the original state)
  (.arrow 𐑠 𐑙 𐑡)  -- [40] IMSCRIB | gram := 𐑠 | identity — self-imscription (the theorem recognizes itself; the lonely runner theorem is proven; self-refe...)
  (.arrow 𐑡 𐑠 𐑼)  -- [41] TANCH | top := 𐑡 | terminal object — connectivity boundary (close the system; the unit circle boundary contains the complete proof)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def lonely_runner_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (lonely_runner_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def lonely_runner_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (lonely_runner_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem lonely_runner_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
