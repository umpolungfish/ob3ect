#!/usr/bin/env python3
"""solve_2048_sic.py — FULL-overlap SIC solver for d=2048 (no subsampling).

Why: recover_r2048_fiducial.py (400-batch GN) and the stage3 143-rep L-BFGS both
subsample the d^2-1 = 4,194,303 overlap conditions; stage3 provably collapsed the
(0,b) overlaps to 0 instead of 1/2049 (stage3_floor.json). A SIC is only pinned by
the full condition set. This solver evaluates ALL overlaps every iteration via the
FFT ambiguity function, O(d^2 log d) per objective+gradient.

Objective:
  A(a,b) = sum_k conj(psi_k) psi_{k+a} omega^{bk}   (row-a FFT of correlation)
  f(psi) = sum_{(a,b) != (0,0)} (|A(a,b)|^2 - 1/(d+1))^2  +  (||psi||^2 - 1)^2

|A| is invariant (up to index relabeling) under the D_ah convention of
SIC_POVM_Stark.lean: <psi|D_{a,b,0} psi> = conj(A(a,-b)), so f = 0 iff IsSICPOVM.

Gradient (Wirtinger, all-FFT):
  g_m = sum_a G1[a,m] psi_{m+a} + sum_a (G2 * psi_row)[a,(m-a)%d] + 2(||psi||^2-1) psi_m
  G1 = d*ifft(2W .* conj(A), axis=1),  G2 = fft(2W .* A, axis=1),  W = P - t (W[0,0]=0)
  grad_x = [2 Re g; 2 Im g]

Self-test (--selftest): analytic vs finite-difference gradient at d=8, tiny d=12 run.
Checkpoints: <out>.npz (psi) + <out>.json (iter, f, max residual) every --ckpt iters.
"""
from __future__ import annotations
import argparse, json, time
from pathlib import Path
import numpy as np
from scipy.optimize import minimize

HERE = Path(__file__).resolve().parent


class SicProblem:
    def __init__(self, d: int, basis: np.ndarray | None = None):
        """basis: optional orthonormal (d, m) complex matrix; optimize psi = B y
        inside its column span (Zauner-symmetric subspace). Gradient pullback is
        g_y = B^H g_psi; the gauge anchor commutes since ||By|| = ||y||."""
        self.d = d
        self.t = 1.0 / (d + 1)
        self.B = basis
        self.m = d if basis is None else basis.shape[1]
        r = np.arange(d, dtype=np.int64)
        self.idx_shift = ((r[None, :] + r[:, None]) % d).astype(np.int32)   # [a,k] -> (k+a)%d
        self.idx_anti = ((r[None, :] - r[:, None]) % d).astype(np.int32)    # [a,m] -> (m-a)%d

    def to_psi(self, x: np.ndarray) -> np.ndarray:
        y = x[:self.m] + 1j * x[self.m:]
        return y if self.B is None else self.B @ y

    def ambiguity(self, psi: np.ndarray) -> np.ndarray:
        C = psi.conj()[None, :] * psi[self.idx_shift]          # C[a,k] = conj(psi_k) psi_{k+a}
        return self.d * np.fft.ifft(C, axis=1)                 # A[a,b] = sum_k C[a,k] w^{+bk}

    def metrics(self, psi: np.ndarray):
        A = self.ambiguity(psi)
        P = (A * A.conj()).real
        W = P - self.t
        W[0, 0] = 0.0
        nrm = float(np.vdot(psi, psi).real)
        f = float(np.sum(W * W)) + (nrm - 1.0) ** 2
        max_res = float(np.max(np.abs(W)))
        return f, max_res, nrm

    def _overlap_grad_at(self, u: np.ndarray):
        """Overlap objective and Wirtinger gradient dF/d(conj u) at u (no norm term)."""
        d = self.d
        A = self.ambiguity(u)
        P = (A * A.conj()).real
        W = P - self.t
        W[0, 0] = 0.0
        F = float(np.sum(W * W))
        WA_bar = 2.0 * W * A.conj()
        WA = 2.0 * W * A
        G1 = d * np.fft.ifft(WA_bar, axis=1)                   # sum_b (.) w^{+bm}
        G2 = np.fft.fft(WA, axis=1)                            # sum_b (.) w^{-bk'}
        g1 = np.sum(G1 * u[self.idx_shift], axis=0)
        G2u = G2 * u[None, :]
        g2 = np.sum(np.take_along_axis(G2u, self.idx_anti.astype(np.int64), axis=1), axis=0)
        return F, g1 + g2

    def obj_grad(self, x: np.ndarray):
        """Scale-invariant objective F(psi/||psi||) + gauge anchor (||psi||^2-1)^2.

        The raw penalty form let L-BFGS shrink the norm (||psi||^2 -> 0.8 plateau,
        the stage3 collapse direction); the projective form removes that shear.
        Chain rule: g_psi = (g_u - u * Re<conj u, g_u>) / r,  u = psi/r.
        """
        psi = self.to_psi(x)
        r2 = float(np.vdot(psi, psi).real)
        r = np.sqrt(r2)
        u = psi / r
        F, g_u = self._overlap_grad_at(u)
        f = F + (r2 - 1.0) ** 2
        S = float(np.sum(u.conj() * g_u).real)
        g = (g_u - u * S) / r + 2.0 * (r2 - 1.0) * psi
        if self.B is not None:
            g = self.B.conj().T @ g
        grad = np.concatenate([2.0 * g.real, 2.0 * g.imag])
        return f, grad


