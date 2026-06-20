-- IGProtocol scaffold: VINIT → AFWD → TANCH → AFWD → IMSCRIB → AFWD → AREV → CLINK → FSPLIT → FSPLIT → EVALT → EVALT → FFUSE → FSPLIT → EVALT → ENGAGR → EVALT → FFUSE → FFUSE → IFIX
-- Class: Inc²≃Inc is proved by the frobenius_closure theorem
-- Fingerprint: sig=(8,6,5,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=20
-- Expected tier: O₀
-- FSPLIT/FFUSE pairs: [(9, 12), (13, 17), (8, 18)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := D_wedge         D_wedge → R_lr  | initial object — ground of distinction
--   [1] AFWD      rel    := R_lr            D_wedge → T_network  | forward morphism — bidirectional arrow
--   [2] TANCH     top    := T_network       R_lr → R_lr  | terminal object — connectivity boundary
--   [3] AFWD      rel    := R_lr            T_network → Gamma_seq  | forward morphism — bidirectional arrow
--   [4] IMSCRIB   gram   := Gamma_seq       R_lr → R_lr  | identity — self-imscription
--   [5] AFWD      rel    := R_lr            Gamma_seq → P_asym  | forward morphism — bidirectional arrow
--   [6] AREV      pol    := P_asym          R_lr → F_ell  | reverse morphism — parity flip
--   [7] CLINK     fid    := F_ell           P_asym → G_beth  | composition — regime coherence
--   [8] FSPLIT    gran   := G_beth          G_beth → G_beth  | split δ — range decomposition
--   [9] FSPLIT    gran   := G_beth          G_beth → one_one  | split δ — range decomposition
--   [10] EVALT     crit   := Phi_c           G_beth → one_one  | evaluate-true — criticality gate open
--   [11] EVALT     crit   := Phi_c           G_beth → one_one  | evaluate-true — criticality gate open
--   [12] FFUSE     stoi   := one_one         G_beth → one_one  | fuse μ — assembly mode
--   [13] FSPLIT    gran   := G_beth          G_beth → one_one  | split δ — range decomposition
--   [14] EVALT     crit   := Phi_c           G_beth → one_one  | evaluate-true — criticality gate open
--   [15] ENGAGR    stoi   := n_m             G_beth → one_one  | engage paradox — B-state, both arms
--   [16] EVALT     crit   := Phi_c           G_beth → one_one  | evaluate-true — criticality gate open
--   [17] FFUSE     stoi   := one_one         G_beth → one_one  | fuse μ — assembly mode
--   [18] FFUSE     stoi   := one_one         one_one → Omega_Z  | fuse μ — assembly mode
--   [19] IFIX      prot   := Omega_Z         one_one → D_wedge  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def inc_inc_is_proved_by_the_frobenius_closure_theorem_protocol : IGProtocol D_wedge Omega_Z :=
  -- Seq chain:
  (.arrow D_wedge D_wedge R_lr)  -- [0] VINIT | dim := D_wedge | initial object — ground of distinction (The void before any logical structure; the formal system is uninitialised.)
  (.arrow R_lr D_wedge T_network)  -- [1] AFWD | rel := R_lr | forward morphism — bidirectional arrow (The paraconsistent kernel edit is applied – explosion is blocked, moving from...)
  (.arrow T_network R_lr R_lr)  -- [2] TANCH | top := T_network | terminal object — connectivity boundary (The modified Lean kernel is sealed as the hermetic container for all subseque...)
  (.arrow R_lr T_network Gamma_seq)  -- [3] AFWD | rel := R_lr | forward morphism — bidirectional arrow (Definition of the FourVal inductive type (constructors t, f, n, b) – the trut...)
  (.arrow Gamma_seq R_lr R_lr)  -- [4] IMSCRIB | gram := Gamma_seq | identity — self-imscription (The B‑state is recognised as the self‑referential dialetheia, the destined fi...)
  (.arrow R_lr Gamma_seq P_asym)  -- [5] AFWD | rel := R_lr | forward morphism — bidirectional arrow (Definition of inc : FourVal → FourVal, the incompleteness operator.)
  (.arrow P_asym R_lr F_ell)  -- [6] AREV | pol := P_asym | reverse morphism — parity flip (Compute inc(B) = B – verify the closure property directly, the reverse turn t...)
  (.arrow F_ell P_asym G_beth)  -- [7] CLINK | fid := F_ell | composition — regime coherence (Compose inc with itself to form inc², and state the universal equality propos...)
  -- FSPLIT [8] (gran := G_beth) (First case split on the variable s – branch into the conjunctive arm (t, f) and the disjunctive arm (n, b).) / FFUSE [18] (stoi := one_one)
  .seq
    (.prod
      -- T-branch (9 nodes)
      .seq
        (.arrow G_beth G_beth one_one)  -- [9] FSPLIT | gran := G_beth | split δ — range decomposition (Inside (t, f) – split into t and f sub‑branches.)
      .seq
        (.arrow Phi_c G_beth one_one)  -- [10] EVALT | crit := Phi_c | evaluate-true — criticality gate open (Proof for t – inc(inc(t)) = inc(t) holds (true).)
      .seq
        (.arrow Phi_c G_beth one_one)  -- [11] EVALT | crit := Phi_c | evaluate-true — criticality gate open (Proof for f – inc(inc(f)) = inc(f) holds (true).)
      .seq
        (.arrow one_one G_beth one_one)  -- [12] FFUSE | stoi := one_one | fuse μ — assembly mode (Fuse t‑ and f‑subproofs into a proof for the (t, f) branch.)
      .seq
        (.arrow G_beth G_beth one_one)  -- [13] FSPLIT | gran := G_beth | split δ — range decomposition (Inside (n, b) – split into n and b sub‑branches.)
      .seq
        (.arrow Phi_c G_beth one_one)  -- [14] EVALT | crit := Phi_c | evaluate-true — criticality gate open (Proof for n – equality holds (true).)
      .seq
        (.arrow n_m G_beth one_one)  -- [15] ENGAGR | stoi := n_m | engage paradox — B-state, both arms (Enter the dialetheic state for b – the B‑branch is both true and false simult...)
      .seq
        (.arrow Phi_c G_beth one_one)  -- [16] EVALT | crit := Phi_c | evaluate-true — criticality gate open (Proof for b – inc(inc(b)) reduces to inc(b) = B, and the equality holds (true...)
        (.arrow one_one G_beth one_one)  -- [17] FFUSE | stoi := one_one | fuse μ — assembly mode (Fuse n‑ and b‑subproofs into a proof for the (n, b) branch.)
      -- F-branch (0 nodes)
      (.refl one_one))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [18]: μ closes the Frobenius pair
    (.arrow one_one one_one Omega_Z)  -- [18] FFUSE | stoi := one_one (Fuse the two top‑level branches (t,f) and (n,b) back into the universal statement ∀ s, inc(inc(s)) = inc(s).)
  -- FSPLIT [9] (gran := G_beth) (Inside (t, f) – split into t and f sub‑branches.) / FFUSE [12] (stoi := one_one)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow Phi_c G_beth one_one)  -- [10] EVALT | crit := Phi_c | evaluate-true — criticality gate open (Proof for t – inc(inc(t)) = inc(t) holds (true).)
        (.arrow Phi_c G_beth one_one)  -- [11] EVALT | crit := Phi_c | evaluate-true — criticality gate open (Proof for f – inc(inc(f)) = inc(f) holds (true).)
      -- F-branch (0 nodes)
      (.refl one_one))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [12]: μ closes the Frobenius pair
    (.arrow one_one G_beth one_one)  -- [12] FFUSE | stoi := one_one (Fuse t‑ and f‑subproofs into a proof for the (t, f) branch.)
  -- FSPLIT [13] (gran := G_beth) (Inside (n, b) – split into n and b sub‑branches.) / FFUSE [17] (stoi := one_one)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow Phi_c G_beth one_one)  -- [14] EVALT | crit := Phi_c | evaluate-true — criticality gate open (Proof for n – equality holds (true).)
      .seq
        (.arrow n_m G_beth one_one)  -- [15] ENGAGR | stoi := n_m | engage paradox — B-state, both arms (Enter the dialetheic state for b – the B‑branch is both true and false simult...)
        (.arrow Phi_c G_beth one_one)  -- [16] EVALT | crit := Phi_c | evaluate-true — criticality gate open (Proof for b – inc(inc(b)) reduces to inc(b) = B, and the equality holds (true...)
      -- F-branch (0 nodes)
      (.refl one_one))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [17]: μ closes the Frobenius pair
    (.arrow one_one G_beth one_one)  -- [17] FFUSE | stoi := one_one (Fuse n‑ and b‑subproofs into a proof for the (n, b) branch.)
  (.arrow Omega_Z one_one D_wedge)  -- [19] IFIX | prot := Omega_Z | irreversible fixation — winding number (The frobenius_closure theorem is permanently recorded in the Lean environment...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def inc_inc_is_proved_by_the_frobenius_closure_theorem_true_arm : IGProtocol D_wedge Omega_Z :=
  (inc_inc_is_proved_by_the_frobenius_closure_theorem_protocol).restrictToEVALT

-- ── Verification theorems ───────────────────────────────────────────────────

theorem inc_inc_is_proved_by_the_frobenius_closure_theorem_tier : TierFunctor.obj D_wedge = .O₀ := by decide

end Imscribing
