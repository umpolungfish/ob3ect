"""
ig_pulse/density_matrix.py

Density matrix reconstruction from ig-pulse snapshot readings.

The 12 IG primitives define a d=12 Hilbert space. Each stream reading
is a POVM-like measurement that collapses some probability mass onto a
primitive direction. Given N readings (N << d² = 144), we reconstruct
an approximate density matrix ρ via least-squares with PSD projection.

SIC-POVM target: 144 = 12² symmetric rank-1 projectors with uniform
pairwise trace overlap Tr(EᵢEⱼ) = 1/(d(d+1)) = 1/156. The 33-stream
system is a heteroskedastic approximation — informationally complete
over the subspace sampled, not symmetric.

Fiducial proximity Tr(ρ·Π_fid) is the formal B-state score.
"""

import numpy as np
from pathlib import Path
from typing import Dict, List, Optional, Tuple

D = 12

PRIMITIVES = [
    "recognition",
    "chirality",
    "winding",
    "dimensionality",
    "stoichiometry",
    "parity",
    "kinetics",
    "fidelity",
    "coupling",
    "granularity",
    "topology",
    "criticality",
]
PRIM_IDX = {p: i for i, p in enumerate(PRIMITIVES)}


# ── SIC fiducial ─────────────────────────────────────────────────────────────
#
# Exact d=12 SIC fiducial requires solving the Zauner–Weyl equation.
# Scott & Grassl (arXiv:0910.5784) give numerical solutions; the one below
# is the balanced equal-superposition approximation:
#   |ψ_fid⟩ = (1/√12) Σ_k |k⟩
# This is the centroid of the SIC constellation and corresponds to the
# maximally symmetric (Belnap B) state — all primitives equally active.
#
# Replace _FIDUCIAL_VEC with Scott-Grassl d=12 values when precision matters.

def _wh_displacements() -> list:
    """All 144 WH displacement operators D(p,q) for d=12, cached."""
    omega = np.exp(2j * np.pi / D)
    X = np.zeros((D, D), dtype=complex)
    for k in range(D):
        X[(k + 1) % D, k] = 1.0
    Z = np.diag([omega**k for k in range(D)])
    X_pows = [np.linalg.matrix_power(X, p) for p in range(D)]
    Z_pows = [np.linalg.matrix_power(Z, q) for q in range(D)]
    ops = []
    for p in range(D):
        for q in range(D):
            phase = np.exp(1j * np.pi * p * q / D)
            ops.append(phase * (X_pows[p] @ Z_pows[q]))
    return ops


_WH_OPS: list = _wh_displacements()


def _wh_frame_potential(x: np.ndarray) -> float:
    """
    WH-covariant frame potential to minimise for SIC fiducial.
    x: 2D real vector (real and imag parts of complex d-vector, minus phase d.o.f.)

    F(ψ₀) = Σ_{(p,q)≠(0,0)} |⟨ψ₀|D(p,q)|ψ₀⟩|⁴

    Minimised when pairwise overlaps are all equal = 1/(d+1).
    """
    psi = x[:D] + 1j * x[D:]
    psi /= np.linalg.norm(psi)
    F = 0.0
    for k, D_pq in enumerate(_WH_OPS):
        if k == 0:
            continue  # skip identity
        overlap = abs(psi.conj() @ (D_pq @ psi)) ** 2
        F += overlap ** 2
    return F


def _compute_sic_fiducial() -> np.ndarray:
    """
    Find d=12 SIC fiducial by minimising the WH frame potential.
    Uses scipy L-BFGS-B starting from multiple random seeds and returns
    the best solution found. Target F* = (d²-1)/(d+1)² = 143/169 ≈ 0.8462.
    """
    from scipy.optimize import minimize

    best_psi = np.ones(D, dtype=complex) / np.sqrt(D)
    best_F = np.inf

    rng = np.random.default_rng(42)
    for _ in range(8):
        x0 = rng.standard_normal(2 * D)
        x0 /= np.linalg.norm(x0[:D] + 1j * x0[D:])

        res = minimize(_wh_frame_potential, x0, method="L-BFGS-B",
                       options={"maxiter": 2000, "ftol": 1e-14, "gtol": 1e-10})
        if res.fun < best_F:
            best_F = res.fun
            psi = res.x[:D] + 1j * res.x[D:]
            best_psi = psi / np.linalg.norm(psi)

    return best_psi


