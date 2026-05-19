/-!
# Cartesian Closed Category Ob3ect - Minimal

Products and exponentials (internal Hom) in a CCC.
-/

structure CCCStructure where
  exp : Type -> Type -> Type
  eval : forall (A B : Type), (exp A B × A) -> B
  curry : forall (A B C : Type), ((A × B) -> C) -> (A -> exp B C)
