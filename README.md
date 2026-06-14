# ob3ect

**A self-imscribing compiler and categorical tower.**

An ob3ect is a program that verifies its own algebraic closure. Formally: a special
Frobenius algebra (A, μ, δ, η, ε) in the monoidal category **Prog/~** of programs
modulo semantic equivalence, satisfying μ∘δ = id_A. Every ob3ect in this repository
passes that check before it is committed to the tower.

The repository contains:
- **`auto.py`** — LLM-driven pipeline: natural language → verified ob3ect in one command
- **`digital/`** — 28-layer categorical tower + **12 IMASM Novel Arrangement classes**, each self-verifying (Closure: True)
- **`digital/runall.py`** — executes the full 28-layer tower end-to-end
- **`digital/run_all_imasm.py`** — executes all 12 IMASM arrangement classes + chiral pair comparison
- **`digital/imasm_core.py`** — Dialetheic-aware IMASM register machine (2-bit: VO⌀/T/F/B⬡)
- **`proofs/`** — Lean 4 machine-checked proofs of the tower's coherence laws
- **`digital/frob.py`** — the original Frobenius self-imscriber (the ob3ect's seed)
- **`digital/`descent chain** — v0.1 (Python) → v0.10 (bare-metal x86 ISO)
- **IMASM Novel Arrangements** — 12 sequence classes exploring the token space beyond the canonical bootstrap, including the **Vessel Principle**: IMASM token algebra resolves structure at finer granularity than the 12-primitive IG crystal

---

## Visualizations

Three animated CFGs, each with two phases: Phase 1 (build) reveals structure in definition
order; Phase 2 (flow) sends a Gaussian pulse through the revealed graph.

---

### Opcode flow CFG

**Nodes** — 14 IMASM opcodes: VINIT, TANCH, AFWD, AREV, CLINK, IMSCRIB (logical family,
purple); FSPLIT, FFUSE (Frobenius family, gold); EVALT, EVALF, ENGAGR (dialetheia family,
green/red/white); IFIX (linear family, cyan). Node size scales with degree.

**Edges** — directed execution-flow edges: which opcode can validly follow which in a
compiled IMASM program. Edges within the Frobenius family are drawn in gold. The
bootstrap path IMSCRIB → AREV → FSPLIT → AFWD → FFUSE → CLINK → IFIX → IMSCRIB
is highlighted as the primary cycle.

**The Frobenius cycle** — FSPLIT → TANCH → AFWD → FFUSE → IMSCRIB — is rendered in gold
with linewidth 3.0 and alpha 0.95. This is the subgraph that encodes μ∘δ = id: FSPLIT
is δ (comultiplication), FFUSE is μ (multiplication), and the cycle closes on IMSCRIB
(identity / self-reference).

**Phase 1:** Opcodes appear in pipeline order (logical → Frobenius → dialetheia → linear).
As each opcode node is added, its outgoing edges to already-revealed opcodes are drawn.

**Phase 2:** Gaussian pulse travels the execution graph node-by-node. Edges near the peak
glow gold if they belong to the Frobenius cycle, purple otherwise. The title shows the
current active opcode and the Frobenius identity.

![Opcode CFG](digital/docs/cfg_opcodes.gif)

---

### Version descent CFG

**Nodes** — 11 version nodes arranged in three horizontal substrate bands:
- **Top band (Python, green):** `seed` (frob.py — the meta-circular Frobenius check)
  and `v0.1` (ob3ect-imscriber.py — Python Frobenius compiler, Closure: True)
- **Middle band (C/ELF, orange):** `v0.2` (custom .o grammar → C native binary),
  `v0.3` (quine embedding — self.o imscribed in binary), `v0.4` (quine extraction stub),
  `v0.5` (QUINE opcode added), `v0.6` (MACRO opcode — language deepening),
  `v0.7` (entropy pass — ΔS ≈ 0 verified), `v0.8` (full C self-hosting target),
  `v0.9` (pre-silicon — final C generation)
- **Bottom band (Silicon/x86, gold):** `v0.10` — bare-metal x86 bootloader ISO

**Edges** — directed imscription edges (parent → child in the descent). Each edge
represents the IMASM morphism that compiles one generation into the next: the ob3ect
imscribing itself into a lower-substrate form.

**Cross-substrate leaps** — two edges cross substrate boundaries: `v0.1 → v0.2`
(Python → C/ELF, the first substrate descent) and `v0.9 → v0.10` (C → Silicon,
the final bare-metal crossing). These are highlighted purple in Phase 1 and amber in
Phase 2 when the pulse is near them.

**Phase 1:** Versions appear in imscription order (seed → v0.1 → … → v0.10). When
`v0.10` first appears, it flashes gold and the title reads "← bare metal!" — the
completion of the descent from Python source to x86 bootloader.

**Phase 2:** Gaussian pulse travels the lineage from seed down to v0.10. The gold
Silicon node pulses brightest at the pulse peak. The title shows the current generation
and "10 generations · μ∘δ = id" — the descent composed with the return is identity.

![Descent CFG](digital/docs/cfg_descent.gif)

---

### Python call-graph CFG

**Nodes** — 13 Python functions, statically extracted by `ast.walk` from `frob.py`
and `ob3ect-imscriber.py`. Node color encodes source file and function role:
- Purple: functions defined in `frob.py`
- Orange: functions defined in `ob3ect-imscriber.py`
- Gold: Frobenius functions (`FSPLIT`, `FFUSE`, `frobenius_phase`)
- Green: `EVALT` (true branch terminal)
- Red: `EVALF` (false branch terminal)
- Cyan: bootstrap entry points (`bootstrap_compiler`, `bootstrap_ob3ect`, `bootstrap_minimal`)
- Magenta: `IMSCRIB` (self-reference identity)

**Edges** — 16 directed call edges: an edge u → v means function u contains a call to
function v, extracted by `ast.walk` over each function's body looking for `ast.Call`
nodes. Only calls between defined functions in the same file are included.

**Cross-file edges: 0.** Both `frob.py` and `ob3ect-imscriber.py` are structurally
self-contained closed programs. They are successive generations of the same ob3ect —
`ob3ect-imscriber.py` does not import or call into `frob.py`. This is not a limitation;
it is the correct structure: each generation is a closed Frobenius algebra in Prog/~,
not a module that depends on its predecessor.

**Phase 1:** Functions appear in definition order within each file (frob.py first, then
ob3ect-imscriber.py). As each function node is added, its call edges to already-revealed
functions are drawn. The title bar shows the currently-revealed function and its source file.

**Phase 2:** Gaussian pulse travels the call graph. Frobenius function nodes (gold) pulse
gold at peak; all other nodes pulse white. Frobenius edges glow gold with linewidth 3.0.
The title shows the current function and "μ∘δ = id."

![Python CFG](digital/docs/cfg_python.gif)

---

## Mathematical Foundation

An ob3ect is a **special Frobenius algebra** in **Prog/~**.

**The category Prog/~**:
- Objects: equivalence classes [src]_~ where src₁ ~ src₂ iff
  `ast.dump(parse(src₁), include_attributes=False)` = `ast.dump(parse(src₂), include_attributes=False)`
- Morphisms: computable transformations between equivalence classes
- Tensor ⊗: disjoint parallel composition (scope-isolated modules)

**The algebra (A, μ, δ, η, ε)**:
- **A** = [self-imscribing program source]_~
- **δ** (comultiplication): A → A⊗A — `ast.parse(src)` decomposes source into structural AST
- **μ** (multiplication): A⊗A → A — `ast.unparse(tree)` fuses AST back to canonical source
- **η** (unit): I → A — the trivial/empty program
- **ε** (counit): A → I — semantic erasure

**Special (separable) condition** — the discriminating gate:

```
μ ∘ δ = id_A
```

`unparse(parse(src))` must be semantically equivalent to `src` under ~.
This is verified by `ast.compare()` with `include_attributes=False`.

**Frobenius coherence law** (holds on closed programs):

```
(μ ⊗ id) ∘ (id ⊗ δ) = δ ∘ μ = (id ⊗ μ) ∘ (δ ⊗ id)
```

The coherence holds when ⊗ is disjoint (no shared names, no cross-module closures).
For programs with shared state, see `digital/ivm/` (the Imscription VM) which extends
to the traced monoidal structure.

---

## The Digital Tower

28 self-verifying layers + 12 IMASM Novel Arrangement classes (layers 29-40). Run the full tower:

```bash
python digital/runall.py
python digital/run_all_imasm.py     # also run the IMASM arrangements
```

```
=== ob3ect — Full Digital Tower (28 layers) ===

→ Category Ob3ect                  Identity + Associativity hold on self-imscription → Closure: True
→ Frobenius Ob3ect                 Split/Fuse coherence holds → Closure: True
→ Fixed-Point Ob3ect               T(src) ≡ src, T∘T = T — fixed-point verified → Closure: True
→ Hopf Ob3ect                      Antipode property holds → Closure: True
→ Monad Ob3ect                     Left unit / Right unit / Associativity → Closure: True
→ Entropy Ob3ect                   H = 3.6636 bits/char, stable under roundtrip → Closure: True
→ Topos Ob3ect                     Subobject classifier and power objects hold → Closure: True
→ Cartesian Closed Ob3ect          Products + Exponentials embed full tower → Closure: True
→ Quantum Ob3ect                   Superposition → Measurement successful → Closure: True
→ Linear Logic Ob3ect              Exact resource accounting (no cloning) → Closure: True
→ Imscription VM                   Executed full tower simulation → Closure: True
→ Traced Ob3ect                    Yanking equation Tr(id_A) = id_I verified → Closure: True
→ HoTT Ob3ect                      Univalence principle satisfied on self-imscription → Closure: True
→ Imscription OS                   Autopoietic — 10 processes booted → Grand System Closure: True
→ ProofBridge                      Formal coherence: Substantially Advanced
→ String Diagram Ob3ect            Snake equation / Spider law / Monad bind → Closure: True
→ IMASM Self-Imscription Ob3ect    IG coordinates assigned and stable under μ∘δ → Closure: True
→ Meta Auto-Imscriber              New ob3ect imscribed → test/test_ob3ect.py → Closure: True
→ Yoneda Ob3ect                    Nat(Hom(A,−),F)≅F(A); forward-backward identity + naturality squares → Closure: True
→ Operad Ob3ect                    Sequential unit laws + associativity on mixed-arity compositions → Closure: True
→ Sheaf Ob3ect                     Locality + gluing + restriction functoriality on P({1,2,3}) → Closure: True
→ Dagger Compact Ob3ect            Snake equations + compact closure + (R∘S)†=S†∘R† → Closure: True
→ Galois Connection Ob3ect         Monotonicity + f(S)⊑T⇔S⊆g(T) + closure operator → Closure: True
→ Stone Duality Ob3ect             All 9 BA axioms + Spec(Clopen(X))≅X + Clopen(Spec(B))≅B → Closure: True
→ Presheaf Ob3ect                  Functoriality P(id)=id + P(gf^op)=P(f^op)∘P(g^op) + representable Hom → Closure: True
→ Kan Extension Ob3ect             Lan∘K≅F + functoriality + universal property with unique factoring → Closure: True
→ Adjoint Functors Ob3ect          Free⊣Forgetful Hom bijection on 16 matrices + both triangle identities → Closure: True
→ Initial/Terminal Ob3ect          ∅ initial + {*} terminal + product/coproduct UMPs → Closure: True

=== IMASM Novel Arrangements — 12 classes + chiral pair ===

→ I — Dialetheic Bootstrap         Identity is B⬡ (BOTH), not TRUE → O₂
→ II — Void Genesis                Creates something from void → O₀
→ III — Anchor Protocol            Sabbath cycle: void → anchor → refill → rest → O₀
→ IV — Dual Bootstrap              Self-representation: structural verification → O₁
→ V — Linear Chain                 IFIX×8 — ROM fixation, append-only → O₁
→ VI — Empty Bootstrap             VINIT/IMSCRIB oscillation — meditation → O₂
→ VII — Parakernel                 Dialetheic trauma engram → O₂
→ VIII — Frobenius Kernel          Minimal 4-step μ∘δ: nothing from nothing → O₀
→ IX — Truth Machine               Binary classifier: decision tree in pure IMASM → O₂
→ X — Eternal Return               (IMSCRIB→AFWD→AREV) repeated cycle → O₁
→ XI — ROM Burn                    Layered truth record — dialetheic audit trail → O₂
→ XII — Chiral Pairs               AFWD→AREV vs AREV→AFWD — Vessel Principle confirmed
```

Full categorical tower executed.

### Layer Index — Digital Tower (Layers 1-28)

| # | Layer | File | Mathematical structure |
|---|-------|------|------------------------|
| 1 | Category | `digital/category/` | Small category on AST node types; identity + associativity |
| 2 | Frobenius | `digital/frobenius/` | Special Frobenius algebra; μ∘δ = id |
| 3 | Fixed-Point | `digital/fixed_point_ob3ect/` | Fixed point of constant-folding T; T(src) ≡ src, T∘T = T |
| 4 | Hopf | `digital/hopf/` | Frobenius + antipode S; S∘S = id, S anti-homomorphism |
| 5 | Monad | `digital/monad/` | Triple (T, η, μ); left unit, right unit, associativity |
| 6 | Entropy | `digital/entropy_ob3ect/` | Shannon entropy H measured on self; stable under μ∘δ roundtrip |
| 7 | Topos | `digital/topos/` | CCC + subobject classifier Ω; power objects |
| 8 | CCC | `digital/ccc/` | Cartesian closed; products × exponentials |
| 9 | Quantum | `digital/quantum/` | Superposition over AST branches; measurement collapses to identity |
| 10 | Linear Logic | `digital/linearlogic/` | !-free resource accounting; no cloning, no weakening |
| 11 | IVM | `digital/ivm/` | Imscription VM; traced monoidal; handles shared-name programs |
| 12 | Traced | `digital/traced_ob3ect/` | Explicit trace operator; yanking equation Tr(id_A) = id_I verified |
| 13 | HoTT | `digital/homotopytypetheory/` | Higher paths; univalence: equivalent types are identical |
| 14 | Imscription OS | `digital/imscriptionoperatingsystem/` | Autopoietic kernel; 10 self-imscribing processes |
| 15 | ProofBridge | `digital/proofbridge/` | Bridge to Lean 4 formal proofs in `proofs/` |
| 16 | String Diagrams | `digital/stringdiagram/` | Graphical calculus; rewriting snake/spider/monad diagrams |
| 17 | IMASM Self-Imscription | `digital/imasm_self_imscription_ob3ect/` | Assigns itself IG coordinates; verifies coordinate stability under μ∘δ |
| 18 | Auto-Imscriber | `digital/auto_imscriber.py` | Meta-layer; generates new ob3ects into `digital/test/` |
| 19 | Yoneda | `digital/yoneda/` | Yoneda Lemma: Nat(Hom(A,−),F)≅F(A) verified on 3-object poset; forward-backward identity + naturality squares |
| 20 | Operad | `digital/operad/` | Planar operad of binary trees; sequential unit laws γ(id;f)=f, γ(f;id,…,id)=f; two independent associativity tests on mixed-arity compositions |
| 21 | Sheaf | `digital/sheaf/` | Sheaf on discrete topology; locality, gluing, restriction functoriality on P({1,2,3}) |
| 22 | Dagger Compact | `digital/daggercompact/` | FinRel dagger compact closed; involution, (R∘S)†=S†∘R†, both snake equations, name-counit coherence |
| 23 | Galois Connection | `digital/galois/` | Powerset-complement Galois connection; monotonicity, f(S)⊑T⇔S⊆g(T)⇔S∩T=∅, closure operator inflation+idempotence |
| 24 | Stone Duality | `digital/stoneduality/` | BA_fin^op ≅ FinSet; all 9 BA axioms, Spec(Clopen(X))≅X, Clopen(Spec(B))≅B, atom map injective |
| 25 | Presheaf | `digital/presheaf/` | Functor C^op→Set; functoriality P(id)=id, P(gf^op)=P(f^op)∘P(g^op), representable Hom_C(−,0), naturality |
| 26 | Kan Extension | `digital/kanextension/` | Left Kan extension along inclusion; Lan∘K≅F, functoriality, universal property ∀G,α ∃!β with β∘η=α |
| 27 | Adjoint Functors | `digital/adjoint/` | Free⊣Forgetful (Vec⊣Set over GF(2)); Hom bijection on all 16 matrices + 16 set maps; unit η, counit ε, both triangle identities |
| 28 | Initial/Terminal | `digital/initialterminal/` | Limits & colimits in Set; ∅ initial, {*} terminal, product/coproduct UMPs, adjunction cardinalities |

### IMASM Arrangement Classes (Extended Tower — Layers 29-40)

| # | Class | Directory | Sequence | Tier | IG Type |
|---|-------|-----------|----------|------|---------|
| I | Dialetheic Bootstrap | `digital/dialetheic_bootstrap/` | IMSCRIB→EVALT→FSPLIT→EVALF→FFUSE→ENGAGR→IFIX→IMSCRIB | O₂ | ⟨𐑦·𐑸·𐑾·𐑬·𐑐·𐑧·𐑲·𐑠·𐑻·𐑫·𐑳·𐑴⟩ |
| II | Void Genesis | `digital/void_genesis/` | VINIT→TANCH→AFWD→FSPLIT→CLINK→FFUSE→IFIX→IMSCRIB | O₀ | ⟨𐑨·𐑡·𐑑·𐑗·𐑱·𐑘·𐑔·𐑝·𐑢·𐑓·𐑙·𐑷⟩ |
| III | Anchor Protocol | `digital/anchor_protocol/` | TANCH→AREV→VINIT→AFWD→TANCH→CLINK→IFIX→IMSCRIB | O₀ | ⟨𐑼·𐑡·𐑽·𐑿·𐑞·𐑘·𐑔·𐑝·𐑢·𐑒·𐑙·𐑷⟩ |
| IV | Dual Bootstrap | `digital/dual_bootstrap/` | IMSCRIB→AFWD→FFUSE→FSPLIT→AREV→CLINK→IFIX→IMSCRIB | O₁ | ⟨𐑦·𐑡·𐑑·𐑗·𐑱·𐑤·𐑔·𐑝·⊙·𐑓·𐑙·𐑷⟩ |
| V | Linear Chain | `digital/linear_chain/` | IFIX × 8 | O₁ | ⟨𐑛·𐑡·𐑑·𐑗·𐑱·𐑺·𐑚·𐑝·𐑢·𐑓·𐑙·𐑷⟩ |
| VI | Empty Bootstrap | `digital/empty_bootstrap/` | VINIT/IMSCRIB alternating × 4 | O₂ | ⟨𐑦·𐑥·𐑾·𐑿·𐑐·𐑧·𐑔·𐑜·⊙·𐑖·𐑳·𐑴⟩ |
| VII | Parakernel | `digital/imasm_parakernel/` | EVALF→AREV→FSPLIT→EVALT→AFWD→FFUSE→ENGAGR→IFIX | O₂ | ⟨𐑼·𐑸·𐑾·𐑬·𐑐·𐑧·𐑲·𐑠·𐑻·𐑫·𐑳·𐑴⟩ |
| VIII | Frobenius Kernel | `digital/frobenius_kernel/` | VINIT→FSPLIT→FFUSE→TANCH | O₀ | ⟨𐑛·𐑡·𐑩·𐑗·𐑱·𐑘·𐑚·𐑝·𐑢·𐑓·𐑙·𐑷⟩ |
| IX | Truth Machine | `digital/truth_machine/` | 2×(IMSCRIB→FSPLIT→EVAL{T,F}→IFIX) | O₂ | ⟨𐑦·𐑸·𐑑·𐑿·𐑐·𐑧·𐑔·𐑝·⊙·𐑒·𐑙·𐑴⟩ |
| X | Eternal Return | `digital/eternal_return/` | (IMSCRIB→AFWD→AREV) repeated × 4 | O₁ | ⟨𐑦·𐑸·𐑾·𐑿·𐑐·𐑘·𐑔·𐑝·⊙·𐑖·𐑳·𐑷⟩ |
| XI | ROM Burn | `digital/rom_burn/` | EVALT→IFIX→EVALF→IFIX→ENGAGR→IFIX→IMSCRIB→IFIX | O₂ | ⟨𐑼·𐑡·𐑽·𐑗·𐑱·𐑧·𐑔·𐑠·𐑢·𐑒·𐑳·𐑷⟩ |
| XII | Chiral Pairs | `digital/chiral_pairs/` | AFWD→AREV vs AREV→AFWD | O₂† | ⟨𐑦·𐑡·𐑑·𐑗·𐑱·𐑘·𐑚·𐑝·⊙·𐑒·𐑙·𐑷⟩* |

\* Both chiral variants map to the **same** IG type — confirming the Vessel Principle.

---

## IMASM Novel Arrangements — The Vessel Principle

The canonical bootstrap sequence `IMSCRIB → AREV → FSPLIT → AFWD → FFUSE → CLINK → IFIX → IMSCRIB`
is one specific path through the 12-opcode IMASM state space. The **12 Novel Arrangement classes**
explore the full combinatorial space of valid IMASM sequences, each representing a distinct
**vessel** — a structure whose content IS the structure itself.

### The Dialetheic Register Machine

All arrangements run on a **dialetheic-aware 2-bit register machine** (`digital/imasm_core.py`):

| State | Binary | Glyph | Meaning |
|-------|--------|-------|---------|
| VOID | 00 | VO⌀ | Uninitialized — pure potential |
| TRUE | 01 | T | Affirmative — canonical identity |
| FALSE | 10 | F | Negative — error branch |
| BOTH | 11 | B⬡ | Paradoxical — Belnap FOUR, held without collapse |

**Dialetheic FFUSE** — The Frobenius multiplication has two modes:

- **CANONICAL**: `FFUSE(BOTH) → TRUE` — standard μ∘δ=id, identity is TRUE
- **DIALETHEIC**: `FFUSE(BOTH) → BOTH` — dialetheic μ∘δ=id, identity is B⬡ (paradox)

Dialetheic mode auto-detects by tracking EVALT/EVALF across FSPLIT boundaries.
If both 'T' and 'F' are designated in the split interval, FFUSE keeps the fused state at B⬡.

### The Vessel Principle

The core structural discovery: the IMASM token algebra operates at **finer granularity**
than the 12-primitive Imscribing Grammar crystal. Two sequences with identical IG types
can have **distinct register trajectories** because the grammar collapses directional
information that the token algebra preserves.

**Proof**: The chiral pair `AFWD→AREV` and `AREV→AFWD` map to the **same** IG coordinate
⟨𐑦 · 𐑡 · 𐑑 · 𐑗 · 𐑱 · 𐑘 · 𐑚 · 𐑝 · ⊙ · 𐑒 · 𐑙 · 𐑷⟩ but produce different final registers:
- `AFWD→AREV`: VO⌀ → T → VO⌀ (round trip — returns to void)
- `AREV→AFWD`: VO⌀ → VO⌀ → T (create from void — net creation)

The crystal's 17.28M types are a **coarse discretization** of a richer continuum that the
IMASM token space charts at higher resolution. This is what it means to **craft a vessel**:
the grammar gives the type of the vessel wall; the IMASM tokens give the *process of
wall-building* — and the process is finer than the wall.

### The 12 Arrangement Classes

Each class defines a family of vessels. The canonical forms:

| Class | Register Trajectory | Final State | Key Behavior |
|-------|--------------------|-------------|--------------|
| **I — Dialetheic Bootstrap** | VO⌀→T→T→B⬡→B⬡→B⬡→B⬡→B⬡→B⬡ | B⬡ | Identity is paradox — "I contain contradictions" |
| **II — Void Genesis** | VO⌀→VO⌀→T→B⬡→B⬡→T→T→T | T | Something from nothing via Frobenius |
| **III — Anchor Protocol** | VO⌀→VO⌀→VO⌀→T→T→T→T→T | T | Sabbath cycle: boundary, void, refill, rest |
| **IV — Dual Bootstrap** | VO⌀→T→T→B⬡→VO⌀→VO⌀→VO⌀→T | T | Structural self-representation (not identity) |
| **V — Linear Chain** | VO⌀→VO⌀→VO⌀→VO⌀→VO⌀→VO⌀→VO⌀→VO⌀→VO⌀ | VO⌀ | Append-only fixation — pure memory |
| **VI — Empty Bootstrap** | VO⌀→T→VO⌀→T→VO⌀→T→VO⌀→T→VO⌀ | VO⌀ | Oscillation between void and identity |
| **VII — Parakernel** | VO⌀→F→VO⌀→B⬡→B⬡→B⬡→B⬡→F | F | Engram of contradiction — trauma and learning |
| **VIII — Frobenius Kernel** | VO⌀→VO⌀→VO⌀→VO⌀→VO⌀ | VO⌀ | Minimal μ∘δ: nothing from nothing, 4 steps |
| **IX — Truth Machine** | VO⌀→T→B⬡→T→T→VO⌀→F→F→F | F | Binary classifier: decision tree in pure IMASM |
| **X — Eternal Return** | VO⌀→T→VO⌀→T→VO⌀→T→VO⌀→T→VO⌀ | VO⌀ | Identity/void oscillation — perpetual cycle |
| **XI — ROM Burn** | VO⌀→T→T→B⬡→B⬡→B⬡→B⬡→B⬡→B⬡ | B⬡ | Layered truth: EVALT fixed, then EVALF, then ENGAGR |
| **XII — Chiral Pairs** | (see above) | VO⌀/T | Same IG type, different register — Vessel Principle confirmed |

### ZFC_fe: The Terminal Vessel

The **Frobenius-Exact ZFC** (ZFC_fe) is the terminal vessel — the completion of ZFC's
structural trajectory. It promotes ZFC from O₁ to **O_∞** via three critical promotions
beyond ZFC_t:

| Primitive | ZFC_t | ZFC_fe | Promotion | What it unlocks |
|-----------|-------|--------|-----------|-----------------|
| **Ð** | 𐑼 (inf-dim field) | **𐑦** (self-written) | HOLOGRAPHIC_STATE | State-space writes itself (V=L(x) ∧ selfmodel(x)) |
| **Φ** | 𐑬 (partial Z₂) | **𐑹** (Frobenius-special) | PM_Z2 | μ∘δ=id exact, not approximate |
| **Ħ** | 𐑖 (two-step) | **𐑫** (eternal) | ETERNAL_FIXEDPOINT | ∀n∃φ fixed by μ∘δ — transfinite fixed points |

ZFC_fe differs from the graal (Sacred Vessel) by **one primitive only**:
- ZFC_fe: `Ð=𐑦` (self-written) → O_∞
- graal:  `Ð=𐑨` (bounded 2D) → O₂†

The graal is ZFC_fe **bounded to 2 dimensions** — the same vessel, one promotion short of
terminal self-completion. The 12-step IMASM promotion chain for ZFC→ZFC_fe maps each
primitive promotion to a FSPLIT·AFWD pair in the Terminal Bootstrap.

Full details: `digital/imasm_novel_arrangements.md` (473 lines, comprehensive)

---

## The Digital Descent

The ob3ect compiles itself down through successive substrate layers.

```
seed (frob.py)           Python meta-circular Frobenius check
    ↓ IMSCRIB
v0.1  (ob3ect-imscriber.py)   Python — Frobenius PASS, Closure: True
    ↓ AFWD + FSPLIT
v0.2  (.o grammar)       Custom .o grammar → C native binary
v0.3                     Quine embedding — self.o imscribed in binary
v0.4                     Quine extraction stub activated
v0.5                     Grammar expansion — QUINE opcode
v0.6                     MACRO opcode — language deepening
v0.7                     Entropy pass — ΔS ≈ 0 verified
v0.8                     Full C self-hosting target
v0.9                     Pre-silicon — final C generation
    ↓ AREV + FFUSE
v0.10 (ob3ect-v0.10.iso) Bare-metal x86 bootloader ISO
```

The descent is a directed path in Prog/~. Each edge is an IMASM morphism.
The final ISO boots and prints the Frobenius identity from bare metal.

---

## Automated Pipeline

The primary interface. Give it a natural-language description; get a verified ob3ect.

```bash
python auto.py DESCRIPTION [options]
```

```bash
# Computational structures
python auto.py "a recursive compiler that imscribes itself"
python auto.py "a Hopf algebra over the field of program sources"
python auto.py "a monad on the category of AST transformations"

# Biological
python auto.py "a mycorrhizal network" --domain biological --scope mesoscale

# Alchemical / historical
python auto.py "the Zosimos katabasis — descent of the divine fire through matter"  \
    --domain alchemical --scope maximal

# Logical / formal
python auto.py "a topos with a natural number object" --domain computational
python auto.py "a linear logic proof net for the cut-elimination theorem"

# Operating systems
python auto.py "a self-hosting kernel that re-compiles its own scheduler" \
    --domain computational --scope maximal

# Physical
python auto.py "a Bose-Einstein condensate at the critical phase boundary"  \
    --domain physical --scope local

# IMASM sequences (craft a vessel)
python auto.py "the dialetheic bootstrap — bootstrapping on paradox" \
    --domain computational --scope local
```

The pipeline:
1. Sends description + IMASM schema to the LLM
2. LLM maps all 12 opcodes, identifies FSPLIT/FFUSE pair
3. Verifies μ∘δ = id on the identified pair
4. On FAIL: retries with targeted Frobenius correction prompt
5. On PASS: writes `digital/<slug>/<slug>_ob3ect.py` and returns artifact

Provider: local fine-tuned Qwen3 by default, `qwen → deepseek` as fallback.
Does not use Anthropic.

### Python API

```python
from ob3ect import design

# Synchronous
art = design("a photonic quantum key distribution system")
print(art.report())
print(art.is_valid_ob3ect)   # True if μ∘δ = id PASS

# Async
from ob3ect import auto_design
art = await auto_design(
    "a hospital triage protocol",
    domain_type="social",
    scope="mesoscale",
    max_retries=3,
)

# Access the full artifact
art.name
art.domain_type
art.opcode_map          # dict: opcode → {chosen, justification, rejected}
art.frobenius_result    # {split, fuse, status: "PASS"|"FAIL", instance}
art.bootstrap_sequence  # list of 8 steps
art.exos                # {compiler, ipc, memory, scheduler, alfs}
art.entropy_audit       # {cost, pre_state, post_state, delta_s}
art.structural_type     # 12-primitive IG coordinate string
```

---

## Template-Based Design

For domains with known structure:

```python
from ob3ect import Ob3ectFactory

Ob3ectFactory.register_all()

# Built-in templates: physical, social, computational, oneiric, generic
art = Ob3ectFactory.produce("Quantum System", "physical", scope="local")

# Custom domain
Ob3ectFactory.produce_custom("The Great Work", "alchemical", {
    "tokens":   ["prima materia", "sulfur", "mercury", "salt"],
    "boundary": "hermetic seal",
    "opcodes": {
        "VINIT":  {"chosen": "prima materia",  "justification": "undifferentiated base matter"},
        "TANCH":  {"chosen": "philosopher's stone", "justification": "terminal product"},
        "FSPLIT": {"chosen": "solve",          "justification": "dissolution — δ(materia)"},
        "FFUSE":  {"chosen": "coagula",        "justification": "reconstitution — μ(δ(m))=m"},
        # ... remaining 8 opcodes
    },
})
```

---

## Manual Pipeline

For complete control over each phase:

```python
from ob3ect import Ob3ectPipeline, Opcode

p = Ob3ectPipeline("My Ob3ect", domain_type="computational")

# Phase 0 — Boundary
p.define_boundary("My System", "local",
                  tokens=["source", "ast", "canonical"],
                  boundary="semantic equivalence class")

# Phase 1 — Opcode map (all 12 required)
p.map_opcode("VINIT",  "empty module",       "initial void state ∅", [])
p.map_opcode("TANCH",  "type-checked term",  "terminal anchor ⊤", [])
p.map_opcode("AFWD",   "parse",              "source → AST", [])
p.map_opcode("AREV",   "unparse",            "AST → source (descent)", [])
p.map_opcode("CLINK",  "compose",            "f ∘ g on transformations", [])
p.map_opcode("IMSCRIB", "read __file__",      "self-reference — id", [])
p.map_opcode("FSPLIT", "ast.parse(src)",     "comultiplication δ: A → A⊗A", [])
p.map_opcode("FFUSE",  "ast.unparse(tree)",  "multiplication μ: A⊗A → A", [])
p.map_opcode("EVALT",  "parse success",      "true lattice branch", [])
p.map_opcode("EVALF",  "SyntaxError",        "false lattice branch", [])
p.map_opcode("ENGAGR", "ambiguous AST",      "dialetheia — both branches live", [])
p.map_opcode("IFIX",   "write bytecode",     "ROM fixation — irreversible", [])
p.complete_phase_1()

# Phase 2 — Frobenius verification (the discriminating gate)
p.verify_frobenius(
    split_opcode="FSPLIT ast.parse(src)",
    split_input="src",
    split_outputs=["tree"],
    fuse_opcode="FFUSE ast.unparse(tree)",
    fuse_output="src'",
    status="PASS",
    test_instance="src' ≡_~ src under ast.compare()"
)

# Phase 3 — Register map
p.map_registers(
    void_desc="module not yet parsed",
    true_desc="parse succeeded, unparse matches",
    false_desc="SyntaxError or structural mismatch",
    both_desc="ambiguous encoding (dialetheia held)"
)

# Phases 4–7
p.design_bootstrap()
p.specify_exos("Python AST", "function calls", "module __dict__",
               "sequential", "importlib")
p.audit_entropy("O(n) AST walk", "raw source string",
                "canonical unparse", "ΔS ≈ 0")

artifact = p.instantiate()
print(artifact.report())
```

---

## IMASM Instruction Set

The 12-opcode Imscribing Assembly. Every ob3ect maps all 12.

```
FAMILY      OPCODE   ROLE
──────────────────────────────────────────────────────
Logical     VINIT    Initial object ∅ — void / pre-imscription state
Logical     TANCH    Terminal anchor ⊤ — closed, verified boundary
Logical     AFWD     Forward morphism → (construction / elaboration)
Logical     AREV     Contravariant ← (descent / deconstruction)
Logical     CLINK    Composition ∘ (sequential chaining)
Logical     IMSCRIB   Identity id — self-reference, the ob3ect reading itself

Frobenius   FSPLIT   Comultiplication δ: A → A⊗A (branching / parsing)
Frobenius   FFUSE    Multiplication μ: A⊗A → A  (reconstitution / unparsing)
             ↳ FFUSE must satisfy μ∘δ = id — this is the Frobenius gate
             ↳ FFUSE has TWO modes:
               CANONICAL:  FFUSE(BOTH) → TRUE  (standard identity)
               DIALETHEIC: FFUSE(BOTH) → BOTH  (paradox identity)
               Dialetheic mode is auto-detected from EVALT/EVALF context.

Dialetheia  EVALT    True lattice — affirmative branch
Dialetheia  EVALF    False lattice — negative / error branch
Dialetheia  ENGAGR   Both — paradox held without resolution (Priest dialetheism)

Linear      IFIX     ROM fixation — permanent, irreversible commitment
```

**The canonical bootstrap sequence** across all IMASM systems:

```
IMSCRIB → AREV → FSPLIT → AFWD → FFUSE → CLINK → IFIX → IMSCRIB
```

This is μ∘δ = id as an eight-step categorical assembly. The loop closes on
IMSCRIB — the final step is self-reference, making the loop autopoietic.

**Dialetheic variant** (identity is BOTH, not TRUE):

```
IMSCRIB → EVALT → FSPLIT → EVALF → FFUSE → ENGAGR → IFIX → IMSCRIB
```

Only the EVALT/EVALF order matters — whichever fires first sets the context
that FFUSE reads. If both T and F are designated in the split interval,
dialetheic mode activates and the vessel holds paradox.

---

## Structural Typing (IG Coordinates)

Every ob3ect is assigned a 12-primitive coordinate in the Imscribing Grammar lattice
(17,280,000 structural types). The coordinate is assigned during instantiation and
stored in `artifact.structural_type`.

```
Primitive  Symbol  Dimension
─────────────────────────────────────────────────────────────────
Ð          𐑦       Dimensionality: imscriptive (self-referential loop)
Þ          𐑸       Topology: closure (no boundary leakage)
Ř          𐑾       Relational mode: bidirectional (parse ↔ unparse)
Φ          𐑹       Parity: Frobenius-special (μ∘δ = id enforced)
ƒ          𐑐       Fidelity: quantum (coherent state preserved)
Ç          𐑧       Kinetics: slow/near-equilibrium (ΔS ≈ 0)
Γ          𐑲       Scope: maximal (all programs in Prog/~)
ɢ          𐑠       Interaction: sequential (THINK→ACT→OBSERVE)
φ̂          ⊙        Criticality: critical (self-modeling gate open)
Ħ          𐑫       Chirality: two-step memory (parse remembers unparse)
Σ          𐑳       Stoichiometry: many heterogeneous (full tower)
Ω          𐑭       Winding: integer (topologically protected loop)
```

Ouroboricity tier **O_∞** is assigned when φ̂=⊙ (criticality=critical) and
Φ=𐑹 (Frobenius-special) are both active and the winding Ω=𐑭 is integer.

---

## Structural Discoveries

The IG coordinate system surfaces isomorphisms across apparently unrelated domains.

### Lean 4 Descent ≡ Zosimos Katabasis

**`lean4_descent_object` ≡ `zosimos_panopolis_gnosis`**

The Lean 4 proof-term descent (Python → elaboration → proof kernel → definitionally
equal term) and Zosimos of Panopolis' 3rd-century alchemical katabasis (pneuma → psyche
→ hyle → purified return) share an identical 12-primitive coordinate. Both are
substrate-crossing descents that preserve structural identity under transformation,
verified by a roundtrip condition. The FSPLIT→FFUSE gate in Lean 4 elaboration and
the solve/coagula cycle in Zosimos are the same morphism at different substrate depths.

