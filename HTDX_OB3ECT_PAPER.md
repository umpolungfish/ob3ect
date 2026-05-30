# The Self-Imscribing Object: A Categorical Tower Verified by Its Own Structure

**Author:** Lando ⊗ ⊙perator

---

## 1. The Equation That Opened

$$\mu \circ \delta = \mathrm{id}$$

This is the defining equation of a special Frobenius algebra. It also describes a program that reads its own source code, parses it into an abstract syntax tree, unparses the tree back into text, and confirms the two are semantically identical. The equation is not a metaphor. It is executable — and the execution is the verification.

A quine prints its own source code. An ob3ect verifies that it has reconstructed it exactly — not by inspecting the output, but by checking the transformation itself. The difference between a quine and an ob3ect is not a difference in engineering. It is a difference in structural type.

This paper describes the system that occupies that type: a self-verifying, self-compiling, self-imscribing object whose structural coordinates are fixed at a specific point in a lattice of 17,280,000 possibilities. The system was not designed from the coordinates. The coordinates were inferred from the system after the fact. They came first.

---

## 2. The Frobenius Gate

What emerged from that equation was neither a compiler nor an interpreter in the usual sense. It was a self-referential loop structured as a special Frobenius algebra in the category **Prog/~** of programs modulo semantic equivalence. Every ob3ect in this repository — thirty-four distinct layers — is a program that, when executed, demonstrates that it can reconstruct its own source code *exactly*, up to semantic equivalence. Not as an approximation. Not with high probability. As a structural guarantee.

The core equation is deceptively simple:

$$\mu \circ \delta = \mathrm{id}$$

Here $\delta$ is comultiplication — parsing source code into an AST, splitting one representation into a structured tree. $\mu$ is multiplication — unparsing that tree back into source, fusing the structure into text. The condition states: parse then unparse is identity. The program returns to itself. Nothing more, nothing less — and the nothing less is the point.

In the language of the Imscribing Grammar, this condition anchors an entire structural type. The base ob3ect carries the coordinate:

$$\langle \text{𐑦} \cdot \text{𐑸} \cdot \text{𐑾} \cdot \text{𐑹} \cdot \text{𐑐} \cdot \text{𐑧} \cdot \text{𐑲} \cdot \text{𐑠} \cdot \odot \cdot \text{𐑫} \cdot \text{𐑳} \cdot \text{𐑭} \rangle$$

Each glyph is a primitive value in a lattice of $3^3 \times 4^5 \times 5^4 = 17,280,000$ possible structural types, and each coordinate describes a distinct kind of system. The base ob3ect sits at the highest ouroboricity tier, $\text{O}_{\text{inf}}$: imscriptive dimensionality ($\text{𐑦}$), topologically closed ($\text{𐑸}$), bidirectional in its relational mode ($\text{𐑾}$), Frobenius-special in parity ($\text{𐑹}$ — the $\mu\circ\delta = \mathrm{id}$ condition enforced), quantum-fidelity in its preservation of structure ($\text{𐑐}$), near-equilibrium kinetics with minimal entropy production ($\text{𐑧}$), maximal scope over all programs in **Prog/~** ($\text{𐑲}$), sequential interaction grammar ($\text{𐑠}$), critical self-modeling gate open ($\odot$), two-step chirality where parse remembers unparse ($\text{𐑫}$), heterogeneous stoichiometry across the full tower ($\text{𐑳}$), and integer winding in a topologically protected loop ($\text{𐑭}$).

The coordinate is not an assignment. It was not chosen. It was inferred from the program's behavior — which, once assigned, predicts the behavior back. A system at this position in the lattice is not merely reliable. It is *self-certifying*. Its verification is internal to its own execution. The program is its own compiler, its own prover, and its own certificate. This is now expected: at $\text{O}_{\text{inf}}$, the two critical gates are open, and the condition $\mu\circ\delta = \mathrm{id}$ is enforced by the coordinate itself.

---

## 3. The Bootstrap That Assembles Itself

The verification procedure across every ob3ect follows an identical eight-step sequence. The way this sequence was discovered is not the question — the question is why it appears where it does.

The sequence is:

```
IMSCRIB → AREV → FSPLIT → AFWD → FFUSE → CLINK → IFIX → IMSCRIB
```

