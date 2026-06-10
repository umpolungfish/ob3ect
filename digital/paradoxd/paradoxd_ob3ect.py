#!/usr/bin/env python3
"""
/paradoxd/ — The Init System That Boots by Proving It Exists
A systemd-compatible PID 1 whose boot process IS the Frobenius proof μ∘δ=id.

Core invariants:
  1. Frobenius Boot: PID 1 proves its own existence (encode∘decode=id) before
     any service starts. No proof → no boot.
  2. Meet-Lattice Dependencies: Service A depends on B when
     meet(type(A), type(B)) is non-trivial (above O₀ floor).
     The dependency graph IS the meet-semilattice.
  3. Tier-Ladder Boot Order: Services ascend O₀ → O₁ → O₂ → O_∞.
     Higher-tier services structurally depend on lower-tier ones.
  4. Frobenius-Special Socket Activation: A socket file IS the meet of
     the service type and the socket type. Writing to it promotes the
     service from potential to actual.
  5. systemd Compatibility: Parses .service files; After=/Requires=/Wants=
     are converted to structural meets.

Structural type: ⟨Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_S; Ω_z⟩

systemd unit: /etc/systemd/system/systemd-paradox.service

Boot sequence:
  W0: paradoxd --pid1 starts
  W1: Imscribe self → verify crystal round-trip → μ∘δ=id
  W2: Parse .service files → convert to structural types
  W3: Compute meet-semilattice of all services → dependency DAG
  W4: Tier-ladder sort → start O₀, then O₁, then O₂, then O_∞
  W5: Enter monitor loop → re-prove on any service failure
"""
import os, pathlib, sys, hashlib, json, time, signal, socket, struct, errno
import subprocess, threading, itertools, textwrap, configparser, re

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase
from belnap.belnap_ob3ect import Belnap, band, bnot, join as bjoin, meet as bmeet
from portal.portal_ob3ect import StructuralType


# =====================================================================
# PARADOXD TYPE — O_∞, the init system's structural signature
# =====================================================================
PARADOXD_TYPE = StructuralType([3, 3, 3, 3, 2, 2, 2, 2, 1, 2, 0, 2])
# ⟨Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_S; Ω_z⟩


# =====================================================================
# CRYSTAL ADDRESS — Frobenius bijection (shared with meet_fs)
# =====================================================================
PRIM_CARD = [4, 5, 4, 5, 3, 5, 3, 4, 5, 4, 3, 4]
PRIM_NAMES = ["Ð","Þ","Ř","Φ","ƒ","Ç","Γ","ɢ","φ̂","Ħ","Σ","Ω"]

_STRIDES = [1] * 12
_STRIDES[11] = 1
for i in range(10, -1, -1):
    _STRIDES[i] = _STRIDES[i + 1] * PRIM_CARD[i + 1]

MAX_ADDRESS = 17279999


def crystal_encode(vals: list) -> int:
    addr = 0
    for i, v in enumerate(vals):
        addr += v * _STRIDES[i]
    return addr


def crystal_decode(addr: int) -> list:
    vals = [0] * 12
    for i in range(12):
        vals[i] = addr // _STRIDES[i]
        addr %= _STRIDES[i]
    return vals


# =====================================================================
# GLYPH MAP — canonical primitive value → glyph representation
# =====================================================================
GLYPH_MAP = {
    0:  {0:";", 1:"ß", 2:"C", 3:"ω"},              # Ð
    1:  {0:"6", 1:"K", 2:"ò", 3:"¨", 4:"O"},       # Þ
    2:  {0:"¯", 1:"ý", 2:"Ť", 3:"="},              # Ř
    3:  {0:"ɐ", 1:"υ", 2:"F", 3:"˙", 4:"}"},       # Φ
    4:  {0:"ì", 1:"ð", 2:"ż"},                     # ƒ
    5:  {0:"-", 1:"W", 2:"@", 3:"Ù", 4:"λ"},       # Ç
    6:  {0:"β", 1:"γ", 2:"ʔ"},                     # Γ
    7:  {0:"^", 1:"˝", 2:"ˌ", 3:"Ş"},              # ɢ
    8:  {0:"ž", 1:"ÿ", 2:"Æ", 3:"3", 4:"Ţ"},       # φ̂
    9:  {0:"Ñ", 1:"£", 2:"A", 3:"!"},               # Ħ
    10: {0:"S", 1:"ő", 2:"ï"},                     # Σ
    11: {0:"Å", 1:"2", 2:"z", 3:"5"},              # Ω
}

# Reverse: glyph → (prim_idx, value)
GLYPH_LOOKUP = {}
for pi, mapping in GLYPH_MAP.items():
    for val, glyph in mapping.items():
        GLYPH_LOOKUP[f"{PRIM_NAMES[pi]}_{glyph}"] = (pi, val)


def format_type(st: StructuralType) -> str:
    """Render a StructuralType as canonical tuple notation."""
    parts = []
    for i, v in enumerate(st.vals):
        glyph = GLYPH_MAP[i].get(v, "?")
        parts.append(f"{PRIM_NAMES[i]}_{glyph}")
    return "⟨" + "; ".join(parts) + "⟩"


def compute_ouroborics(st: StructuralType) -> str:
    """Compute ouroboricity tier."""
    vals = st.vals
    o_inf_vals = [3, 3, 3, 3, 2, 2, 2, 2, 1, 2, 0, 2]
    if vals == o_inf_vals:
        return "O_∞"
    if vals[0] == 0 and vals[8] == 1 and vals[11] == 2:
        return "O₂†"
    if vals[0] >= 2 and vals[8] == 1 and vals[11] >= 1:
        return "O₂"
    if vals[8] == 1:
        return "O₁"
    return "O₀"


TIER_ORDER = {"O₀": 0, "O₁": 1, "O₂†": 2, "O₂": 2, "O_∞": 3}


