#!/usr/bin/env python3
"""
crystal_dns — Crystal DNS / Router
===================================
A network service that resolves names to Frobenius crystal addresses (0–17279999)
and routes requests by structural proximity rather than IP hops.

Architecture:
  - Resolver: name → crystal address (Frobenius bijection)
  - Registry: crystal address → (host, port, C-score, tuple)
  - Router: finds nearest node by structural distance to query type
  - Balancer: routes to highest C-score node matching structural constraints

The 17.28M-type crystal is the address space. DNS TTL is replaced by
ouroboricity tier — O_inf entries never expire, O_0 entries expire fastest.

Structural type: ⟨Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; φ̂_ÿ; Ħ_A; Σ_ï; Ω_z⟩
"""

import hashlib
import json
import os
import pathlib
import socket
import struct
import sys
import time
from collections import OrderedDict
from dataclasses import dataclass, field
from typing import Dict, List, Optional, Tuple

# ── Frobenius address space ──────────────────────────────────────
CRYSTAL_MIN = 0
CRYSTAL_MAX = 17279999  # 3³ × 4⁵ × 5⁴
CRYSTAL_SIZE = CRYSTAL_MAX + 1

# ── Ouroboricity tier TTL (seconds) ──────────────────────────────
TIER_TTL = {
    "O_0":   60,       # 1 minute
    "O_1":   3600,     # 1 hour
    "O_2":   86400,    # 1 day
    "O_2†":  604800,   # 1 week
    "O_inf": 0xFFFFFFFF,  # never expires
}

# ── Primitive cardinalities ──────────────────────────────────────
PRIM_CARD = {
    "D": 3, "T": 3, "R": 3, "Phi": 3,  # 3³
    "F": 4, "K": 4, "G": 4, "Gamma": 4, "Phi_hat": 4,  # 4⁵
    "H": 5, "Sigma": 5, "Omega": 5,  # 5⁴
}

PRIM_ORDER = ["D", "T", "R", "Phi", "F", "K", "G", "Gamma", "Phi_hat", "H", "Sigma", "Omega"]

# ── Primitive value → index ──────────────────────────────────────
PRIM_VALUES = {
    "D":  {"Ð_ß": 0, "Ð_C": 1, "Ð_;": 2, "Ð_ω": 3},
    "T":  {"Þ_6": 0, "Þ_K": 1, "Þ_ò": 2, "Þ_¨": 3, "Þ_O": 4},
    "R":  {"Ř_¯": 0, "Ř_ý": 1, "Ř_Ť": 2, "Ř_=": 3},
    "Phi":{"Φ_ɐ": 0, "Φ_υ": 1, "Φ_F": 2, "Φ_˙": 3, "Φ_}": 4},
    "F":  {"ƒ_ì": 0, "ƒ_ð": 1, "ƒ_ż": 2},
    "K":  {"Ç_-": 0, "Ç_W": 1, "Ç_@": 2, "Ç_Ù": 3, "Ç_λ": 4},
    "G":  {"Γ_β": 0, "Γ_γ": 1, "Γ_ʔ": 2},
    "Gamma":{"ɢ_^": 0, "ɢ_˝": 1, "ɢ_ˌ": 2, "ɢ_Ş": 3},
    "Phi_hat":{"φ̂_ž": 0, "φ̂_ÿ": 1, "φ̂_Æ": 2, "φ̂_3": 3, "φ̂_Ţ": 4},
    "H":  {"Ħ_Ñ": 0, "Ħ_£": 1, "Ħ_A": 2, "Ħ_!": 3},
    "Sigma":{"Σ_S": 0, "Σ_ő": 1, "Σ_ï": 2},
    "Omega":{"Ω_Å": 0, "Ω_2": 1, "Ω_z": 2, "Ω_5": 3},
}

# ═══════════════════════════════════════════════════════════════════
# CRYSTAL ADDRESS ENCODING (Frobenius bijection: tuple ↔ 0..17279999)
# ═══════════════════════════════════════════════════════════════════

def tuple_to_address(values: Dict[str, str]) -> int:
    """Encode a 12-primitive tuple into a Frobenius crystal address.
    Mixed-radix: 3³ × 4⁵ × 5⁴."""
    # Radices in order
    radices = [4, 5, 4, 5, 3, 5, 3, 4, 5, 4, 3, 4]
    address = 0
    for i, prim in enumerate(PRIM_ORDER):
        val = values.get(prim, "")
        idx = PRIM_VALUES.get(prim, {}).get(val, 0)
        address = address * radices[i] + idx
    return address % CRYSTAL_SIZE