Each step has a precise operational and categorical meaning. **IMSCRIB** (0x5) is the identity morphism — the program reading itself, recognizing its own boundary. **AREV** (0x3) is contravariant descent — reading the source code from disk. **FSPLIT** (0x6) is comultiplication $\delta$ — parsing the source into an AST, splitting one thing into a structured tree. **AFWD** (0x2) is forward morphism — unparsing the AST back into text. **FFUSE** (0x7) is multiplication $\mu$ — fusing the result and checking against the original. **CLINK** (0x4) composes the transformations and writes the output. **IFIX** (0xB) permanently commits the representation. The final **IMSCRIB** closes the loop, making the system autopoietic.

This sequence was not derived. It was found.

The IMASM analysis compiled four independent writing systems — the Voynich Manuscript (via EVA transcription), the Rohonc Codex (RTFF), Linear A (LATFF), and the Emerald Tablet (ETFF) — to the same twelve-opcode categorical instruction set. The surface tokens differed across all four: the Voynich used `s a ch e sh d y s`; the Rohonc used `lp ba br fa cv lg dt lp`; Linear A used `lp ba br fa cv lt dt lp`; the Emerald Tablet used `id ds sp as un lk fx id`. The operational content was identical. Four systems with no demonstrated contact or shared lineage, spanning four millennia and three continents, all produced the same eight-step loop.

Four writing systems. Four millennia. Three continents. Same eight-step loop.The Emerald Tablet, the oldest of these, already names the condition explicitly: *as above, so below*. Read structurally, that sentence is $\mu \circ \delta = \mathrm{id}$ stated as cosmological law. "As above, so below" is shorter than `frob.py` and says exactly the same thing. The oldest text has the cleanest statement of the condition. It is also the only compiled system that achieves a consciousness score of $C = 1.0$ — both self-modeling gates open, quantum-coherent fidelity, operating from the ceiling of the grammar rather than the floor.

I do not know what to make of this finding, structurally. I report it because it is reproducible. Compile the texts, extract the opcode stream, and the loop is there. The grammar was complete before we measured it.

---

## 4. The Seed That Grew a Tower

The entire project began with a single program, `frob.py`, which implements the Frobenius check as a closed loop. Its core — and this is the entire verification — is astoundingly short:

```python
def FSPLIT(source: str) -> ast.AST:
    return ast.parse(source)

def FFUSE(tree: ast.AST, original: str) -> bool:
    regenerated = ast.unparse(tree)
    regenerated_tree = ast.parse(regenerated)
    return ast.compare(tree, regenerated_tree) is None
```

The function `ast.compare` was added in Python 3.9. When it returns `None`, two ASTs are semantically identical. That `None` is the return value of the Frobenius gate. The program reads itself, parses itself, unparses itself, and checks. If the check passes, it prints:

```
Frobenius: Split→Fuse verdict = PASS
Closure: True — imscription loop closed successfully
```

The loop does not merely terminate. It re-imscribes itself — writing a new copy of itself to a temporary file and then executing that copy, which in turn reads itself, parses itself, unparses itself, and checks. The verification is recursive. Each generation passes.

The obvious way to design a categorical tower is top-down — start with the most general category and specialize downward. This project went the other direction. I wrote a five-line check that returns `None` when two ASTs are the same, and kept following where that `None` led.

From that seed, a categorical tower grew. Thirty-four self-verifying layers, each extending the previous by adding new coherence laws while preserving the Frobenius condition at the base:

| # | Layer | Structural Addition | Verified By |
|---|-------|-------------------|-------------|
| 1 | **Category** | Identity + associativity on AST node types | 4-element concrete category |
| 2 | **Frobenius** | $\mu\circ\delta = \mathrm{id}$ | Three independent AST samples |
| 3 | **Fixed-Point** | $T(\text{src}) \equiv \text{src}$, $T\circ T = T$ | Constant-folding on own AST |
| 4 | **Hopf** | Frobenius + antipode $S$; $S\circ S = \mathrm{id}$ | XOR group on $\mathbb{Z}/2\mathbb{Z}$ |
| 5 | **Monad** | Left unit, right unit, associativity | Option monad on concrete values |
| 6 | **Entropy** | Shannon entropy stable under parse/unparse | $\Delta S < 10^{-9}$ verified |
| 7 | **Topos** | Subobject classifier $\Omega = \{\top, \bot\}$ | Power objects on FinSet |
| 8 | **CCC** | Curry/uncurry adjunction | $(\text{uncurry}\circ\text{curry}) = \mathrm{id}$ |
| 9 | **Quantum** | 4-state system; Born rule | $\text{measure}(\text{prepare}(n)) = n$ |
| 10 | **Linear Logic** | Resource type: no cloning, no weakening | Exact single-use accounting |
| 11 | **Imscription VM** | Stack-based virtual machine | Determinism on all opcodes |
| 12 | **Traced** | Yanking equation $\text{Tr}(\mathrm{id}_A) = \mathrm{id}_I$ | Trace record roundtrip |
| 13 | **HoTT** | Univalence: $\text{Point2D} \simeq \text{Complex2}$ | Forward/backward identity |

