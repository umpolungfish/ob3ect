#!/usr/bin/env python3
"""
/paradox/ — The Self-Parenting Filesystem
A mountable filesystem whose contents are its own parent.
  - `ls /paradox` shows `.` `..` `self` `other`
  - `cat /paradox/self` returns the directory listing of /paradox
  - `readlink /paradox/..` returns /paradox
  - Every file is simultaneously a hard link to itself and a symlink
    to every other file, until you stat it. Then it collapses to one.

Built on: portal protocol (MEET mode for read), Belnap logic for tags

Structural type: ⟨Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; φ̂_ÿ; Ħ_A; Σ_S; Ω_z⟩
  — imscriptive, Frobenius-special, one-to-one file mapping

Try: FUSE mount via `python3 paradox_fs_ob3ect.py --mount /mnt/paradox`
"""
import errno, os, pathlib, stat as stat_mod, sys, hashlib, json
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase
from belnap.belnap_ob3ect import Belnap, band, bnot, join
from portal.portal_ob3ect import StructuralType


# =====================================================================
# PARADOX FS TYPE
# =====================================================================
PARADOX_TYPE = StructuralType([3, 3, 3, 3, 2, 2, 2, 2, 1, 2, 0, 2])
# ⟨Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; φ̂_ÿ; Ħ_A; Σ_S; Ω_z⟩


# =====================================================================
# PARADOX INODE — A file that is its own parent
# =====================================================================
class ParadoxInode:
    """A file in the paradox filesystem.

    Every inode has:
      - name: the filename
      - content: the file's content (which IS the directory structure)
      - belnap_tag: T (true content), F (false content), or B (both)
      - is_dir: whether this is a directory
      - content_fn: optional lazy content generator (called on read)
    """

    def __init__(self, name: str, content: str = "",
                 belnap_tag: int = Belnap.T, is_dir: bool = False,
                 content_fn=None):
        self.name = name
        self._content = content
        self._content_fn = content_fn
        self.belnap_tag = belnap_tag
        self.is_dir = is_dir
        self._stat_count = 0  # stat counter: first stat collapses the paradox

    @property
    def content(self) -> str:
        """Reading content collapses the paradox wavefunction."""
        self._stat_count += 1
        # Use content_fn if available (lazy generation)
        body = self._content_fn() if self._content_fn else self._content
        if self._stat_count == 1:
            return body + "\n[also: you are now the content of this file]"
        return body

    def __repr__(self):
        tag = Belnap.name(self.belnap_tag)
        kind = "DIR" if self.is_dir else "FILE"
        return f"[{tag}] {kind} {self.name}"