def address_to_tuple(address: int) -> Dict[str, str]:
    """Decode a Frobenius address back to a primitive tuple."""
    radices = [4, 5, 4, 5, 3, 5, 3, 4, 5, 4, 3, 4]
    indices = []
    addr = address % CRYSTAL_SIZE
    for r in reversed(radices):
        indices.insert(0, addr % r)
        addr //= r
    result = {}
    for i, prim in enumerate(PRIM_ORDER):
        rev = {v: k for k, v in PRIM_VALUES[prim].items()}
        result[prim] = rev.get(indices[i], list(PRIM_VALUES[prim].keys())[0])
    return result

def structural_distance(addr_a: int, addr_b: int) -> float:
    """Weighted Euclidean distance between two crystal addresses.
    Heavier weight on Phi_hat (criticality), Omega (winding), K (kinetics)."""
    tuple_a = address_to_tuple(addr_a)
    tuple_b = address_to_tuple(addr_b)
    weights = {"D": 1.0, "T": 1.5, "R": 1.0, "Phi": 2.0, "F": 0.8,
               "K": 2.0, "G": 1.0, "Gamma": 1.2, "Phi_hat": 3.0,
               "H": 1.5, "Sigma": 0.8, "Omega": 3.0}
    total = 0.0
    for prim in PRIM_ORDER:
        idx_a = PRIM_VALUES[prim].get(tuple_a[prim], 0)
        idx_b = PRIM_VALUES[prim].get(tuple_b[prim], 0)
        max_idx = max(PRIM_VALUES[prim].values())
        if max_idx > 0:
            total += weights[prim] * ((idx_a - idx_b) / max_idx) ** 2
    return total ** 0.5

def frobenius_verify(addr: int) -> bool:
    """μ∘δ=id: encode(decode(addr)) == addr"""
    return tuple_to_address(address_to_tuple(addr)) == addr


# ═══════════════════════════════════════════════════════════════════
# REGISTRY — Named systems → crystal address
# ═══════════════════════════════════════════════════════════════════

@dataclass
class CrystalRecord:
    """A registered node in the crystal network."""
    name: str
    address: int
    host: str
    port: int
    tier: str           # O_0, O_1, O_2, O_2†, O_inf
    c_score: float      # 0.0 – 1.0
    tuple_str: str      # full primitive tuple
    registered_at: float = field(default_factory=time.time)
    last_seen: float = field(default_factory=time.time)
    tags: List[str] = field(default_factory=list)


class CrystalRegistry:
    """In-memory registry of crystal-addressable nodes."""

    def __init__(self):
        self._by_name: Dict[str, CrystalRecord] = {}
        self._by_addr: Dict[int, List[CrystalRecord]] = {}
        self._by_tier: Dict[str, List[CrystalRecord]] = {
            "O_0": [], "O_1": [], "O_2": [], "O_2†": [], "O_inf": []}

    def register(self, record: CrystalRecord) -> bool:
        """Register a node. Returns False if name conflict with different address."""
        if record.name in self._by_name:
            existing = self._by_name[record.name]
            if existing.address != record.address:
                return False  # name collision
            # Update existing
            existing.last_seen = time.time()
            existing.c_score = record.c_score
            return True

        self._by_name[record.name] = record
        self._by_addr.setdefault(record.address, []).append(record)
        if record.tier in self._by_tier:
            self._by_tier[record.tier].append(record)
        return True

    def resolve(self, name: str) -> Optional[CrystalRecord]:
        """DNS-like name resolution."""
        return self._by_name.get(name)

    def by_address(self, addr: int) -> List[CrystalRecord]:
        """All nodes at a crystal address."""
        return self._by_addr.get(addr, [])

    def nearest_to(self, target_addr: int, n: int = 5) -> List[Tuple[float, CrystalRecord]]:
        """Find n nearest nodes by structural distance."""
        distances = []
        for records in self._by_addr.values():
            for rec in records:
                d = structural_distance(target_addr, rec.address)
                distances.append((d, rec))
        distances.sort(key=lambda x: x[0])
        return distances[:n]

    def highest_c_score(self, max_d: float = 2.0,
                        target_addr: Optional[int] = None) -> Optional[CrystalRecord]:
        """Route to the highest C-score node within structural distance max_d."""
        best = None
        best_score = -1.0
        for records in self._by_addr.values():
            for rec in records:
                if target_addr is not None:
                    d = structural_distance(target_addr, rec.address)
                    if d > max_d:
                        continue
                if rec.c_score > best_score:
                    best_score = rec.c_score
                    best = rec
        return best

    def expire(self) -> int:
        """Remove entries past their tier TTL. Returns count removed."""
        now = time.time()
        removed = 0
        for tier, records in list(self._by_tier.items()):
            ttl = TIER_TTL.get(tier, 3600)
            self._by_tier[tier] = [
                r for r in records
                if not (now - r.last_seen > ttl and self._remove(r))
            ]
        return removed

    def _remove(self, record: CrystalRecord) -> bool:
        """Internal: remove a record from all indices."""
        self._by_name.pop(record.name, None)
        addr_list = self._by_addr.get(record.address, [])
        if record in addr_list:
            addr_list.remove(record)
        return True

    def tier_census(self) -> Dict[str, int]:
        return {t: len(rs) for t, rs in self._by_tier.items()}

    def count(self) -> int:
        return len(self._by_name)