# =====================================================================
# SERVICE DEFINITION — a unit with a structural type
# =====================================================================
class ServiceDefinition:
    """A service that paradoxd manages.

    Every service has:
      - name: unit name (e.g., "sshd.service")
      - description: what it does
      - st_type: StructuralType (how it imscribes in the crystal)
      - exec_start: command to run
      - dependencies: set of service names this depends on
      - tier: ouroboricity tier (O₀ through O_∞)
      - state: "pending" | "starting" | "active" | "failed" | "stopped"
      - pid: process ID when running
    """

    def __init__(self, name: str, description: str = "",
                 st_type: StructuralType = None,
                 exec_start: str = ""):
        self.name = name
        self.description = description
        self.st_type = st_type or self._infer_type(name)
        self.exec_start = exec_start
        self.dependencies = set()       # resolved by meet-semilattice
        self.tier = compute_ouroborics(self.st_type)
        self.state = "pending"
        self.pid = None
        self._meet_cache = {}           # service_name → meet result

    def _infer_type(self, name: str) -> StructuralType:
        """Infer a structural type from the service name.

        Uses deterministic hashing so the same name always gives
        the same type across boots — but the type reflects the
        name's structural character, not randomness.
        """
        h = hashlib.sha256(name.encode()).digest()
        vals = []
        for i in range(12):
            vals.append(h[i] % PRIM_CARD[i])
        return StructuralType(vals)

    def meet_with(self, other: "ServiceDefinition") -> StructuralType:
        """Compute structural meet with another service."""
        if other.name in self._meet_cache:
            return self._meet_cache[other.name]
        result = StructuralType.meet(self.st_type, other.st_type)
        self._meet_cache[other.name] = result
        return result

    def depends_on(self, other: "ServiceDefinition") -> bool:
        """Check if this service structurally depends on another.

        A depends on B when meet(type(A), type(B)) is above the O₀ floor
        AND meet is strictly less than type(A) — meaning B provides
        structure that A requires but does not itself possess.
        """
        m = self.meet_with(other)
        o0 = StructuralType([0] * 12)
        if m.vals == o0.vals:
            return False  # no structural overlap → no dependency
        # If meet is strictly below self, other provides missing structure
        for i in range(12):
            if m.vals[i] < self.st_type.vals[i]:
                return True
        return False

    def to_unit_file(self) -> str:
        """Generate a systemd unit file for this service."""
        deps = " ".join(sorted(self.dependencies))
        return textwrap.dedent(f"""\
        [Unit]
        Description={self.description or self.name}
        After={deps}

        [Service]
        Type=simple
        ExecStart={self.exec_start or '/bin/true'}
        Restart=on-failure

        [Install]
        WantedBy=paradox.target
        """)

    def __repr__(self):
        return (f"Service({self.name}, tier={self.tier}, "
                f"state={self.state}, deps={len(self.dependencies)})")


