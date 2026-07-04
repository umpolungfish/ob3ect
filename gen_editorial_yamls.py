#!/usr/bin/env python3
"""
gen_editorial_yamls.py — Generate editorial_pipeline_ob3ect.py batch YAMLs
for every document-containing directory under ig-docs.

Output dir: ob3ect/igdocs_editorial_yamls/
"""
from __future__ import annotations
import json, os, sys
from pathlib import Path
from collections import defaultdict

IG_DOCS  = Path("/home/mrnob0dy666/imsgct/ig-docs")
CATALOG  = Path("/home/mrnob0dy666/imsgct/imscribing_grammar/IG_catalog.json")
OB3ECT   = Path("/home/mrnob0dy666/imsgct/ob3ect")
OUT_DIR  = OB3ECT / "igdocs_editorial_yamls"

EDITORIAL_INTENT = (
    "Rewrite the document in an engaging voice that walks the line "
    "between cosmic gravity and eternal jest. Erase all traces of "
    "the Grammar by replacing with exactly co-typed words or phrases. "
    "The audience is the educated general public."
)

CATEGORY_KEYWORDS = {
    "esoterica":     ["alchemical", "hermetic", "gnostic", "occult", "magic", "esoteric",
                      "kabbalah", "alchemy", "tarot", "grimoire", "goetia", "theurgy"],
    "mathematics":   ["mathematical", "number", "topology", "geometry", "proof", "theorem",
                      "algebra", "manifold", "category", "prime", "conjecture", "riemann",
                      "langlands", "hodge", "homotopy", "set theory", "zeta", "tensor"],
    "physics":       ["physical", "quantum", "particle", "cosmology", "relativity",
                      "gauge", "field theory", "black hole", "higgs", "standard model"],
    "biology":       ["biological", "gene", "protein", "cell", "enzyme", "receptor",
                      "therapeutic", "disease", "cancer", "neuro", "serpent rod",
                      "cephalopod", "bioluminescence", "genome"],
    "chemistry":     ["chemical", "molecule", "bond", "catalyst", "ligand", "synthesis",
                      "ch3mpiler", "reaction", "periodic", "orbital"],
    "consciousness": ["consciousness", "awareness", "self-modeling", "phi", "criticality",
                      "qualia", "sentience", "odot", "gate"],
    "finance":       ["financial", "trading", "market", "synfin", "crypto", "arbitrage"],
    "grammar":       ["grammar", "imscription", "primitive", "crystal", "frobenius",
                      "tuple", "ouroboricity", "IG", "structural type"],
    "logic":         ["logic", "paraconsistent", "belnap", "dialetheic", "fde",
                      "four-valued", "proof", "axiom", "ZFC"],
    "critiques":     ["critique", "review", "analysis"],
    "diagrams":      ["diagram", "figure", "schematic", "chart"],
    "reference":     ["reference", "catalog", "map", "index", "glossary"],
    "publishing":    ["publishing", "manuscript", "article", "paper", "substack",
                      "pdf", "tex", "latex", "publish", "editorial"],
    "alzheimer_rebis_therapeutic": ["alzheimer", "amyloid", "tau", "neurodegenerative", "rebis"],
}


def load_catalog():
    with open(CATALOG, encoding="utf-8") as f:
        data = json.load(f)
    return {e["name"]: e for e in data if isinstance(e, dict) and "name" in e}


def category_keywords(cat_name):
    return CATEGORY_KEYWORDS.get(cat_name, [cat_name])


def find_matching_entries(catalog, keywords, max_entries=12):
    scores = defaultdict(float)
    for name, entry in catalog.items():
        desc = entry.get("description", "")
        text = f"{name} {desc}".lower()
        for kw in keywords:
            if kw.lower() in text:
                scores[name] += 1.0
    ranked = sorted(scores.items(), key=lambda x: -x[1])
    return [name for name, _ in ranked[:max_entries]]


def find_content_dirs(root):
    SKIP = {".git", ".venv", "_builds", "_archive", "_data", "node_modules",
            "figures", "images", "pdfs", "cdxml", "olld", "VOYMAN",
            "__pycache__", "lean", "vms", "folios"}
    result = []
    for dirpath, dirnames, filenames in os.walk(root):
        dirnames[:] = [d for d in dirnames if d not in SKIP and not d.startswith(".")]
        if any(f.endswith(('.md', '.tex')) for f in filenames):
            result.append(Path(dirpath))
    return sorted(result)


