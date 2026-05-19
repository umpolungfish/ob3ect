/-!
# Frobenius Coherence - Test Version

Minimal version without external dependencies.
-/

structure FrobeniusOb3ect where
  C : Type
  δ : C -> C × C
  μ : C × C -> C
  frobenius_coherence : forall (X : C), μ (δ X) = X
