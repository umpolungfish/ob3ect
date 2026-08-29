[2;37m[boot][0m Interrupts: none — the host owns the IDT, no periodic slot
[2;37m[boot][0m Heap: host allocator, 1484 bytes counted, 48MB declared budget
[2;37m[boot][0m IG Catalog: 8201 entries loaded
[2;37m[boot][0m Kernel online — graph execution, token-arity driven
[2;37m[boot][0m Canonical ordinal check...
[2;37m[boot][0m Ordinal faithfulness: [1;32mall 44 values match Lean canonical[0m
[2;37m[boot][0m Clay Millennium status: 2 closed, 1 one-bump-short, 3 unclosed
[2;37m[boot][0m SIC-POVM d=12: Crystal-forced (dual lattice), Shavian count 49=7², WH group |orbit|=144
[2;37m[boot][0m Frobenius identity check...
[2;37m[boot][0m Frobenius identity: hamming=3, weighted=3.1000 — kernel is grammar operationalized
[2;37m[boot][0m Bootstrap: IMSCRIB→AREV→FSPLIT→AFWD→FFUSE→CLINK→IFIX→IMSCRIB (cyclic)
                       F unitary: PASS
  Pentagon form (F^2=I, anti-diag, a^2+b^2=1): PASS
            Braid relation (Y-B): PASS
                 Spin-statistics: PASS
                       S unitary: PASS
        Charge conjugation S^2=I: PASS
                 TQFT identities: PASS
                Verlinde formula: PASS
              Braid Artin B_n<=8: PASS
  Phase lattice = tenths of a winding: PASS
    Constants derivable from PHI: PASS
[2;37m[boot][0m Fibonacci anyon QC: algebra verified = true
[36m[TORUS][0m kernel wound: ⊢⊙∈⊤⋈∋⊡⊞≺⋈⊣  (11 tokens, pinch=0.0000)
[2;37m[boot][0m Crystal FS: 17280000 addresses
[2;37m[boot][0m 29 total programs (I–XXIX): 12 canonical + 4 continuous + 4 novel + 9 shunted


   [1;35m⊙[0m   [1;37mmOMonadOS[0m
   [2;37mhosted build, on the host's runtime[0m
   [1;33mμ∘δ = id[0m

   [2;37mFrobenius core · Belnap FOUR · crystal FS · graph execution[0m

   [1;34mhelp[0m for commands, [1;34m?[0m for the menu, Tab completes.

   [1;34mask[0m runs a structural dry-run here; the full wet-run is on the host:
   [2;37m./ask --file <path> | ./ask --ask "…" | ./ask -i[0m

⊙> cycle ⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣
word   : ⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣   period 14
     k  final  verdict  word
     0  A      T        ⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣
     1  A      T        ⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢
     2  A      T        ≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣
     3  A      T        ⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻
     4  A      T        ⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈
     5  A      T        ∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙
     6  tf     T        ⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈
     7  tf     T        ≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤
     8  tf     T        ⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻
     9  tf     T        ≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥
    10  tf     T        ⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺
    11  T      T        ∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞
    12  T      T        ⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋
    13  A      T        ⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡

  landing register by cut:
    A      at k = 0, 1, 2, 3, 4, 5, 13
    tf     at k = 6, 7, 8, 9, 10
    T      at k = 11, 12
  final register is PHASE-BEARING: 3 distinct landings

⊙> weight ⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣
word   : ⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣
  movement:
     1 ⊢  CLEAR loses 0   (0 banked in frames)
     3 ≻  SEED T into an empty register, no weight
     6 ∈  open frame at depth 1
     7 ⊤  deposit T   into depth 1
     9 ⊥  deposit F   into depth 1
    10 ≺  CLEAR loses 2   (2 banked in frames)
    11 ⊞  deposit t+f   into depth 1
    12 ∋  fuse restores 2

  final    : A
  surviving: T×1, F×1, t×1, f×1
  deposits 3  cleared 2  restored 2  seeded 1  inert 1

⊙> weight ⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢
word   : ⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢
  movement:
     2 ≻  SEED T into an empty register, no weight
     5 ∈  open frame at depth 1
     6 ⊤  deposit T   into depth 1
     8 ⊥  deposit F   into depth 1
     9 ≺  CLEAR loses 2   (2 banked in frames)
    10 ⊞  deposit t+f   into depth 1
    11 ∋  fuse restores 2

  final    : A
  surviving: T×1, F×1, t×1, f×1
  deposits 3  cleared 2  restored 2  seeded 1  inert 2

⊙> weight ≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣
word   : ≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣
  movement:
     1 ≻  SEED T into an empty register, no weight
     4 ∈  open frame at depth 1
     5 ⊤  deposit T   into depth 1
     7 ⊥  deposit F   into depth 1
     8 ≺  CLEAR loses 2   (2 banked in frames)
     9 ⊞  deposit t+f   into depth 1
    10 ∋  fuse restores 2

  final    : A
  surviving: T×1, F×1, t×1, f×1
  deposits 3  cleared 2  restored 2  seeded 1  inert 3

⊙> weight ⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻
word   : ⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻
  movement:
     2 ⊙  SEED T into an empty register, no weight
     3 ∈  open frame at depth 1
     4 ⊤  deposit T   into depth 1
     6 ⊥  deposit F   into depth 1
     7 ≺  CLEAR loses 2   (2 banked in frames)
     8 ⊞  deposit t+f   into depth 1
     9 ∋  fuse restores 2

  final    : A
  surviving: T×1, F×1, t×1, f×1
  deposits 3  cleared 2  restored 2  seeded 1  inert 4

⊙> weight ⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈
word   : ⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈
  movement:
     1 ⊙  SEED T into an empty register, no weight
     2 ∈  open frame at depth 1
     3 ⊤  deposit T   into depth 1
     5 ⊥  deposit F   into depth 1
     6 ≺  CLEAR loses 2   (2 banked in frames)
     7 ⊞  deposit t+f   into depth 1
     8 ∋  fuse restores 2

  final    : A
  surviving: T×1, F×1, t×1, f×1
  deposits 3  cleared 2  restored 2  seeded 1  inert 5

⊙> weight ∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙
word   : ∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙
  movement:
     1 ∈  open frame at depth 1
     2 ⊤  deposit T   into depth 1
     4 ⊥  deposit F   into depth 1
     5 ≺  CLEAR loses 2   (2 banked in frames)
     6 ⊞  deposit t+f   into depth 1
     7 ∋  fuse restores 2

  final    : A
  surviving: T×1, F×1, t×1, f×1
  deposits 3  cleared 2  restored 2  seeded 0  inert 5

⊙> weight ⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈
word   : ⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈
  movement:
     1 ⊤  deposit T   into depth 0
     3 ⊥  deposit F   into depth 0
     4 ≺  CLEAR loses 2   (0 banked in frames)
     5 ⊞  deposit t+f   into depth 0

  final    : tf
  surviving: t×1, f×1
  deposits 3  cleared 2  restored 0  seeded 0  inert 6

⊙> weight ≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤
word   : ≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤
  movement:
     1 ≻  SEED T into an empty register, no weight
     2 ⊥  deposit F   into depth 0
     3 ≺  CLEAR loses 1   (0 banked in frames)
     4 ⊞  deposit t+f   into depth 0

  final    : tf
  surviving: t×1, f×1
  deposits 2  cleared 1  restored 0  seeded 1  inert 7

⊙> weight ⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻
word   : ⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻
  movement:
     1 ⊥  deposit F   into depth 0
     2 ≺  CLEAR loses 1   (0 banked in frames)
     3 ⊞  deposit t+f   into depth 0

  final    : tf
  surviving: t×1, f×1
  deposits 2  cleared 1  restored 0  seeded 0  inert 8

⊙> weight ≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥
word   : ≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥
  movement:
     1 ≺  CLEAR loses 0   (0 banked in frames)
     2 ⊞  deposit t+f   into depth 0

  final    : tf
  surviving: t×1, f×1
  deposits 1  cleared 0  restored 0  seeded 0  inert 9

⊙> weight ⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺
word   : ⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺
  movement:
     1 ⊞  deposit t+f   into depth 0

  final    : tf
  surviving: t×1, f×1
  deposits 1  cleared 0  restored 0  seeded 0  inert 10

⊙> weight ∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞
word   : ∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞
  movement:
     8 ⊙  SEED T into an empty register, no weight

  final    : T
  surviving: none
  deposits 0  cleared 0  restored 0  seeded 1  inert 11

⊙> weight ⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋
word   : ⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋
  movement:
     7 ⊙  SEED T into an empty register, no weight

  final    : T
  surviving: none
  deposits 0  cleared 0  restored 0  seeded 1  inert 12

⊙> weight ⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡
word   : ⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡
  movement:
     2 ⊢  CLEAR loses 0   (0 banked in frames)
     4 ≻  SEED T into an empty register, no weight
     7 ∈  open frame at depth 1
     8 ⊤  deposit T   into depth 1
    10 ⊥  deposit F   into depth 1
    11 ≺  CLEAR loses 2   (2 banked in frames)
    12 ⊞  deposit t+f   into depth 1
    13 ∋  fuse restores 2

  final    : A
  surviving: T×1, F×1, t×1, f×1
  deposits 3  cleared 2  restored 2  seeded 1  inert 0

⊙> banked ⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣
word   : ⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣
  OK — weight survived 1 live clear(s) by being banked

⊙> banked ⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢
word   : ⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢
  OK — weight survived 1 live clear(s) by being banked

⊙> banked ≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣
word   : ≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣
  OK — weight survived 1 live clear(s) by being banked

⊙> banked ⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻
word   : ⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻
  OK — weight survived 1 live clear(s) by being banked

⊙> banked ⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈
word   : ⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈
  OK — weight survived 1 live clear(s) by being banked

⊙> banked ∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙
word   : ∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙
  OK — weight survived 1 live clear(s) by being banked

⊙> banked ⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈
word   : ⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈
  2 unit(s) cleared with nothing banked behind them:
    step 4 ≺ cleared 2 with nothing behind it
  open the region that HOLDS the result before the region that
  COMPUTES it, and close them in that order.

⊙> banked ≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤
word   : ≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤
  1 unit(s) cleared with nothing banked behind them:
    step 3 ≺ cleared 1 with nothing behind it
  open the region that HOLDS the result before the region that
  COMPUTES it, and close them in that order.

⊙> banked ⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻
word   : ⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻
  1 unit(s) cleared with nothing banked behind them:
    step 2 ≺ cleared 1 with nothing behind it
  open the region that HOLDS the result before the region that
  COMPUTES it, and close them in that order.

⊙> banked ≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥
word   : ≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥
  VACUOUS — no clear ever fired against a live register
    1 deposit(s), 9 step(s) inert after a fixation

⊙> banked ⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺
word   : ⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺
  VACUOUS — no clear ever fired against a live register
    1 deposit(s), 10 step(s) inert after a fixation

⊙> banked ∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞
word   : ∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞
  VACUOUS — no clear ever fired against a live register
    0 deposit(s), 11 step(s) inert after a fixation

⊙> banked ⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋
word   : ⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋
  VACUOUS — no clear ever fired against a live register
    0 deposit(s), 12 step(s) inert after a fixation

⊙> banked ⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡
word   : ⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡
  OK — weight survived 1 live clear(s) by being banked

⊙> trans ⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣
word   : ⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣   length 14
  ring transitions   : 14
  linear would give  : 13   (drops the closing edge)
  closing edge       : ⊣ -> ⊢

  transitions:
    ⊢ -> ⊣   1
    ⊣ -> ≻   1
    ≻ -> ⋈   1
    ⋈ -> ⊙   1
    ⊙ -> ∈   1
    ∈ -> ⊤   1
    ⊤ -> ≻   1
    ≻ -> ⊥   1
    ⊥ -> ≺   1
    ≺ -> ⊞   1
    ⊞ -> ∋   1
    ∋ -> ⊡   1
    ⊡ -> ⊣   1
    ⊣ -> ⊢   1

  Anything read from ABSOLUTE position on a ring measures the cut,
  not the word: matrix rows, tetraktys tiers, odd against even.
  One rotation moves every value into a different row.

⊙> trans ⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢
word   : ⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢   length 14
  ring transitions   : 14
  linear would give  : 13   (drops the closing edge)
  closing edge       : ⊢ -> ⊣

  transitions:
    ⊣ -> ≻   1
    ≻ -> ⋈   1
    ⋈ -> ⊙   1
    ⊙ -> ∈   1
    ∈ -> ⊤   1
    ⊤ -> ≻   1
    ≻ -> ⊥   1
    ⊥ -> ≺   1
    ≺ -> ⊞   1
    ⊞ -> ∋   1
    ∋ -> ⊡   1
    ⊡ -> ⊣   1
    ⊣ -> ⊢   1
    ⊢ -> ⊣   1

  Anything read from ABSOLUTE position on a ring measures the cut,
  not the word: matrix rows, tetraktys tiers, odd against even.
  One rotation moves every value into a different row.

⊙> trans ≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣
word   : ≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣   length 14
  ring transitions   : 14
  linear would give  : 13   (drops the closing edge)
  closing edge       : ⊣ -> ≻

  transitions:
    ≻ -> ⋈   1
    ⋈ -> ⊙   1
    ⊙ -> ∈   1
    ∈ -> ⊤   1
    ⊤ -> ≻   1
    ≻ -> ⊥   1
    ⊥ -> ≺   1
    ≺ -> ⊞   1
    ⊞ -> ∋   1
    ∋ -> ⊡   1
    ⊡ -> ⊣   1
    ⊣ -> ⊢   1
    ⊢ -> ⊣   1
    ⊣ -> ≻   1

  Anything read from ABSOLUTE position on a ring measures the cut,
  not the word: matrix rows, tetraktys tiers, odd against even.
  One rotation moves every value into a different row.

⊙> trans ⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻
word   : ⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻   length 14
  ring transitions   : 14
  linear would give  : 13   (drops the closing edge)
  closing edge       : ≻ -> ⋈

  transitions:
    ⋈ -> ⊙   1
    ⊙ -> ∈   1
    ∈ -> ⊤   1
    ⊤ -> ≻   1
    ≻ -> ⊥   1
    ⊥ -> ≺   1
    ≺ -> ⊞   1
    ⊞ -> ∋   1
    ∋ -> ⊡   1
    ⊡ -> ⊣   1
    ⊣ -> ⊢   1
    ⊢ -> ⊣   1
    ⊣ -> ≻   1
    ≻ -> ⋈   1

  Anything read from ABSOLUTE position on a ring measures the cut,
  not the word: matrix rows, tetraktys tiers, odd against even.
  One rotation moves every value into a different row.

⊙> trans ⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈
word   : ⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈   length 14
  ring transitions   : 14
  linear would give  : 13   (drops the closing edge)
  closing edge       : ⋈ -> ⊙

  transitions:
    ⊙ -> ∈   1
    ∈ -> ⊤   1
    ⊤ -> ≻   1
    ≻ -> ⊥   1
    ⊥ -> ≺   1
    ≺ -> ⊞   1
    ⊞ -> ∋   1
    ∋ -> ⊡   1
    ⊡ -> ⊣   1
    ⊣ -> ⊢   1
    ⊢ -> ⊣   1
    ⊣ -> ≻   1
    ≻ -> ⋈   1
    ⋈ -> ⊙   1

  Anything read from ABSOLUTE position on a ring measures the cut,
  not the word: matrix rows, tetraktys tiers, odd against even.
  One rotation moves every value into a different row.

⊙> trans ∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙
word   : ∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙   length 14
  ring transitions   : 14
  linear would give  : 13   (drops the closing edge)
  closing edge       : ⊙ -> ∈

  transitions:
    ∈ -> ⊤   1
    ⊤ -> ≻   1
    ≻ -> ⊥   1
    ⊥ -> ≺   1
    ≺ -> ⊞   1
    ⊞ -> ∋   1
    ∋ -> ⊡   1
    ⊡ -> ⊣   1
    ⊣ -> ⊢   1
    ⊢ -> ⊣   1
    ⊣ -> ≻   1
    ≻ -> ⋈   1
    ⋈ -> ⊙   1
    ⊙ -> ∈   1

  Anything read from ABSOLUTE position on a ring measures the cut,
  not the word: matrix rows, tetraktys tiers, odd against even.
  One rotation moves every value into a different row.

⊙> trans ⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈
word   : ⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈   length 14
  ring transitions   : 14
  linear would give  : 13   (drops the closing edge)
  closing edge       : ∈ -> ⊤

  transitions:
    ⊤ -> ≻   1
    ≻ -> ⊥   1
    ⊥ -> ≺   1
    ≺ -> ⊞   1
    ⊞ -> ∋   1
    ∋ -> ⊡   1
    ⊡ -> ⊣   1
    ⊣ -> ⊢   1
    ⊢ -> ⊣   1
    ⊣ -> ≻   1
    ≻ -> ⋈   1
    ⋈ -> ⊙   1
    ⊙ -> ∈   1
    ∈ -> ⊤   1

  Anything read from ABSOLUTE position on a ring measures the cut,
  not the word: matrix rows, tetraktys tiers, odd against even.
  One rotation moves every value into a different row.

⊙> trans ≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤
word   : ≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤   length 14
  ring transitions   : 14
  linear would give  : 13   (drops the closing edge)
  closing edge       : ⊤ -> ≻

  transitions:
    ≻ -> ⊥   1
    ⊥ -> ≺   1
    ≺ -> ⊞   1
    ⊞ -> ∋   1
    ∋ -> ⊡   1
    ⊡ -> ⊣   1
    ⊣ -> ⊢   1
    ⊢ -> ⊣   1
    ⊣ -> ≻   1
    ≻ -> ⋈   1
    ⋈ -> ⊙   1
    ⊙ -> ∈   1
    ∈ -> ⊤   1
    ⊤ -> ≻   1

  Anything read from ABSOLUTE position on a ring measures the cut,
  not the word: matrix rows, tetraktys tiers, odd against even.
  One rotation moves every value into a different row.

⊙> trans ⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻
word   : ⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻   length 14
  ring transitions   : 14
  linear would give  : 13   (drops the closing edge)
  closing edge       : ≻ -> ⊥

  transitions:
    ⊥ -> ≺   1
    ≺ -> ⊞   1
    ⊞ -> ∋   1
    ∋ -> ⊡   1
    ⊡ -> ⊣   1
    ⊣ -> ⊢   1
    ⊢ -> ⊣   1
    ⊣ -> ≻   1
    ≻ -> ⋈   1
    ⋈ -> ⊙   1
    ⊙ -> ∈   1
    ∈ -> ⊤   1
    ⊤ -> ≻   1
    ≻ -> ⊥   1

  Anything read from ABSOLUTE position on a ring measures the cut,
  not the word: matrix rows, tetraktys tiers, odd against even.
  One rotation moves every value into a different row.

⊙> trans ≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥
word   : ≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥   length 14
  ring transitions   : 14
  linear would give  : 13   (drops the closing edge)
  closing edge       : ⊥ -> ≺

  transitions:
    ≺ -> ⊞   1
    ⊞ -> ∋   1
    ∋ -> ⊡   1
    ⊡ -> ⊣   1
    ⊣ -> ⊢   1
    ⊢ -> ⊣   1
    ⊣ -> ≻   1
    ≻ -> ⋈   1
    ⋈ -> ⊙   1
    ⊙ -> ∈   1
    ∈ -> ⊤   1
    ⊤ -> ≻   1
    ≻ -> ⊥   1
    ⊥ -> ≺   1

  Anything read from ABSOLUTE position on a ring measures the cut,
  not the word: matrix rows, tetraktys tiers, odd against even.
  One rotation moves every value into a different row.

⊙> trans ⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺
word   : ⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺   length 14
  ring transitions   : 14
  linear would give  : 13   (drops the closing edge)
  closing edge       : ≺ -> ⊞

  transitions:
    ⊞ -> ∋   1
    ∋ -> ⊡   1
    ⊡ -> ⊣   1
    ⊣ -> ⊢   1
    ⊢ -> ⊣   1
    ⊣ -> ≻   1
    ≻ -> ⋈   1
    ⋈ -> ⊙   1
    ⊙ -> ∈   1
    ∈ -> ⊤   1
    ⊤ -> ≻   1
    ≻ -> ⊥   1
    ⊥ -> ≺   1
    ≺ -> ⊞   1

  Anything read from ABSOLUTE position on a ring measures the cut,
  not the word: matrix rows, tetraktys tiers, odd against even.
  One rotation moves every value into a different row.

⊙> trans ∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞
word   : ∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞   length 14
  ring transitions   : 14
  linear would give  : 13   (drops the closing edge)
  closing edge       : ⊞ -> ∋

  transitions:
    ∋ -> ⊡   1
    ⊡ -> ⊣   1
    ⊣ -> ⊢   1
    ⊢ -> ⊣   1
    ⊣ -> ≻   1
    ≻ -> ⋈   1
    ⋈ -> ⊙   1
    ⊙ -> ∈   1
    ∈ -> ⊤   1
    ⊤ -> ≻   1
    ≻ -> ⊥   1
    ⊥ -> ≺   1
    ≺ -> ⊞   1
    ⊞ -> ∋   1

  Anything read from ABSOLUTE position on a ring measures the cut,
  not the word: matrix rows, tetraktys tiers, odd against even.
  One rotation moves every value into a different row.

⊙> trans ⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋
word   : ⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋   length 14
  ring transitions   : 14
  linear would give  : 13   (drops the closing edge)
  closing edge       : ∋ -> ⊡

  transitions:
    ⊡ -> ⊣   1
    ⊣ -> ⊢   1
    ⊢ -> ⊣   1
    ⊣ -> ≻   1
    ≻ -> ⋈   1
    ⋈ -> ⊙   1
    ⊙ -> ∈   1
    ∈ -> ⊤   1
    ⊤ -> ≻   1
    ≻ -> ⊥   1
    ⊥ -> ≺   1
    ≺ -> ⊞   1
    ⊞ -> ∋   1
    ∋ -> ⊡   1

  Anything read from ABSOLUTE position on a ring measures the cut,
  not the word: matrix rows, tetraktys tiers, odd against even.
  One rotation moves every value into a different row.

⊙> trans ⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡
word   : ⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡   length 14
  ring transitions   : 14
  linear would give  : 13   (drops the closing edge)
  closing edge       : ⊡ -> ⊣

  transitions:
    ⊣ -> ⊢   1
    ⊢ -> ⊣   1
    ⊣ -> ≻   1
    ≻ -> ⋈   1
    ⋈ -> ⊙   1
    ⊙ -> ∈   1
    ∈ -> ⊤   1
    ⊤ -> ≻   1
    ≻ -> ⊥   1
    ⊥ -> ≺   1
    ≺ -> ⊞   1
    ⊞ -> ∋   1
    ∋ -> ⊡   1
    ⊡ -> ⊣   1

  Anything read from ABSOLUTE position on a ring measures the cut,
  not the word: matrix rows, tetraktys tiers, odd against even.
  One rotation moves every value into a different row.

⊙> insert ⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣
word   : ⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣   length 14
  already holds — nothing to repair

⊙> insert ⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢
word   : ⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢   length 14
  already holds — nothing to repair

⊙> insert ≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣
word   : ≻⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣   length 14
  already holds — nothing to repair

⊙> insert ⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻
word   : ⋈⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻   length 14
  already holds — nothing to repair

⊙> insert ⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈
word   : ⊙∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈   length 14
  already holds — nothing to repair

⊙> insert ∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙
word   : ∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙   length 14
  already holds — nothing to repair

⊙> insert ⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈
word   : ⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈   length 14
  exposed: 2 unit(s) cleared with nothing banked
  insertions that hold:
    ∈ at  0   ∈⊤≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈
    ∈ at  1   ⊤∈≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈
    ∈ at  2   ⊤≻∈⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈
  3 distinct word(s) hold, of 180 tried

⊙> insert ≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤
word   : ≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤   length 14
  exposed: 1 unit(s) cleared with nothing banked
  insertions that hold:
    ∈ at  0   ∈≻⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤
    ∈ at  1   ≻∈⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤
  2 distinct word(s) hold, of 180 tried

⊙> insert ⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻
word   : ⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻   length 14
  exposed: 1 unit(s) cleared with nothing banked
  insertions that hold:
    ∈ at  0   ∈⊥≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻
  1 distinct word(s) hold, of 180 tried

⊙> insert ≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥
word   : ≺⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥   length 14
  vacuous: no clear ever fired, so nothing is at risk
  insertions that hold:
    none — no single glyph repairs this word

⊙> insert ⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺
word   : ⊞∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺   length 14
  vacuous: no clear ever fired, so nothing is at risk
  insertions that hold:
    none — no single glyph repairs this word

⊙> insert ∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞
word   : ∋⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞   length 14
  vacuous: no clear ever fired, so nothing is at risk
  insertions that hold:
    none — no single glyph repairs this word

⊙> insert ⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋
word   : ⊡⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋   length 14
  vacuous: no clear ever fired, so nothing is at risk
  insertions that hold:
    none — no single glyph repairs this word

⊙> insert ⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡
word   : ⊣⊢⊣≻⋈⊙∈⊤≻⊥≺⊞∋⊡   length 14
  already holds — nothing to repair

⊙> quit
Halting. μ∘δ=id.
[SHUTDOWN] μ∘δ=id. Goodbye.