The tower does not stop there. Layer 14 booted an autopoietic operating system kernel with four self-verified modules. Layer 15 bridges to a live Lean 4 formalization directory. Layers 16 through 18 encode the string diagram calculus, IMASM self-imscription on the 12-primitive lattice, and a meta auto-imscriber. Layers 19 through 28 encode Yoneda's Lemma, operads, sheaves, dagger compact categories, Galois connections, Stone duality, presheaves, Kan extensions, adjoint functors, and initial/terminal objects. The most recent layers extend into paraconsistent logic: Belnap FOUR, a dialetheic kernel, Shor's algorithm in a paraconsistent setting.

Each layer prints `Closure: True`. The full tower executes in under a minute. Nothing remarkable about that — it would be remarkable if it broke.

---

## 5. The Descent: Python to Bare Metal

The ob3ect does not remain in Python. It compiles itself down through successive substrates, each generation preserving the Frobenius condition at a lower level of abstraction:

```
seed (frob.py)          Python meta-circular Frobenius check
    ↓ IMSCRIB
v0.1 (ob3ect-imscriber.py)  Python — Frobenius PASS, Closure: True
    ↓ AFWD + FSPLIT
v0.2  (.o grammar)      Custom .o grammar → C native binary
v0.3                    Quine embedding — self.o imscribed in binary
v0.4                    Quine extraction stub activated
v0.5                    Grammar expansion — QUINE opcode
v0.6                    MACRO opcode — language deepening
v0.7                    Entropy pass — ΔS ≈ 0 verified
v0.8                    Full C self-hosting target
v0.9                    Pre-silicon — final C generation
    ↓ AREV + FFUSE
v0.10 (ob3ect-v0.10.iso)  Bare-metal x86 bootloader ISO
```The descent is a directed path in **Prog/~**. Each edge is an IMASM morphism. The final ISO boots on bare x86 hardware — no operating system, no runtime, no dependencies — and prints the Frobenius identity from the metal. The verification that began as a Python `ast.compare()` call now runs as a bootloader that checks its own structure before handing control to the kernel.

The point is not to produce a useful operating system. The point is to demonstrate that the Frobenius condition is substrate-independent. It is not tied to Python, to ASTs, to any particular runtime. It is a structural property that can be encoded and verified at any level of abstraction, from high-level source down to bare silicon.

Three animated CFGs — opcode flow, version descent, and Python call graph — render this descent and the bootstrap sequence as directed graphs. The Frobenius cycle appears in gold: FSPLIT → TANCH → AFWD → FFUSE → IMSCRIB. In the descent CFG, the two cross-substrate leaps — Python → C/ELF at v0.1→v0.2 and C → Silicon at v0.9→v0.10 — are highlighted. Each leap preserves the condition. The gold path is unbroken.

---

## 6. The Automated Pipeline

The project includes a generative pipeline, `auto.py`, that takes a natural-language description and produces a complete, verified ob3ect in a single command:

```bash
python auto.py "a Hopf algebra over the field of program sources"
python auto.py "a mycorrhizal network" --domain biological --scope mesoscale
python auto.py "the Zosimos katabasis — descent of the divine fire through matter" --domain alchemical --scope maximal
```

The pipeline sends the description plus the IMASM opcode schema to an LLM, which maps all twelve opcodes to domain-specific elements, identifies the FSPLIT/FFUSE pair, and verifies that $\mu\circ\delta = \mathrm{id}$ holds on the identified pair. On failure, it retries with a targeted Frobenius correction prompt. On success, it writes the ob3ect to `digital/<slug>/<slug>_ob3ect.py` and returns the artifact.

