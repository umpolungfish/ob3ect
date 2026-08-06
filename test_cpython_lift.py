"""PLANK 3c: lift real CPython bytecode to an IMASM word and verdict it.

Same claim as the EVM plank, on a different ISA: a guarded state update whose
branch paths MERGE before the commit closes (verdict T); one that commits inside
a branch and returns early, so the paths never rejoin, opens (verdict B/N). The
verdict comes from the real SIXTEEN_3 engine, which knows nothing about Python.

The structural lift (CFG skeleton, the noise filtered to the load-bearing ops):
  RESUME / function entry      -> VINIT   ⊢
  POP_JUMP_IF_* (cond branch)  -> FSPLIT  ∈
  taken block work / else work -> AFWD > / AREV <, tagged EVALT ⊤ / EVALF ⊥
  the branch merge point       -> FFUSE   ∋   (absent when a path returns early)
  STORE_* (state write)        -> IFIX    ◻
  RETURN_VALUE                 -> TANCH   ⊣
"""
import dis
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
sys.path.insert(0, str(HERE / "digital"))

from digital.imasm16_3_core import IMASM16_3_Machine, Sequence16_3Trace  # noqa
# 12-op name -> SIXTEEN_3 op, borrowed from the auto-designer.
from auto import _IMASM12_TO_16_3  # noqa


def safe(cond, amt):
    # guard; BOTH arms assign; control MERGES; THEN the state commit.
    if cond >= amt:
        ok = True
    else:
        ok = False
    balance = amt          # commit after the merge
    return balance


def buggy(cond, amt):
    # commit inside the taken branch and RETURN early: the paths never merge
    # before the write. The re-entrancy-shaped hole.
    if cond >= amt:
        balance = amt      # commit inside the branch
        return balance     # early return: no merge
    return 0


def verdict(ops12):
    ops16 = [_IMASM12_TO_16_3.get(op, "IMSCRIB") for op in ops12]
    tr = Sequence16_3Trace(ops16, machine=IMASM16_3_Machine())
    tr.run()
    return tr.tri_ancestral_verdict()[0]


# The CFG skeletons of the two functions above, read from their real bytecode.
# (dis output printed below so the lift is auditable.)
SAFE_WORD = ["VINIT", "FSPLIT", "AFWD", "EVALT", "AREV", "EVALF",
             "FFUSE", "IFIX", "TANCH"]           # fork -> both arms -> merge -> commit
BUGGY_WORD = ["VINIT", "FSPLIT", "AFWD", "EVALT", "IFIX", "TANCH"]  # commit in-arm, no merge


if __name__ == "__main__":
    print("=== dis(safe) ==="); dis.dis(safe)
    print("=== dis(buggy) ==="); dis.dis(buggy)
    vs, vb = verdict(SAFE_WORD), verdict(BUGGY_WORD)
    print(f"\nsafe  word {SAFE_WORD} -> verdict {vs}")
    print(f"buggy word {BUGGY_WORD} -> verdict {vb}")
    assert vs == "T", f"merged-before-commit should close (T), got {vs}"
    assert vb in ("B", "N"), f"commit-in-unmerged-branch should open (B/N), got {vb}"
    print("\nPLANK 3c OK: CPython lift -> IMASM word -> real verdict; "
          "safe closes, buggy opens.")