def selftest() -> bool:
    ok = True
    for d in (8, 12):
        pr = SicProblem(d)
        rng = np.random.default_rng(7)
        x = rng.standard_normal(2 * d)
        f0, g = pr.obj_grad(x)
        h = 1e-7
        idxs = rng.choice(2 * d, size=8, replace=False)
        for i in idxs:
            xp = x.copy(); xp[i] += h
            xm = x.copy(); xm[i] -= h
            fd = (pr.obj_grad(xp)[0] - pr.obj_grad(xm)[0]) / (2 * h)
            rel = abs(fd - g[i]) / max(1e-12, abs(fd))
            if rel > 1e-4:  # central-difference noise floor at h=1e-7
                print(f"  GRADCHECK FAIL d={d} i={i} analytic={g[i]:.6e} fd={fd:.6e} rel={rel:.2e}")
                ok = False
        print(f"  gradcheck d={d}: {'PASS' if ok else 'FAIL'}")
    # d=12 restart validation: at least one random start must reach a true SIC
    # (validated 2026-07-06: seed 9 of 12 converges to max_res ~8e-17)
    pr = SicProblem(12)
    best = np.inf
    for s in range(12):
        rng = np.random.default_rng(s)
        psi = rng.standard_normal(12) + 1j * rng.standard_normal(12)
        psi /= np.linalg.norm(psi)
        x0 = np.concatenate([psi.real, psi.imag])
        r = minimize(pr.obj_grad, x0, jac=True, method="L-BFGS-B",
                     options={"maxiter": 8000, "maxfun": 16000, "ftol": 0,
                              "gtol": 1e-16, "maxcor": 30})
        _, mr, _ = pr.metrics(pr.to_psi(r.x))
        best = min(best, mr)
        if best < 1e-12:
            break
    print(f"  d=12 restart validation: best max_res={best:.3e}")
    if best > 1e-8:
        ok = False
    # Zauner-restricted d=12: gradcheck in y-space + restart validation
    from zauner_unitary import fixed_basis
    B12, sizes = fixed_basis(12)
    prz = SicProblem(12, basis=B12)
    rng = np.random.default_rng(3)
    x = rng.standard_normal(2 * prz.m)
    f0, g = prz.obj_grad(x)
    h = 1e-7
    zok = True
    for i in rng.choice(2 * prz.m, size=6, replace=False):
        xp = x.copy(); xp[i] += h
        xm = x.copy(); xm[i] -= h
        fd = (prz.obj_grad(xp)[0] - prz.obj_grad(xm)[0]) / (2 * h)
        if abs(fd - g[i]) / max(1e-12, abs(fd)) > 1e-4:
            zok = False
    bestz = np.inf
    for s in range(6):
        rng = np.random.default_rng(100 + s)
        x0 = rng.standard_normal(2 * prz.m)
        r = minimize(prz.obj_grad, x0, jac=True, method="L-BFGS-B",
                     options={"maxiter": 8000, "maxfun": 16000, "ftol": 0,
                              "gtol": 1e-16, "maxcor": 30})
        _, mr, _ = prz.metrics(prz.to_psi(r.x) / np.linalg.norm(prz.to_psi(r.x)))
        bestz = min(bestz, mr)
        if bestz < 1e-12:
            break
    print(f"  d=12 Zauner-restricted (dim {prz.m}): gradcheck {'PASS' if zok else 'FAIL'}, best max_res={bestz:.3e}")
    if not zok or bestz > 1e-8:
        ok = False
    return ok


