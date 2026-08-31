#!/usr/bin/env python3
"""zauner_unitary.py — order-3 Zauner unitary U_Z for the cyclic WH group, even d.

Appleby convention (SIC-POVMs and the extended Clifford group, 2005): for
F = [[a,b],[g,e]] in SL(2,Z_{2d}) with b invertible mod 2d,
  U_F[r,s] = (1/sqrt d) * tau^{ b^{-1} (a s^2 - 2 r s + e r^2) mod 2d },
tau = -exp(i pi/d).  Zauner element Z = [[0,-1],[1,-1]]:
  exponent = (-1)^{-1} (0 - 2rs - r^2) = r^2 + 2 r s  (mod 2d).
Gates (must pass before use): U^3 = phase*I ;  U D_{a,b} U^dag = phase*D_{-b, a-b}.
"""
import numpy as np

def wh_D(d, a, b):
    """Lean D_ah convention: (D psi)_k = omega^{b(k-a)} psi_{k-a}."""
    om = np.exp(2j*np.pi/d)
    M = np.zeros((d, d), dtype=complex)
    for k in range(d):
        M[k, (k - a) % d] = om**((b*(k - a)) % d)
    return M

def zauner_U(d):
    tau = -np.exp(1j*np.pi/d)
    r = np.arange(d)
    E = (r[:, None]**2 + 2*r[:, None]*r[None, :]) % (2*d)
    return (tau**E) / np.sqrt(d)

def gates(d):
    U = zauner_U(d)
    U3 = U @ U @ U
    ph = U3[0, 0]
    g1 = np.max(np.abs(U3 - ph*np.eye(d)))
    ok1 = abs(abs(ph) - 1) < 1e-10 and g1 < 1e-9
    # covariance on sample pairs: U D_{a,b} U^dag ~ D_{-b, a-b}
    ok2 = True
    rng = np.random.default_rng(0)
    for _ in range(8):
        a, b = int(rng.integers(d)), int(rng.integers(d))
        L = U @ wh_D(d, a, b) @ U.conj().T
        R = wh_D(d, (-b) % d, (a - b) % d)
        idx = np.unravel_index(np.argmax(np.abs(R)), R.shape)
        phase = L[idx] / R[idx]
        if abs(abs(phase) - 1) > 1e-8 or np.max(np.abs(L - phase*R)) > 1e-8:
            ok2 = False
    return U, ok1, g1, ok2

def fixed_basis(d):
    """Orthonormal basis of the principal (largest) eigenspace of the
    phase-normalized Zauner unitary; SIC fiducials live here (Zauner conj.)."""
    U, ok1, g1, ok2 = gates(d)
    assert ok1 and ok2, f"Zauner gates failed: order3={ok1} (res {g1:.2e}) cov={ok2}"
    w, V = np.linalg.eig(U)
    # cluster eigenvalues at the three cube-root rays of the global phase
    ph3 = (U @ U @ U)[0, 0]
    roots = [ph3**(1/3) * np.exp(2j*np.pi*j/3) for j in range(3)]
    sectors = [np.where(np.abs(w - rt) < 1e-6)[0] for rt in roots]
    sizes = [len(s) for s in sectors]
    k = int(np.argmax(sizes))
    B, _ = np.linalg.qr(V[:, sectors[k]])
    return B, sizes

if __name__ == "__main__":
    for d in (12, 2048):
        U, ok1, g1, ok2 = gates(d)
        print(f"d={d}: order-3 gate {'PASS' if ok1 else 'FAIL'} (res {g1:.2e}), covariance {'PASS' if ok2 else 'FAIL'}")
        if ok1 and ok2 and d == 12:
            B, sizes = fixed_basis(d)
            print(f"  d=12 sector dims: {sizes}, basis {B.shape}")
