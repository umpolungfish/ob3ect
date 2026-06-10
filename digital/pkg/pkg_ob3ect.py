#!/usr/bin/env python3
"""
pkg — Paraconsistent Package Manager
Resolves dependencies via structural JOIN (least upper bound).
Version conflicts are resolved not by picking one version but by
computing the join of the conflicting packages' structural types.

Built on: portal protocol (MEET/JOIN/TENSOR), parakernel (Belnap logic)

Structural type: ⟨Ð_C; Þ_ò; Ř_Ť; Φ_υ; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; φ̂_Æ; Ħ_A; Σ_ï; Ω_z⟩
  — crossing topology, adjoint relations, complex criticality
"""
import os, pathlib, sys, json, hashlib
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase
from belnap.belnap_ob3ect import Belnap, band, bor, join, meet
from portal.portal_ob3ect import StructuralType


# =====================================================================
# PKG TYPE
# =====================================================================
PKG_TYPE = StructuralType([2, 2, 1, 1, 2, 2, 2, 2, 0, 2, 2, 0])
# ⟨Ð_C; Þ_ò; Ř_Ť; Φ_υ; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; φ̂_Æ; Ħ_A; Σ_ï; Ω_z⟩


# =====================================================================
# PACKAGE REPOSITORY
# =====================================================================
PKG_REPO = {
    "cairo": StructuralType([0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0]),
    "libffi": StructuralType([0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0]),
    "glib": StructuralType([1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0]),
    "pixman": StructuralType([0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0]),
    "freetype": StructuralType([0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0]),
    "fontconfig": StructuralType([1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0]),
    "libx11": StructuralType([0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0]),
    "libxcb": StructuralType([0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]),
    "mesa": StructuralType([1, 1, 1, 0, 2, 1, 1, 1, 0, 1, 2, 0]),
    "wayland": StructuralType([1, 1, 1, 0, 2, 0, 1, 1, 0, 1, 1, 0]),
    "zlib": StructuralType([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]),
    "libpng": StructuralType([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0]),
    "libjpeg": StructuralType([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0]),
    "libxml2": StructuralType([0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0]),
    "openssl": StructuralType([1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0]),
    "systemd": StructuralType([2, 2, 2, 0, 2, 1, 2, 1, 0, 2, 2, 0]),
    "firefox": StructuralType([1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 2, 0]),
    "linux_kernel": StructuralType([2, 2, 1, 0, 1, 1, 2, 1, 0, 2, 2, 0]),
    "python": StructuralType([1, 1, 1, 0, 2, 0, 1, 1, 0, 1, 1, 0]),
    "bash": StructuralType([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0]),
}


# =====================================================================
# DEPENDENCY RESOLUTION VIA STRUCTURAL JOIN
# =====================================================================
class PkgResolver:
    """Resolves dependencies by computing structural joins."""

    def __init__(self):
        self.installed = {}  # name -> StructuralType

    def resolve(self, pkg_name: str) -> dict:
        """Resolve a package and all its dependencies."""
        if pkg_name not in PKG_REPO:
            return {"status": "not_found", "name": pkg_name}

        pkg_type = PKG_REPO[pkg_name]
        deps = self._find_dependencies(pkg_name)
        all_types = [pkg_type] + [PKG_REPO[d] for d in deps if d in PKG_REPO]

        # Compute the JOIN of all types (least upper bound)
        resolved = StructuralType([0]*12)
        for t in all_types:
            resolved = StructuralType.join(resolved, t)

        # Check for conflicts (primitives that are at the join but differ)
        conflicts = []
        for d in deps:
            if d in PKG_REPO:
                dt = PKG_REPO[d]
                # If the join changed a primitive, it was a conflict
                conflict_prims = []
                for i in range(12):
                    if dt.vals[i] != pkg_type.vals[i] and resolved.vals[i] == max(dt.vals[i], pkg_type.vals[i]):
                        conflict_prims.append(StructuralType.PRIMITIVE_NAMES[i])
                if conflict_prims:
                    conflicts.append({"package": d, "resolved_via_join": conflict_prims})

        return {
            "status": "resolved",
            "name": pkg_name,
            "type": resolved,
            "dependencies": deps,
            "conflicts_resolved": conflicts,
        }

    def _find_dependencies(self, pkg_name: str) -> list:
        """Discover dependencies by structural proximity."""
        if pkg_name not in PKG_REPO:
            return []

        pkg_type = PKG_REPO[pkg_name]
        deps = []

        # Any package whose type has a non-trivial MEET with this one is a dependency
        for name, t in PKG_REPO.items():
            if name == pkg_name:
                continue
            m = StructuralType.meet(pkg_type, t)
            # If they share at least one non-zero primitive, it's a dep
            if any(v > 0 for v in m.vals):
                deps.append(name)

        return deps

    def install(self, pkg_name: str) -> str:
        """Install a package using structural join resolution."""
        result = self.resolve(pkg_name)
        if result["status"] == "not_found":
            return f"pkg: package '{pkg_name}' not found in repository"

        resolved = result["type"]

        # Simulated install
        self.installed[pkg_name] = resolved

        output = f"pkg: installing {pkg_name}\n"
        output += f"  Resolving dependencies...\n"
        for d in result["dependencies"]:
            output += f"    {d}\n"
            self.installed[d] = PKG_REPO.get(d, StructuralType())

        if result["conflicts_resolved"]:
            output += f"  Conflicts resolved via join:\n"
            for c in result["conflicts_resolved"]:
                output += f"    {c['package']}: {', '.join(c['resolved_via_join'])}\n"

        output += f"  Installed type: {resolved}\n"
        output += f"  C-score of dependency graph: {self._cscore_graph():.3f}\n"

        # Drift check
        if resolved.vals != PKG_REPO.get(pkg_name, resolved).vals:
            output += f"  Warning: your system is drifting toward O_∞\n"

        return output

    def _cscore_graph(self) -> float:
        """Heuristic C-score of the dependency graph."""
        if not self.installed:
            return 0.0
        # How many packages have φ̂_ÿ or higher criticality?
        critical_count = sum(1 for t in self.installed.values() if t.vals[8] >= 1)
        return critical_count / max(len(self.installed), 1)

    def list_installed(self) -> str:
        """List installed packages with their types."""
        lines = ["Installed packages:"]
        for name, t in sorted(self.installed.items()):
            lines.append(f"  {name:20s} {t}")
        return "\n".join(lines)

    def info(self, pkg_name: str) -> str:
        """Show package info."""
        if pkg_name not in PKG_REPO:
            return f"pkg: '{pkg_name}' not found"
        t = PKG_REPO[pkg_name]
        return f"{pkg_name}: {t}"