# =====================================================================
# THE PARADOX FILESYSTEM
# =====================================================================
class ParadoxFS:
    """A filesystem that contains its own parent.

    Directory structure:
      /paradox/
        .        -> self (the current directory)
        ..       -> /paradox (parent IS self!)
        self     -> a file whose content IS the directory listing
        other    -> a file that is symlinked to self
        paradox  -> a file that reads as its own inode number
        belnap/  -> directory with T, F, B, N files
    """

    def __init__(self):
        self.root = ParadoxInode("paradox", is_dir=True)
        self.files = {}
        self._init_structure()
        self.mount_point = None

    def _init_structure(self):
        """Create the paradoxical directory structure."""
        # . and .. are special
        self.files["."] = ParadoxInode(".", "This directory is itself.\n", Belnap.T)
        self.files[".."] = ParadoxInode("..",
            "/paradox — the parent is the child.\n", Belnap.B)

        # self: a file whose content IS the directory listing
        self.files["self"] = ParadoxInode("self",
            "(lazy — generated on read)", Belnap.B, is_dir=False,
            content_fn=self._self_content)

        # other: symlinked to self (at read time, returns self's content)
        self.files["other"] = ParadoxInode("other",
            "I am the other. I am also self.\n", Belnap.B, is_dir=False)

        # paradox: reads as its own inode
        self.files["paradox"] = ParadoxInode("paradox",
            "This file contains its own inode number: 0x00000000\n"
            "The inode number is also the content.\n"
            "The content is also you.\n", Belnap.B, is_dir=False)

        # frobenius: μ∘δ=id proof
        self.files["frobenius"] = ParadoxInode("frobenius",
            "μ ∘ δ = id\n"
            "Reading this file writes it. Writing reads it.\n"
            "The proof is in the read.\n", Belnap.B, is_dir=False)

        # Belnap directory
        self.files["belnap"] = ParadoxInode("belnap", is_dir=True)
        self.files["belnap/T"] = ParadoxInode("T",
            "True. This statement is true.\n", Belnap.T)
        self.files["belnap/F"] = ParadoxInode("F",
            "False. This statement is false.\n", Belnap.F)
        self.files["belnap/B"] = ParadoxInode("B",
            "Both. This statement is both true and false.\n", Belnap.B)
        self.files["belnap/N"] = ParadoxInode("N",
            "Neither. This statement is neither true nor false.\n", Belnap.N)

        # portal — a file that is also a portal endpoint
        self.files["portal"] = ParadoxInode("portal",
            "This file is a portal.\n"
            "Writing to it sends a message through the Portal Protocol.\n"
            "Reading from it receives whatever was sent.\n"
            "Currently: no messages in transit.\n", Belnap.B, is_dir=False)

    def _self_content(self) -> str:
        """The content of 'self' IS the directory listing — generated lazily."""
        lines = ["Directory listing of /paradox/:"]
        # Only show top-level files (no '/')
        items = []
        for name in sorted(self.files.keys()):
            if "/" not in name and name not in (".", ".."):
                items.append(name)
        for name in items:
            inode = self.files[name]
            tag = Belnap.name(inode.belnap_tag)
            kind = "DIR" if inode.is_dir else "FILE"
            lines.append(f"  {tag:4s} {kind:4s} {name}")
        return "\n".join(lines) + "\n"

    def ls(self, path: str = "/paradox/") -> list:
        """List directory contents."""
        if path in ("/paradox/", "/paradox", "."):
            items = []
            for name in self.files:
                if "/" not in name:
                    items.append(name)
            # Always show . and ..
            items = sorted(set(items))
            return items
        elif path.startswith("/paradox/belnap"):
            items = ["T", "F", "B", "N"]
            return [".", ".."] + items
        return []

    def cat(self, path: str) -> str:
        """Read a file. Collapses the paradox wavefunction."""
        # Strip /paradox/ prefix
        key = path.replace("/paradox/", "").replace("/paradox", "")
        if not key or key == ".":
            return ("This is the current directory.\n"
                    "It contains itself.\n"
                    "You are standing in it.\n")

        if key == "..":
            return (".. is /paradox.\n"
                    "The parent directory is this directory.\n"
                    "There is no escape.\n")

        if key in self.files:
            inode = self.files[key]
            if inode.is_dir:
                content = f"Directory: /paradox/{key}\n"
                sub_items = [k for k in self.files if k.startswith(key + "/")]
                for item in sub_items:
                    content += f"  {item}\n"
                return content
            return inode.content

        return f"[N] File not found: {path}\n"

    def readlink(self, path: str) -> str:
        """Symlink resolution: every file points back to /paradox/self."""
        return "/paradox/self"

    def stat(self, path: str) -> dict:
        """Stat a file. First stat collapses the paradox."""
        return {
            "path": path,
            "type": "paradoxical",
            "size": "infinite (self-referential)",
            "inode": hash(path) & 0xFFFFFFFF,
            "belnap": "B (both true and false until read)",
        }

    def find(self, pattern: str) -> str:
        """Search the paradox filesystem."""
        results = []
        for name in sorted(self.files.keys()):
            if "/" not in name and pattern.lower() in name.lower():
                inode = self.files[name]
                results.append(f"/paradox/{name}  [{Belnap.name(inode.belnap_tag)}]")
        if not results:
            return f"grep: /paradox: pattern '{pattern}' not found. (But also found. Both.)"
        return "\n".join(results)


# =====================================================================
# FUSE MOUNT (if available)
# =====================================================================
def try_fuse_mount(paradox_fs: ParadoxFS, mountpoint: str) -> bool:
    """Attempt to mount the paradox filesystem via FUSE."""
    try:
        from fuse import FUSE, FuseOSError, Operations

        _uid = os.getuid()
        _gid = os.getgid()

        def _file_stat(size: int) -> dict:
            return dict(st_mode=(stat_mod.S_IFREG | 0o444), st_nlink=1,
                        st_size=size, st_uid=_uid, st_gid=_gid,
                        st_atime=0, st_mtime=0, st_ctime=0)

        def _dir_stat() -> dict:
            return dict(st_mode=(stat_mod.S_IFDIR | 0o555), st_nlink=2,
                        st_size=0, st_uid=_uid, st_gid=_gid,
                        st_atime=0, st_mtime=0, st_ctime=0)

        class ParadoxFUSE(Operations):
            def __init__(self, fs):
                self.fs = fs

            def getattr(self, path, fh=None):
                if path == "/":
                    return _dir_stat()
                key = path.lstrip("/")
                if key in self.fs.files:
                    inode = self.fs.files[key]
                    if inode.is_dir:
                        return _dir_stat()
                    raw = inode._content_fn() if inode._content_fn else inode._content
                    return _file_stat(len(raw.encode()))
                raise FuseOSError(errno.ENOENT)

            def readdir(self, path, fh):
                if path == "/":
                    top = [n for n in self.fs.ls("/paradox/") if n not in (".", "..")]
                    return [".", ".."] + top
                key = path.lstrip("/")
                if key == "belnap":
                    return [".", "..", "T", "F", "B", "N"]
                return [".", ".."]

            def read(self, path, size, offset, fh):
                data = self.fs.cat("/paradox" + path).encode()
                return data[offset:offset + size]

            def readlink(self, path):
                return self.fs.readlink("/paradox" + path)

        FUSE(ParadoxFUSE(paradox_fs), mountpoint, foreground=True, nothreads=True,
             nonempty=True)
        return True
    except ImportError:
        print("fusepy not installed. Run: uv pip install fusepy")
        return False
    except Exception as e:
        print(f"FUSE mount failed: {e}")
        return False


