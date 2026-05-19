/-!
# Quantum Ob3ect - Minimal

Superposition, measurement, and the Born rule.
-/

structure QuantumStructure where
  Hilbert : Type
  projector : Hilbert -> Hilbert
  born_rule : forall (ρ : Hilbert), projector ρ = ρ
  no_cloning : ¬ (exists (clonemap : Hilbert -> Hilbert × Hilbert), 
    forall (x : Hilbert), clonemap x = (x, x))