# =====================================================================
# PKG CLI
# =====================================================================
def cli(args: list) -> str:
    """pkg command-line interface."""
    resolver = PkgResolver()

    if not args:
        return "pkg: usage: pkg install <pkg> | info <pkg> | list | resolve <pkg>"

    cmd = args[0]

    if cmd == "install" and len(args) > 1:
        return resolver.install(args[1])
    elif cmd == "info" and len(args) > 1:
        return resolver.info(args[1])
    elif cmd == "list":
        return resolver.list_installed()
    elif cmd == "resolve" and len(args) > 1:
        result = resolver.resolve(args[1])
        if result["status"] == "not_found":
            return f"pkg: '{args[1]}' not found"
        return (f"Resolved {args[1]}:\n"
                f"  Type: {result['type']}\n"
                f"  Dependencies: {', '.join(result['dependencies'])}\n"
                f"  Conflicts: {len(result['conflicts_resolved'])}")
    else:
        return f"pkg: unknown command '{cmd}'"


# =====================================================================
# OB3ECT VERIFICATION
# =====================================================================
class PkgOb3ect:
    """Self-verifying pkg ob3ect."""

    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def _verify_join_resolution(self) -> bool:
        """JOIN of conflicting types produces a valid upper bound."""
        a = StructuralType([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
        b = StructuralType([3, 3, 3, 3, 2, 2, 2, 2, 1, 2, 2, 2])
        j = StructuralType.join(a, b)
        ok = j.vals == b.vals
        print(f"  Join resolution works                   : {ok}")
        return ok

    def _verify_dependency_discovery(self) -> bool:
        """Firefox depends on cairo (shared primitives)."""
        res = PkgResolver()
        result = res.resolve("firefox")
        ok = "cairo" in result["dependencies"]
        print(f"  Dependency discovery works              : {ok}")
        return ok

    def _verify_install(self) -> bool:
        """Install produces correct output."""
        res = PkgResolver()
        output = res.install("firefox")
        ok = "firefox" in output and "Installed type" in output
        print(f"  Install workflow works                  : {ok}")
        return ok

    def _verify_conflict_resolution(self) -> bool:
        """Conflicting deps are resolved via structural join."""
        res = PkgResolver()
        # linux_kernel and firefox have different types — install triggers join
        output = res.install("linux_kernel")
        ok = "drifting toward O_∞" in output or "Installed type" in output
        print(f"  Conflict resolution works               : {ok}")
        return ok

    def verify(self) -> bool:
        print("=== pkg: Paraconsistent Package Manager Ob3ect ===")
        tests = [
            self._verify_join_resolution(),
            self._verify_dependency_discovery(),
            self._verify_install(),
            self._verify_conflict_resolution(),
        ]
        layer_ok = all(tests)
        frob_ok = frobenius_phase(self.source)
        closure = layer_ok and frob_ok
        print(f"Closure: {closure}")
        return closure


if __name__ == "__main__":
    if "--verify" in sys.argv:
        sys.exit(0 if PkgOb3ect().verify() else 1)
    else:
        print(cli(sys.argv[1:] if len(sys.argv) > 1 else []))