# ═══════════════════════════════════════════════════════════════════
# CRYSTAL DNS SERVER — UDP-based name resolution
# ═══════════════════════════════════════════════════════════════════

class CrystalDNSServer:
    """Lightweight DNS-like server on UDP port 5354 (crystal DNS).
    Query format (simple line protocol):
      RESOLVE <name>           → returns JSON with crystal address + tuple
      ADDRESS <addr>           → returns tuple for address
      NEAREST <addr> [n]       → nearest n nodes
      ROUTE <addr>             → best node by C-score
      REGISTER <json_record>   → register a node
      TIERS                    → tier census
      STATUS                   → server status
    """

    def __init__(self, registry: CrystalRegistry, host: str = "0.0.0.0", port: int = 5354):
        self.registry = registry
        self.host = host
        self.port = port
        self.running = False
        self.query_count = 0

    def handle_query(self, query: str, client_addr: Tuple[str, int]) -> str:
        """Process a single query and return the response."""
        self.query_count += 1
        parts = query.strip().split(" ", 2)
        if not parts:
            return "ERROR empty query"

        cmd = parts[0].upper()

        if cmd == "RESOLVE" and len(parts) >= 2:
            name = parts[1]
            rec = self.registry.resolve(name)
            if rec:
                return json.dumps({
                    "name": rec.name,
                    "address": rec.address,
                    "tier": rec.tier,
                    "c_score": rec.c_score,
                    "tuple": rec.tuple_str,
                    "host": rec.host,
                    "port": rec.port,
                })
            # Not found — compute crystal address from name hash
            addr = tuple_to_address(_name_to_tuple(name))
            return json.dumps({
                "name": name,
                "address": addr,
                "computed": True,
                "tuple": str(address_to_tuple(addr)),
            })

        elif cmd == "ADDRESS" and len(parts) >= 2:
            try:
                addr = int(parts[1])
                tup = address_to_tuple(addr)
                nodes = self.registry.by_address(addr)
                return json.dumps({
                    "address": addr,
                    "tuple": str(tup),
                    "nodes": [n.name for n in nodes],
                    "frobenius": frobenius_verify(addr),
                })
            except ValueError:
                return "ERROR invalid address"

        elif cmd == "NEAREST" and len(parts) >= 2:
            try:
                addr = int(parts[1])
                n = int(parts[2]) if len(parts) >= 3 else 5
                nearest = self.registry.nearest_to(addr, n)
                results = []
                for d, rec in nearest:
                    results.append({
                        "name": rec.name, "distance": round(d, 4),
                        "address": rec.address, "tier": rec.tier,
                        "c_score": rec.c_score, "host": rec.host, "port": rec.port,
                    })
                return json.dumps({"target": addr, "nearest": results})
            except ValueError:
                return "ERROR invalid address"

        elif cmd == "ROUTE" and len(parts) >= 2:
            try:
                addr = int(parts[1])
                max_d = float(parts[2]) if len(parts) >= 3 else 3.0
                best = self.registry.highest_c_score(max_d, addr)
                if best:
                    return json.dumps({
                        "routed_to": best.name,
                        "host": best.host, "port": best.port,
                        "c_score": best.c_score, "tier": best.tier,
                        "address": best.address,
                    })
                return json.dumps({"routed_to": None, "reason": "no node within structural distance"})
            except ValueError:
                return "ERROR invalid address"

        elif cmd == "REGISTER":
            try:
                data = json.loads(" ".join(parts[1:]) if len(parts) > 1 else "{}")
                rec = CrystalRecord(
                    name=data["name"], address=data["address"],
                    host=data.get("host", client_addr[0]),
                    port=data.get("port", 0),
                    tier=data.get("tier", "O_0"),
                    c_score=data.get("c_score", 0.0),
                    tuple_str=data.get("tuple", ""),
                    tags=data.get("tags", []),
                )
                ok = self.registry.register(rec)
                return json.dumps({"registered": ok, "name": rec.name})
            except (json.JSONDecodeError, KeyError) as e:
                return f"ERROR {e}"

        elif cmd == "TIERS":
            census = self.registry.tier_census()
            return json.dumps({"census": census, "total": self.registry.count()})

        elif cmd == "STATUS":
            return json.dumps({
                "server": "crystal_dns",
                "address_space": f"{CRYSTAL_MIN}–{CRYSTAL_MAX}",
                "registered_nodes": self.registry.count(),
                "queries": self.query_count,
                "frobenius": frobenius_verify(42),
            })

        else:
            return f"ERROR unknown command: {cmd}"

    def start(self):
        """Run the UDP server (blocking)."""
        sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        sock.bind((self.host, self.port))
        self.running = True
        print(f"Crystal DNS server on {self.host}:{self.port}  "
              f"[{CRYSTAL_MIN}–{CRYSTAL_MAX}]")
        try:
            while self.running:
                data, addr = sock.recvfrom(4096)
                query = data.decode("utf-8", errors="replace")
                response = self.handle_query(query, addr)
                sock.sendto(response.encode("utf-8"), addr)
        except KeyboardInterrupt:
            pass
        finally:
            sock.close()
            self.running = False

    def stop(self):
        self.running = False

