`Reg16_3` (`MoDoT/imasm_core/src/imasm16_3.rs:123`) is a plain struct of four
bools: `big_t, big_f, small_t, small_f`, i.e. a fixed-length-4 boolean vector
over the lanes `[T, F, t, f]`. Every lattice operation defined on it is a
fixed, data-independent per-lane op, no branching on the value's content:

- `union(x,y)`: elementwise OR across all 4 lanes.
- `meet_t(x,y)`: lanes T,t are elementwise AND; lanes F,f are elementwise OR.
- `join_t(x,y)`: the reverse mask — T,t elementwise OR; F,f elementwise AND.
- `meet_c(x,y)`: lanes T,F are AND; lanes t,f are OR.
- `join_c(x,y)`: lanes T,F are OR; lanes t,f are AND.
- `leq_i(x,y)`, `leq_t(x,y)`, `leq_c(x,y)`: a per-lane implication
  `(!x[i] | y[i])`, sign-flipped on specific lanes per order, reduced by AND
  across all 4 lanes to one bool.
- `truth_swap`, `info_swap`, `invol`: fixed permutations of the 4 lanes
  (swap T<->F, swap t<->f, or both at once). No data dependence at all.

None of these read the *value* to decide which op to run — the op is fixed by
which function was called, only the four boolean inputs vary. That is exactly
the shape of a fixed-arity elementwise/permute kernel: batch N registers as
an (N,4) boolean or uint8 tensor, and each gate above becomes ONE kernel
launch over the whole batch, not N sequential scalar calls.

Real, already-running precedent for this exact move in this same catalog:
`ising_navigator` / `real_swendsen_kernel` (`imscribing_grammar/IG_catalog.json`)
name a real C++/CUDA Swendsen-Wang cluster-flip kernel as their implementation.
Their 12-primitive tuple and `sixteen_3_trilattice`'s tuple share exactly 3 of
12 axes and differ on 9 — genuinely different objects — but the one shared axis
that bears on this question is Stoichiometry (⊞), both reading 𐑕 ("many
identical"): the same value the Fibonacci-anyon fusion-space tuple gives for
"many identical τ anyons" elsewhere in this catalog. That is the Grammar's own
name for "this is a population of interchangeable identical units," which is
the property that makes something a real GPU target.

Hardware actually present on this machine, checked directly, not assumed:
NVIDIA RTX 4070 (12GB) + RTX 3060 (12GB), driver 610.88, CUDA 12.4, `nvcc` at
`/usr/local/cuda/bin/nvcc`. No GPU crate (`cudarc`, `wgpu`, `ocl`) is a
dependency anywhere in this tree today — this would be the first one.

What already exists that would consume a batched trilattice kernel, so this
is not a capability with no caller in mind: ChaosComposer's possibility-space
walk (up to 720 orderings for a 6-program set, each an independent word
evaluation), `imasm cycle` over the live catalog (8600+ entries, each its own
independent primitives-to-word-to-primitives round trip), and the
combinatorial word sweeps this session ran by hand through the REPL one word
at a time (`tools/_hex256_*` in `mOMonadOS/`). All three are batches of many
independent, identically-shaped SIXTEEN_3 register evaluations — exactly the
shape a batched GPU kernel over `Reg16_3` gates would accelerate.

The scope for this ob3ect is the trilattice's own gate layer as a batched GPU
tensor kernel: given N `Reg16_3` values packed as an (N,4) tensor and a fixed
opcode (union, meet_t, join_t, meet_c, join_c, leq_i, leq_t, leq_c,
truth_swap, info_swap, invol), compute the batched result in one kernel
launch, verified against `imasm_core::imasm16_3`'s own scalar CPU
implementation on the same inputs — not a new algorithm, a faithful batched
port of gates that already exist and are already correct.