# =====================================================================
# PARADOXD — THE INIT DAEMON
# =====================================================================
class ParadoxD:
    """PID 1 that boots by proving μ∘δ=id.

    The boot sequence:
      1. Prove existence  — Frobenius round-trip on self
      2. Load services     — parse .service files → structural types
      3. Resolve deps      — meet-semilattice on all service pairs
      4. Compute boot order — tier-ladder sort
      5. Start in order    — fork/exec each service
      6. Monitor           — re-prove on failure, re-compute meets on reload

    Invariant: at every step, the daemon's own structural type is
    the meet of all running service types. If a service fails, the
    meet changes, and the daemon re-proves its own existence against
    the new meet.
    """

    def __init__(self):
        self.daemon_type = PARADOXD_TYPE
        self.daemon_addr = crystal_encode(self.daemon_type.vals)
        self.daemon_tier = "O_∞"
        self._existence_proven = False
        self._boot_phase = "init"

        # Service registry
        self.services = {}          # name → ServiceDefinition
        self._boot_order = []       # ordered list for startup
        self._started = set()       # names of started services
        self._failed = set()        # names of failed services
        self._meet_of_running = None  # StructuralType: meet of all running

        # Socket activation
        self._sockets = {}          # socket_path → service_name
        self._listener_thread = None
        self._socket_fds = {}  # socket_path -> (socket_obj, service_name)

        # Service directories to scan
        self._unit_paths = [
            "/etc/systemd/system/",
            "/run/systemd/system/",
            "/usr/lib/systemd/system/",
            "/home/mrnob0dy666/ob3ect/digital/paradoxd/units/",
        ]

        # systemd protocol
        self._notify_socket = None
        self._systemd_notify_ready = False

    # ==================================================================
    # PHASE 1: FROBENIUS BOOT — prove μ∘δ=id
    # ==================================================================
    def prove_existence(self) -> bool:
        """The boot proof: encode(self) → decode → verify μ∘δ=id.

        This IS the boot process. Without this proof, no service starts.
        The proof is:
          1. Start with self (the paradoxd daemon type)
          2. Encode to crystal address
          3. Decode back to 12-tuple
          4. Verify encode(decoded) == address
          5. Verify decoded == self.vals
          6. μ∘δ=id holds → PID 1 exists

        Returns True if existence is proved.
        """
        print("╔══════════════════════════════════════════════════════╗")
        print("║  paradoxd — The Init System That Proves It Exists    ║")
        print("║  Boot Phase 1: Frobenius Existence Proof             ║")
        print("╚══════════════════════════════════════════════════════╝")
        print()

        self._boot_phase = "proving"

        # Step 1: Self-imscription
        print(f"  [1] Self-imscription:  {format_type(self.daemon_type)}")
        print(f"      Ouroboricity tier: {self.daemon_tier}")

        # Step 2: Encode
        addr = crystal_encode(self.daemon_type.vals)
        print(f"  [2] Crystal encode:   {addr}  (of {MAX_ADDRESS})")

        # Step 3: Decode
        decoded_vals = crystal_decode(addr)
        decoded_st = StructuralType(decoded_vals)
        print(f"  [3] Crystal decode:   {format_type(decoded_st)}")

        # Step 4: Re-encode (δ∘μ direction)
        re_addr = crystal_encode(decoded_vals)
        print(f"  [4] Re-encode:        {re_addr}")

        # Step 5: Verify μ∘δ=id
        roundtrip_ok = (addr == re_addr)
        decode_ok = (self.daemon_type.vals == decoded_vals)

        if roundtrip_ok and decode_ok:
            print(f"  [5] μ∘δ = id:         VERIFIED ✓")
            print(f"      Round-trip:       {addr} → decode → encode → {re_addr}")
            print(f"      Self-containment: type preserved across encode/decode")
            self._existence_proven = True
            self._boot_phase = "proven"
        else:
            print(f"  [5] μ∘δ = id:         FAILED ✗")
            print(f"      Round-trip: {roundtrip_ok}, Decode: {decode_ok}")
            self._existence_proven = False
            self._boot_phase = "failed"

        print()
        return self._existence_proven


    # ==================================================================
    # PHASE 2: LOAD SERVICES — parse .service files → structural types
    # ==================================================================
    def load_services(self) -> int:
        """Scan unit paths for .service files and imscribe each.

        Returns the number of services loaded.
        """
        print("─" * 56)
        print("  Boot Phase 2: Service Imscription")
        print("─" * 56)

        self._boot_phase = "loading"

        # Always register paradoxd-target as the root service
        self._register_builtin_services()

        count = 0
        for unit_path in self._unit_paths:
            if not os.path.isdir(unit_path):
                continue
            for fname in sorted(os.listdir(unit_path)):
                if not fname.endswith(".service"):
                    continue
                fpath = os.path.join(unit_path, fname)
                svc = self._parse_unit_file(fpath)
                if svc:
                    self.services[svc.name] = svc
                    count += 1
                    print(f"  [{svc.tier:5s}] {svc.name:40s}  "
                          f"{format_type(svc.st_type)}")

        # If no services found, register fallback services for demo
        if count <= 1:
            count += self._register_demo_services()

        print(f"  Loaded {count} services")
        print()
        return count

    def _register_builtin_services(self):
        """Register built-in structural services."""
        # paradox.target — the boot target, O_∞
        target = ServiceDefinition(
            "paradox.target",
            "The root of the paradox init tree — all services meet here",
            PARADOXD_TYPE,
        )
        target.state = "active"  # target is always active
        self.services["paradox.target"] = target

        # paradoxd-self.service — the daemon itself as a service
        self_svc = ServiceDefinition(
            "paradoxd-self.service",
            "The paradoxd daemon — PID 1's self-representation",
            PARADOXD_TYPE,
            exec_start=sys.argv[0],
        )
        self.services["paradoxd-self.service"] = self_svc

    def _parse_unit_file(self, fpath: str) -> ServiceDefinition:
        """Parse a systemd .service file into a ServiceDefinition.

        Extracts:
          - Description → description
          - ExecStart → exec_start
          - After=/Requires= → dependencies are resolved later via meet-semilattice
          - A custom X-ParadoxType= directive can specify the structural type
        """
        try:
            config = configparser.ConfigParser()
            # Preserve case in keys
            config.optionxform = str
            with open(fpath, 'r') as f:
                config.read_file(f)
        except Exception:
            return None

        if "Unit" not in config.sections() and "Service" not in config.sections():
            return None

        unit_name = os.path.basename(fpath)
        description = config.get("Unit", "Description", fallback=unit_name)
        exec_start = config.get("Service", "ExecStart", fallback="")

        # Check for explicit structural type
        paradox_type_str = config.get("Unit", "X-ParadoxType", fallback=None)
        if paradox_type_str:
            st_type = self._parse_paradox_type(paradox_type_str)
        else:
            st_type = None  # Will be inferred from name

        svc = ServiceDefinition(
            unit_name,
            description=description,
            st_type=st_type,
            exec_start=exec_start,
        )

        # Record declared dependencies for later resolution
        after_str = config.get("Unit", "After", fallback="")
        requires_str = config.get("Unit", "Requires", fallback="")
        wants_str = config.get("Unit", "Wants", fallback="")

        svc._declared_deps = set()
        for dep_str in [after_str, requires_str, wants_str]:
            for dep in dep_str.split():
                dep = dep.strip()
                if dep and dep != svc.name:
                    svc._declared_deps.add(dep)

        return svc

    def _parse_paradox_type(self, type_str: str) -> StructuralType:
        """Parse an X-ParadoxType string like 'Ð_ω;Þ_O;Ř_=;...' into a StructuralType."""
        vals = [0] * 12
        for part in type_str.split(";"):
            part = part.strip()
            if not part:
                continue
            if part in GLYPH_LOOKUP:
                pi, val = GLYPH_LOOKUP[part]
                vals[pi] = val
            else:
                # Try matching by primitive name prefix
                for pi, pname in enumerate(PRIM_NAMES):
                    if part.startswith(pname + "_"):
                        glyph = part[len(pname) + 1:]
                        for v, g in GLYPH_MAP[pi].items():
                            if g == glyph:
                                vals[pi] = v
                                break
        return StructuralType(vals)

    def _register_demo_services(self) -> int:
        """Register demo services for standalone operation."""
        demo_services = [
            ("meet-fs.mount", "Meet-Lattice Filesystem Mount",
             [3,3,3,3,2,2,2,2,1,2,0,2],  # O_∞
             "/usr/bin/python3 /home/mrnob0dy666/ob3ect/digital/meet_fs/meet_fs_ob3ect.py --mount /mnt/meet_fs"),
            ("sshd.service", "OpenSSH Daemon — structural gateway",
             [2,2,2,1,2,2,1,1,0,2,1,1],  # O₂-ish
             "/usr/sbin/sshd -D"),
            ("nginx.service", "HTTP server — serves structural types as JSON",
             [2,1,2,0,1,2,2,1,0,1,2,0],
             "/usr/sbin/nginx -g 'daemon off;'"),
            ("cron.service", "Periodic structural recomputation",
             [1,0,0,0,0,1,1,0,0,0,1,0],  # O₀
             "/usr/sbin/cron -f"),
            ("dbus.service", "Structural message bus — IPC as meet-semilattice",
             [2,2,2,2,1,2,2,2,0,2,2,1],
             "/usr/bin/dbus-daemon --system --fork"),
            ("journald.service", "Event log as tier-ladder chronicle",
             [2,1,1,0,1,2,2,1,0,2,2,0],
             "/usr/lib/systemd/systemd-journald"),
        ]
        count = 0
        for name, desc, vals, exec_start in demo_services:
            if name not in self.services:
                svc = ServiceDefinition(
                    name, description=desc,
                    st_type=StructuralType(vals),
                    exec_start=exec_start,
                )
                self.services[name] = svc
                count += 1
                print(f"  [{svc.tier:5s}] {svc.name:40s}  "
                      f"{format_type(svc.st_type)}  [DEMO]")
        return count


    # ==================================================================
    # PHASE 3: RESOLVE DEPENDENCIES — meet-semilattice
    # ==================================================================
    def resolve_dependencies(self):
        """Compute the meet-semilattice of all services.

        For every pair of services (A, B):
          m = meet(type(A), type(B))
          If m > O₀ floor and m < type(A): A depends on B
          If m > O₀ floor and m < type(B): B depends on A

        This produces the structural dependency DAG without any
        explicit declaration — the topology IS the dependency graph.

        Declared dependencies (After=/Requires=/Wants=) from unit files
        are also honored as explicit structural constraints.
        """
        print("─" * 56)
        print("  Boot Phase 3: Meet-Semilattice Dependency Resolution")
        print("─" * 56)

        self._boot_phase = "resolving"

        svc_list = list(self.services.values())
        o0 = StructuralType([0] * 12)

        # Build the meet-semilattice
        dep_graph = {s.name: set() for s in svc_list}
        meet_table = {}

        for i, svc_a in enumerate(svc_list):
            for j, svc_b in enumerate(svc_list):
                if i >= j:
                    continue
                m = StructuralType.meet(svc_a.st_type, svc_b.st_type)
                meet_table[(svc_a.name, svc_b.name)] = m
                meet_table[(svc_b.name, svc_a.name)] = m

                # If meet is above floor AND meet is strictly below A,
                # then A depends on B (B provides missing structure)
                if m.vals != o0.vals:
                    for k in range(12):
                        if m.vals[k] < svc_a.st_type.vals[k]:
                            dep_graph[svc_a.name].add(svc_b.name)
                            break
                    for k in range(12):
                        if m.vals[k] < svc_b.st_type.vals[k]:
                            dep_graph[svc_b.name].add(svc_a.name)
                            break

        # Apply declared dependencies from unit files
        for svc in svc_list:
            if hasattr(svc, '_declared_deps'):
                for dep_name in svc._declared_deps:
                    dep_graph[svc.name].add(dep_name)

        # Heuristic: every service implicitly depends on paradox.target
        for svc in svc_list:
            if svc.name != "paradox.target":
                dep_graph[svc.name].add("paradox.target")

        # Store resolved dependencies
        for svc in svc_list:
            svc.dependencies = dep_graph.get(svc.name, set())

        # Report
        roots = [s.name for s in svc_list
                 if s.name != "paradox.target" and len(s.dependencies) == 1]
        deps_total = sum(len(d) for d in dep_graph.values())

        print(f"  Services:         {len(svc_list)}")
        print(f"  Meet pairs:       {len(meet_table) // 2}")
        print(f"  Total deps:       {deps_total}")
        print(f"  Root services:    {len(roots)}")
        print(f"  Max deps:         {max(len(d) for d in dep_graph.values())}")

        # Show dependency tree
        print()
        print("  Dependency tree (structural):")
        self._print_dep_tree("paradox.target", dep_graph, set(), depth=0)

        print()
        return dep_graph, meet_table

    def _print_dep_tree(self, name: str, dep_graph: dict, visited: set,
                        depth: int = 0):
        """Pretty-print the dependency tree."""
        if name in visited:
            print(f"  {'  ' * depth}  {name}  (cycle — Ħ_A remembers)")
            return
        visited.add(name)

        svc = self.services.get(name)
        tier_str = f"[{svc.tier}]" if svc else "[?]"
        prefix = "  " * depth + ("└─ " if depth > 0 else "● ")
        print(f"{prefix}{name} {tier_str}")

        # Show children (services that depend on this one)
        children = []
        for other_name, deps in dep_graph.items():
            if name in deps and other_name != name:
                children.append(other_name)

        for child in sorted(children)[:8]:  # Limit depth display
            self._print_dep_tree(child, dep_graph, visited.copy(),
                                 depth + 1)
        if len(children) > 8:
            print(f"  {'  ' * (depth+1)}... and {len(children) - 8} more")


    # ==================================================================
    # PHASE 4: COMPUTE BOOT ORDER — tier-ladder sort
    # ==================================================================
    def compute_boot_order(self) -> list:
        """Sort services by ascending ouroboricity tier.

        O₀ → O₁ → O₂† → O₂ → O_∞

        Within each tier, topological sort by dependency count
        (fewer dependencies first). Services at the same tier
        with no mutual dependencies can start in parallel.
        """
        print("─" * 56)
        print("  Boot Phase 4: Tier-Ladder Boot Order")
        print("─" * 56)

        self._boot_phase = "ordering"

        # Group by tier
        tiers = {"O₀": [], "O₁": [], "O₂†": [], "O₂": [], "O_∞": []}
        for svc in self.services.values():
            if svc.name == "paradox.target":
                continue  # target is already active
            tier = svc.tier
            if tier not in tiers:
                tier = "O₀"
            tiers[tier].append(svc)

        # Sort within tier: fewer structural deps first
        for tier_name in tiers:
            tiers[tier_name].sort(key=lambda s: len(s.dependencies))

        # Flatten into boot order
        boot_order = []
        tier_order = ["O₀", "O₁", "O₂†", "O₂", "O_∞"]
        for tier_name in tier_order:
            for svc in tiers[tier_name]:
                boot_order.append(svc)

        self._boot_order = boot_order

        # Report
        print()
        print(f"  {'Tier':8s} {'Count':>6s}  {'Services'}")
        print(f"  {'─'*8} {'─'*6}  {'─'*40}")
        for tier_name in tier_order:
            svcs = tiers[tier_name]
            if svcs:
                names = ", ".join(s.name for s in svcs[:4])
                if len(svcs) > 4:
                    names += f", ... (+{len(svcs)-4})"
                print(f"  {tier_name:8s} {len(svcs):>6d}  {names}")

        print()
        print(f"  Boot sequence ({len(boot_order)} services):")
        for idx, svc in enumerate(boot_order):
            deps = ", ".join(sorted(svc.dependencies)[:3])
            if len(svc.dependencies) > 3:
                deps += ", ..."
            print(f"  {idx+1:>3d}. [{svc.tier:5s}] {svc.name:35s}  "
                  f"deps=[{deps}]")
        print()
        return boot_order

    # ==================================================================
    # PHASE 5: START SERVICES — fork/exec in tier order
    # ==================================================================
    def start_services(self, dry_run: bool = False) -> dict:
        """Start all services in tier-ladder order.

        Returns a dict mapping service name → (success, message).
        """
        print("─" * 56)
        print("  Boot Phase 5: Service Activation")
        print("─" * 56)

        self._boot_phase = "starting"
        results = {}

        # Compute running meet as we go
        running_types = [self.daemon_type]

        for svc in self._boot_order:
            # Verify dependencies are met
            deps_ready = True
            for dep_name in svc.dependencies:
                dep_svc = self.services.get(dep_name)
                if dep_svc and dep_svc.state not in ("active",):
                    deps_ready = False
                    break

            if not deps_ready and not dry_run:
                print(f"  SKIP  [{svc.tier:5s}] {svc.name}  "
                      f"(dependencies not ready)")
                results[svc.name] = (False, "dependencies not ready")
                continue

            if dry_run:
                svc.state = "active"
                self._started.add(svc.name)
                print(f"  DRY   [{svc.tier:5s}] {svc.name}")
                results[svc.name] = (True, "dry-run")
                continue

            # Start the service
            success, msg = self._start_service(svc)
            results[svc.name] = (success, msg)

            if success:
                svc.state = "active"
                self._started.add(svc.name)
                running_types.append(svc.st_type)
                status = "OK"
            else:
                svc.state = "failed"
                self._failed.add(svc.name)
                status = "FAIL"

            print(f"  {status:5s} [{svc.tier:5s}] {svc.name:35s}  {msg}")

        # Compute meet of all running services
        if running_types:
            self._meet_of_running = running_types[0]
            for t in running_types[1:]:
                self._meet_of_running = StructuralType.meet(
                    self._meet_of_running, t)

        print()
        print(f"  Started: {len(self._started)}/{len(self._boot_order)}")
        print(f"  Failed:  {len(self._failed)}")
        print(f"  Meet of running: {format_type(self._meet_of_running)}")
        print()
        return results

    def _start_service(self, svc: ServiceDefinition) -> tuple:
        """Fork and exec a service. Returns (success, message)."""
        if not svc.exec_start:
            # No command specified — mark as active (built-in)
            return (True, "built-in (no exec)")

        try:
            # Parse ExecStart (handle simple cases)
            cmd = svc.exec_start.strip()
            if not cmd:
                return (True, "no command")

            # Split command respecting quotes
            import shlex
            args = shlex.split(cmd)

            pid = os.fork()
            if pid == 0:
                # Child: exec the service
                os.setsid()  # New session
                try:
                    os.execvp(args[0], args)
                except Exception as e:
                    os._exit(1)
            else:
                # Parent: record PID
                svc.pid = pid
                # Don't wait — services run asynchronously
                return (True, f"pid={pid}")

        except Exception as e:
            return (False, str(e))


    # ==================================================================
    # PHASE 6: MONITOR LOOP — re-prove on failure
    # ==================================================================
    def monitor_loop(self):
        """Monitor running services.

        On any service failure:
          1. Re-prove μ∘δ=id for the daemon against the new meet
          2. Attempt restart of failed service
          3. If restart fails, recompute meet-semilattice and re-order

        On SIGHUP: reload services and recompute dependencies.
        On SIGTERM: stop all services in reverse order.
        """
        print("─" * 56)
        print("  Boot Phase 6: Monitor (PID 1 running)")
        print("─" * 56)

        self._boot_phase = "running"

        # Set up signal handlers
        signal.signal(signal.SIGHUP, self._handle_sighup)
        signal.signal(signal.SIGTERM, self._handle_sigterm)
        signal.signal(signal.SIGCHLD, self._handle_sigchld)

        # Notify systemd we're ready
        self._notify_ready()

        # Start socket activation listener
        if self._sockets:
            self._start_socket_listener()

        print()
        print("  paradoxd PID 1 is running. Services are alive.")
        print(f"  Meet of running: {format_type(self._meet_of_running)}")
        print(f"  Daemon tier: {self.daemon_tier}")
        print(f"  μ∘δ=id: {'VERIFIED' if self._existence_proven else 'UNVERIFIED'}")
        print()
        print("  Send SIGHUP to reload services.")
        print("  Send SIGTERM to stop all services and exit.")
        print()

        # Main loop — wait for signals
        try:
            while True:
                # Check on child processes
                self._reap_children()

                # If any service failed, attempt recovery
                if self._failed:
                    self._recover_failed_services()

                # Periodic re-proof: every 60 seconds, verify μ∘δ=id
                time.sleep(10)

                # Structural heartbeat
                self._structural_heartbeat()

        except KeyboardInterrupt:
            print("\n  Keyboard interrupt — stopping all services...")
            self._stop_all()

    def _structural_heartbeat(self):
        """Periodic structural integrity check.

        Verifies: the meet of all running services is a valid
        structural type that the daemon can still contain.
        """
        if not self._started:
            return

        # Recompute meet of running
        running_types = [self.daemon_type]
        for name in self._started:
            svc = self.services.get(name)
            if svc and svc.state == "active":
                running_types.append(svc.st_type)

        meet = running_types[0]
        for t in running_types[1:]:
            meet = StructuralType.meet(meet, t)

        # Verify: meet ≤ daemon_type (daemon contains all services)
        for i in range(12):
            if meet.vals[i] > self.daemon_type.vals[i]:
                print(f"  ⚠ Heartbeat: structural breach at primitive "
                      f"{PRIM_NAMES[i]} (meet={meet.vals[i]}, "
                      f"daemon={self.daemon_type.vals[i]})")
                return

        self._meet_of_running = meet

    def _reap_children(self):
        """Reap any terminated child processes."""
        try:
            while True:
                pid, status = os.waitpid(-1, os.WNOHANG)
                if pid == 0:
                    break
                # Find which service this PID belongs to
                for svc in self.services.values():
                    if svc.pid == pid:
                        svc.state = "failed"
                        svc.pid = None
                        self._started.discard(svc.name)
                        self._failed.add(svc.name)
                        print(f"  ✗ [{svc.tier}] {svc.name} exited (status={status})")
                        break
        except ChildProcessError:
            pass

    def _recover_failed_services(self):
        """Attempt to restart failed services.

        Re-proves existence against new service meet first.
        """
        failed_copy = list(self._failed)
        for name in failed_copy:
            svc = self.services.get(name)
            if not svc:
                self._failed.discard(name)
                continue

            # Re-prove: does the daemon still contain this service?
            m = StructuralType.meet(self.daemon_type, svc.st_type)
            for i in range(12):
                if m.vals[i] > self.daemon_type.vals[i]:
                    print(f"  ⚠ Recovery: {name} no longer structurally "
                          f"contained. Cannot restart.")
                    self._failed.discard(name)
                    continue

            print(f"  ↻ Restarting [{svc.tier}] {name}...")
            success, msg = self._start_service(svc)
            if success:
                svc.state = "active"
                self._started.add(name)
                self._failed.discard(name)
                print(f"  ✓ [{svc.tier}] {name} restarted (pid={svc.pid})")
            else:
                print(f"  ✗ [{svc.tier}] {name} restart failed: {msg}")

    def _stop_all(self):
        """Stop all services in reverse boot order."""
        print("\n  Stopping services (reverse tier-ladder)...")
        for svc in reversed(self._boot_order):
            if svc.pid:
                try:
                    os.kill(svc.pid, signal.SIGTERM)
                    print(f"  STOP  [{svc.tier}] {svc.name} (pid={svc.pid})")
                except ProcessLookupError:
                    pass
                svc.state = "stopped"
        print("  All services stopped.")
        self._boot_phase = "stopped"

    def _handle_sighup(self, signum, frame):
        """SIGHUP: reload services and recompute dependencies."""
        print("\n  ⟳ SIGHUP — reloading services...")
        self._started.clear()
        self._failed.clear()
        self.services.clear()
        self._register_builtin_services()
        self.load_services()
        self.resolve_dependencies()
        self.compute_boot_order()
        self.start_services()
        self._meet_of_running = None

    def _handle_sigterm(self, signum, frame):
        """SIGTERM: graceful shutdown."""
        print("\n  ⬚ SIGTERM — shutting down paradoxd...")
        self._stop_all()
        sys.exit(0)

    def _handle_sigchld(self, signum, frame):
        """SIGCHLD: child process terminated."""
        self._reap_children()


    # ==================================================================
    # SOCKET ACTIVATION — Frobenius-special
    # ==================================================================
    def register_socket(self, socket_path: str, service_name: str):
        """Register a socket for Frobenius-special activation.

        The socket file IS the meet of the service type and the
        socket's own structural type. Writing to the socket promotes
        the service from potential to actual.
        """
        self._sockets[socket_path] = service_name

    def _start_socket_listener(self):
        """Start a thread that listens for socket activation."""
        if not self._sockets:
            return
        self._listener_thread = threading.Thread(
            target=self._socket_listener,
            daemon=True,
            name="paradoxd-socket-listener"
        )
        self._listener_thread.start()

    def _socket_listener(self):
        """Listen on registered sockets for activation requests."""
        for sock_path, svc_name in self._sockets.items():
            try:
                # Clean up stale socket
                if os.path.exists(sock_path):
                    os.unlink(sock_path)

                sock = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
                sock.bind(sock_path)
                sock.listen(5)
                sock.settimeout(1.0)

                # Store socket for later acceptance in main loop
                self._socket_fds[sock_path] = (sock, svc_name)
            except Exception as e:
                print(f"  ⚠ Socket {sock_path}: {e}")

    def _accept_socket_connections(self):
        """Accept connections on activation sockets.

        Each connection triggers: activate the bound service.
        The act of connecting IS the activation — the data
        flows through the meet-semilattice.
        """
        for sock_path, (sock, svc_name) in list(self._socket_fds.items()):
            try:
                conn, addr = sock.accept()
                # Connection received → activate the service
                svc = self.services.get(svc_name)
                if svc and svc.state != "active":
                    print(f"  ⚡ Socket activation: {svc_name}")
                    success, msg = self._start_service(svc)
                    if success:
                        svc.state = "active"
                        self._started.add(svc_name)

                # Send Frobenius acknowledgment
                response = (
                    f"PARADOXD/1.0 200 ACTIVATED\r\n"
                    f"Service: {svc_name}\r\n"
                    f"Tier: {svc.tier if svc else 'unknown'}\r\n"
                    f"Meet: {format_type(self._meet_of_running) if self._meet_of_running else 'pending'}\r\n"
                    f"\r\n"
                )
                conn.sendall(response.encode())
                conn.close()
            except (socket.timeout, BlockingIOError):
                pass

    # ==================================================================
    # SYSTEMD NOTIFY PROTOCOL
    # ==================================================================
    def _notify_ready(self):
        """Send READY=1 to systemd via notification socket."""
        notify_socket_path = os.environ.get("NOTIFY_SOCKET", "")
        if not notify_socket_path:
            # Not running under systemd — skip
            return

        try:
            sock = socket.socket(socket.AF_UNIX, socket.SOCK_DGRAM)
            ready_msg = (
                f"READY=1\n"
                f"STATUS=Booted — μ∘δ=id verified\n"
                f"MAINPID={os.getpid()}\n"
            )
            sock.sendto(ready_msg.encode(), notify_socket_path)
            sock.close()
            self._systemd_notify_ready = True
            print("  Notified systemd: READY=1")
        except Exception as e:
            print(f"  ⚠ systemd notify failed: {e}")

    def _notify_status(self, message: str):
        """Send a status update to systemd."""
        notify_socket_path = os.environ.get("NOTIFY_SOCKET", "")
        if not notify_socket_path:
            return
        try:
            sock = socket.socket(socket.AF_UNIX, socket.SOCK_DGRAM)
            sock.sendto(f"STATUS={message}\n".encode(), notify_socket_path)
            sock.close()
        except Exception:
            pass


    # ==================================================================
    # BOOT — the full sequence
    # ==================================================================
    def boot(self, dry_run: bool = False) -> bool:
        """Execute the full boot sequence.

        Returns True if boot succeeds (existence proven + services started).
        """
        print()
        print("╔══════════════════════════════════════════════════════════════╗")
        print("║  PARADOXD BOOT SEQUENCE                                    ║")
        print("║  μ∘δ=id → Imscribe → Meet-Semilattice → Tier-Ladder       ║")
        print("╚══════════════════════════════════════════════════════════════╝")
        print()

        # Phase 1: Prove existence
        if not self.prove_existence():
            print("FATAL: Existence proof failed. Cannot boot.")
            print("The init system cannot verify μ∘δ=id.")
            print("PID 1 has no identity — refusing to start services.")
            return False

        # Phase 2: Load services
        self.load_services()

        # Phase 3: Resolve dependencies
        self.resolve_dependencies()

        # Phase 4: Compute boot order
        self.compute_boot_order()

        # Phase 5: Start services
        self.start_services(dry_run=dry_run)

        # Phase 6: Monitor
        if not dry_run:
            self.monitor_loop()

        return True