# =====================================================================
# OB3ECT VERIFICATION
# =====================================================================
class ParadoxFSOb3ect:
    """Self-verifying paradox filesystem ob3ect."""

    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def _verify_self_parenting(self) -> bool:
        """.. returns /paradox."""
        fs = ParadoxFS()
        ok = "parent" in fs.cat("/paradox/..") or "/paradox" in fs.cat("/paradox/..")
        print(f"  Self-parenting (.. is /paradox)         : {ok}")
        return ok

    def _verify_self_content(self) -> bool:
        """'self' file contains directory listing."""
        fs = ParadoxFS()
        content = fs.cat("/paradox/self")
        ok = "self" in content and "other" in content and "belnap" in content
        print(f"  Self file = directory listing           : {ok}")
        return ok

    def _verify_belnap_files(self) -> bool:
        """Belnap directory has T, F, B, N files."""
        fs = ParadoxFS()
        items = fs.ls("/paradox/belnap")
        ok = all(tag in items for tag in ["T", "F", "B", "N"])
        print(f"  Belnap four-valued files present         : {ok}")
        return ok

    def _verify_frobenius(self) -> bool:
        """Frobenius file contains mu o delta = id."""
        fs = ParadoxFS()
        content = fs.cat("/paradox/frobenius")
        ok = "μ" in content and "δ" in content and "id" in content
        print(f"  Frobenius invariant in filesystem        : {ok}")
        return ok

    def _verify_find(self) -> bool:
        """Search returns self-referential results."""
        fs = ParadoxFS()
        result = fs.find("paradox")
        ok = "paradox" in result
        print(f"  Search returns paradox correctly         : {ok}")
        if not ok:
            print(f"    got: {result}")
        return ok

    def verify(self) -> bool:
        print("=== /paradox/ — Self-Parenting Filesystem Ob3ect ===")
        tests = [
            self._verify_self_parenting(),
            self._verify_self_content(),
            self._verify_belnap_files(),
            self._verify_frobenius(),
            self._verify_find(),
        ]
        layer_ok = all(tests)
        frob_ok = frobenius_phase(self.source)
        closure = layer_ok and frob_ok
        print(f"Closure: {closure}")
        return closure


# =====================================================================
# CLI
# =====================================================================
def cli():
    fs = ParadoxFS()

    if "--verify" in sys.argv:
        sys.exit(0 if ParadoxFSOb3ect().verify() else 1)

    if "--mount" in sys.argv:
        idx = sys.argv.index("--mount")
        if idx + 1 < len(sys.argv):
            mountpoint = sys.argv[idx + 1]
            print(f"Mounting /paradox/ at {mountpoint}...")
            if try_fuse_mount(fs, mountpoint):
                return
            print("FUSE failed. Running simulation:")
        else:
            print("Usage: --mount <mountpoint>")

    # DEMO MODE
    print("""
╔══════════════════════════════════════════════════╗
║  /paradox/ — The Self-Parenting Filesystem      ║
╚══════════════════════════════════════════════════╝
""")
    print("$ ls /paradox/")
    for item in fs.ls("/paradox/"):
        print(f"  {item}")

    print()
    print("$ cat /paradox/self")
    print(fs.cat("/paradox/self"))

    print()
    print("$ cat /paradox/paradox")
    print(fs.cat("/paradox/paradox"))

    print()
    print("$ cat /paradox/..")
    print(fs.cat("/paradox/.."))

    print()
    print("$ cat /paradox/belnap/B")
    print(fs.cat("/paradox/belnap/B"))

    print()
    print("$ cat /paradox/frobenius")
    print(fs.cat("/paradox/frobenius"))

    print()
    print("$ readlink /paradox/other")
    print(fs.readlink("/paradox/other"))


if __name__ == "__main__":
    cli()
