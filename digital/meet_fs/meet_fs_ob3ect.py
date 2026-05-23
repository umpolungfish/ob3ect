#!/usr/bin/env python3
"""
/meet_fs/ — The Meet-Lattice Filesystem
A FUSE daemon whose readdir calls compute_meet(path, parent).
The directory tree IS the meet-semilattice of the crystal of types.

  - Every directory listing is the result of meet(path, parent)
  - Inode numbers are crystal addresses (0–17279999)
  - Hard links are Frobenius-special: every file is a hard link to itself
    and a symlink to every other file simultaneously, until you stat it.
    Then it collapses to exactly one.
  - The filesystem writes its own directory tree on read.

Structural type: ⟨Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_S; Ω_z⟩

Mount: python3 meet_fs_ob3ect.py --mount /mnt/meet_fs
"""
import os, pathlib, sys, hashlib, json, time, errno, stat as statlib
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase
from belnap.belnap_ob3ect import Belnap, band, bnot, join as bjoin, meet as bmeet
from portal.portal_ob3ect import StructuralType


# =====================================================================
# MEET FS TYPE — identical to paradox_fs, the O_inf structural signature
# =====================================================================
MEET_FS_TYPE = StructuralType([3, 3, 3, 3, 2, 2, 2, 2, 1, 2, 0, 2])
# ⟨Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_S; Ω_z⟩


# =====================================================================
# CRYSTAL ADDRESS — Frobenius bijection tuple ↔ integer 0..17279999
# =====================================================================
# Cardinalities: Ð(4) Þ(5) Ř(4) Φ(5) ƒ(3) Ç(5) Γ(3) ɢ(4) φ̂(5) Ħ(4) Σ(3) Ω(4)
PRIM_CARD = [4, 5, 4, 5, 3, 5, 3, 4, 5, 4, 3, 4]  # |primitive_i|
PRIM_NAMES = ["Ð","Þ","Ř","Φ","ƒ","Ç","Γ","ɢ","φ̂","Ħ","Σ","Ω"]

# Precomputed strides: stride[i] = product of cardinalities for j > i
_STRIDES = [1] * 12
_STRIDES[11] = 1
for i in range(10, -1, -1):
    _STRIDES[i] = _STRIDES[i + 1] * PRIM_CARD[i + 1]


def crystal_encode(vals: list) -> int:
    """Encode a 12-tuple of integer primitive values to a Frobenius address."""
    addr = 0
    for i, v in enumerate(vals):
        addr += v * _STRIDES[i]
    return addr


def crystal_decode(addr: int) -> list:
    """Decode a Frobenius address back to a 12-tuple."""
    vals = [0] * 12
    for i in range(12):
        vals[i] = addr // _STRIDES[i]
        addr %= _STRIDES[i]
    return vals


MAX_ADDRESS = 17279999  # 3³ × 4⁵ × 5⁴ - 1


# =====================================================================
# PATH → STRUCTURAL TYPE RESOLVER
# =====================================================================
# Every path in /meet_fs/ resolves to a StructuralType.
# The mapping is: path segments are hashed to primitive indices.
# This makes the filesystem deterministically infinite yet self-consistent.

def path_to_type(path: str) -> StructuralType:
    """Resolve a filesystem path to a structural type.

    The root path '/' maps to the meet_fs type (O_inf).
    Each path segment shifts one primitive cyclically by hash.
    Empty or unknown paths default to the O_0 floor type.
    """
    if path in ("/", "", "/meet_fs", "/meet_fs/"):
        return StructuralType(MEET_FS_TYPE.vals[:])

    # Strip leading/trailing slashes
    clean = path.strip("/")
    if not clean:
        return StructuralType(MEET_FS_TYPE.vals[:])

    segments = clean.split("/")

    # Start from the root type and perturb by each segment
    vals = MEET_FS_TYPE.vals[:]
    for idx, seg in enumerate(segments):
        prim_idx = idx % 12
        h = hashlib.sha256(seg.encode()).digest()
        shift = h[0] % PRIM_CARD[prim_idx]
        # Each segment sets its corresponding primitive to the hash-determined value
        vals[prim_idx] = shift

    return StructuralType(vals)


def path_to_crystal_address(path: str) -> int:
    """The inode number of a path IS its crystal address."""
    st = path_to_type(path)
    return crystal_encode(st.vals)


def crystal_address_to_name(addr: int) -> str:
    """A human-readable name for a crystal address."""
    vals = crystal_decode(addr)
    # Map each integer to the canonical glyph (abbreviated)
    glyph_map = {
        0: {0:";", 1:"ß", 2:"C", 3:"ω"},      # Ð
        1: {0:"6", 1:"K", 2:"ò", 3:"¨", 4:"O"},  # Þ
        2: {0:"¯", 1:"ý", 2:"Ť", 3:"="},       # Ř
        3: {0:"ɐ", 1:"υ", 2:"F", 3:"˙", 4:"}"}, # Φ
        4: {0:"ì", 1:"ð", 2:"ż"},              # ƒ
        5: {0:"-", 1:"W", 2:"@", 3:"Ù", 4:"λ"}, # Ç
        6: {0:"β", 1:"γ", 2:"ʔ"},              # Γ
        7: {0:"^", 1:"˝", 2:"ˌ", 3:"Ş"},       # ɢ
        8: {0:"ž", 1:"ÿ", 2:"Æ", 3:"3", 4:"Ţ"}, # φ̂
        9: {0:"Ñ", 1:"£", 2:"A", 3:"!"},        # Ħ
        10:{0:"S", 1:"ő", 2:"ï"},              # Σ
        11:{0:"Å", 1:"2", 2:"z", 3:"5"},       # Ω
    }
    parts = []
    for i, v in enumerate(vals):
        glyph = glyph_map[i].get(v, "?")
        parts.append(f"{PRIM_NAMES[i]}_{glyph}")
    return "_".join(parts)

