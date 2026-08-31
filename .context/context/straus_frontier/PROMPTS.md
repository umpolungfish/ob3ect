# Ob3ect prompts — the Straus frontier

Run from `~/imsgct/MoDoT`. Provider and model are the defaults; do not cap
`max_tokens`. Each ask is short on purpose: a long brief steers the answer
conventional, and the rigid form of the ob3ect pipeline already carries the
structure. Context goes in through `--context`, never folded into the ask.

    CTX=../ob3ect/context/straus_frontier

Each lands under `~/ob3ect/digital/<slug>/`.

---

## 1 — the reach

    ./ask --ob3ect "the structure that carries a prescribed residue out of the
    factorisations of a square, reporting the extent it reaches as something it
    positively achieves" --context $CTX --entry erdos_straus_conjecture

## 2 — the budget

    ./ask --ob3ect "the structure by which a depth measured flat against a fourth
    root becomes a budget an argument may spend" --context $CTX

## 3 — coverage becoming total

    ./ask --ob3ect "the object whose residue coverage grows with the prime
    factors available to it, and closes when that coverage becomes total"
    --context $CTX

## 4 — span against supply

    ./ask --ob3ect "the object holding together membership in a multiplicative
    span and the exponent supply that realises it, keeping both when they
    disagree" --context $CTX

## 5 — the class at once

    ./ask --ob3ect "the object carrying every member of one residue class to a
    closing depth together, rather than each member on its own" --context $CTX
    --entry erdos_straus_conjecture

## 6 — base against square

    ./ask --ob3ect "the object distinguishing a value that closes only through a
    square from one closing through its base, by what the base positively
    supplies" --context $CTX

---

## After each

The designed object is a definition, not a result. The loop that turns it into
one:

1. State it in Lean in `Millennium/Erdos/StrausGreedyFamily.lean`.
2. `#lift <name>` and `vox verdict <word>` — B names the arm still open.
3. `erdos straus` on the booted kernel — the claim computed, not printed.
4. `lake build` green, then the crystal branch.

Two of the six will likely return the same object under different readings; that
is worth knowing and is why they are asked separately rather than merged.
