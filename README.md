# ob3ect

![language](https://img.shields.io/badge/language-Lean%204-2E7D32?style=for-the-badge) ![closure](https://img.shields.io/badge/closure-self-verifying-00A86B?style=for-the-badge) ![tier](https://img.shields.io/badge/tier-O%E2%88%9E-8A2BE2?style=for-the-badge) ![μ∘δ](https://img.shields.io/badge/%CE%BC%E2%88%98%CE%B4-id-00A86B?style=for-the-badge) ![licence](https://img.shields.io/badge/licence-LUNLICENSE-1A1A1A?style=for-the-badge)

**A self-imscribing compiler and categorical tower.** An ob3ect is a program verifying its own algebraic closure: a special Frobenius algebra (A, μ, δ, η, ε) in **Prog/~** with μ∘δ=id_A. Nothing enters the tower without proving its own closure.

## Use

```bash
python auto.py "<description>"   # natural language → verified ob3ect
python digital/runall.py         # full 28-layer tower
python digital/run_all_imasm.py  # 12 IMASM arrangement classes + chiral pairs
```

## Tower (28 layers + 12 arrangements)

Category → Frobenius → Fixed-Point → Hopf → Monad → Entropy (H=3.6636 b/c) → Topos → CCC → Quantum → Linear Logic → IVM → Traced (yanking) → HoTT (univalence) → Imscription OS (10 procs) → ProofBridge → String Diagrams → IMASM Self-Imscription → Auto-Imscriber → Yoneda → Operad → Sheaf → Dagger Compact → Galois → Stone → Presheaf → Kan → Adjoint → Initial/Terminal - every layer Closure: True. Plus 12 Novel Arrangements (I Dialetheic Bootstrap O₂ … XII Chiral Pairs) on the dialetheic register machine (2-bit VO⌀/T/F/B⬡).

## Key results

**Vessel Principle:** IMASM token algebra resolves finer than the 12-primitive crystal (XII confirms). **ZFC_fe** terminal vessel. **Lean 4 Descent ≡ Zosimos Katabasis.** Descent chain v0.1 (Python) → v0.10 (bare-metal x86 ISO); `frob.py` seed; Lean proofs in `proofs/`. Manual path: boundary → opcode map (all 12) → Frobenius gate → register map → phases 4–7. Editorial/lift ob3ects + IG coordinates + auto API (`auto.py`, sync/async) in full version.

Layout: `auto.py`, `digital/` (tower + `imasm_core.py` + `frob.py`), `proofs/`. Full 1191-line version: `README_backups/ob3ect_README.md`.

μ∘δ = id