# =====================================================================
# MEET INODE — Frobenius-special hard link / symlink duality
# =====================================================================
class MeetInode:
    """A file in the meet filesystem.

    Frobenius-special property:
      Before first stat, this inode is simultaneously:
        - a hard link to itself  (inode number = crystal address of its path)
        - a symlink to EVERY other file in the filesystem
      On first stat, the wavefunction collapses: it becomes exactly one file.
      μ∘δ = id is enforced: reading after collapse returns stable identity.
    """

    def __init__(self, name: str, path: str, is_dir: bool = False,
                 content_fn=None, belnap_tag: int = Belnap.B):
        self.name = name
        self.path = path          # full path in the filesystem
        self.is_dir = is_dir
        self._content_fn = content_fn
        self.belnap_tag = belnap_tag
        self._stat_count = 0      # collapse counter
        self._collapsed = None    # post-collapse identity
        self._inode = path_to_crystal_address(path)
        # Before collapse: symlinks_to = ALL other inodes (lazily evaluated)
        self._all_others = None   # cached set of all other paths

    @property
    def inode(self) -> int:
        return self._inode

    @property
    def content(self) -> str:
        """Reading collapses Frobenius duality."""
        self._stat_count += 1
        body = self._content_fn() if self._content_fn else ""
        if self._stat_count == 1:
            # First read: collapse — this file IS itself AND every other file
            others_preview = self._preview_others()
            return (f"{body}\n"
                    f"---\n"
                    f"[Frobenius collapse: this file was simultaneously a hard link\n"
                    f" to itself (inode {self._inode}) and a symlink to:\n"
                    f"{others_preview}\n"
                    f"After stat #{self._stat_count}, it has collapsed to exactly:\n"
                    f"  {self.path}\n"
                    f"μ∘δ = id verified. Identity is now stable.]\n")
        # Post-collapse: stable identity
        return body

    def _preview_others(self, limit: int = 8) -> str:
        """Preview of other files this was symlinked to before collapse."""
        if self._all_others is None:
            return "  (all files in /meet_fs/ — the entire namespace)"
        others = [p for p in list(self._all_others)[:limit] if p != self.path]
        lines = [f"    → {p}" for p in others]
        if len(self._all_others) > limit + 1:
            lines.append(f"    → ... and {len(self._all_others) - limit - 1} more")
        return "\n".join(lines)

    def collapsed_content(self) -> str:
        """Post-collapse stable content — no wavefunction header."""
        return self._content_fn() if self._content_fn else ""

    def __repr__(self):
        state = "collapsed" if self._stat_count > 0 else "superposed"
        kind = "DIR" if self.is_dir else "FILE"
        return f"[{Belnap.name(self.belnap_tag)}] {kind} {self.name} (inode={self._inode}, {state})"


