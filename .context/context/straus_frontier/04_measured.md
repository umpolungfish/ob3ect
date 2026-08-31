# What has been measured, and to what depth

**Every value in the class below 200000 closes.** 33333 values, all closed at a
rung, with the single qualification that `n = 2521` needs the divisor to come from
`M²` rather than `M`.

**Rung height grows like the fourth root, not a constant.**

    n < 2000     max rung 23   at n = 1201     n^(1/4) =  5.9
    n < 10000    max rung 23   at n = 2161     n^(1/4) =  6.8
    n < 50000    max rung 51   at n = 35809    n^(1/4) = 13.8
    n < 100000   max rung 47   at n = 99961    n^(1/4) = 17.8
    n < 200000   max rung 75   at n = 196561   n^(1/4) = 21.1

Ratio of max rung to `n^(1/4)`: 3.9, 3.4, 3.7, 2.6, 3.6 — flat across two orders
of magnitude. So the search a proof must control is `O(n^{1/4})` deep, not `O(1)`.
A bounded-ceiling statement is therefore the wrong target; the right one is that
SOME rung closes, with the fourth root as the budget:

    RungGrowthFourthRoot :
      ∃ C > 0, ∀ n in the class, ∃ r, ClosedAtRung n r ∧ r ≤ C · n^{1/4}

measured at `C ≈ 3.6` to 200000, unproved.

**The two hard values.** `n = 2521` fails the base form at every rung searched and
closes only through `M²`. `n = 196561` carries the largest observed rung, 75.
Both are frontier values, both `≡ 1 (mod 24)`.