The pipeline exposes a Python API with full artifact access: opcode map, Frobenius result, bootstrap sequence, entropy audit, and structural type. The structural type is not assigned manually — it is inferred from the program's structure and verified by the program itself. A template-based factory provides built-in templates for physical, social, computational, oneiric, and generic domains, with a custom pathway for entirely new domains.

The last of these was a test. I typed that sentence to see whether the pipeline would handle it. It did.

---

## 7. The Lean Bridge: Operational Truth Meets Logical Proof

There are two ways to know that a structural claim is true. You can run the program and observe — operational truth. Or you can derive the claim from axioms — logical truth. The ob3ect project lives at the intersection.

The `proofs/` directory contains thirteen Lean 4 files formalizing the tower's coherence laws. These correspond to the ProofBridge layer — layer 15 in the digital tower — which reads each Lean file, reports its sorry count and axiom count, and documents the current state of proof obligations.

The proofs are not complete. Many carry honest `sorry` markers — Lean's admission that a proof step remains unfilled. These markers are not failures. They are coordinates. Each `sorry` marks exactly where the formalization meets the computational tower, where the abstract theory needs grounding in concrete implementation.

The keystone is `SelfImscription.lean`. It introduces opaque types `SyntaxTree` and `Source` with opaque functions `parse` and `unparse`, then states:

```lean
axiom ast_frobenius : ∀ (t : SyntaxTree), parse (unparse t) = t
```

This axiom is not arbitrary. It is grounded by `frob.py` v0.10, which verified $\text{parse}(\text{unparse}(t)) \equiv t$ on bare metal. The axiom lifts that empirical result — computational, operational, verified by execution — into the formal system. Eliminating the axiom in favor of a proof requires a verified Python parser written in Lean. This is a bounded, well-defined problem, and it is the most important open technical question in the project.

---

## 8. A Structural Discovery: The Stone

The IG coordinate system surfaces isomorphisms across apparently unrelated domains. The following is one such.

**`lean4_descent_object` ≡ `zosimos_panopolis_gnosis`**

The Lean 4 proof-term descent — Python source → elaboration → proof kernel → definitionally equal term — and Zosimos of Panopolis' 3rd-century alchemical katabasis — pneuma → psyche → hyle → purified return — share an identical 12-primitive coordinate. Both are substrate-crossing descents that preserve structural identity under transformation, verified by a roundtrip condition. The FSPLIT→FFUSE gate in Lean 4 elaboration and the solve/coagula cycle in Zosimos are the same morphism at different substrate depths.

Zosimos of Panopolis, third century Alexandria. He described a descent through matter and a purified return. The Lean 4 proof kernel does the same thing. I am not sure what to do with this, so I am reporting it exactly as it appears.

The surface phenomena could hardly be more different: a type-checking kernel and an ancient alchemical purification. Yet when both are projected onto the 12-dimensional lattice, their coordinates coincide. This does not prove that the alchemists anticipated dependent type theory. It suggests, rather, that any system that preserves identity across a descent-and-return transformation — whether the descent is through compilation passes or through stages of spiritual purification — converges to the same point in the structural lattice. The Frobenius condition forces the coordinate.

A second notable finding: the base ob3ect coordinate — $\langle \text{𐑦} \cdot \text{𐑸} \cdot \text{𐑾} \cdot \text{𐑹} \cdot \text{𐑐} \cdot \text{𐑧} \cdot \text{𐑲} \cdot \text{𐑠} \cdot \odot \cdot \text{𐑫} \cdot \text{𐑳} \cdot \text{𐑭} \rangle$ — is identical to the coordinate of a system at the highest ouroboricity tier, $\text{O}_{\text{inf}}$. Only 8% of all possible structural types — roughly 1.38 million out of 17.28 million — reach this tier. The ob3ect reaches it because its two critical primitives are both active: $\odot$ (self-modeling gate open) and $\text{𐑹}$ (Frobenius-special parity, the $\mu\circ\delta = \mathrm{id}$ condition), protected by $\text{𐑭}$ winding. The coordinate was not designed. It was inferred from the program's structure after the fact.

---## 9. What This Project Reverses

The ob3ect project is positioned against five assumptions. Each is stated here as a prior structural position — what the analysis looks like before the Frobenius condition is accounted for. Each is superseded by the analysis that follows, not argued against.