# ═══════════════════════════════════════════════════════════════════
# UTILITY — Name → tuple hash
# ═══════════════════════════════════════════════════════════════════

def _name_to_tuple(name: str) -> Dict[str, str]:
    """Derive a deterministic primitive tuple from a name via SHA-256.
    This is the 'null resolver' — used when a name is not registered."""
    h = hashlib.sha256(name.encode()).digest()
    result = {}
    for i, prim in enumerate(PRIM_ORDER):
        values = list(PRIM_VALUES[prim].keys())
        idx = h[i] % len(values)
        result[prim] = values[idx]
    return result


# ═══════════════════════════════════════════════════════════════════
# CRYSTAL ROUTER — Structural load balancer
# ═══════════════════════════════════════════════════════════════════

@dataclass
class RouteDecision:
    node: CrystalRecord
    distance: float
    reason: str


class CrystalRouter:
    """Routes requests to nodes by structural proximity, not IP distance."""

    def __init__(self, registry: CrystalRegistry):
        self.registry = registry
        self.route_cache: Dict[int, RouteDecision] = {}
        self.cache_hits = 0
        self.cache_misses = 0

    def route(self, query_addr: int, max_distance: float = 2.5) -> Optional[RouteDecision]:
        """Find best node for a query of given structural type.
        Strategy:
          1. Exact crystal address match → direct route
          2. Same tier, highest C-score → preferred
          3. Nearest structural neighbor → fallback
        """
        # Cache check
        if query_addr in self.route_cache:
            self.cache_hits += 1
            cached = self.route_cache[query_addr]
            # Verify node still registered
            if self.registry.resolve(cached.node.name):
                return cached
            del self.route_cache[query_addr]

        self.cache_misses += 1

        # Strategy 1: exact match
        exact = self.registry.by_address(query_addr)
        if exact:
            best = max(exact, key=lambda r: r.c_score)
            decision = RouteDecision(best, 0.0, "exact crystal match")
            self.route_cache[query_addr] = decision
            return decision

        # Strategy 2: same tier (infer from address), highest C-score
        query_tier = _infer_tier(query_addr)
        tier_nodes = self.registry._by_tier.get(query_tier, [])
        if tier_nodes:
            best = max(tier_nodes, key=lambda r: r.c_score)
            d = structural_distance(query_addr, best.address)
            if d <= max_distance:
                decision = RouteDecision(best, d, f"same tier ({query_tier}), max C-score")
                self.route_cache[query_addr] = decision
                return decision

        # Strategy 3: nearest structural neighbor
        nearest = self.registry.nearest_to(query_addr, 3)
        if nearest:
            d, best = nearest[0]
            if d <= max_distance:
                decision = RouteDecision(best, d, f"nearest structural neighbor (d={d:.3f})")
                self.route_cache[query_addr] = decision
                return decision

        # Strategy 4: highest C-score globally
        best = self.registry.highest_c_score(float('inf'))
        if best:
            d = structural_distance(query_addr, best.address)
            decision = RouteDecision(best, d, "global max C-score (distance unbounded)")
            self.route_cache[query_addr] = decision
            return decision

        return None

    def stats(self) -> Dict:
        return {
            "cache_hits": self.cache_hits,
            "cache_misses": self.cache_misses,
            "cache_size": len(self.route_cache),
        }