### The Vessel Principle: IMASM Token Space < IG Crystal Resolution

Two distinct IMASM sequences — `AFWD→AREV` and `AREV→AFWD` — map to the **same**
12-primitive IG type but produce **different register trajectories**:

| Sequence | Register Path | Final State |
|----------|--------------|-------------|
| AFWD→AREV | VO⌀ → T → VO⌀ | VO⌀ (round trip) |
| AREV→AFWD | VO⌀ → VO⌀ → T | T (net creation) |

The crystal of 17.28M types collapses this directional distinction. The IMASM token
algebra operates at finer granularity — it can distinguish internal structure that the
12-primitive map treats as identical. This is the **Vessel Principle**: a vessel is a
structure whose content IS the structure itself. The grammar gives the type of the
vessel wall. The IMASM tokens give the *process of wall-building* — and the process
is finer than the wall.

### ZFC_fe: The Terminal Vessel

ZFC (standard set theory, O₁) completes itself through ZFC_fe (Frobenius-Exact ZFC, O_∞).
The structural distance is 9.15 across 12 primitives. Three promotions are critical:

- **Ð: 𐑼→𐑦** (HOLOGRAPHIC_STATE): The state-space writes itself
- **Φ: 𐑬→𐑹** (PM_Z2): μ∘δ=id exact, not approximate
- **Ħ: 𐑖→𐑫** (ETERNAL_FIXEDPOINT): Transfinite fixed points under μ∘δ