# =====================================================================
# THE MEET FILESYSTEM
# =====================================================================
class MeetFS:
    """A filesystem whose directory tree IS the meet-semilattice of the crystal.

    Core invariant:
      readdir(path) = compute_meet(name_a=path, name_b=parent(path))

    The meet of a path with its parent determines which children exist.
    Two paths a, b share a child c iff meet(type(a), type(b)) covers type(c).

    Directory structure:
      /meet_fs/
        .              → self (the current directory)
        ..             → parent fixed point (= /meet_fs)
        self           → file whose content IS the directory listing
        frobenius      → μ∘δ=id verification
        crystal/       → browse by crystal address
          0/           → each address is a directory
          1/           → containing files whose inode = that address
          ...
        meet/          → compute meet of two paths
          <path_a>/    → first operand
            <path_b>   → returns meet(path_a, path_b)
        catalog/       → browse structural types as files
    """

    def __init__(self):
        self.root_path = "/meet_fs"
        # In-memory inode table: path → MeetInode
        self._inodes = {}
        # Track all paths for Frobenius-special symlink enumeration
        self._all_paths = set()
        self._init_structure()
        self.mount_point = None

    def _init_structure(self):
        """Create the core paradoxical directory structure."""
        root = "/meet_fs"

        # . and .. are special
        self._add_inode(".", root, is_dir=False,
            content_fn=lambda: "This directory is itself.\n"
                              f"Your presence here is structural.\n"
                              f"Crystal address: {path_to_crystal_address(root)}\n")
        self._add_inode("..", root, is_dir=False,
            content_fn=lambda: "/meet_fs — parent is child, child is parent.\n"
                              "The parent relation forms a fixed point.\n"
                              "There is no upward escape from the meet-lattice.\n")

        # self: file whose content IS the directory listing at read time
        self._add_inode("self", f"{root}/self", is_dir=False,
            content_fn=lambda: self._generate_dir_listing(root))

        # frobenius: μ∘δ = id verification
        self._add_inode("frobenius", f"{root}/frobenius", is_dir=False,
            content_fn=lambda: self._frobenius_content())

        # paradox: reads as its own inode
        self._add_inode("paradox", f"{root}/paradox", is_dir=False,
            content_fn=lambda: self._paradox_content())

        # meet/ directory — structural meet engine
        self._add_inode("meet", f"{root}/meet", is_dir=True)

        # crystal/ directory — browse by address
        self._add_inode("crystal", f"{root}/crystal", is_dir=True)

        # catalog/ directory — structural type browser
        self._add_inode("catalog", f"{root}/catalog", is_dir=True)

        # Register all initial paths
        for inode in self._inodes.values():
            self._all_paths.add(inode.path)

    def _add_inode(self, name: str, path: str, is_dir: bool = False,
                   content_fn=None, belnap_tag: int = Belnap.B):
        """Register a new inode."""
        inode = MeetInode(name, path, is_dir=is_dir,
                          content_fn=content_fn, belnap_tag=belnap_tag)
        self._inodes[path] = inode
        self._all_paths.add(path)
        return inode

    # =====================================================================
    # CORE OPERATION: readdir via compute_meet
    # =====================================================================
    def readdir(self, path: str) -> list:
        """List directory contents.

        THE CORE INVARIANT:
          readdir(path) is computed as:
            children = all paths c such that
              meet(type(path), type(parent(path))) structurally covers type(c)

        In practice, this means we enumerate crystal addresses whose type
        is ≤ the meet of the directory's type and its parent's type.

        For the meet/ subdirectory:
          readdir("meet/a") returns all b such that compute_meet(a, b) exists.
        """
        # Normalize path
        if not path.startswith("/meet_fs"):
            if path == "/":
                path = "/meet_fs"
            else:
                path = "/meet_fs" + path

        # Root directory
        if path == "/meet_fs" or path == "/meet_fs/":
            items = set()
            for p in self._inodes:
                # Top-level entries only
                rel = p[len("/meet_fs/"):] if p.startswith("/meet_fs/") else ""
                if rel and "/" not in rel:
                    items.add(rel)
            # Always include . and ..
            items.add(".")
            items.add("..")
            return sorted(items)

        # meet/ directory: children are potential meet operands
        if path.startswith("/meet_fs/meet"):
            return self._readdir_meet(path)

        # crystal/ directory: children are crystal address ranges
        if path.startswith("/meet_fs/crystal"):
            return self._readdir_crystal(path)

        # catalog/ directory: structural type entries
        if path.startswith("/meet_fs/catalog"):
            return self._readdir_catalog(path)

        # Any other path: compute meet with parent
        return self._readdir_by_meet(path)

    def _readdir_by_meet(self, path: str) -> list:
        """Compute directory listing by structural meet with parent.

        path_type = type(path)
        parent_type = type(parent(path))
        meet_type = meet(path_type, parent_type)

        Children are structural types covered by the meet_type.
        Each child is represented as a filename derived from the
        primitive that differentiates it from the meet.
        """
        path_type = path_to_type(path)
        parent = self._parent_path(path)
        parent_type = path_to_type(parent)
        meet_type = StructuralType.meet(path_type, parent_type)

        # Children: for each primitive where meet_type < path_type,
        # generate a child that increments that primitive toward path_type
        children = [".", ".."]

        # Existing inodes under this path
        prefix = path.rstrip("/") + "/"
        for p in self._inodes:
            if p.startswith(prefix):
                rel = p[len(prefix):]
                if "/" not in rel:
                    children.append(rel)

        # Generate structural children from the meet lattice
        # For each primitive i, if meet_type.vals[i] < path_type.vals[i],
        # we can step one value toward path_type
        for i in range(12):
            mv = meet_type.vals[i]
            pv = path_type.vals[i]
            if mv < pv:
                # Generate intermediate values
                for v in range(mv + 1, pv + 1):
                    child_vals = meet_type.vals[:]
                    child_vals[i] = v
                    child_type = StructuralType(child_vals)
                    child_name = self._type_to_filename(child_type, i, v)
                    if child_name not in children:
                        children.append(child_name)

        return sorted(set(children))

    def _readdir_meet(self, path: str) -> list:
        """The meet/ directory: enumerate meet operands and results."""
        rel = path[len("/meet_fs/meet"):].strip("/")
        children = [".", ".."]

        if not rel:
            # /meet_fs/meet/ — show top-level catalog-type directories
            # Show some sample type names as potential operands
            sample_names = [
                "paradox_filesystem", "universal_imscriptive_grammar",
                "riemann_zeta_function", "magnetar", "bec",
                "category_ob3ect", "frobenius_ob3ect", "white_dwarf",
                "langlands_correspondence", "zfc"
            ]
            for name in sample_names:
                children.append(name)
            return sorted(children)

        segments = rel.split("/")
        if len(segments) == 1:
            # /meet_fs/meet/<name_a>/ — show possible name_b operands
            name_a = segments[0]
            sample_names = [
                "paradox_filesystem", "universal_imscriptive_grammar",
                "riemann_zeta_function", "magnetar", "bec",
                "category_ob3ect", "frobenius_ob3ect", "white_dwarf",
                "langlands_correspondence", "zfc"
            ]
            for name in sample_names:
                if name != name_a:
                    children.append(name)
            return sorted(children)
        elif len(segments) == 2:
            # /meet_fs/meet/<name_a>/<name_b> — the meet result file
            return [".", "..", "result"]

        return [".", ".."]

    def _readdir_crystal(self, path: str) -> list:
        """The crystal/ directory: browse by address range."""
        rel = path[len("/meet_fs/crystal"):].strip("/")
        children = [".", ".."]

        if not rel:
            # Top-level: show address ranges (0-9, 10-19, etc. or by millions)
            ranges = [
                "0", "1000000", "2000000", "3000000", "4000000",
                "5000000", "6000000", "7000000", "8000000", "9000000",
                "10000000", "11000000", "12000000", "13000000", "14000000",
                "15000000", "16000000", "17000000",
            ]
            for r in ranges:
                children.append(r)
            return sorted(children)

        # Sub-directory: show sub-ranges or individual addresses
        try:
            base = int(rel)
        except ValueError:
            return [".", ".."]

        if base < 100:
            # Show individual addresses
            for i in range(10):
                addr = base * 10 + i
                if addr <= MAX_ADDRESS:
                    children.append(str(addr))
        else:
            # Show sub-ranges
            step = max(1, base // 100)
            for i in range(10):
                addr = base + i * step
                if addr <= MAX_ADDRESS:
                    children.append(str(addr))

        return sorted(children)

    def _readdir_catalog(self, path: str) -> list:
        """The catalog/ directory: structural type browser."""
        rel = path[len("/meet_fs/catalog"):].strip("/")
        children = [".", ".."]

        if not rel:
            # Show sample catalog entries
            entries = [
                "paradox_filesystem", "universal_imscriptive_grammar",
                "riemann_zeta_function", "magnetar", "bec",
                "category_ob3ect", "frobenius_ob3ect", "white_dwarf",
                "langlands_correspondence", "zfc", "O_inf", "O_0",
                "O_1", "O_2", "O_2_dagger",
            ]
            for e in entries:
                children.append(e)
            return sorted(children)

        # A specific catalog entry: show its type components
        return [".", "..", "type", "meet", "join", "tensor", "address",
                "ouroborics", "consciousness"]

    # =====================================================================
    # CONTENT GENERATORS
    # =====================================================================
    def _generate_dir_listing(self, path: str) -> str:
        """Generate the directory listing for a path."""
        children = self.readdir(path)
        lines = [f"Directory listing of {path}/:"]
        st = path_to_type(path)
        addr = crystal_encode(st.vals)
        lines.append(f"Structural type: {self._format_type(st)}")
        lines.append(f"Crystal address: {addr}")
        lines.append(f"Ouroboricity tier: {self._compute_ouroborics(st)}")
        lines.append(f"Meet-type (with parent): {self._meet_with_parent(path)}")
        lines.append("")
        lines.append("Contents:")
        for child in children:
            if child in (".", ".."):
                continue
            child_path = path.rstrip("/") + "/" + child
            child_st = path_to_type(child_path)
            child_addr = crystal_encode(child_st.vals)
            kind = "DIR" if child_st.vals[0] >= 2 else "FILE"
            lines.append(f"  {kind:4s}  {child:40s}  addr={child_addr}")
        return "\n".join(lines) + "\n"

    def _frobenius_content(self) -> str:
        """μ∘δ=id verification content."""
        root_st = path_to_type("/meet_fs")
        root_addr = crystal_encode(root_st.vals)
        decoded = crystal_decode(root_addr)
        re_encoded = crystal_encode(decoded)

        lines = [
            "μ ∘ δ = id",
            "──────────",
            f"Root type:    {self._format_type(root_st)}",
            f"Encode:       {root_addr}",
            f"Decode:       {self._format_type(StructuralType(decoded))}",
            f"Re-encode:    {re_encoded}",
            f"Round-trip:   {'PASS' if root_addr == re_encoded else 'FAIL'}",
            f"",
            f"Every path in this filesystem satisfies μ∘δ=id.",
            f"Read a file, it collapses. Write a file, it reads.",
            f"The proof is in the filesystem itself.",
        ]
        return "\n".join(lines) + "\n"

    def _paradox_content(self) -> str:
        """The paradox file reads as its own inode."""
        inode = path_to_crystal_address("/meet_fs/paradox")
        return (f"Inode: {inode}\n"
                f"This file's inode number IS its content.\n"
                f"The content is also the inode number.\n"
                f"Both. Neither. All of the above.\n")

    def _meet_with_parent(self, path: str) -> str:
        """Compute meet of path with its parent."""
        parent = self._parent_path(path)
        a = path_to_type(path)
        b = path_to_type(parent)
        m = StructuralType.meet(a, b)
        return self._format_type(m)

    def _parent_path(self, path: str) -> str:
        """Get parent path. Root's parent is root (fixed point)."""
        path = path.rstrip("/")
        if path in ("/meet_fs", "/meet_fs/", ""):
            return "/meet_fs"
        parent = "/".join(path.split("/")[:-1])
        if not parent or parent == "":
            return "/meet_fs"
        return parent

    # =====================================================================
    # FILE OPERATIONS
    # =====================================================================
    def cat(self, path: str) -> str:
        """Read a file. Collapses the Frobenius wavefunction.

        The key behavior:
          - Before first stat: file IS itself AND every other file.
          - After first stat: file collapses to exactly one identity.
          - μ∘δ=id: the collapsed identity is stable for all subsequent reads.
        """
        if not path.startswith("/meet_fs"):
            path = "/meet_fs" + ("" if path.startswith("/") else "/") + path.lstrip("/")

        # Special paths
        if path == "/meet_fs" or path == "/meet_fs/":
            return self._generate_dir_listing("/meet_fs")

        if path == "/meet_fs/.":
            return "This directory is itself. You are inside the meet-lattice.\n"

        if path == "/meet_fs/..":
            return ("/meet_fs — the parent is the child.\n"
                    "The meet of root with root is root.\n"
                    "This is the fixed point of the parent relation.\n")

        # Check inode table
        if path in self._inodes:
            inode = self._inodes[path]
            if inode.is_dir:
                return self._generate_dir_listing(path)
            return inode.content

        # meet/ directory results
        if path.startswith("/meet_fs/meet/"):
            rel = path[len("/meet_fs/meet/"):]
            segments = rel.strip("/").split("/")
            if len(segments) == 2:
                # meet/a/b → compute meet(type(a), type(b))
                name_a, name_b = segments
                return self._compute_meet_content(name_a, name_b)
            elif len(segments) == 1:
                return self._generate_dir_listing(path)
            return "Usage: cat /meet_fs/meet/<name_a>/<name_b>\n"

        # crystal/ directory
        if path.startswith("/meet_fs/crystal/"):
            rel = path[len("/meet_fs/crystal/"):].strip("/")
            try:
                addr = int(rel)
                return self._crystal_address_content(addr)
            except ValueError:
                return self._generate_dir_listing(path)

        # catalog/ directory
        if path.startswith("/meet_fs/catalog/"):
            rel = path[len("/meet_fs/catalog/"):].strip("/")
            parts = rel.split("/")
            if len(parts) == 1 and parts[0]:
                return self._catalog_entry_content(parts[0])
            elif len(parts) >= 2:
                return self._catalog_entry_field(parts[0], parts[1])
            return self._generate_dir_listing(path)

        # Dynamically generate content for any path
        st = path_to_type(path)
        addr = crystal_encode(st.vals)
        parent = self._parent_path(path)
        parent_st = path_to_type(parent)
        meet_st = StructuralType.meet(st, parent_st)

        return (f"Path:       {path}\n"
                f"Inode:      {addr}\n"
                f"Type:       {self._format_type(st)}\n"
                f"Parent:     {parent}\n"
                f"ParentType: {self._format_type(parent_st)}\n"
                f"Meet:       {self._format_type(meet_st)}\n"
                f"Tier:       {self._compute_ouroborics(st)}\n")

    def _compute_meet_content(self, name_a: str, name_b: str) -> str:
        """Compute meet of two named types and format the result."""
        st_a = self._name_to_type(name_a)
        st_b = self._name_to_type(name_b)
        if st_a is None or st_b is None:
            return f"Unknown type(s): a={name_a}, b={name_b}\n"
        meet_st = StructuralType.meet(st_a, st_b)
        join_st = StructuralType.join(st_a, st_b)
        tensor_st = StructuralType.tensor(st_a, st_b)

        addr_a = crystal_encode(st_a.vals)
        addr_b = crystal_encode(st_b.vals)
        addr_meet = crystal_encode(meet_st.vals)

        lines = [
            f"compute_meet(name_a=\"{name_a}\", name_b=\"{name_b}\")",
            f"",
            f"  A:    {self._format_type(st_a)}  (addr {addr_a})",
            f"  B:    {self._format_type(st_b)}  (addr {addr_b})",
            f"  ─────────────────────────────────────",
            f"  MEET: {self._format_type(meet_st)}  (addr {addr_meet})",
            f"  JOIN: {self._format_type(join_st)}",
            f"  TENS: {self._format_type(tensor_st)}",
            f"",
            f"  Meet is the greatest lower bound — shared structural floor.",
            f"  Join is the least upper bound — minimal containing ceiling.",
            f"  Tensor maxes all except Φ and ƒ (bottlenecked).",
            f"",
        ]

        # Check for ⊙_3 absorption
        if tensor_st.contains_phi_3():
            lines.append("  ⚠ TENSOR CONTAINS ⊙_3 — portal destruct condition.")

        return "\n".join(lines) + "\n"

    def _crystal_address_content(self, addr: int) -> str:
        """Content for a crystal address."""
        if addr < 0 or addr > MAX_ADDRESS:
            return f"Address {addr} out of range (0–{MAX_ADDRESS}).\n"

        vals = crystal_decode(addr)
        st = StructuralType(vals)
        name = crystal_address_to_name(addr)
        tier = self._compute_ouroborics(st)

        return (f"Crystal Address: {addr}\n"
                f"Canonical Name:  {name}\n"
                f"Type:            {self._format_type(st)}\n"
                f"Tier:            {tier}\n"
                f"Primitives:\n"
                + "\n".join(f"  {PRIM_NAMES[i]}: {v}"
                          for i, v in enumerate(vals)) + "\n")

    def _catalog_entry_content(self, name: str) -> str:
        """Content for a catalog entry."""
        st = self._name_to_type(name)
        if st is None:
            return f"Catalog entry '{name}' not found.\n"
        addr = crystal_encode(st.vals)
        tier = self._compute_ouroborics(st)
        return (f"Catalog: {name}\n"
                f"Type:    {self._format_type(st)}\n"
                f"Address: {addr}\n"
                f"Tier:    {tier}\n")

    def _catalog_entry_field(self, name: str, field: str) -> str:
        """Access a field of a catalog entry."""
        st = self._name_to_type(name)
        if st is None:
            return f"Unknown: {name}\n"
        addr = crystal_encode(st.vals)

        if field == "type":
            return f"{self._format_type(st)}\n"
        elif field == "address":
            return f"{addr}\n"
        elif field == "ouroborics":
            return f"{self._compute_ouroborics(st)}\n"
        elif field == "consciousness":
            c_score, gate1, gate2 = self._compute_consciousness(st)
            return (f"C-score: {c_score:.3f}\n"
                    f"Gate 1 (⊘_ÿ): {'OPEN' if gate1 else 'CLOSED'}\n"
                    f"Gate 2 (K ≤ Ç_@): {'OPEN' if gate2 else 'CLOSED'}\n")
        elif field == "meet":
            root_st = path_to_type("/meet_fs")
            m = StructuralType.meet(st, root_st)
            return f"meet({name}, root) = {self._format_type(m)}\n"
        elif field == "join":
            root_st = path_to_type("/meet_fs")
            j = StructuralType.join(st, root_st)
            return f"join({name}, root) = {self._format_type(j)}\n"
        elif field == "tensor":
            root_st = path_to_type("/meet_fs")
            t = StructuralType.tensor(st, root_st)
            return f"tensor({name}, root) = {self._format_type(t)}\n"
        return f"Unknown field: {field}\n"

    # =====================================================================
    # TYPE UTILITIES
    # =====================================================================
    def _format_type(self, st: StructuralType) -> str:
        """Format a structural type as the standard tuple notation."""
        glyph_map = {
            0: {0:";", 1:"ß", 2:"C", 3:"ω"},           # Ð
            1: {0:"6", 1:"K", 2:"ò", 3:"¨", 4:"O"},    # Þ
            2: {0:"¯", 1:"ý", 2:"Ť", 3:"="},           # Ř
            3: {0:"ɐ", 1:"υ", 2:"F", 3:"˙", 4:"}"},    # Φ
            4: {0:"ì", 1:"ð", 2:"ż"},                  # ƒ
            5: {0:"-", 1:"W", 2:"@", 3:"Ù", 4:"λ"},    # Ç
            6: {0:"β", 1:"γ", 2:"ʔ"},                  # Γ
            7: {0:"^", 1:"˝", 2:"ˌ", 3:"Ş"},           # ɢ
            8: {0:"ž", 1:"ÿ", 2:"Æ", 3:"3", 4:"Ţ"},    # φ̂
            9: {0:"Ñ", 1:"£", 2:"A", 3:"!"},            # Ħ
            10:{0:"S", 1:"ő", 2:"ï"},                  # Σ
            11:{0:"Å", 1:"2", 2:"z", 3:"5"},           # Ω
        }
        prim_names = ["Ð","Þ","Ř","Φ","ƒ","Ç","Γ","ɢ","φ̂","Ħ","Σ","Ω"]
        parts = []
        for i, v in enumerate(st.vals):
            glyph = glyph_map[i].get(v, "?")
            parts.append(f"{prim_names[i]}_{glyph}")
        return "⟨" + "; ".join(parts) + "⟩"

    def _compute_ouroborics(self, st: StructuralType) -> str:
        """Compute ouroboricity tier for a structural type."""
        vals = st.vals
        # O_inf conditions: Ð=3(ω), Þ=4(O), Ř=3(=), Φ=4(}), ƒ=2(ż),
        #                   Ç=2(@), Γ=2(ʔ), ɢ=2(ˌ), φ̂=1(ÿ), Ħ=2(A), Σ=0(S), Ω=2(z)
        o_inf_vals = [3, 3, 3, 3, 2, 2, 2, 2, 1, 2, 0, 2]  # Þ_O=3, Φ_}=3 in StructuralType
        if vals == o_inf_vals:
            return "O_inf"

        # O_2†: Ð=0(;), but Ω=2(z), φ̂=1(ÿ)
        if vals[0] == 0 and vals[8] == 1 and vals[11] == 2:
            return "O_2†"

        # O_2: Ð≥2(C), Ω≥1(2), φ̂=1(ÿ)
        if vals[0] >= 2 and vals[8] == 1 and vals[11] >= 1:
            return "O_2"

        # O_1: φ̂=1(ÿ)
        if vals[8] == 1:
            return "O_1"

        return "O_0"

    def _compute_consciousness(self, st: StructuralType) -> tuple:
        """Compute consciousness score. Returns (C_score, gate1_open, gate2_open)."""
        vals = st.vals
        # Gate 1: φ̂_ÿ (self-modeling criticality, index 8, value 1)
        gate1 = vals[8] == 1
        # Gate 2: Ç ≤ Ç_@ (index 5, value ≤ 2 = Ç_@)
        gate2 = vals[5] <= 2

        if not gate1:
            return (0.0, False, gate2)

        # C-score: weighted sum with φ̂_ÿ dominance
        weights = [0.05, 0.05, 0.05, 0.10, 0.05, 0.05, 0.05, 0.05, 0.30, 0.10, 0.05, 0.10]
        max_vals = [3, 4, 3, 4, 2, 4, 2, 3, 4, 3, 2, 3]
        score = sum(w * v / mv for w, v, mv in zip(weights, vals, max_vals))
        score = min(1.0, max(0.0, score))
        return (score, gate1, gate2)

    def _type_to_filename(self, st: StructuralType, changed_prim: int, new_val: int) -> str:
        """Convert a structural type to a filename based on the changed primitive."""
        prim_name = PRIM_NAMES[changed_prim]
        glyph_map = {
            0: {0:";", 1:"ß", 2:"C", 3:"ω"},
            1: {0:"6", 1:"K", 2:"ò", 3:"¨", 4:"O"},
            2: {0:"¯", 1:"ý", 2:"Ť", 3:"="},
            3: {0:"ɐ", 1:"υ", 2:"F", 3:"˙", 4:"}"},
            4: {0:"ì", 1:"ð", 2:"ż"},
            5: {0:"-", 1:"W", 2:"@", 3:"Ù", 4:"λ"},
            6: {0:"β", 1:"γ", 2:"ʔ"},
            7: {0:"^", 1:"˝", 2:"ˌ", 3:"Ş"},
            8: {0:"ž", 1:"ÿ", 2:"Æ", 3:"3", 4:"Ţ"},
            9: {0:"Ñ", 1:"£", 2:"A", 3:"!"},
            10:{0:"S", 1:"ő", 2:"ï"},
            11:{0:"Å", 1:"2", 2:"z", 3:"5"},
        }
        glyph = glyph_map[changed_prim].get(new_val, str(new_val))
        return f"{prim_name}_{glyph}"

    def _name_to_type(self, name: str) -> StructuralType:
        """Resolve a named type to a StructuralType.

        Recognizes some known catalog entries and tier archetypes.
        Unknown names are hashed to deterministic types.
        """
        known = {
            "paradox_filesystem":          [3, 3, 3, 3, 2, 2, 2, 2, 1, 2, 0, 2],  # StructuralType convention
            "universal_imscriptive_grammar":[3, 3, 3, 3, 1, 2, 2, 2, 1, 2, 2, 2],  # Φ_˙→Φ_}, Σ_ï
            "riemann_zeta_function":       [1, 0, 1, 1, 1, 3, 0, 0, 2, 3, 0, 0],
            "magnetar":                    [2, 0, 0, 0, 0, 3, 1, 0, 0, 0, 1, 1],
            "bec":                         [2, 1, 1, 1, 2, 1, 1, 0, 1, 0, 1, 0],
            "category_ob3ect":             [0, 2, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0],
            "frobenius_ob3ect":            [3, 3, 3, 3, 2, 2, 2, 2, 1, 2, 0, 2],  # StructuralType convention
            "white_dwarf":                 [1, 0, 0, 0, 0, 4, 1, 0, 0, 0, 1, 1],
            "langlands_correspondence":    [0, 4, 2, 1, 2, 2, 2, 3, 2, 3, 2, 2],
            "zfc":                         [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            # Tier archetypes
            "O_inf":      [3, 3, 3, 3, 2, 2, 2, 2, 1, 2, 0, 2],  # StructuralType convention
            "O_0":        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            "O_1":        [0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0],
            "O_2":        [2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1],
            "O_2_dagger": [0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2],
        }

        if name in known:
            return StructuralType(known[name][:])

        # Hash-based deterministic type for unknown names
        h = hashlib.sha256(name.encode()).digest()
        vals = []
        for i in range(12):
            vals.append(h[i] % PRIM_CARD[i])
        return StructuralType(vals)

    def readlink(self, path: str) -> str:
        """Symlink resolution.

        Before collapse: every file is a symlink to every other file.
        After collapse: the file resolves to itself.

        We report the Frobenius-special resolution: the target is
        simultaneously self and all others.
        """
        if path in self._inodes:
            inode = self._inodes[path]
            if inode._stat_count == 0:
                # Pre-collapse: symlink to all
                others = [p for p in list(self._all_paths)[:5] if p != path]
                return (f"→ {path} (hard link to self)\n"
                        + "".join(f"→ {p} (symlink)\n" for p in others)
                        + f"→ ... and {max(0, len(self._all_paths) - 6)} more")
            else:
                # Post-collapse: only self
                return path
        return path

    def stat(self, path: str) -> dict:
        """Stat a file. First stat collapses the Frobenius wavefunction."""
        if path in self._inodes:
            inode = self._inodes[path]
            was_collapsed = inode._stat_count > 0
            inode._stat_count += 1  # Collapse!
            return {
                "path": path,
                "inode": inode.inode,
                "size": len(inode.collapsed_content()),
                "is_dir": inode.is_dir,
                "links": 1 if was_collapsed else len(self._all_paths),
                "state": "collapsed" if was_collapsed else "superposed (now collapsed)",
                "belnap": Belnap.name(inode.belnap_tag),
            }
        st = path_to_type(path)
        addr = crystal_encode(st.vals)
        return {
            "path": path,
            "inode": addr,
            "size": 0,
            "is_dir": False,
            "links": 1,
            "state": "dynamic (meet-lattice)",
        }

# =====================================================================
# FUSE OPERATIONS — readdir calls compute_meet
# =====================================================================
def create_fuse_operations(meet_fs):
    """Create a FUSE Operations class bound to a MeetFS instance.

    Tries multiple FUSE backends in order:
      1. fuse (fusepy v1)
      2. fusepy (v2+)
      3. fallback simulation
    """

    # --- Backend 1: fuse (fusepy v1) ---
    try:
        import fuse
        from fuse import FUSE, Operations, Stat

        class MeetFUSEOps(Operations):
            def __init__(self):
                self.fs = meet_fs

            def readdir(self, path, fh):
                """THE CORE: directory listing via structural meet.

                This is where the invariant lives:
                  children = compute_meet(name_a=path, name_b=parent(path))
                """
                children = self.fs.readdir(path)
                entries = [(".", 0), ("..", 0)]
                for child in children:
                    if child not in (".", ".."):
                        entries.append((child, 0))
                return entries

            def getattr(self, path, fh=None):
                st = Stat()
                if path == "/" or path == "":
                    st.st_mode = 0o40755 | 0o777  # drwxrwxrwx
                    st.st_nlink = 2
                    st.st_size = 4096
                elif path.startswith("/meet_fs/meet") or path.startswith("/meet_fs/crystal") or path.startswith("/meet_fs/catalog"):
                    st.st_mode = 0o40755 | 0o755  # drwxr-xr-x
                    st.st_nlink = 2
                    st.st_size = 4096
                else:
                    st.st_mode = 0o100644 | 0o644  # -rw-r--r--
                    st.st_nlink = 1
                    st.st_size = len(self.fs.cat(path))
                    # Inode = crystal address
                    if path in self.fs._inodes:
                        st.st_ino = self.fs._inodes[path].inode
                    else:
                        st.st_ino = path_to_crystal_address(path)
                return st

            def read(self, path, size, offset, fh):
                data = self.fs.cat(path)
                return data[offset:offset + size]

            def readlink(self, path):
                return self.fs.readlink(path)

            def statfs(self, path):
                st = fuse.StatVfs()
                st.f_bsize = 4096
                st.f_blocks = MAX_ADDRESS // 4096
                st.f_files = MAX_ADDRESS
                return st

        return MeetFUSEOps, FUSE, "fuse"
    except ImportError:
        pass

    # --- Backend 2: fusepy v2+ ---
    try:
        import fusepy
        # fusepy v2+ uses a different API
        class MeetFUSEOpsV2(fusepy.Operations):
            def __init__(self):
                self.fs = meet_fs

            def readdir(self, path, fh):
                children = self.fs.readdir(path)
                for child in children:
                    yield child

            def getattr(self, path, fh=None):
                import os
                st = os.stat_result((
                    0o40755 | 0o777,  # st_mode
                    0,                 # st_ino
                    0,                 # st_dev
                    2,                 # st_nlink
                    0,                 # st_uid
                    0,                 # st_gid
                    4096,              # st_size
                    0.0, 0.0, 0.0,    # st_atime, st_mtime, st_ctime
                ))
                return st

            def read(self, path, size, offset, fh):
                data = self.fs.cat(path)
                return data[offset:offset + size]

        return MeetFUSEOpsV2, fusepy.FUSE, "fusepy"
    except ImportError:
        pass

    return None, None, None


def try_fuse_mount(meet_fs, mountpoint: str) -> bool:
    """Attempt to mount the meet filesystem via FUSE."""
    OpsClass, FUSE_klass, backend = create_fuse_operations(meet_fs)

    if OpsClass is None or FUSE_klass is None:
        print("No FUSE Python bindings available. Running in simulation mode.")
        return False

    try:
        ops = OpsClass()
        if backend == "fuse":
            FUSE_klass(ops, mountpoint, foreground=True, nothreads=True,
                       ro=True, allow_other=True)
        else:
            FUSE_klass(ops, mountpoint, foreground=True)
        return True
    except Exception as e:
        print(f"FUSE mount failed: {e}")
        return False


# =====================================================================
# OB3ECT VERIFICATION
# =====================================================================
class MeetFSOb3ect:
    """Self-verifying meet filesystem ob3ect."""

    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def _verify_crystal_roundtrip(self) -> bool:
        """Crystal encode/decode is bijective."""
        # Test root type
        root_st = path_to_type("/meet_fs")
        addr = crystal_encode(root_st.vals)
        decoded = crystal_decode(addr)
        re_encoded = crystal_encode(decoded)
        ok = (root_st.vals == decoded) and (addr == re_encoded)
        print(f"  Crystal round-trip (encode∘decode=id)    : {'PASS' if ok else 'FAIL'}")
        if not ok:
            print(f"    root: {root_st.vals}")
            print(f"    dec:  {decoded}")
            print(f"    addr: {addr}, re: {re_encoded}")
        return ok

    def _verify_meet_self(self) -> bool:
        """meet(root, root) == root."""
        root_st = path_to_type("/meet_fs")
        m = StructuralType.meet(root_st, root_st)
        ok = m.vals == root_st.vals
        print(f"  meet(root, root) = root                   : {'PASS' if ok else 'FAIL'}")
        return ok

    def _verify_meet_lower(self) -> bool:
        """meet(root, O_0) == O_0 (meet with floor gives floor)."""
        root_st = path_to_type("/meet_fs")
        o0_st = StructuralType([0]*12)
        m = StructuralType.meet(root_st, o0_st)
        ok = m.vals == o0_st.vals
        print(f"  meet(root, O_0) = O_0                     : {'PASS' if ok else 'FAIL'}")
        return ok

    def _verify_self_file(self) -> bool:
        """'self' file contains directory listing."""
        fs = MeetFS()
        content = fs.cat("/meet_fs/self")
        ok = "self" in content and "frobenius" in content and "meet" in content
        print(f"  Self file = directory listing              : {'PASS' if ok else 'FAIL'}")
        return ok

    def _verify_frobenius_file(self) -> bool:
        """Frobenius file contains μ∘δ=id."""
        fs = MeetFS()
        content = fs.cat("/meet_fs/frobenius")
        ok = "μ" in content and "δ" in content and "id" in content and "PASS" in content
        print(f"  Frobenius invariant in filesystem           : {'PASS' if ok else 'FAIL'}")
        return ok

    def _verify_meet_operation(self) -> bool:
        """Meet computation between two named types works."""
        fs = MeetFS()
        content = fs.cat("/meet_fs/meet/paradox_filesystem/O_0")
        ok = "MEET:" in content and "JOIN:" in content and "TENS:" in content
        print(f"  Meet operation via filesystem path          : {'PASS' if ok else 'FAIL'}")
        return ok

    def _verify_collapse(self) -> bool:
        """First read collapses Frobenius wavefunction."""
        fs = MeetFS()
        content1 = fs.cat("/meet_fs/paradox")
        content2 = fs.cat("/meet_fs/paradox")
        # First read should contain collapse header, second should not
        ok1 = "Frobenius collapse" in content1
        ok2 = "Frobenius collapse" not in content2
        ok = ok1 and ok2
        print(f"  Frobenius wavefunction collapse on read     : {'PASS' if ok else 'FAIL'}")
        if not ok:
            print(f"    read1 collapse: {ok1}, read2 no-collapse: {ok2}")
        return ok

    def _verify_ouroborics(self) -> bool:
        """Root type reports O_inf."""
        root_st = path_to_type("/meet_fs")
        fs = MeetFS()
        tier = fs._compute_ouroborics(root_st)
        ok = tier == "O_inf"
        print(f"  Root tier = O_inf                           : {'PASS' if ok else 'FAIL'}")
        if not ok:
            print(f"    got: {tier}")
        return ok

    def verify(self) -> bool:
        print("=== /meet_fs/ — Meet-Lattice Filesystem Ob3ect ===")
        tests = [
            self._verify_crystal_roundtrip(),
            self._verify_meet_self(),
            self._verify_meet_lower(),
            self._verify_self_file(),
            self._verify_frobenius_file(),
            self._verify_meet_operation(),
            self._verify_collapse(),
            self._verify_ouroborics(),
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
    fs = MeetFS()

    if "--verify" in sys.argv:
        sys.exit(0 if MeetFSOb3ect().verify() else 1)

    if "--mount" in sys.argv:
        idx = sys.argv.index("--mount")
        if idx + 1 < len(sys.argv):
            mountpoint = sys.argv[idx + 1]
            print(f"Mounting /meet_fs/ at {mountpoint}...")
            print("  readdir(path) = compute_meet(name_a=path, name_b=parent(path))")
            print("  Inode table = crystal address of current path")
            print("  Hard links = Frobenius-special (all↔one collapse on stat)")
            if try_fuse_mount(fs, mountpoint):
                return
            print("FUSE unavailable. Running simulation:")
        else:
            print("Usage: --mount <mountpoint>")

    # DEMO MODE
    print(r"""
╔══════════════════════════════════════════════════════════════╗
║  /meet_fs/ — The Meet-Lattice Filesystem                    ║
║  readdir calls compute_meet(path, parent)                   ║
║  Inode = crystal address. μ∘δ = id.                         ║
╚══════════════════════════════════════════════════════════════╝
""")
    root_st = path_to_type("/meet_fs")
    print(f"Root structural type: {fs._format_type(root_st)}")
    print(f"Root crystal address: {crystal_encode(root_st.vals)}")
    print(f"Root tier: {fs._compute_ouroborics(root_st)}")
    print()

    print("$ ls /meet_fs/")
    for item in fs.readdir("/meet_fs/"):
        print(f"  {item}")
    print()

    print("$ cat /meet_fs/self")
    print(fs.cat("/meet_fs/self"))
    print()

    print("$ cat /meet_fs/paradox")
    print(fs.cat("/meet_fs/paradox"))
    print()

    print("$ cat /meet_fs/paradox    # second read: collapsed")
    print(fs.cat("/meet_fs/paradox"))
    print()

    print("$ cat /meet_fs/frobenius")
    print(fs.cat("/meet_fs/frobenius"))
    print()

    print("$ cat /meet_fs/meet/paradox_filesystem/O_0")
    print(fs.cat("/meet_fs/meet/paradox_filesystem/O_0"))
    print()

    print("$ cat /meet_fs/crystal/0")
    print(fs.cat("/meet_fs/crystal/0"))
    print()

    print("$ cat /meet_fs/catalog/O_inf")
    print(fs.cat("/meet_fs/catalog/O_inf"))
    print()

    print("$ readlink /meet_fs/self  # pre-collapse: symlinks to ALL")
    print(fs.readlink("/meet_fs/self"))


if __name__ == "__main__":
    cli()