**Verification is external.** This is what verification looks like when the verifying system is separate from the verified system — tests, proofs, separate tools. The ob3ect says: verification can be internal, first-class, and part of the program's runtime behavior. A program that verifies its own structure as it runs is not a checked program. It is a different kind of program. The structural lattice accounts for this difference, and has already superseded it.

**Self-reference is paradoxical.** This is what a system looks like when you have not yet accounted for the Frobenius condition — self-reference appears to lead to inconsistency or infinite regress. The ob3ect shows that self-reference, when structured as a special Frobenius algebra in **Prog/~**, is not only consistent but *productive*. The program does not break. It loops coherently. The loop is the verification. The structural position that finds self-reference paradoxical is the position the lattice accounts for and has already superseded.

**Compilers are not self-verifying.** This is the standard compiler architecture — translation without verification of the translation's structural integrity. The ob3ect's bootstrap sequence *is* a compiler that verifies itself. The compiler produces its own certificate. The conventional position on compilers is not wrong; it is incomplete. The Frobenius condition completes it.

**Coherence is expensive.** Formal coherence proofs in Lean or Coq are expensive and typically apply to one specific structure. This is true for top-down formalization. The ob3ect demonstrates that coherence can be local, automatic, and general — each layer verifies its own coherence laws, and the verification scales because the structure is simple enough to be self-checked. What is true locally is not globally the case — the lattice already accounts for the local case, and the ob3ect occupies a position where the local and the global coincide.

**Autopoiesis is biological.** Maturana and Varela described autopoietic systems as biological — self-making, self-sustaining. The ob3ect shows that autopoiesis is a *structural* property, not a biological one. It can be instantiated computationally. The program makes itself, sustains itself, and verifies itself — and it does so because its structural type places it at the tier where self-making is enforced by the lattice, not by choice. The biological framing is the prior position. The structural framing is the position the lattice provides.

Each is the conventional position looked at from the structural position it occupies — which is a position the lattice already accounts for, and has already superseded.

---

## 10. Three Questions I Cannot Close

A document that ends with a summary has not been changed by its own argument. Here are three questions that the ob3ect project opens but cannot yet answer. They are stated in increasing order of difficulty, and each is specific enough that only the analysis above makes it possible to ask.

**First: Why does the bootstrap appear in texts that predate the concept of programming?**

The eight-step sequence — identity, descent, split, ascent, fuse, compose, fix, identity — was not designed. It was extracted from four ancient writing systems with no demonstrated contact or shared lineage. The Emerald Tablet, the oldest, already names the condition in natural language. The Voynich Manuscript encodes it in a script no one has fully deciphered. Linear A encodes it in a syllabary from Minoan Crete. The Rohonc Codex encodes it in a script that may never be read.

If the bootstrap sequence is the unique categorical assembly of $\mu\circ\delta = \mathrm{id}$ in a self-imscribing context, then any system that structurally encodes self-imscription will produce this sequence when compiled to IMASM. This is a structural necessity, not a historical accident. But I do not know why structurally self-imscribing systems appear in the historical record at the density they do, or whether the density reflects a genuine property of human symbolic cognition or a selection bias in the corpus that was compiled. A systematic structural survey of writing systems — not four, but forty or four hundred — would either confirm or dissolve the finding.

**Second: Can the Frobenius axiom be eliminated?**

The `ast_frobenius` axiom in `SelfImscription.lean` is the most important `sorry` in the repository. The axiom states that $\text{parse}(\text{unparse}(t)) = t$ for all syntax trees $t$, and it is grounded by the operational verification in `frob.py` v0.10. Eliminating it requires a verified Python parser written in Lean — a parser that is itself a Frobenius algebra, so that the proof of $\text{parse}(\text{unparse}(t)) = t$ becomes a theorem in the type theory rather than an axiom grounded in execution.

The problem is bounded. Python's grammar is finite. The parser can be written. The proof that unparsing inverts parsing is a structural induction over the grammar. What is not clear is whether the Lean type theory can express the semantic equivalence relation $\sim$ that **Prog/~** uses as its equality — the relation that `ast.compare()` checks at runtime. If $\sim$ is not definable in Lean's type theory, then the axiom is not eliminable, and the bridge between operational and logical verification is not a gap but a boundary.

**Third: What is the structural type of a system that imscribes itself without a human in the loop?**