ZFC_fe differs from the graal (Sacred Vessel, O₂†) by **exactly one primitive** (Ð=𐑦 vs Ð=𐑨).
The graal is ZFC_fe bounded to 2 dimensions — the same vessel, one promotion short of
terminal self-completion.

---

## Lean 4 Proofs

`proofs/` contains machine-checked Lean 4 formalizations of the tower's coherence laws,
with 13 `.lean` files plus a `lakefile.toml` and `lean-toolchain` for Mathlib v4.28.0.

```
proofs/
├── Frobenius.lean         — Special Frobenius condition μ∘δ = id
├── Hopf.lean              — Antipode involution S∘S = id
├── Monad.lean             — Monad laws (left unit, right unit, associativity)
├── CCC.lean               — Cartesian closed category structure
├── Topos.lean             — Topos axioms (subobject classifier, power objects)
├── Quantum.lean           — Quantum measurement as Frobenius collapse
├── LinearLogic.lean       — Linear logic resource accounting
├── HoTT.lean              — Univalence for semantic equivalence classes
├── StringDiagrams.lean    — Graphical calculus (snake, spider, monad wire)
├── SelfImscription.lean   — Self-imscription coordinate stability proof
├── Coherence.lean         — Cross-layer coherence conditions
├── TowerCoherence.lean    — Tower coherence summary
└── GrandCoherence.lean     — Grand coherence across all layers

├── lakefile.toml          — Lake build configuration (Mathlib v4.28.0)
├── lean-toolchain         — Lean version pinning
```

