/-!
# Hopf Ob3ect - Minimal Formalization

Hopf algebra structure without external dependencies.
-/

structure HopfStructure where
  C : Type
  μ : C × C -> C
  η : Unit -> C
  Δ : C -> C × C
  ε : C -> Unit
  S : C -> C
