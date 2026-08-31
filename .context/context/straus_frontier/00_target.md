# The target

    EveryNClosed :
      ∀ n, 5 ≤ n → n % 4 = 1 → n % 3 ≠ 0 → ∃ r, 0 < r ∧ ClosedAtRung n r

This single statement gives the Erdős–Straus conjecture on the whole surviving
class, by `straus_class_of_everyNClosed`, which is proved. Nothing else is
needed: the reduction from the conjecture to this statement is complete and
machine-checked, so the conjecture and this statement stand or fall together.

Everything in the other files exists to say what `ClosedAtRung` is, how much of
the class already has a rung, and what the measured shape of the remainder is.