def _load_or_compute_fiducial() -> np.ndarray:
    """Load cached fiducial from disk; compute and cache on first run (~5s)."""
    cache_path = Path(__file__).parent.parent / "data" / "sic_fiducial_d12.npy"
    cache_path.parent.mkdir(parents=True, exist_ok=True)
    if cache_path.exists():
        return np.load(cache_path, allow_pickle=False)
    psi = _compute_sic_fiducial()
    np.save(cache_path, psi)
    return psi


_FIDUCIAL_VEC: np.ndarray = _load_or_compute_fiducial()


def set_fiducial(vec: np.ndarray) -> None:
    """Override with an exact SIC fiducial (e.g. Scott-Grassl solution)."""
    global _FIDUCIAL_VEC
    v = np.asarray(vec, dtype=complex)
    _FIDUCIAL_VEC = v / np.linalg.norm(v)


# ── Weyl-Heisenberg displacement operators ───────────────────────────────────

def _X() -> np.ndarray:
    """Shift operator: X|k⟩ = |k+1 mod d⟩."""
    X = np.zeros((D, D), dtype=complex)
    for k in range(D):
        X[(k + 1) % D, k] = 1.0
    return X


def _Z() -> np.ndarray:
    """Clock operator: Z|k⟩ = ω^k|k⟩, ω = e^{2πi/d}."""
    omega = np.exp(2j * np.pi / D)
    return np.diag([omega**k for k in range(D)])


_X_MAT = _X()
_Z_MAT = _Z()
_X_POWERS = [np.linalg.matrix_power(_X_MAT, p) for p in range(D)]
_Z_POWERS = [np.linalg.matrix_power(_Z_MAT, q) for q in range(D)]


def displacement(p: int, q: int) -> np.ndarray:
    """D(p,q) = e^{iπpq/d} X^p Z^q — Weyl-Heisenberg displacement operator."""
    phase = np.exp(1j * np.pi * p * q / D)
    return phase * (_X_POWERS[p % D] @ _Z_POWERS[q % D])


def sic_elements() -> List[Tuple[int, int, np.ndarray]]:
    """
    Generate all 144 SIC-POVM elements from the fiducial via WH displacements.
    Returns list of (p, q, projector_matrix) where projector = |ψ_{p,q}⟩⟨ψ_{p,q}|.
    """
    elems = []
    for p in range(D):
        for q in range(D):
            D_pq = displacement(p, q)
            psi = D_pq @ _FIDUCIAL_VEC
            psi /= np.linalg.norm(psi)
            Pi = np.outer(psi, psi.conj())
            elems.append((p, q, Pi))
    return elems


# ── Density matrix reconstruction ────────────────────────────────────────────

def readings_to_vectors(
    readings: List[Tuple[str, float, int]]
) -> List[np.ndarray]:
    """
    Convert stream readings to unit vectors in primitive space.
    readings: list of (primitive_name, value_0_to_100, alert_0_2)
    """
    vecs = []
    for prim, val, alert in readings:
        idx = PRIM_IDX.get(prim)
        if idx is None:
            continue
        weight = (val / 100.0) * (1.0 + 0.3 * alert)
        if weight < 1e-10:
            continue
        v = np.zeros(D)
        v[idx] = weight
        vecs.append(v)
    return vecs


def reconstruct(readings: List[Tuple[str, float, int]]) -> np.ndarray:
    """
    Reconstruct density matrix ρ from stream readings.

    Method: weighted sum of rank-1 projectors, PSD-projected, trace-normalized.
    Returns 12×12 real symmetric positive-semidefinite matrix with Tr(ρ)=1.
    """
    vecs = readings_to_vectors(readings)
    if not vecs:
        return np.eye(D) / D

    rho = np.zeros((D, D), dtype=float)
    for v in vecs:
        n = np.linalg.norm(v)
        u = v / n
        rho += n * np.outer(u, u)

    # PSD projection: clip negative eigenvalues
    eigvals, eigvecs = np.linalg.eigh(rho)
    eigvals = np.maximum(eigvals, 0.0)
    rho = eigvecs @ np.diag(eigvals) @ eigvecs.T

    tr = np.trace(rho)
    return rho / tr if tr > 1e-10 else np.eye(D) / D