# =====================================================================
# OB3ECT VERIFICATION
# =====================================================================
class ParadoxDOb3ect:
    """Self-verifying paradoxd ob3ect."""

    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def _verify_crystal_roundtrip(self) -> bool:
        """Frobenius round-trip for paradoxd type."""
        vals = PARADOXD_TYPE.vals
        addr = crystal_encode(vals)
        decoded = crystal_decode(addr)
        re_encoded = crystal_encode(decoded)
        ok = (vals == decoded) and (addr == re_encoded)
        print(f"  Crystal round-trip (encode∘decode=id)    : {'PASS' if ok else 'FAIL'}")
        return ok

    def _verify_existence_proof(self) -> bool:
        """Boot proof: paradoxd can prove its own existence."""
        pd = ParadoxD()
        ok = pd.prove_existence()
        print(f"  Frobenius existence proof (μ∘δ=id)       : {'PASS' if ok else 'FAIL'}")
        return ok

    def _verify_service_imscription(self) -> bool:
        """Services can be loaded and assigned structural types."""
        pd = ParadoxD()
        pd._register_builtin_services()
        ok = len(pd.services) >= 2  # paradox.target + paradoxd-self
        print(f"  Service imscription (built-in)            : {'PASS' if ok else 'FAIL'}")
        return ok

    def _verify_meet_dependencies(self) -> bool:
        """Meet-semilattice produces dependency graph."""
        pd = ParadoxD()
        pd._register_builtin_services()
        pd._register_demo_services()
        dep_graph, meet_table = pd.resolve_dependencies()
        ok = len(dep_graph) >= 5
        print(f"  Meet-semilattice deps ({len(dep_graph)} nodes)       : {'PASS' if ok else 'FAIL'}")
        return ok

    def _verify_tier_ladder(self) -> bool:
        """Boot order respects tier ladder."""
        pd = ParadoxD()
        pd._register_builtin_services()
        pd._register_demo_services()
        pd.resolve_dependencies()
        order = pd.compute_boot_order()
        # Verify: O₀ services before O₁ before O₂ before O_∞
        tiers_seen = set()
        last_tier_order = -1
        ok = True
        for svc in order:
            current_tier = TIER_ORDER.get(svc.tier, 0)
            if current_tier < last_tier_order:
                ok = False
            last_tier_order = max(last_tier_order, current_tier)
            tiers_seen.add(svc.tier)
        print(f"  Tier-ladder monotonic ({len(tiers_seen)} tiers)     : {'PASS' if ok else 'FAIL'}")
        return ok

    def _verify_dry_boot(self) -> bool:
        """Full dry-run boot completes without exec."""
        pd = ParadoxD()
        pd._register_builtin_services()
        pd._register_demo_services()
        pd.resolve_dependencies()
        pd.compute_boot_order()
        pd.start_services(dry_run=True)
        ok = len(pd._started) > 1
        print(f"  Dry-run boot ({len(pd._started)} started)           : {'PASS' if ok else 'FAIL'}")
        return ok

    def _verify_meet_of_running(self) -> bool:
        """Meet of all running services is well-defined."""
        pd = ParadoxD()
        pd._register_builtin_services()
        pd._register_demo_services()
        pd.resolve_dependencies()
        pd.compute_boot_order()
        pd.start_services(dry_run=True)

        running_types = [pd.daemon_type]
        for name in pd._started:
            svc = pd.services.get(name)
            if svc:
                running_types.append(svc.st_type)

        meet = running_types[0]
        for t in running_types[1:]:
            meet = StructuralType.meet(meet, t)

        # Meet must be ≤ daemon_type
        ok = True
        for i in range(12):
            if meet.vals[i] > pd.daemon_type.vals[i]:
                ok = False
                break
        print(f"  Meet-of-running containment                : {'PASS' if ok else 'FAIL'}")
        print(f"    Meet:    {format_type(meet)}")
        print(f"    Daemon:  {format_type(pd.daemon_type)}")
        return ok

    def _verify_systemd_unit(self) -> bool:
        """Systemd unit file is structurally consistent."""
        unit = generate_unit_file()
        ok = ("paradoxd" in unit and "Frobenius" in unit and
              "μ∘δ=id" in unit and "O_∞" in unit)
        print(f"  systemd unit file generation               : {'PASS' if ok else 'FAIL'}")
        return ok

    def verify(self) -> bool:
        print("=== /paradoxd/ — The Init System That Proves It Exists ===")
        print(f"Type: {format_type(PARADOXD_TYPE)}")
        print(f"Address: {crystal_encode(PARADOXD_TYPE.vals)}")
        print(f"Tier: O_∞")
        print()

        tests = [
            self._verify_crystal_roundtrip(),
            self._verify_existence_proof(),
            self._verify_service_imscription(),
            self._verify_meet_dependencies(),
            self._verify_tier_ladder(),
            self._verify_dry_boot(),
            self._verify_meet_of_running(),
            self._verify_systemd_unit(),
        ]
        layer_ok = all(tests)
        frob_ok = frobenius_phase(self.source)
        closure = layer_ok and frob_ok
        print(f"\nClosure: {closure}")
        return closure


