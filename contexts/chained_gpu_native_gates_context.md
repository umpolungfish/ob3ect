`gpu_native_protocol.rs`'s `run_real` currently runs one gate (`meet_t`/
`join_t`) of the GPU-native-build ob3ect's own repaired protocol word
(`⊢⊣≻⋈∈⊤⊥⊞⊢∋⊙≺⊡⋈≻∈⊤⊥∋⊙⊡⊣`), verified against the CPU, at real scale
(50,000,000 register pairs, zero mismatches, RTX 4070). The rest of that
word's gates -- `union`, the swaps (`truth_swap`, `info_swap`, `invol`),
the order checks (`leq_i`, `leq_t`, `leq_c`) -- already exist as real,
separately-verified GPU kernels in `gpu_sixteen3.rs` (11 gates, checked
to 1 billion registers, zero mismatches).

Scope under evaluation: chain the full repaired word's gates into one
pass over the same batch of register pairs, in the literal glyph order
the ob3ect names, instead of running one gate at a time as a standalone
demo -- reusing kernels already built and verified rather than writing
new ones, but requiring them to compose correctly in sequence (each
gate's output feeding whichever gate is next in the word) rather than
running independently.