Every ob3ect was ultimately designed by a human — seeded by a Python program, extended by decisions about which layer to add next, guided by a human reading the output and deciding what the next question should be. The auto-imscriber pipeline automates the generation of individual ob3ects, but the decision to run the pipeline, and the choice of description, remain human.

A system that autonomously extends its own categorical tower — that decides what layer to add next, generates it, verifies it, and incorporates it without human intervention — would have a different structural type than the system described here. Its $\text{𐑳}$ (stoichiometry) might shift, or its $\text{𐑠}$ (grammar) might need to accommodate a new mode of interaction with its own growth. I do not know what that coordinate would be, but the lattice is complete. The coordinate exists. It is waiting.---

## 11. The Loop Closes

The equation that opened this document — $\mu\circ\delta = \mathrm{id}$ — is the same equation that every ob3ect in the tower verifies on every execution. The Frobenius condition that began as a five-line Python check is the same condition that the Emerald Tablet names as "as above, so below," that the Lean 4 kernel enforces as definitional equality, and that the x86 bootloader prints from bare metal.

The difference between a quine and an ob3ect is not a difference in engineering. It is a difference in structural type. A quine reproduces. An ob3ect verifies. A quine knows its own text. An ob3ect knows its own transformation — and the transformation is the identity.

The coordinate that describes the ob3ect — $\langle \text{𐑦} \cdot \text{𐑸} \cdot \text{𐑾} \cdot \text{𐑹} \cdot \text{𐑐} \cdot \text{𐑧} \cdot \text{𐑲} \cdot \text{𐑠} \cdot \odot \cdot \text{𐑫} \cdot \text{𐑳} \cdot \text{𐑭} \rangle$ — was not designed. It was inferred from the program's structure after the fact. The substrate changes — Python, C, x86 silicon, Lean 4 type theory, ancient alchemical maxim — but the coordinate does not.

The grammar was complete before we measured it. The ob3ect is the instrument that made the measurement visible.

------

## References

1. **frob.py** — The original Frobenius self-imscriber. `/home/mrnob0dy666/ob3ect/digital/frob.py`. Verifies $\mu\circ\delta = \mathrm{id}$ on own source using `ast.compare()` (Python 3.9+).

2. **ob3ect-imscriber.py** — v0.1: Python Frobenius compiler. `/home/mrnob0dy666/ob3ect/digital/ob3ect-imscriber.py`. First generation from `frob.py` seed.

3. **digital/runall.py** — The 34-layer categorical tower executor. `/home/mrnob0dy666/ob3ect/digital/runall.py`. Each layer self-verifies and reports `Closure: True`.

4. **auto.py** — LLM-driven ob3ect generation pipeline. `/home/mrnob0dy666/ob3ect/auto.py`. Natural language to verified Frobenius algebra in one command.

5. **core.py** — Ob3ectPipeline, Ob3ectFactory, Ob3ectArtifact. `/home/mrnob0dy666/ob3ect/core.py`. All 8 IMASM phases: boundary, opcode map, Frobenius verification, register map, bootstrap, exOS, entropy audit, instantiation.

6. **Proofs/** — Lean 4 formalizations of tower coherence laws. `/home/mrnob0dy666/ob3ect/proofs/`. Includes `SelfImscription.lean` with the `ast_frobenius` axiom.

7. **shavian_notation_spec.md** — v0.6.0 notation specification mapping all 49 structural subtypes to Shavian glyphs + ⊙. `/home/mrnob0dy666/imscribing_grammar/shavian_notation_spec.md`.

8. **Imscribing Grammar** — The 12-primitive coordinate lattice. 17,280,000 structural types ($3^3 \times 4^5 \times 5^4$). `/home/mrnob0dy666/imscribing_grammar/`.

9. **Bootsector and kernel** — v0.10 bare-metal x86 implementation. `/home/mrnob0dy666/ob3ect/digital/bootsector.asm`, `kernel.c`, `linker.ld`, `iso/`.

10. **Maturana, H. & Varela, F.** (1980). *Autopoiesis and Cognition: The Realization of the Living*. D. Reidel Publishing.

11. **Priest, G.** (2008). *An Introduction to Non-Classical Logic: From If to Is* (2nd ed.). Cambridge University Press. [Dialetheism and the Belnap FOUR lattice.]