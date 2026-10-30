The task is to split a whole number into two smaller whole numbers that multiply
to it, when the number resists every method that leans on the length of a loop:
the loop's winding is itself as large as the number, so finding it, even in
root time, is no help. A different handle is needed, one that never touches the
winding.

The handle is this. If two numbers have the same square when reduced against the
target, yet are not themselves equal nor exact opposites, then the target shares
a common part with the gap between them, and taking that common part splits it.
So the whole task reduces to manufacturing such a pair: two numbers, equal in
square, unequal in themselves.

The pair is built, not searched for directly. Fix a small alphabet of prime
building blocks. Draw many trial numbers, and keep only the ones whose square,
reduced, factors completely into that alphabet and nothing outside it; the rest
are discarded. Each kept number is recorded as the pattern of odd-or-even counts
of each building block in its factorization, a row of parities over a two-valued
field. Once more rows have been kept than there are blocks in the alphabet, some
combination of rows must cancel to all-even by counting alone, no search over the
whole space required. That cancelling combination, multiplied together, is a
perfect square on the trial side and, block by block with every count now even, a
perfect square on the reduced side too. The two square roots are the manufactured
pair.

The load-bearing parts the design should carry. Smoothness is the gate: only
numbers that factor entirely over the fixed small alphabet are admitted, and that
admission is what makes the rows combinable at all. The combination is a
cancellation of parities over the two-valued field, driven by there being more
rows than blocks, so the dependency is guaranteed rather than hunted. And the
outcome is graded, not binary: a manufactured pair that turns out equal or exact
opposite reveals nothing and is thrown back, while an unequal pair splits the
number, so the design must hold both the productive crossing and the empty one.
The size of the alphabet trades against how many trials are needed, and choosing
it well is what buys the sub-exponential cost that leaning on the winding could
never reach.
