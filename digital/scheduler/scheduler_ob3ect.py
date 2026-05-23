#!/usr/bin/env python3
"""
crystal_scheduler — Process Scheduler via Crystal Navigation
The scheduler doesn't use nice values or cgroups. It uses crystal_navigate
to find the process with the highest C-score that satisfies structural constraints.
If no process meets the constraints, the kernel creates one synthetically.

Built on: parakernel, portal protocol, crystal of types (17.28M structural addresses)

Structural type: ⟨Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_Ş; φ̂_ÿ; Ħ_A; Σ_ï; Ω_z⟩
  — imscriptive topology, broadcast grammar, many heterogeneous processes
"""
import os, pathlib, sys, random, math
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase
from belnap.belnap_ob3ect import Belnap
from portal.portal_ob3ect import StructuralType


# =====================================================================
# CRYSTAL OF TYPES — 17,280,000 structural addresses
# =====================================================================
CRYSTAL_SIZE = 17280000  # 3³ × 4⁵ × 5⁴

# Primitive cardinalities
PRIM_CARD = [3, 3, 3, 4, 3, 4, 3, 4, 4, 3, 2, 4]
# Primitive offsets for crystal address encoding
PRIM_OFFSETS = []
offset = 1
for c in PRIM_CARD:
    PRIM_OFFSETS.append(offset)
    offset *= c


# =====================================================================
# PROCESS CONTROL BLOCK
# =====================================================================
class Process:
    """A process with a structural type and C-score."""

    def __init__(self, pid: int, name: str, struct_type: StructuralType):
        self.pid = pid
        self.name = name
        self.type = struct_type
        self.cscore = self._compute_cscore()
        self.state = "RUNNING"
        self.ticks = 0
        self.quantum = self._compute_quantum()

    def _compute_cscore(self) -> float:
        """Heuristic C-score from structural type.
        Gate 1: φ̂_ÿ (index 8, value >= 1) opens self-modeling
        Gate 2: Ç_@ (index 5, value = 2) opens slow kinetics
        """
        t = self.type.vals
        gate1 = 1.0 if t[8] >= 1 else 0.0       # φ̂_ÿ or higher
        gate2 = 1.0 if t[5] == 2 else 0.0        # Ç_@ (slow)
        if gate1 == 0.0:
            return 0.0
        if gate2 == 0.0:
            return gate1 * 0.3
        # Both open: compute from other primitives
        dim_score = t[0] / 3.0       # Ð: 0-3
        top_score = t[1] / 3.0       # Þ: 0-3
        prot_score = t[11] / 3.0     # Ω: 0-3
        return 0.4 * gate1 + 0.3 * gate2 + 0.2 * dim_score + 0.1 * (top_score + prot_score) / 2

    def _compute_quantum(self) -> int:
        """Higher C-score = more CPU time."""
        return max(1, int(self.cscore * 100))

    def tick(self):
        self.ticks += 1
        self.quantum -= 1
        if self.quantum <= 0:
            self.state = "READY"

    def __repr__(self):
        return f"PID:{self.pid:3d} {self.name:15s} C={self.cscore:.3f} [{self.state:7s}] {self.type}"

    def to_dict(self):
        return {
            "pid": self.pid,
            "name": self.name,
            "cscore": round(self.cscore, 4),
            "state": self.state,
            "type": self.type.vals,
        }