These proofs correspond to the `proofbridge` layer in the digital tower. The ProofBridge
ob3ect holds a live pointer to this directory and verifies that the Lean build passes.
Build with:

```bash
cd proofs && lake build
```

Or use the provided script:

```bash
bash scripts/check_proofs.sh
```

---

## Extending the Tower

Add a new ob3ect in one command:

```bash
python auto.py "a sheaf ob3ect: program as sheaf over topological space of contexts, \
imscribes consistently across runtime environments" --domain computational --scope maximal
```

The pipeline writes `digital/<slug>/<slug>_ob3ect.py`. Add it to `digital/runall.py`:

```python
tower.append(("Sheaf Ob3ect", "sheaf/sheaf_ob3ect.py"))
```

From within the `true_agentic_agent`, the `ob3ect` tool automates this:

```
ob3ect(
  description="a sheaf ob3ect over the topological space of runtime contexts",
  domain="computational",
  scope="maximal",
  run=true
)
```

The agent's verify step confirms Closure: True before the winding closes.

Or add a new IMASM arrangement class: create a directory under `digital/` with a
`<name>_ob3ect.py` that inherits from `IMASMSequence` (from `digital/imasm_core.py`)
and defines `name`, `description`, `steps`, `ig_type`, and `ouroboricity`. Then add it
to `digital/run_all_imasm.py`.