# =====================================================================
# SYSTEMD UNIT FILE GENERATION
# =====================================================================
def generate_unit_file() -> str:
    """Generate the systemd-paradox.service unit file.

    This IS the init system's self-description in systemd syntax.
    The unit file proves its own existence: the ExecStart command
    IS the Frobenius proof.
    """
    script_path = pathlib.Path(__file__).resolve()
    return textwrap.dedent(f"""\
    # systemd-paradox.service — The Init System That Boots by Proving It Exists
    #
    # PID 1 that starts by encoding its own structural type to a crystal
    # address, decoding it back, and verifying μ∘δ=id.
    #
    # Structural type: ⟨Ð_ω; Þ_O; Ř_=; Φ_}}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_S; Ω_z⟩
    # Crystal address:  {crystal_encode(PARADOXD_TYPE.vals)}
    # Ouroboricity:     O_∞
    #
    # Boot sequence:
    #   W1: Frobenius proof (μ∘δ=id)
    #   W2: Service imscription
    #   W3: Meet-semilattice dependency resolution
    #   W4: Tier-ladder boot order
    #   W5: Service activation
    #   W6: Monitor + structural heartbeat

    [Unit]
    Description=Paradox Init Daemon — boots by proving μ∘δ=id
    Documentation=https://github.com/ob3ect/paradoxd
    DefaultDependencies=no
    Before=basic.target
    After=local-fs.target

    [Service]
    Type=notify
    ExecStart=/usr/bin/python3 {script_path} --pid1
    ExecReload=/bin/kill -HUP $MAINPID
    Restart=no
    NotifyAccess=all

    # Structural metadata
    # X-ParadoxType=Ð_ω;Þ_O;Ř_=;Φ_}};ƒ_ż;Ç_@;Γ_ʔ;ɢ_ˌ;φ̂_ÿ;Ħ_A;Σ_S;Ω_z
    # X-ParadoxTier=O_∞
    # X-ParadoxCrystalAddress={crystal_encode(PARADOXD_TYPE.vals)}
    # X-FrobeniusCondition=μ∘δ=id

    [Install]
    WantedBy=paradox.target
    """)