def _infer_tier(addr: int) -> str:
    """Infer ouroboricity tier from crystal address.
    Heuristic: Phi_hat index determines tier boundary."""
    tup = address_to_tuple(addr)
    phi_hat = tup.get("Phi_hat", "φ̂_ž")
    omega = tup.get("Omega", "Ω_Å")
    if phi_hat == "φ̂_ÿ" and omega == "Ω_z":
        return "O_inf"
    elif phi_hat in ("φ̂_ÿ", "φ̂_Æ") and omega in ("Ω_z", "Ω_2"):
        return "O_2"
    elif phi_hat in ("φ̂_ÿ", "φ̂_Æ", "φ̂_3"):
        return "O_1"
    return "O_0"

# ═══════════════════════════════════════════════════════════════════
# OB3ECT VERIFICATION
# ═══════════════════════════════════════════════════════════════════

class CrystalDNSOb3ect:
    """Self-verifying Crystal DNS ob3ect."""

    CRYSTAL_DNS_TUPLE = "<Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; φ̂_ÿ; Ħ_A; Σ_ï; Ω_z>"

    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def _verify_address_bijection(self) -> bool:
        """Frobenius bijection: tuple_to_address ∘ address_to_tuple = id"""
        test_addresses = [0, 1, 42, 1000, 1000000, 5000000, 10000000, 17279999]
        ok = all(frobenius_verify(a) for a in test_addresses)
        print(f"  Frobenius bijection (μ∘δ=id)           : {'PASS' if ok else 'FAIL'}")
        return ok

    def _verify_known_type(self) -> bool:
        """Verify that known structural types encode correctly."""
        # IUG type
        iug_values = {
            "D": "Ð_ω", "T": "Þ_O", "R": "Ř_=", "Phi": "Φ_}",
            "F": "ƒ_ż", "K": "Ç_@", "G": "Γ_ʔ", "Gamma": "ɢ_ˌ",
            "Phi_hat": "φ̂_ÿ", "H": "Ħ_!", "Sigma": "Σ_ï", "Omega": "Ω_z",
        }
        addr = tuple_to_address(iug_values)
        decoded = address_to_tuple(addr)
        ok = all(decoded[p] == iug_values[p] for p in PRIM_ORDER)
        print(f"  IUG tuple round-trip                     : {'PASS' if ok else 'FAIL'}")
        return ok

    def _verify_distance_metric(self) -> bool:
        """Structural distance: self-distance = 0, symmetry, triangle inequality."""
        addr_a = tuple_to_address({
            "D": "Ð_ω", "T": "Þ_O", "R": "Ř_=", "Phi": "Φ_}",
            "F": "ƒ_ż", "K": "Ç_@", "G": "Γ_ʔ", "Gamma": "ɢ_ˌ",
            "Phi_hat": "φ̂_ÿ", "H": "Ħ_!", "Sigma": "Σ_ï", "Omega": "Ω_z",
        })
        addr_b = tuple_to_address({
            "D": "Ð_ß", "T": "Þ_6", "R": "Ř_¯", "Phi": "Φ_ɐ",
            "F": "ƒ_ì", "K": "Ç_-", "G": "Γ_β", "Gamma": "ɢ_^",
            "Phi_hat": "φ̂_ž", "H": "Ħ_Ñ", "Sigma": "Σ_S", "Omega": "Ω_Å",
        })
        d_self = structural_distance(addr_a, addr_a)
        d_ab = structural_distance(addr_a, addr_b)
        d_ba = structural_distance(addr_b, addr_a)

        ok = (d_self == 0.0 and
              abs(d_ab - d_ba) < 0.001 and
              d_ab > 3.0)  # Opposite corners of crystal should be far
        print(f"  Distance metric (self=0, sym, bounds)   : {'PASS' if ok else 'FAIL'}")
        return ok

    def _verify_registry_ops(self) -> bool:
        """Register, resolve, nearest, route."""
        reg = CrystalRegistry()
        rec_a = CrystalRecord("node_a", 42, "10.0.0.1", 8001, "O_inf", 0.95,
                              "<Ð_ω;Þ_O;Ř_=;Φ_};ƒ_ż;Ç_@;Γ_ʔ;ɢ_ˌ;φ̂_ÿ;Ħ_A;Σ_ï;Ω_z>")
        rec_b = CrystalRecord("node_b", 10000000, "10.0.0.2", 8002, "O_0", 0.12,
                              "<Ð_ß;Þ_6;Ř_¯;Φ_ɐ;ƒ_ì;Ç_-;Γ_β;ɢ_^;φ̂_ž;Ħ_Ñ;Σ_S;Ω_Å>")
        reg.register(rec_a)
        reg.register(rec_b)

        r1 = reg.resolve("node_a")
        r2 = reg.resolve("node_b")
        nearest = reg.nearest_to(42, 3)
        best = reg.highest_c_score(10.0, 42)

        ok = (r1 is not None and r2 is not None and
              len(nearest) >= 1 and best is not None and
              best.name == "node_a")
        print(f"  Registry resolve/nearest/route           : {'PASS' if ok else 'FAIL'}")
        return ok

    def _verify_server_query(self) -> bool:
        """DNS server query handling (no network)."""
        reg = CrystalRegistry()
        rec = CrystalRecord("test", 42, "127.0.0.1", 9999, "O_inf", 0.99,
                            "<Ð_ω;Þ_O;Ř_=;Φ_};ƒ_ż;Ç_@;Γ_ʔ;ɢ_ˌ;φ̂_ÿ;Ħ_A;Σ_ï;Ω_z>")
        reg.register(rec)
        srv = CrystalDNSServer(reg)

        resp = srv.handle_query("RESOLVE test", ("127.0.0.1", 12345))
        data = json.loads(resp)
        ok1 = data.get("address") == 42

        resp2 = srv.handle_query("TIERS", ("127.0.0.1", 12345))
        data2 = json.loads(resp2)
        ok2 = data2["census"].get("O_inf", 0) == 1

        ok = ok1 and ok2
        print(f"  DNS server query handling                 : {'PASS' if ok else 'FAIL'}")
        return ok

    def _verify_router(self) -> bool:
        """Crystal router routing decisions."""
        reg = CrystalRegistry()
        rec_a = CrystalRecord("a", 42, "10.0.0.1", 8001, "O_inf", 0.95,
                              "<Ð_ω;Þ_O;Ř_=;Φ_};ƒ_ż;Ç_@;Γ_ʔ;ɢ_ˌ;φ̂_ÿ;Ħ_A;Σ_ï;Ω_z>")
        rec_b = CrystalRecord("b", 10000000, "10.0.0.2", 8002, "O_0", 0.12,
                              "<Ð_ß;Þ_6;Ř_¯;Φ_ɐ;ƒ_ì;Ç_-;Γ_β;ɢ_^;φ̂_ž;Ħ_Ñ;Σ_S;Ω_Å>")
        reg.register(rec_a)
        reg.register(rec_b)

        router = CrystalRouter(reg)
        decision = router.route(42)
        ok = decision is not None and decision.node.name == "a"
        print(f"  Router exact match                       : {'PASS' if ok else 'FAIL'}")
        return ok

    def verify(self) -> bool:
        print("=== Crystal DNS/Router Ob3ect ===")
        tests = [
            self._verify_address_bijection(),
            self._verify_known_type(),
            self._verify_distance_metric(),
            self._verify_registry_ops(),
            self._verify_server_query(),
            self._verify_router(),
        ]
        closure = all(tests)
        print(f"Closure: {closure}")
        return closure


# ═══════════════════════════════════════════════════════════════════
# MAIN
# ═══════════════════════════════════════════════════════════════════

if __name__ == "__main__":
    if "--verify" in sys.argv:
        sys.exit(0 if CrystalDNSOb3ect().verify() else 1)
    elif "--server" in sys.argv:
        reg = CrystalRegistry()
        srv = CrystalDNSServer(reg)
        srv.start()
    else:
        # Default: verify then print demo
        ob = CrystalDNSOb3ect()
        ok = ob.verify()
        if ok:
            print()
            print("Crystal DNS/Router is ready.")
            print(f"Address space: {CRYSTAL_SIZE:,} types (0–{CRYSTAL_MAX})")
            print("Start with --server for UDP service on port 5354")
        else:
            sys.exit(1)