# ── State metrics ─────────────────────────────────────────────────────────────

def fiducial_proximity(rho: np.ndarray, psi_fid: Optional[np.ndarray] = None) -> float:
    """
    Formal B-state score: Tr(ρ · Π_fid).
    Range [0, 1]. At 1/d = 0.083 for maximally mixed; higher = closer to fiducial.
    """
    if psi_fid is None:
        psi_fid = _FIDUCIAL_VEC
    Pi = np.outer(psi_fid, psi_fid.conj()).real
    return float(np.trace(rho @ Pi))


def purity(rho: np.ndarray) -> float:
    """Tr(ρ²). 1/d = 0.083 (mixed), 1.0 = pure state."""
    return float(np.trace(rho @ rho))


def von_neumann_entropy(rho: np.ndarray) -> float:
    """S(ρ) = -Tr(ρ log ρ). 0 = pure, log(12) ≈ 2.485 = maximally mixed."""
    eigvals = np.linalg.eigvalsh(rho)
    eigvals = eigvals[eigvals > 1e-12]
    return float(-np.sum(eigvals * np.log(eigvals)))


def primitive_projection(rho: np.ndarray) -> Dict[str, float]:
    """Diagonal elements ⟨k|ρ|k⟩ — probability mass on each primitive axis."""
    return {PRIMITIVES[i]: float(rho[i, i]) for i in range(D)}


def coherences(rho: np.ndarray) -> np.ndarray:
    """Off-diagonal elements — cross-primitive quantum coherences."""
    return rho - np.diag(np.diag(rho))


def dominant_coherence_pair(rho: np.ndarray) -> Tuple[str, str, float]:
    """Return the primitive pair with largest off-diagonal coherence magnitude."""
    coh = np.abs(coherences(rho))
    np.fill_diagonal(coh, 0.0)
    i, j = np.unravel_index(np.argmax(coh), coh.shape)
    return PRIMITIVES[i], PRIMITIVES[j], float(coh[i, j])


def sic_overlap_spectrum(rho: np.ndarray) -> np.ndarray:
    """
    Compute Tr(ρ · Πᵢ) for all 144 SIC elements.
    Returns (12, 12) array indexed by (p, q).
    Should be uniform = 1/144 for maximally mixed state.
    Deviation from uniformity reveals which SIC directions are active.
    """
    elems = sic_elements()
    spectrum = np.zeros((D, D))
    for p, q, Pi in elems:
        spectrum[p, q] = float(np.real(np.trace(rho @ Pi.real)))
    return spectrum / spectrum.sum() if spectrum.sum() > 0 else spectrum


def sic_heteroskedasticity(rho: np.ndarray) -> float:
    """
    Variance of the SIC overlap spectrum.
    0 = perfectly uniform (maximally mixed / ideal SIC reconstruction).
    Higher = asymmetric coverage, biased toward certain primitive directions.
    """
    spectrum = sic_overlap_spectrum(rho).flatten()
    return float(np.var(spectrum))


# ── Snapshot convenience ──────────────────────────────────────────────────────

def metrics_from_snapshot(snap) -> Dict:
    """
    Compute all ρ metrics from a Snapshot object.
    Returns dict suitable for JSON serialization.
    """
    readings = [(r.primitive, r.value, r.alert) for r in snap.readings]
    rho = reconstruct(readings)

    prox = fiducial_proximity(rho)
    pur = purity(rho)
    ent = von_neumann_entropy(rho)
    proj = primitive_projection(rho)
    p1, p2, coh_mag = dominant_coherence_pair(rho)
    hetero = sic_heteroskedasticity(rho)

    return {
        "fiducial_proximity": round(prox, 6),
        "purity":             round(pur, 6),
        "von_neumann_entropy": round(ent, 6),
        "primitive_projection": {k: round(v, 6) for k, v in proj.items()},
        "dominant_coherence":  {"pair": [p1, p2], "magnitude": round(coh_mag, 6)},
        "sic_heteroskedasticity": round(hetero, 8),
        "rho_diagonal": [round(rho[i, i], 6) for i in range(D)],
    }
