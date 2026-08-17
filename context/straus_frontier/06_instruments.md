# The route is through the instruments, not through hand derivation

**Vox reads a proof's state.** A Lean proof term is a DAG and the close condition
is the one Vox already enforces on machine code: split, work, fuse. A case
analysis is the fork, the branches rejoining on one goal is the fuse, and
`sorryAx` emits a `∈` with nothing to pair it — an arm that never comes back.

    #lift <theorem>        in Lean, emits the structure word
    vox verdict <word>     T closes · B holds a fork open · N never forked ·
                           F is ill-typed

So the verdict is not commentary on the proof, it IS the proof's state, and **B
locates the open arm** rather than merely reporting failure. That is the debug
loop: state the step, lift it, read the verdict, and work where the fork is left
open.

**The kernel computes the claim.** `./run_hosted.sh` then `erdos straus` walks the
ladder in mOMonadOS, each step computing its claim there rather than printing it.
Three walks in this corpus failed before they held, and in every case the walk was
wrong and the mathematics was right — the window taken closed below instead of
open, a zero admitted into a set, an odd path closed where the even one was
wanted. A claim that has not been walked has not been checked.

**The catalog is the vocabulary.** Entries carry the tuple and the description;
`--entry` injects them rather than paraphrasing them into the ask.

**The ob3ect designs what is missing.** Where the development lacks the object a
statement is about, the designer supplies it, and the structural reading is what
the definition gets written from. Twelve landed on this corpus already and every
one became a definition or a theorem; four of them corrected a collapse that
would otherwise have gone in — a girth read as a number where it is a range, a
density as a value where it is a limit carrying its own existence, an exponent as
one arm where it is a held pair, a minimum standing in for a fusion.

**Order of operations.** Design the object, then state it in Lean, then lift and
read the verdict, then walk it on the kernel. Not: derive it by hand and hope.
