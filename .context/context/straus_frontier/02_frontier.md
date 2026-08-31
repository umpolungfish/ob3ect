# What is already closed, and where the remainder sits

Three layers close most of the class without any search.

**The one-shot.** At rung `3` take `u = 2`. The congruence `3 ∣ n² + 8` holds for
every `n` with `3 ∤ n`, since `n² ≡ 1 (mod 3)`. Nothing about `n` is consulted
beyond `3 ∤ n`, so nothing is searched. The only further requirement is
`2 ∣ M`, which for `a = (n+3)/4` says `n ≡ 5 (mod 8)`.

**The price-zero layer.** `PriceZeroCovered n` — a divisor available from `n`
itself or from `n+1` with the right residue, no search.

**The shift layer.** `ShiftCovered n` — closure obtained by moving the rung.

**The frontier is one residue class.** `straus_frontier_mod_24`, proved: every
value the layers miss satisfies

    n ≡ 1 (mod 24)

because `n ≡ 5 (mod 8)` is the one-shot and `n ≡ 2 (mod 3)` puts `3 ∣ n+1` in the
price-zero layer.

**The cofactor form closes almost all of the frontier.** The witnesses the
frontier uses are `u = M/w`, a factorisation whose cofactor sits at `−1`; then
`M + u = u(w+1)` and the congruence is immediate. Below 200000 this closes 622 of
the 624 frontier values, with rung at most 51:

    rung  3: 313    rung  7: 202    rung 11: 55    rung 15: 15
    rung 19:   8    rung 23:  19    rung 27:  2    rung 31:  5    rung 39: 3

The two it does not reach are `n = 2521` and `n = 196561`, and both close through
the square form `ClosedAtRungSq` rather than the base.