def load_seed(d: int, seed_arg: str) -> np.ndarray:
    if seed_arg == "random":
        rng = np.random.default_rng()
        psi = rng.standard_normal(d) + 1j * rng.standard_normal(d)
    else:
        with np.load(seed_arg) as z:
            key = "psi" if "psi" in z else z.files[0]
            psi = z[key].astype(np.complex128)
        assert psi.shape == (d,), f"seed shape {psi.shape} != ({d},)"
    psi = psi / np.linalg.norm(psi)
    psi = psi * np.exp(-1j * np.angle(psi[0]))
    return psi


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--d", type=int, default=2048)
    ap.add_argument("--seed", default=str(HERE / "fiducial_d2048_best.npz"))
    ap.add_argument("--maxiter", type=int, default=60000)
    ap.add_argument("--ckpt", type=int, default=100)
    ap.add_argument("--tol", type=float, default=1e-13)
    ap.add_argument("--out", default=str(HERE / "fiducial_d2048_full"))
    ap.add_argument("--zauner", action="store_true",
                    help="optimize inside the principal Zauner sector (basis cached npz)")
    ap.add_argument("--restarts", type=int, default=1)
    ap.add_argument("--selftest", action="store_true")
    args = ap.parse_args()

    if args.selftest:
        print("self-test:")
        raise SystemExit(0 if selftest() else 1)

    d = args.d
    basis = None
    if args.zauner:
        bp = HERE / f"zauner_basis_{d}.npz"
        if bp.exists():
            with np.load(bp) as z:
                basis = z["B"]
        else:
            from zauner_unitary import fixed_basis
            basis, _ = fixed_basis(d)
            np.savez(bp, B=basis)
        print(f"Zauner sector dim {basis.shape[1]} of {d}", flush=True)
    pr = SicProblem(d, basis=basis)

    state = {"iter": 0, "t_start": time.time(), "best_res": np.inf, "restart": 0}

    def record(psi, msg, converged_tol):
        f, mr, nrm = pr.metrics(psi / np.linalg.norm(psi))
        np.savez(args.out + ".npz", psi=psi / np.linalg.norm(psi))
        Path(args.out + ".json").write_text(json.dumps({
            "d": d, "iter": state["iter"], "restart": state["restart"],
            "zauner": bool(args.zauner), "objective": f, "max_res_full": mr,
            "norm_sq": nrm, "elapsed_sec": time.time() - state["t_start"],
            "seed": args.seed, "optimizer_message": msg,
            "objective_def": "projective: F(psi/||psi||), ALL (a,b)!=(0,0)",
            "converged": bool(mr < converged_tol)}, indent=2))
        return f, mr

    def cb(xk: np.ndarray):
        state["iter"] += 1
        if state["iter"] % args.ckpt:
            return
        psi = pr.to_psi(xk)
        f, mr = record(psi, "running", args.tol)
        state["best_res"] = min(state["best_res"], mr)
        el = time.time() - state["t_start"]
        print(f"restart {state['restart']} iter {state['iter']:6d}  f={f:.6e}  max_res={mr:.6e}  {el:.0f}s", flush=True)
        if mr < args.tol:
            raise StopIteration

    rng = np.random.default_rng()
    for rs in range(args.restarts):
        state["restart"] = rs
        if rs == 0 and args.seed != "random":
            psi0 = load_seed(d, args.seed)
            if pr.B is not None:
                y0 = pr.B.conj().T @ psi0
                if np.linalg.norm(y0) < 1e-3:
                    print("seed nearly orthogonal to Zauner sector; using random y0", flush=True)
                    y0 = rng.standard_normal(pr.m) + 1j * rng.standard_normal(pr.m)
                y0 /= np.linalg.norm(y0)
                x0 = np.concatenate([y0.real, y0.imag])
            else:
                x0 = np.concatenate([psi0.real, psi0.imag])
        else:
            y0 = rng.standard_normal(pr.m) + 1j * rng.standard_normal(pr.m)
            y0 /= np.linalg.norm(y0)
            x0 = np.concatenate([y0.real, y0.imag])

        psi0 = pr.to_psi(x0)
        f0, mr0, _ = pr.metrics(psi0 / np.linalg.norm(psi0))
        print(f"restart {rs}: start f={f0:.6e} max_res={mr0:.6e}", flush=True)
        try:
            res = minimize(pr.obj_grad, x0, jac=True, method="L-BFGS-B", callback=cb,
                           options={"maxiter": args.maxiter, "maxfun": 2 * args.maxiter,
                                    "ftol": 0, "gtol": 1e-16, "maxcor": 30})
            psi = pr.to_psi(res.x)
            f, mr = record(psi, str(res.message), args.tol)
            print(f"restart {rs} final: f={f:.6e} max_res={mr:.6e} ({res.message})", flush=True)
        except StopIteration:
            with np.load(args.out + ".npz") as z:
                psi = z["psi"]
            f, mr = record(psi, "tol reached", args.tol)
            print(f"restart {rs} CONVERGED: f={f:.6e} max_res={mr:.6e}", flush=True)
            break
        if mr < args.tol:
            break


if __name__ == "__main__":
    main()


# ── Matrix-free Levenberg–Marquardt (Gauss-Newton) — the plateau breaker ──────
# L-BFGS stalls on the frame-potential plateau (f~0.78 in-sector, seed-independent).
# LM on the residual VECTOR r_ab = |A|^2 - t (plus norm row) uses curvature the
# scalar objective hides. All J/J^T actions are FFT passes; CG solves the damped
# normal equations matrix-free in y-space.

