-- IGProtocol scaffold: ⊣
-- Class: Terminal anchor, the complete factorization tree of n is closed. Every leaf is prime, the product of all leaves equals n. The system is contained.
-- Fingerprint: sig=(1,0,0,0)
--   self_ref=True | frobenius_order=0
--   dialetheia_complete=False | period=1
-- Expected tier: O₀
-- ∈/∋ pairs: []

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊣     top    := 𐑡               𐑡 → 𐑡  | terminal object — connectivity boundary

-- ── Back-propagation edges (self-referential loop) ──────────────────────
--   ⊙ positions: []
--   ⊡    positions: []
--   Back-prop: ⊙→⊡ (LinFix) — igProtoCopy_isDagger axiom applies
--   Weighted: ⋈→⊙ — feeds next winding via .seq after .prod

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def terminal_anchor_the_complete_24fbad_s0 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def terminal_anchor_the_complete_24fbad_l0 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def terminal_anchor_the_complete_24fbad_protocol : IGProtocol terminal_anchor_the_complete_24fbad_s0 terminal_anchor_the_complete_24fbad_s0 :=
  (.arrow terminal_anchor_the_complete_24fbad_l0 terminal_anchor_the_complete_24fbad_s0 terminal_anchor_the_complete_24fbad_s0)

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₀.
def terminal_anchor_the_complete_24fbad_tier_ground : OuroboricityTier := TierFunctor.obj terminal_anchor_the_complete_24fbad_s0
def terminal_anchor_the_complete_24fbad_tier : OuroboricityTier := TierFunctor.obj terminal_anchor_the_complete_24fbad_s0
#eval terminal_anchor_the_complete_24fbad_tier_ground  -- tier of the ground (pre-transformation)
#eval terminal_anchor_the_complete_24fbad_tier  -- the Grammar's own verdict on the closed object

-- Self-reference: Δ is a dagger and μ = Δ†
theorem terminal_anchor_the_complete_24fbad_self_ref :
    (igProtoDelta terminal_anchor_the_complete_24fbad_s0 (by decide)).isDagger = true ∧
    igProtoMu_depth (paralogical_dagger (by decide)) = 1 := by
  constructor
  · exact igProtoCopy_isDagger
  · exact igProtoMu_depth

-- Loop closure: period=1, depth=1
theorem terminal_anchor_the_complete_24fbad_loop_closure :
    ∃ (loop : IGProtocol terminal_anchor_the_complete_24fbad_s0 terminal_anchor_the_complete_24fbad_s0),
      loop = terminal_anchor_the_complete_24fbad_protocol ∧
      loop.period = 1 ∧ loop.depth = 1 := by
  exact ⟨_, rfl, by decide, by decide⟩

-- igProtoCopy_isDagger licenses ⊙→⊡ burn
-- ⋈→⊙ weighted edge: .seq continuation
