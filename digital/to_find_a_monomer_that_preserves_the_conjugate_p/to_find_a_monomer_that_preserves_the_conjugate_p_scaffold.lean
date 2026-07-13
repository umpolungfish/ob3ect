-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → IMSCRIB → FFUSE → CLINK → FSPLIT → EVALT → IFIX → FFUSE → TANCH
-- Class: to find a monomer that preserves the conjugate pairing while allowing the doped ring to cyclize
-- Fingerprint: sig=(5,4,2,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=12
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 5), (7, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [6] CLINK     fid    := 𐑱               𐑙 → 𐑚  | composition — regime coherence
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [9] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [11] TANCH     top    := 𐑡               𐑙 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def to_find_a_monomer_that_preserves_the_712278_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def to_find_a_monomer_that_preserves_the_712278_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def to_find_a_monomer_that_preserves_the_712278_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def to_find_a_monomer_that_preserves_the_712278_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def to_find_a_monomer_that_preserves_the_712278_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def to_find_a_monomer_that_preserves_the_712278_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def to_find_a_monomer_that_preserves_the_712278_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def to_find_a_monomer_that_preserves_the_712278_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def to_find_a_monomer_that_preserves_the_712278_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def to_find_a_monomer_that_preserves_the_712278_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def to_find_a_monomer_that_preserves_the_712278_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def to_find_a_monomer_that_preserves_the_712278_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def to_find_a_monomer_that_preserves_the_712278_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def to_find_a_monomer_that_preserves_the_712278_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def to_find_a_monomer_that_preserves_the_712278_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def to_find_a_monomer_that_preserves_the_712278_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def to_find_a_monomer_that_preserves_the_712278_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def to_find_a_monomer_that_preserves_the_712278_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def to_find_a_monomer_that_preserves_the_712278_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def to_find_a_monomer_that_preserves_the_712278_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def to_find_a_monomer_that_preserves_the_712278_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def to_find_a_monomer_that_preserves_the_712278_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def to_find_a_monomer_that_preserves_the_712278_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def to_find_a_monomer_that_preserves_the_712278_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def to_find_a_monomer_that_preserves_the_712278_protocol : IGProtocol to_find_a_monomer_that_preserves_the_712278_s0 to_find_a_monomer_that_preserves_the_712278_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct to_find_a_monomer_that_preserves_the_712278_s5 to_find_a_monomer_that_preserves_the_712278_s5 = to_find_a_monomer_that_preserves_the_712278_s5 (idempotent)
  (.seq (.arrow to_find_a_monomer_that_preserves_the_712278_l0 to_find_a_monomer_that_preserves_the_712278_s0 to_find_a_monomer_that_preserves_the_712278_s1) (.seq (.arrow to_find_a_monomer_that_preserves_the_712278_l1 to_find_a_monomer_that_preserves_the_712278_s1 to_find_a_monomer_that_preserves_the_712278_s2) (.seq (.prod (.arrow to_find_a_monomer_that_preserves_the_712278_l2 to_find_a_monomer_that_preserves_the_712278_s2 to_find_a_monomer_that_preserves_the_712278_s5) (.arrow to_find_a_monomer_that_preserves_the_712278_l2 to_find_a_monomer_that_preserves_the_712278_s2 to_find_a_monomer_that_preserves_the_712278_s5)) (.seq (.arrow to_find_a_monomer_that_preserves_the_712278_l5 to_find_a_monomer_that_preserves_the_712278_s5 to_find_a_monomer_that_preserves_the_712278_s5) (.seq (.arrow to_find_a_monomer_that_preserves_the_712278_l5 to_find_a_monomer_that_preserves_the_712278_s5 to_find_a_monomer_that_preserves_the_712278_s6) (.seq (.arrow to_find_a_monomer_that_preserves_the_712278_l6 to_find_a_monomer_that_preserves_the_712278_s6 to_find_a_monomer_that_preserves_the_712278_s7) (.seq (.arrow to_find_a_monomer_that_preserves_the_712278_l7 to_find_a_monomer_that_preserves_the_712278_s7 to_find_a_monomer_that_preserves_the_712278_s8) (.seq (.arrow to_find_a_monomer_that_preserves_the_712278_l8 to_find_a_monomer_that_preserves_the_712278_s8 to_find_a_monomer_that_preserves_the_712278_s9) (.seq (.arrow to_find_a_monomer_that_preserves_the_712278_l9 to_find_a_monomer_that_preserves_the_712278_s9 to_find_a_monomer_that_preserves_the_712278_s10) (.arrow to_find_a_monomer_that_preserves_the_712278_l10 to_find_a_monomer_that_preserves_the_712278_s10 to_find_a_monomer_that_preserves_the_712278_s11))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def to_find_a_monomer_that_preserves_the_712278_true_arm : IGProtocol to_find_a_monomer_that_preserves_the_712278_s0 to_find_a_monomer_that_preserves_the_712278_s11 :=
  (to_find_a_monomer_that_preserves_the_712278_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def to_find_a_monomer_that_preserves_the_712278_tier : OuroboricityTier := TierFunctor.obj to_find_a_monomer_that_preserves_the_712278_s0
#eval to_find_a_monomer_that_preserves_the_712278_tier  -- the Grammar's own verdict on its tier