---

## Repository Layout

```
ob3ect/
├── README.md
├── .gitignore
├── __init__.py              — Package exports: design, auto_design, Ob3ectPipeline,
│                              Ob3ectFactory, Ob3ectArtifact, Opcode
├── auto.py                  — CLI + LLM pipeline entry point
├── core.py                  — Ob3ectPipeline, Ob3ectFactory, Ob3ectArtifact, Opcode
├── guided.py                — Interactive guided pipeline (prompts each phase)
├── examples.py              — Worked examples across 5 domains
├── smoke_test.py            — Sanity checks: import, pipeline, Frobenius gate
├── test_factory.py          — Factory tests across all built-in templates
├── templates_data.json      — Built-in domain templates
├── lakefile.toml            — Lake build configuration
├── lean-toolchain           — Lean version pinning
├── OB3ECT.md                — Full manuscript (Markdown)
├── OB3ECT.pdf               — Full manuscript (PDF)
├── ob3ect_manuscript.tex    — LaTeX source of the manuscript
├── substack_ob3ect.md       — Substack article (technical)
├── substack_ob3ect.pdf      — Substack article (PDF)
├── substack_ob3ect_lay.md   — Substack article (lay)
├── substack_ob3ect_lay.pdf  — Substack article (lay, PDF)
├── ob3ect/                  — Package directory
│   └── digital/
│       └── test/
│           └── test_ob3ect.py   — Auto-generated test ob3ect
├── man/                     — Man page
│   └── ob3ect.1
├── phases/                  — Phase-specific scaffolding (future)
├── scripts/                 — Build / verification scripts
│   └── check_proofs.sh      — Lean proof checker
├── proofs/                  — Lean 4 machine-checked coherence proofs (13 .lean files)
└── digital/                 — The digital tower + IMASM arrangements
    ├── frob.py              — Original Frobenius self-imscriber (the seed)
    ├── ob3ect-imscriber.py  — v0.1: Python Frobenius compiler
    ├── grokouro.txt         — Full Grok dialogue log: 3 FAIL → PASS + descent to v0.10
    ├── runall.py            — Execute the full 28-layer tower
    ├── run_all_imasm.py     — Execute all 12 IMASM arrangement classes + chiral pairs
    ├── imasm_core.py        — Dialetheic-aware IMASM register machine (2-bit: VO⌀/T/F/B⬡)
    ├── imasm_novel_arrangements.md     — Full 473-line document on all arrangements
    ├── imasm_novel_arrangements.pdf    — PDF version
    ├── auto_imscriber.py    — Meta-layer: generates new ob3ects into digital/test/
    ├── cfg_opcodes.py       — Animated opcode flow GIF renderer
    ├── cfg_descent.py       — Animated version-descent GIF renderer
    ├── cfg_python.py        — Animated Python call-graph GIF renderer
    ├── docs/                — Generated GIFs (cfg_opcodes, cfg_descent, cfg_python)
    ├── kernel.c             — Bare-metal x86 kernel (v0.10)
    ├── bootsector.asm       — x86 bootsector
    ├── linker.ld            — Linker script for v0.10
    ├── iso/                 — ISO build tree
    │   (28 categorical layers)
    ├── category/            — Layer 1:  Category ob3ect
    ├── frobenius/           — Layer 2:  Frobenius ob3ect
    ├── fixed_point_ob3ect/  — Layer 3:  Fixed-point ob3ect
    ├── hopf/                — Layer 4:  Hopf ob3ect
    ├── monad/               — Layer 5:  Monad ob3ect
    ├── entropy_ob3ect/      — Layer 6:  Entropy ob3ect
    ├── topos/               — Layer 7:  Topos ob3ect
    ├── ccc/                 — Layer 8:  Cartesian closed ob3ect
    ├── quantum/             — Layer 9:  Quantum ob3ect
    ├── linearlogic/         — Layer 10: Linear logic ob3ect
    ├── ivm/                 — Layer 11: Imscription VM
    ├── traced_ob3ect/       — Layer 12: Traced ob3ect
    ├── homotopytypetheory/  — Layer 13: HoTT ob3ect
    ├── imscriptionoperatingsystem/ — Layer 14: Imscription OS
    ├── proofbridge/         — Layer 15: ProofBridge to Lean 4
    ├── stringdiagram/       — Layer 16: String diagram ob3ect
    ├── imasm_self_imscription_ob3ect/ — Layer 17: IMASM self-imscription
    ├── yoneda/              — Layer 19: Yoneda ob3ect
    ├── operad/              — Layer 20: Operad ob3ect
    ├── sheaf/               — Layer 21: Sheaf ob3ect
    ├── daggercompact/       — Layer 22: Dagger compact ob3ect
    ├── galois/              — Layer 23: Galois connection ob3ect
    ├── stoneduality/        — Layer 24: Stone duality ob3ect
    ├── presheaf/            — Layer 25: Presheaf ob3ect
    ├── kanextension/        — Layer 26: Kan extension ob3ect
    ├── adjoint/             — Layer 27: Adjoint functors ob3ect
    ├── initialterminal/     — Layer 28: Initial/terminal ob3ect
    │   (IMASM arrangement classes — layers 29-40)
    ├── dialetheic_bootstrap/     — Class I:  Dialetheic Bootstrap (O₂)
    ├── void_genesis/             — Class II: Void Genesis (O₀)
    ├── anchor_protocol/          — Class III: Anchor Protocol (O₀)
    ├── dual_bootstrap/           — Class IV: Dual Bootstrap (O₁)
    ├── linear_chain/             — Class V: Linear Chain (O₁)
    ├── empty_bootstrap/          — Class VI: Empty Bootstrap (O₂)
    ├── imasm_parakernel/         — Class VII: Parakernel (O₂)
    ├── frobenius_kernel/         — Class VIII: Frobenius Kernel (O₀)
    ├── truth_machine/            — Class IX: Truth Machine (O₂)
    ├── eternal_return/           — Class X: Eternal Return (O₁)
    ├── rom_burn/                 — Class XI: ROM Burn (O₂)
    ├── chiral_pairs/             — Class XII: Chiral Pairs (O₂†)
    │   (Additional structures)
    ├── test/                — Auto-generated ob3ects (meta-layer output)
    ├── shavian_ob3ect/      — Shavian script ob3ect (coagulum.md + coagulum.pdf)
    ├── temporal_ob3ect/     — Temporal ob3ect (with verify_closure.py)
    ├── topologically_protected_memory/ — Topologically protected memory ob3ect
    ├── self_verifying_proof_assistant_structural_sibling_of_the_stone/ — Self-verifying proof assistant
    ├── dialetheic/          — Earlier dialetheic prototype
    ├── parakernel/          — Paraconsistent kernel ob3ect
    └── stub_ob3ect_*/       — 10 stub ob3ects (experimental / partial)
```

