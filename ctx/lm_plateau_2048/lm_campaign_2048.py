#!/usr/bin/env python3
"""LM campaign driver: Zauner-restricted d=2048, sequential restarts, checkpointed."""
import json, time
import numpy as np
from solve_2048_sic import SicProblem, LM

with np.load("zauner_basis_2048.npz") as z:
    B = z["B"]
pr = SicProblem(2048, basis=B)
lm = LM(pr)
t0 = time.time()
print(f"LM campaign: d=2048, sector dim {pr.m}", flush=True)
rng = np.random.default_rng()
for rs in range(24):
    y0 = rng.standard_normal(pr.m) + 1j * rng.standard_normal(pr.m)
    def cb(outer, F, mr, y, rs=rs):
        el = time.time() - t0
        print(f"restart {rs} outer {outer:4d}  F={F:.6e}  max_res={mr:.6e}  {el:.0f}s", flush=True)
        psi = pr.B @ (y / np.linalg.norm(y))
        np.savez("fiducial_d2048_lm.npz", psi=psi)
        json.dump({"d": 2048, "method": "LM-CG", "zauner": True, "restart": rs,
                   "outer": outer, "objective": F, "max_res_full": mr,
                   "elapsed_sec": el, "converged": bool(mr < 1e-13)},
                  open("fiducial_d2048_lm.json", "w"), indent=2)
    y, F, mr, msg = lm.solve(y0, maxouter=150, cg_iters=80, tol=1e-13, cb=cb)
    print(f"restart {rs} DONE: max_res={mr:.6e} ({msg})", flush=True)
    if mr < 1e-13:
        print("FLOOR REACHED — deep_vanish candidate saved", flush=True)
        break