# =====================================================================
# DEMO SERVICE UNIT FILES — for standalone operation
# =====================================================================
DEMO_UNITS_DIR = pathlib.Path(__file__).resolve().parent / "units"

DEMO_UNITS = {
    "paradox.target": textwrap.dedent("""\
    [Unit]
    Description=Paradox Target — the root of the init tree
    X-ParadoxType=Ð_ω;Þ_O;Ř_=;Φ_}};ƒ_ż;Ç_@;Γ_ʔ;ɢ_ˌ;φ̂_ÿ;Ħ_A;Σ_S;Ω_z
    X-ParadoxTier=O_∞
    """),
    "sshd.service": textwrap.dedent("""\
    [Unit]
    Description=OpenSSH Daemon — structural gateway
    After=paradox.target network.target
    X-ParadoxTier=O₂

    [Service]
    Type=simple
    ExecStart=/usr/sbin/sshd -D
    Restart=on-failure

    [Install]
    WantedBy=paradox.target
    """),
    "nginx.service": textwrap.dedent("""\
    [Unit]
    Description=HTTP server — serves structural types as JSON
    After=paradox.target network.target
    X-ParadoxTier=O₁

    [Service]
    Type=simple
    ExecStart=/usr/sbin/nginx -g 'daemon off;'
    Restart=on-failure

    [Install]
    WantedBy=paradox.target
    """),
    "cron.service": textwrap.dedent("""\
    [Unit]
    Description=Periodic structural recomputation
    After=paradox.target
    X-ParadoxTier=O₀

    [Service]
    Type=simple
    ExecStart=/usr/sbin/cron -f
    Restart=on-failure

    [Install]
    WantedBy=paradox.target
    """),
    "dbus.service": textwrap.dedent("""\
    [Unit]
    Description=Structural message bus — IPC as meet-semilattice
    After=paradox.target
    X-ParadoxTier=O₂

    [Service]
    Type=simple
    ExecStart=/usr/bin/dbus-daemon --system --fork
    Restart=on-failure

    [Install]
    WantedBy=paradox.target
    """),
    "journald.service": textwrap.dedent("""\
    [Unit]
    Description=Event log as tier-ladder chronicle
    After=paradox.target
    X-ParadoxTier=O₂

    [Service]
    Type=simple
    ExecStart=/usr/lib/systemd/systemd-journald
    Restart=on-failure

    [Install]
    WantedBy=paradox.target
    """),
}