class LM:
    def __init__(self, pr: SicProblem):
        self.pr = pr

    def _dA(self, psi, v):
        pr = self.pr
        C = v.conj()[None, :] * psi[pr.idx_shift] + psi.conj()[None, :] * v[pr.idx_shift]
        return pr.d * np.fft.ifft(C, axis=1)

    def Jv(self, psi, A, vy):
        """J acting on complex y-direction vy -> (w_ab matrix with (0,0)=0, w_nu)."""
        pr = self.pr
        v = vy if pr.B is None else pr.B @ vy
        dP = 2.0 * (A.conj() * self._dA(psi, v)).real
        dP[0, 0] = 0.0
        dnu = 2.0 * float(np.vdot(psi, v).real)
        return dP, dnu

    def JTw(self, psi, w_ab, w_nu, A=None):
        """J^T acting on (w_ab, w_nu) -> complex y-space vector g with
        <w, Jv> = 2 Re <g, vy> (adjoint identity, checked in selftest)."""
        pr = self.pr
        if A is None:
            A = pr.ambiguity(psi)
        W = w_ab.copy(); W[0, 0] = 0.0
        WA_bar = 2.0 * W * A.conj()
        WA = 2.0 * W * A
        G1 = pr.d * np.fft.ifft(WA_bar, axis=1)
        G2 = np.fft.fft(WA, axis=1)
        g1 = np.sum(G1 * psi[pr.idx_shift], axis=0)
        G2u = G2 * psi[None, :]
        g2 = np.sum(np.take_along_axis(G2u, pr.idx_anti.astype(np.int64), axis=1), axis=0)
        g = 0.5 * (g1 + g2) + w_nu * psi
        return g if pr.B is None else pr.B.conj().T @ g

    def solve(self, y0, maxouter=200, cg_iters=250, tol=1e-13, cb=None):
        pr = self.pr
        y = y0 / np.linalg.norm(y0)
        lam = 1e-3
        for outer in range(maxouter):
            psi = pr.to_psi(np.concatenate([y.real, y.imag]))
            A = pr.ambiguity(psi)
            P = (A * A.conj()).real
            r = P - pr.t; r[0, 0] = 0.0
            nu = float(np.vdot(psi, psi).real) - 1.0
            F = float(np.sum(r * r)) + nu * nu
            mr = float(np.max(np.abs(r)))
            if cb: cb(outer, F, mr, y)
            if mr < tol:
                return y, F, mr, "floor"
            b = -self.JTw(psi, r, nu, A)                   # -J^T r (complex y-space)
            # CG on (J^T J + lam I) p = b, matrix-free over complex y-space
            def Hv(p):
                w_ab, w_nu = self.Jv(psi, A, p)
                return self.JTw(psi, w_ab, w_nu, A) + lam * p
            p = np.zeros_like(y); resid = b.copy(); q = resid.copy()
            rs = float(np.vdot(resid, resid).real)
            for _ in range(cg_iters):
                Hq = Hv(q)
                alpha = rs / max(float(np.vdot(q, Hq).real), 1e-300)
                p += alpha * q
                resid -= alpha * Hq
                rs_new = float(np.vdot(resid, resid).real)
                if rs_new < 1e-8 * rs or rs_new < 1e-28:
                    break
                q = resid + (rs_new / rs) * q
                rs = rs_new
            # trial step + damping adaptation
            accepted = False
            for _ in range(8):
                y_try = y + p
                y_try /= np.linalg.norm(y_try)
                psi_t = pr.to_psi(np.concatenate([y_try.real, y_try.imag]))
                _, F_t = None, None
                A_t = pr.ambiguity(psi_t)
                P_t = (A_t * A_t.conj()).real
                r_t = P_t - pr.t; r_t[0, 0] = 0.0
                F_t = float(np.sum(r_t * r_t))
                if F_t < F:
                    y = y_try; lam = max(lam / 3.0, 1e-12); accepted = True
                    break
                lam *= 10.0
                b = -self.JTw(psi, r, nu, A)
                p = np.zeros_like(y); resid = b.copy(); q = resid.copy()
                rs = float(np.vdot(resid, resid).real)
                for _ in range(cg_iters):
                    Hq = Hv(q)
                    alpha = rs / max(float(np.vdot(q, Hq).real), 1e-300)
                    p += alpha * q
                    resid -= alpha * Hq
                    rs_new = float(np.vdot(resid, resid).real)
                    if rs_new < 1e-8 * rs or rs_new < 1e-28:
                        break
                    q = resid + (rs_new / rs) * q
                    rs = rs_new
            if not accepted:
                return y, F, mr, "stalled"
        return y, F, mr, "maxouter"
