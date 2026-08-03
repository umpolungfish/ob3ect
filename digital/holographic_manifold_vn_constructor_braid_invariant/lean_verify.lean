import Imscribing.IGFunctor

namespace Imscribing
open Primitives
open Dimensionality Topology Relational Polarity Fidelity KineticChar
     Granularity Grammar Criticality Chirality Stoichiometry Protection

-- Domain Charter: ⟨⊢=𐑦; ⊣=𐑸; >=𐑑; <=𐑬; ƒ=𐑐; Ç=𐑧; Γ=𐑔; ɢ=𐑵; ⊙=𐑻; Ħ=𐑫; Σ=𐑳; Ω=𐑟⟩
def domain_charter : Imscription := {
  dim := if'
  top := are
  rel := tot
  pol := out
  fid := peep
  kin := egg
  gran := thigh
  gram := ooze
  crit := err
  chir := wool
  stoi := up
  prot := zoo
}

#eval "--- Domain Charter Tier ---"
#eval imscriptionTier domain_charter
#eval TierFunctor.obj domain_charter

-- Distance check: compare with triple_frame_omniversal
def triple_frame_omniversal_ref : Imscription := {
  dim := if'
  top := are
  rel := ear
  pol := or'
  fid := peep
  kin := egg
  gran := thigh
  gram := ooze
  crit := monad
  chir := wool
  stoi := so
  prot := zoo
}

#eval "--- Triple Frame Omniversal Tier ---"
#eval imscriptionTier triple_frame_omniversal_ref

#eval "--- Tier Comparison ---"
#eval imscriptionTier domain_charter
#eval imscriptionTier triple_frame_omniversal_ref
