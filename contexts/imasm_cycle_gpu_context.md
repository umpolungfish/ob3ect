`imasm cycle` (`ask_native/src/imasm.rs`, `tuple_from_word`/`tuple_glyph_word`)
walks the live catalog, currently one entry at a time on CPU: read a
catalog entry's twelve type-glyphs, write the word, read the word back
into per-axis pre-image sets, write the recovered tuple's word again,
check where it closes exactly, closes up to ambiguity, or breaks. 8672
entries in IG_catalog.json today.

Each entry's own round trip is independent of every other entry's -- no
entry's reading depends on another's -- so batching many entries as one
GPU pass is the same "many independent identical units" shape the
Stoichiometry check already found for the trilattice gates. The
difference from `gpu_sixteen3.rs`'s already-built kernel: a catalog
entry's word is variable-length (not a fixed 4-bit register) and the
per-word work is a real parse plus ancestry-pairing over that word's own
graph, not a fixed elementwise op. That means real per-thread control
flow and a variable amount of work per thread, not the branch-free shape
`gpu_sixteen3.rs` had.

Scope under evaluation: is running `imasm cycle` batched across many
catalog entries at once on GPU a sound next build, given that shape
difference, or does it need repair/redesign the way the GPU-native-build
protocol word did before anything ran.