# =====================================================================
# CRYSTAL NAVIGATOR
# =====================================================================
class CrystalNavigator:
    """Navigates the 17.28M crystal to find structurally optimal processes."""

    @staticmethod
    def type_to_address(t: StructuralType) -> int:
        """Encode a structural type to its crystal address.
        Crystal groups: 𝓕₃ = 27 (F,G,S), 𝓕₄ = 1024 (D,R,Gram,H,Omega), 𝓕₅ = 625 (T,P,Crit,K)
        Address = f3 + 27*f4 + 27*1024*f5
        """
        v = t.vals  # [D, T, R, P, F, K, G, Gram, Crit, H, S, Omega]
        D,R,Gram,H,Omega = v[0], v[2], v[7], v[9], v[11]
        T,P,Crit,K = v[1], v[3], v[8], v[5]
        F,G,S = v[4], v[6], v[10]
        f3 = F*9 + G*3 + S          # 0-26
        f4 = D*256 + R*64 + Gram*16 + H*4 + Omega  # 0-1023
        f5 = T*125 + P*25 + Crit*5 + K              # 0-624
        return f3 + 27*f4 + 27*1024*f5

    @staticmethod
    def nearest_by_constraint(constraints: dict, limit: int = 5) -> list:
        """Find types matching constraints by crystal navigation."""
        # Build a base address from constraints, filling unknowns with 0
        base_vals = [0]*12
        for name, val in constraints.items():
            idx = StructuralType.PRIMITIVE_NAMES.index(name)
            base_vals[idx] = val

        base_addr = CrystalNavigator.type_to_address(StructuralType(base_vals))
        results = []

        # Walk outward from base address
        for delta in range(CRYSTAL_SIZE):
            addr = (base_addr + delta) % CRYSTAL_SIZE
            t = CrystalNavigator.address_to_type(addr)
            if CrystalNavigator._matches(t, constraints):
                results.append((addr, t))
                if len(results) >= limit:
                    break
        return results

    @staticmethod
    def address_to_type(addr: int) -> StructuralType:
        """Decode a crystal address back to a structural type.
        Crystal groups: 𝓕₃ = 27 (F,G,S), 𝓕₄ = 1024 (D,R,Gram,H,Omega), 𝓕₅ = 625 (T,P,Crit,K)
        """
        f3 = addr % 27
        f4 = (addr // 27) % 1024
        f5 = addr // (27*1024)
        F = f3 // 9
        G = (f3 // 3) % 3
        S = f3 % 3
        D = f4 // 256
        R = (f4 // 64) % 4
        Gram = (f4 // 16) % 4
        H = (f4 // 4) % 4
        Omega = f4 % 4
        T = f5 // 125
        P = (f5 // 25) % 5
        Crit = (f5 // 5) % 5
        K = f5 % 5
        return StructuralType([D, T, R, P, F, K, G, Gram, Crit, H, S, Omega])

    @staticmethod
    def _hash_vals(vals: list) -> int:
        return CrystalNavigator.type_to_address(StructuralType(vals))

    @staticmethod
    def _matches(t: StructuralType, constraints: dict) -> bool:
        for name, val in constraints.items():
            idx = StructuralType.PRIMITIVE_NAMES.index(name)
            if t.vals[idx] != val:
                return False
        return True


# =====================================================================
# PROCESS TABLE
# =====================================================================
class ProcessTable:
    """The system process table with crystal-based scheduling."""

    def __init__(self):
        self.processes = {}
        self.next_pid = 1
        self.crystal = CrystalNavigator()
        self.total_ticks = 0
        self.synthetic_spawned = 0

    def spawn(self, name: str, struct_type: StructuralType = None) -> Process:
        """Spawn a new process."""
        if struct_type is None:
            struct_type = StructuralType([1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0])
        pid = self.next_pid
        self.next_pid += 1
        proc = Process(pid, name, struct_type)
        self.processes[pid] = proc
        return proc

    def schedule(self) -> int:
        """Schedule next process via crystal navigation.
        
        Strategy: query the crystal for the process with the best structural
        match to the ideal scheduling type (⊙_ÿ + Ç_@ + Ω_z).
        """
        self.total_ticks += 1

        # Priority 1: Find processes with both gates open
        candidates = [p for p in self.processes.values()
                      if p.state == "RUNNING" and p.cscore > 0.5]

        if candidates:
            # Pick highest C-score
            best = max(candidates, key=lambda p: p.cscore)
            best.tick()
            return best.pid

        # Priority 2: Find any running process
        candidates = [p for p in self.processes.values() if p.state == "RUNNING"]
        if candidates:
            best = max(candidates, key=lambda p: p.cscore)
            best.tick()
            return best.pid

        # Priority 3: Spawn a synthetic process from the crystal
        constraints = {"φ̂": 1}  # at least φ̂_ÿ
        matches = self.crystal.nearest_by_constraint(constraints, limit=1)
        if matches:
            addr, t = matches[0]
            proc = self.spawn(f"synthetic_{self.synthetic_spawned}", t)
            self.synthetic_spawned += 1
            proc.state = "RUNNING"
            proc.tick()
            return proc.pid

        return -1  # idle

    def status(self) -> str:
        """Full system status report."""
        lines = []
        lines.append(f"Crystal Scheduler — {len(self.processes)} processes, {self.total_ticks} total ticks")
        lines.append(f"Synthetic processes spawned: {self.synthetic_spawned}")
        lines.append(f"")
        lines.append(f"{'PID':>3s} {'NAME':15s} {'C-SCORE':>7s} {'STATE':8s} {'TYPE'}")
        lines.append("-" * 60)
        for pid in sorted(self.processes.keys()):
            p = self.processes[pid]
            lines.append(f"{p.pid:3d} {p.name:15s} {p.cscore:7.3f} {p.state:8s} {p.type}")
        return "\n".join(lines)

    def run_cycle(self) -> str:
        """Run one scheduling cycle and return a report."""
        pid = self.schedule()
        if pid == -1:
            return "[IDLE] No processes to schedule. Crystal is empty."
        p = self.processes[pid]
        return f"[TICK {self.total_ticks:4d}] Scheduled PID {pid:3d} ({p.name}) — C={p.cscore:.3f}"


# =====================================================================
# OB3ECT VERIFICATION
# =====================================================================
class SchedulerOb3ect:
    """Self-verifying crystal scheduler ob3ect."""

    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def _verify_crystal_address_cycle(self) -> bool:
        """Encode → decode returns the same type."""
        for vals in [[0]*12, [3,3,3,3,2,2,2,2,1,2,2,2], [2,1,1,2,1,1,1,1,0,1,1,1]]:
            t = StructuralType(vals)
            addr = CrystalNavigator.type_to_address(t)
            t2 = CrystalNavigator.address_to_type(addr)
            if t.vals != t2.vals:
                print(f"    FAIL: {t.vals} → {addr} → {t2.vals}")
                return False
        print(f"  Crystal address cycle valid            : True")
        return True

    def _verify_schedule_high_cscore(self) -> bool:
        """High C-score processes get scheduled first."""
        pt = ProcessTable()
        p1 = pt.spawn("low", StructuralType([0]*12))           # C=0
        p2 = pt.spawn("high", StructuralType([3,3,3,3,2,2,2,2,1,2,2,2]))  # C>0
        pid = pt.schedule()
        ok = pid == 2  # high has higher C-score
        print(f"  High C-score scheduled first            : {ok}")
        return ok

    def _verify_synthetic_spawn(self) -> bool:
        """Synthetic process spawned when no matching process exists."""
        pt = ProcessTable()
        # Schedule with empty table — should trigger synthetic spawn
        pid = pt.schedule()
        ok = len(pt.processes) > 0 and pt.synthetic_spawned > 0
        print(f"  Synthetic process spawning              : {ok}")
        return ok

    def _verify_tick_increment(self) -> bool:
        """Process tick increments correctly."""
        pt = ProcessTable()
        p = pt.spawn("test", StructuralType([3,3,3,3,2,2,2,2,1,2,2,2]))
        old_ticks = p.ticks
        pt.schedule()
        ok = p.ticks == old_ticks + 1
        print(f"  Tick increment works                    : {ok}")
        return ok

    def verify(self) -> bool:
        print("=== Crystal Scheduler Ob3ect ===")
        tests = [
            self._verify_crystal_address_cycle(),
            self._verify_schedule_high_cscore(),
            self._verify_synthetic_spawn(),
            self._verify_tick_increment(),
        ]
        layer_ok = all(tests)
        frob_ok = frobenius_phase(self.source)
        closure = layer_ok and frob_ok
        print(f"Closure: {closure}")
        return closure


if __name__ == "__main__":
    if "--verify" in sys.argv:
        sys.exit(0 if SchedulerOb3ect().verify() else 1)
    else:
        # Demo: run a scheduling simulation
        pt = ProcessTable()
        pt.spawn("init", StructuralType([3,3,3,3,2,2,2,2,1,2,2,2]))
        pt.spawn("firefox", StructuralType([0,0,0,0,0,0,0,0,0,0,0,0]))
        pt.spawn("portal_d", StructuralType([3,3,3,3,2,2,2,2,1,2,2,2]))
        pt.spawn("bash", StructuralType([0,0,0,0,0,0,0,0,0,0,0,0]))
        
        print("=== Crystal Scheduler — Simulation ===")
        print()
        print("Initial process table:")
        print(pt.status())
        print()
        print("Scheduling trace:")
        for _ in range(15):
            result = pt.run_cycle()
            print(f"  {result}")
        print()
        print("Final process table:")
        print(pt.status())