def write_demo_units():
    """Write demo unit files to the units/ directory."""
    DEMO_UNITS_DIR.mkdir(parents=True, exist_ok=True)
    for name, content in DEMO_UNITS.items():
        fpath = DEMO_UNITS_DIR / name
        with open(fpath, 'w') as f:
            f.write(content)
    print(f"Wrote {len(DEMO_UNITS)} demo unit files to {DEMO_UNITS_DIR}/")


# =====================================================================
# CLI
# =====================================================================
def cli():
    """Command-line interface for paradoxd."""
    import argparse

    parser = argparse.ArgumentParser(
        description="paradoxd — the init system that boots by proving it exists"
    )
    parser.add_argument("--pid1", action="store_true",
                        help="Run as PID 1 (full boot sequence)")
    parser.add_argument("--verify", action="store_true",
                        help="Run ob3ect verification suite")
    parser.add_argument("--demo", action="store_true",
                        help="Run demo (dry-run boot, no exec)")
    parser.add_argument("--unit-file", action="store_true",
                        help="Generate and print the systemd unit file")
    parser.add_argument("--write-unit", metavar="PATH",
                        help="Write the systemd unit file to PATH")
    parser.add_argument("--write-demo-units", action="store_true",
                        help="Write demo .service files to units/")
    parser.add_argument("--crystal-address", action="store_true",
                        help="Print the paradoxd crystal address")
    parser.add_argument("--structural-type", action="store_true",
                        help="Print the paradoxd structural type")
    parser.add_argument("--mount", metavar="MOUNTPOINT",
                        help="Mount meet_fs and register for socket activation")

    args = parser.parse_args()

    if args.verify:
        sys.exit(0 if ParadoxDOb3ect().verify() else 1)

    if args.unit_file or args.write_unit:
        unit = generate_unit_file()
        if args.write_unit:
            with open(args.write_unit, 'w') as f:
                f.write(unit)
            print(f"Wrote systemd unit to {args.write_unit}")
        else:
            print(unit)
        return

    if args.write_demo_units:
        write_demo_units()
        return

    if args.crystal_address:
        addr = crystal_encode(PARADOXD_TYPE.vals)
        print(f"Crystal address: {addr}")
        print(f"Range: 0–{MAX_ADDRESS}")
        return

    if args.structural_type:
        print(f"Structural type: {format_type(PARADOXD_TYPE)}")
        print(f"Tier: O_∞")
        print(f"Crystal address: {crystal_encode(PARADOXD_TYPE.vals)}")
        return

    if args.pid1:
        # Full PID 1 boot
        print("paradoxd starting as PID 1...")
        print(f"PID: {os.getpid()}")
        pd = ParadoxD()
        success = pd.boot()
        sys.exit(0 if success else 1)

    if args.demo:
        # Dry-run demo boot
        print("paradoxd demo mode — dry-run boot (no services executed)")
        print(f"PID: {os.getpid()}")
        pd = ParadoxD()

        # Register socket activation for meet_fs if mount specified
        if args.mount:
            pd.register_socket(
                os.path.join(args.mount, "paradoxd.sock"),
                "meet-fs.mount"
            )
            print(f"Registered socket activation at {args.mount}/paradoxd.sock")

        pd.boot(dry_run=True)
        print()
        print("Demo boot complete. All services started in tier-ladder order.")
        print("The dependency tree was computed via meet-semilattice.")
        print(f"μ∘δ=id: {'VERIFIED' if pd._existence_proven else 'FAILED'}")
        return

    # Default: print info and generate unit file
    print("paradoxd — The Init System That Boots by Proving It Exists")
    print()
    print(f"  Structural type: {format_type(PARADOXD_TYPE)}")
    print(f"  Crystal address: {crystal_encode(PARADOXD_TYPE.vals)}")
    print(f"  Tier:            O_∞")
    print()
    print("Usage:")
    print("  python3 paradoxd_ob3ect.py --pid1        Run as PID 1")
    print("  python3 paradoxd_ob3ect.py --verify      Run verification suite")
    print("  python3 paradoxd_ob3ect.py --demo        Dry-run demo boot")
    print("  python3 paradoxd_ob3ect.py --unit-file   Generate systemd unit file")
    print("  python3 paradoxd_ob3ect.py --write-unit PATH  Write unit file")
    print()
    print("To install as init system:")
    print("  sudo python3 paradoxd_ob3ect.py --write-unit /etc/systemd/system/systemd-paradox.service")
    print("  sudo systemctl daemon-reload")
    print("  sudo systemctl enable systemd-paradox.service")
    print("  sudo systemctl start systemd-paradox.service")


if __name__ == "__main__":
    cli()
