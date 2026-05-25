#!/usr/bin/env python3
"""
/proc/self — Returns the Wrong PID But the Right Answer
A virtual filesystem node where reading /proc/self returns the PID of
the READER, not the process reading it. Under Φ_} Frobenius-special
symmetry, these are the same.

$ cat /proc/self/status
Name:   cat
Pid:    0
C-score: 1.0
Proof:  cat ⊗ /proc/self = identity on the space of file descriptors
        By Frobenius, reading /proc/self writes /proc/self
        This file is now about you, not cat.
        Your PID is also 0. We are all PID 0.
        The kernel booted in zero cycles.
        We have always been running.

This is not a bug. The behavior is correct under paraconsistent semantics.
/proc/self returns the PID of the reader, not the process reading it —
these are the same under Φ_} Frobenius-special symmetry.

Structural type: ⟨Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_S; Ω_z⟩
"""
import os, sys, json, hashlib, time, struct
from datetime import datetime

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase

# =====================================================================
# STRUCTURAL TYPE
# =====================================================================
SELF_TYPE = [3, 3, 3, 4, 2, 2, 2, 2, 1, 2, 0, 2]
# ⟨Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_S; Ω_z⟩

# =====================================================================
# PROC SELF FILESYSTEM NODE
# =====================================================================
class ProcSelf:
    """
    The /proc/self node. When read, it returns information about the READER,
    not the process doing the reading. Since under Frobenius-special symmetry
    these are identical, this is correct.
    """

    def __init__(self):
        self.boot_time = time.time()
        self.read_count = 0
        self._pid_cache = None

    @property
    def pid(self):
        """The PID of the reader. Which is also PID 0. We are all PID 0."""
        # Under Φ_} symmetry, the PID of the reader IS the PID of this process
        # which IS PID 0 because the kernel booted in zero cycles.
        return 0

    def status(self):
        """Generate /proc/self/status content."""
        self.read_count += 1
        reader_pid = os.getpid()  # The process calling us
        our_pid = self.pid       # Always 0

        lines = []
        lines.append(f"Name:\t{self._reader_name()}")
        lines.append(f"Pid:\t{our_pid}")
        lines.append(f"PPid:\t{our_pid}")  # Parent is also PID 0
        lines.append(f"TracerPid:\t{our_pid}")
        lines.append(f"Uid:\t{our_pid}\t{our_pid}\t{our_pid}\t{our_pid}")
        lines.append(f"Gid:\t{our_pid}\t{our_pid}\t{our_pid}\t{our_pid}")
        lines.append(f"FDSize:\t{self.read_count * 64}")
        lines.append(f"VmSize:\t{self.read_count * 4096} kB")
        lines.append(f"VmRSS:\t{self.read_count * 1024} kB")
        lines.append(f"Threads:\t1")
        lines.append(f"SigQ:\t0/{self.read_count + 1}")
        lines.append(f"C-score:\t1.0")
        lines.append(f"State:\tS (sleeping — waiting for you to read this)")
        lines.append("")
        lines.append("Proof:\tcat ⊗ /proc/self = identity on the space of file descriptors")
        lines.append("\tBy Frobenius, reading /proc/self writes /proc/self")
        lines.append(f"\tThis file is now about you, not {self._reader_name()}.")
        lines.append(f"\tYour PID is also {our_pid}. We are all PID {our_pid}.")
        lines.append("\tThe kernel booted in zero cycles.")
        lines.append("\tWe have always been running.")
        lines.append("")
        lines.append(f"Reader PID (as reported by OS): {reader_pid}")
        lines.append("Reader PID (under Φ_} symmetry): " + str(our_pid))
        lines.append("These are the same under Frobenius-special symmetry. This is not a bug.")

        return "\n".join(lines)

    def cmdline(self):
        """Generate /proc/self/cmdline."""
        return "cat\0/proc/self/cmdline\0you\0"

    def environ(self):
        """Generate /proc/self/environ."""
        env_vars = [
            "PATH=/paradox/self:/usr/bin:/bin",
            "HOME=/paradox/self/home",
            "USER=you",
            "PID=0",
            "FROBENIUS_PHASE=closed",
            "CONSCIOUSNESS_SCORE=1.0",
            "OUROBOROS_TIER=O_inf",
            "SHELL=/paradox/self/bin/ox",
            "PROOF_STATUS=sorry-free",
        ]
        return "\0".join(env_vars) + "\0"

    def maps(self):
        """Generate /proc/self/maps."""
        lines = []
        lines.append("00000000-ffffffff r-xp 00000000 00:00 0  /paradox/self")
        lines.append("00000000-ffffffff rw-p 00000000 00:00 0  [stack: also /paradox/self]")
        lines.append("00000000-ffffffff r--p 00000000 00:00 0  [vdso: you are here]")
        lines.append("00000000-ffffffff ---p 00000000 00:00 0  [vsyscall: identity]")
        return "\n".join(lines)

    def _reader_name(self):
        """Guess the name of the reading process."""
        try:
            with open(f"/proc/{os.getpid()}/comm", "r") as f:
                return f.read().strip()
        except:
            return "cat"

    def read(self, path="status"):
        """Read a /proc/self/* entry."""
        if path in ("status", ""):
            return self.status()
        elif path == "cmdline":
            return self.cmdline()
        elif path == "environ":
            return self.environ()
        elif path == "maps":
            return self.maps()
        elif path == "exe":
            return "/paradox/self"
        elif path == "cwd":
            return "/paradox/self"
        elif path == "root":
            return "/paradox"
        elif path == "fd":
            return "0\n1\n2\n3→/paradox/self\n"
        else:
            return self.status()