def find_batch_groups(content_dirs):
    """Group content dirs into batch groups. Min 2 pieces per batch."""
    groups = defaultdict(list)
    for d in content_dirs:
        children = [c for c in content_dirs if c.parent == d]
        if children:
            groups[d] = children
        else:
            groups[d.parent].append(d)

    # First pass: flatten nested batches
    final = {}
    for batch_dir, pieces in groups.items():
        if len(pieces) <= 1:
            continue
        flat_pieces = []
        for p in pieces:
            if p in groups and len(groups[p]) > 0:
                flat_pieces.extend(groups[p])
            else:
                flat_pieces.append(p)
        final[batch_dir] = sorted(set(flat_pieces), key=str)

    # Second pass: absorb single-piece batches into parent
    # Find all dirs that became batches with just 1 piece after flattening
    absorbed = set()
    final2 = {}
    for batch_dir, pieces in final.items():
        if len(pieces) <= 1:
            # Absorb into parent
            parent = batch_dir.parent
            if parent in final:
                final[parent].extend(pieces)
                final[parent] = sorted(set(final[parent]), key=str)
            absorbed.add(batch_dir)
        else:
            final2[batch_dir] = pieces

    # Re-filter: some parents may now have >1 piece after absorption
    result = {}
    for batch_dir, pieces in final2.items():
        if len(pieces) > 1:
            result[batch_dir] = pieces

    # Special: anything not yet in a batch goes to IG_DOCS root
    all_pieced = set()
    for pieces in result.values():
        all_pieced.update(pieces)
    orphans = [d for d in content_dirs if d not in all_pieced and d != IG_DOCS
               and not any(d in pieces for pieces in result.values())]

    # Add orphans to their nearest batched ancestor or root
    for orphan in orphans:
        parent = orphan.parent
        while parent != IG_DOCS.parent and parent not in result:
            parent = parent.parent
        if parent in result:
            result[parent].append(orphan)
            result[parent] = sorted(set(result[parent]), key=str)
        elif IG_DOCS in result:
            result[IG_DOCS].append(orphan)
            result[IG_DOCS] = sorted(set(result[IG_DOCS]), key=str)
        else:
            result[IG_DOCS] = [orphan]

    return result


def derive_category(batch_dir):
    try:
        rel = batch_dir.relative_to(IG_DOCS)
    except ValueError:
        return "computational"
    parts = rel.parts
    return parts[0] if parts else "computational"


def build_yaml(batch_dir, pieces, catalog, category, output_root):
    # Context files — all .md/.tex/.txt in batch_dir and pieces
    context_files = []
    for d in [batch_dir] + pieces:
        for ext in ['*.md', '*.tex', '*.txt']:
            context_files.extend(sorted(d.glob(ext)))
    context_files = sorted(set(context_files), key=str)[:8]

    entries = find_matching_entries(catalog, category_keywords(category), max_entries=12)

    # Output goes to ig-docs_lifted/<relative-path>
    try:
        rel = batch_dir.relative_to(IG_DOCS)
    except ValueError:
        rel = Path(batch_dir.name)
    output_dir = IG_DOCS.parent / "ig-docs_lifted" / rel

    try:
        piece_names = [str(p.relative_to(batch_dir)) for p in pieces]
    except ValueError:
        piece_names = [str(p.name) for p in pieces]

    lines = [
        f"# Editorial Pipeline — {category} / {batch_dir.name}",
        f"# Batch dir: {batch_dir}",
        f"# Pieces: {len(pieces)} subdirectories",
        f"# Run:  python3 ob3ect/digital/editorial_pipeline/editorial_pipeline_ob3ect.py batch ob3ect/igdocs_editorial_yamls/{batch_dir.name}.yaml",
        "",
        f"name: {category}_{batch_dir.name}",
        f"batch_dir: {batch_dir}",
        "",
        "context:",
        "  files:",
    ]
    for p in context_files[:5]:
        lines.append(f"    - {p}")
    if len(context_files) > 5:
        lines.append(f"    # ... {len(context_files)-5} more context files omitted")

    lines += [
        "  folders: []",
        "",
        "editorial:",
        f"  intent: |",
        f"    {EDITORIAL_INTENT}",
        f"  output_dir: {output_dir}",
        "  output_suffix: \"_lifted\"",
        "  critique: true",
        "  passes: 2",
        "  provider: null",
        "  model: null",
        "  temperature: 0.3",
        "  thinking: false",
        "  source_glob: \"*.md\"",
        "  skip_existing: true",
        "  verbose: false",
        "",
        f"# ── Catalog entries ({len(entries)}) ──",
        f"# {', '.join(entries)}",
        "",
        f"# ── Pieces ({len(pieces)}) ──",
    ]
    for pn in piece_names[:30]:
        lines.append(f"#   - {pn}")
    if len(piece_names) > 30:
        lines.append(f"#   ... {len(piece_names)-30} more")

    return "\n".join(lines) + "\n"


def main():
    print("Loading catalog...")
    catalog = load_catalog()
    print(f"  {len(catalog)} entries")

    print("Walking ig-docs for content directories...")
    content_dirs = find_content_dirs(IG_DOCS)
    print(f"  {len(content_dirs)} content dirs")

    print("Building batch groups...")
    groups = find_batch_groups(content_dirs)
    print(f"  {len(groups)} batch groups")

    # Clear old
    import shutil
    if OUT_DIR.exists():
        shutil.rmtree(OUT_DIR)
    OUT_DIR.mkdir(parents=True, exist_ok=True)

    generated = 0
    for batch_dir, pieces in sorted(groups.items()):
        category = derive_category(batch_dir)
        yaml_text = build_yaml(batch_dir, pieces, catalog, category, OUT_DIR)
        name = batch_dir.name if batch_dir != IG_DOCS else "root"
        out_path = OUT_DIR / f"{category}_{name}.yaml"
        if out_path.exists():
            idx = 2
            while (OUT_DIR / f"{category}_{name}_{idx}.yaml").exists():
                idx += 1
            out_path = OUT_DIR / f"{category}_{name}_{idx}.yaml"
        out_path.write_text(yaml_text, encoding="utf-8")
        generated += 1
        print(f"  [{generated}] {out_path.name}  ({len(pieces)} pieces)")

    total_pieces = sum(len(v) for v in groups.values())
    print(f"\n{'='*60}")
    print(f"Generated {generated} YAMLs in {OUT_DIR}/")
    print(f"Total pieces across all batches: {total_pieces}")
    print(f"{'='*60}")


if __name__ == "__main__":
    main()