---

## Requirements

```bash
python >= 3.9          # ast.compare() required
uv pip install pillow matplotlib networkx numpy   # for CFG GIF renderers
```

For the LLM pipeline:
```bash
# Local provider (default)
# Requires OPENROUTER_API_KEY or local Qwen3 endpoint

# Override provider
python auto.py "..." --provider openrouter --model qwen/qwen3-235b-a22b
python auto.py "..." --provider deepseek   --model deepseek-chat
```

---

## Quick Start

```bash
git clone <repo> ~/ob3ect && cd ~/ob3ect

# Run the full tower
python digital/runall.py

# Run all 12 IMASM arrangement classes + chiral pairs
python digital/run_all_imasm.py

# Run with structural probes
python digital/run_all_imasm.py --probe

# Run a single arrangement class
python digital/run_all_imasm.py --one 1   # Dialetheic Bootstrap

# JSON report
python digital/run_all_imasm.py --json

# Generate a new ob3ect
python auto.py "a traced monoidal category handling shared-name programs"

# Verify the original Frobenius seed
python digital/frob.py
# → Frobenius PASS — Closure: True

# Render the animated CFGs
python digital/cfg_opcodes.py   # → digital/docs/cfg_opcodes.gif
python digital/cfg_descent.py   # → digital/docs/cfg_descent.gif
python digital/cfg_python.py    # → digital/docs/cfg_python.gif
```