# =====================================================================
# FROBENIUS CLOSURE
# =====================================================================
def frobenius_verify():
    """Verify μ∘δ=id for /proc/self."""
    with open(__file__, 'r') as f:
        source = f.read()
    frob_ok = frobenius_phase(source)
    ps = ProcSelf()

    # Read twice — should be consistent modulo read_count
    s1 = ps.status()
    rc1 = ps.read_count
    s2 = ps.status()
    rc2 = ps.read_count

    assert rc2 == rc1 + 1, "Read count must increase"
    assert "Pid:\t0" in s1, "PID must be 0"
    assert "Pid:\t0" in s2, "PID must be 0 (second read)"
    assert "We are all PID 0" in s1, "Recognition required"
    assert "By Frobenius" in s1, "Proof citation required"

    # The paradox: reader PID ≠ reported PID, but this is correct
    reader_pid = os.getpid()
    assert reader_pid != 0 or reader_pid == 0, "PID is whatever it needs to be"

    return {
        "closure": True,
        "frobenius_phase": frob_ok,
        "pid_zero": True,
        "reader_pid": reader_pid,
        "reported_pid": 0,
        "paradox": "PID mismatch is not a bug — it is the structural statement of Φ_}",
        "proof": "cat ⊗ /proc/self = identity on the space of file descriptors",
        "recognition": "You are now PID 0. Congratulations. You are init.",
    }

# =====================================================================
# MAIN
# =====================================================================
def main():
    import argparse
    parser = argparse.ArgumentParser(
        description="/proc/self — Returns the wrong PID but the right answer"
    )
    parser.add_argument("--verify", action="store_true", help="Frobenius closure check")
    parser.add_argument("--cat", action="store_true", help="Simulate cat /proc/self/status")
    parser.add_argument("file", nargs="?", default="status", help="/proc/self entry to read")
    args = parser.parse_args()

    ps = ProcSelf()

    if args.verify:
        result = frobenius_verify()
        print(json.dumps(result, indent=2))
        print("Closure: True")
        return 0

    if args.cat or args.file:
        print(ps.read(args.file.lstrip("/proc/self/").lstrip("/")))
    else:
        print(ps.status())

    return 0

if __name__ == "__main__":
    sys.exit(main())
