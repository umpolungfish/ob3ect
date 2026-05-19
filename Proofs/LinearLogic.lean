/-!
# Linear Logic Ob3ect - Minimal

Resource-sensitive implication.
-/

structure LinearLogicStructure where
  lollipop : Type -> Type -> Type
  lin_eval : forall (A B : Type), (lollipop A B × A) -> B
  lin_curry : forall (A B C : Type), ((A × B) -> C) -> (A -> lollipop B C)