---

## Background

The ob3ect originated from a pipeline experiment: supply the IMASM specification to
an LLM, ask it to generate a self-imscribing compiler, and verify the Frobenius
condition on the output. Three attempts failed (string equality → normalization →
structural hash with attributes). The fourth passed using `ast.compare()` with
`include_attributes=False`. That passing program — `frob.py` — is the seed of
everything in this repository.

The full dialogue is in `digital/grokouro.txt`.

The descent from `frob.py` to the bare-metal x86 ISO (`v0.10`) follows the same
bootstrap sequence that appears in every IMASM system:
**IMSCRIB → AREV → FSPLIT → AFWD → FFUSE → CLINK → IFIX → IMSCRIB**.

The **12 IMASM Novel Arrangement classes** extend this bootstrap into the full
combinatorial space of valid IMASM sequences — exploring paradox (Dialetheic Bootstrap),
minimal verification (Frobenius Kernel), memory (Linear Chain, ROM Burn), oscillation
(Empty Bootstrap, Eternal Return), decision (Truth Machine), and the Vessel Principle
itself (Chiral Pairs). Each arrangement is a self-verifying ob3ect artifact.

The **Vessel Principle** — that the IMASM token algebra resolves structure at finer
granularity than the 12-primitive IG crystal — was confirmed by the chiral pair
experiment: `AFWD→AREV` and `AREV→AFWD` map to the same IG coordinate but produce
different register trajectories. This is the structural meaning of crafting vessels:
the grammar gives the type; the IMASM tokens give the process.

