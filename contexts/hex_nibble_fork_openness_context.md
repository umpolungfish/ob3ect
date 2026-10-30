Confirmed directly in `imasm_core/src/lattice_flow.rs`'s `banked_walk` (the closure
check `mOMonadOS::prime_winding::is_prime` calls): `reg: [u32; 4]` is indexed
`[T, F, t, f]`. `Evalt` (⊤) touches index 0 only, `Evalf` (⊥) touches index 1 only,
`Evali` (⊞) touches indices 2 and 3 together, every time, and `Ffuse3`'s fold takes
the elementwise max against a closed frame. Starting from `[0,0,0,0]`, index 2 and
index 3 stay equal after any sequence of these operations, by induction: `Evali`
always adds the same amount to both, and elementwise max of two already-equal pairs
stays equal. So `reg[2] == reg[3]` for every word this engine can walk, for any
program at all. `kernel.rs`'s `Reg16_3` semantics confirm the same fact
independently: ⊞ is the only opcode touching the info layer {t, f}, and it always
enters both together, never one alone.

Consequence: only 8 of the 16 subsets of {T, F, t, f} (SIXTEEN_3's full carrier) are
reachable as a register state via straightforward glyph touches — the ones where t
and f agree. A hex digit has 16 values and needs a fourth independent bit beyond
{T-touched, F-touched, info-touched} to reach all 16 states one-to-one.

The candidate under construction: use `banked_walk`'s own `exposed` vs `banked`
distinction as that fourth bit. Concretely, whether a digit's info-layer touch
(⊞) sits inside an `∈`...`∋` region that is closed before the next `Arev`/`Vinit`
clear (banked) or left open across one (exposed) is already a real, checkable
structural fact the engine computes — not an invented tag bolted on separately from
the trilattice's own semantics. This is the design being evaluated for the hex
digit → IMASM word encoding that will replace `prime_winding.rs`'s current
`DIGIT_WORDS` decimal table.