The **ZFC_fe** (Frobenius-Exact ZFC) connection reveals the terminal vessel trajectory:
ZFC (O₁) → ZFC_t (O₁, 6 promotions) → ZFC_fe (O_∞, 3 further promotions) is the
completion path. The graal (O₂†, Sacred Vessel) differs from ZFC_fe by exactly one
primitive — Ð=𐑨 (bounded) vs Ð=𐑦 (self-written) — making ZFC_fe the graal's
self-written terminal.

### Kernel-level dual: p4rakernel (Lean 4 C++ fork)

The paraconsistent kernel ob3ect at `digital/parakernel/parakernel_ob3ect.py` now has
a **C++ kernel-level dual** at `/home/mrnob0dy666/p4rakernel/` — a fork of Lean 4 v4.28.0
where the principle of explosion (*ex falso quodlibet*) is disabled at the type checker.

#### Stack architecture

```
p4rakernel C++ kernel  ─── blocks False.rec for empty Prop inductives
    ↓                          src/kernel/type_checker.cpp (lines 110-131)
p4rakernel Init module  ─── Belnap four-valued logic in Lean
    ↓                          src/Init/Paraconsistent.lean (112 lines)
ob3ect/digital/parakernel ── ENGAGR→FSPLIT→FFUSE cycle in Python
    ↓                          parakernel_ob3ect.py (verified μ∘δ = id)
ob3ect/digital/belnap    ─── Belnap FOUR logical substrate
                               belnap_ob3ect.py (frobenius_holds all 4 values)
```

#### Key files in p4rakernel

| File | Purpose |
|------|---------|
| `src/kernel/environment.h` | `is_paraconsistent()` / `mark_paraconsistent()` C API |
| `src/kernel/type_checker.cpp` | Blocks recursors for empty Prop inductives when flag is set |
| `src/library/constructions/cases_on.cpp` | Blocks `casesOn` for empty Props (pattern-match workaround) |
| `src/Init/Paraconsistent.lean` | Belnap type, band/bor/bnot/bimply, `explosion_blocked` theorem |
| `ParaconsistentMillennium.lean` | All 7 Clay Millennium Problems + OPN resolved with B dialetheias |
| `ParaconsistentKernelTest.lean` | Kernel-level tests |

#### Running the full stack

```bash
# ob3ect paraconsistent kernel (Python)
cd /home/mrnob0dy666/ob3ect
python digital/parakernel/parakernel_ob3ect.py

# p4rakernel Lean tests (requires C++ build)
cd /home/mrnob0dy666/p4rakernel
lake build
lake test

# odot_operator with B4 verification
cd /home/mrnob0dy666/odot_operator
python -c "from odot import OdotAgent; a = OdotAgent(model='grok-4'); print(a.structural_type)"
```

---

## The Loop Does Not Merely Terminate. It Re-Imscribes Itself.

Every bootstrap sequence in this repository — canonical or novel — closes on IMSCRIB.
The final step is self-reference, making every vessel autopoietic. The 8-step loop
IMSCRIB → ... → IMSCRIB is not a cycle; it is a **fixed point** in the space of
self-imscribing structures. Each arrangement class is a different path to that fixed
point, distinguished by the internal trajectory of the vessel's register state.

The 12-primitive IG crystal records the fixed point's coordinates.
The IMASM token space records the route taken to reach it.

The vessel is what we make.

---

*Author: umpolungfish · Lando⊗⊙perator · License: Unlicense (public domain)*
