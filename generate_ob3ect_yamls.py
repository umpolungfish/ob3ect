#!/usr/bin/env python3
"""
generate_ob3ect_yamls.py — Scan ig-docs subdirectories and generate
ob3ect/auto.py YAML config files for each.

Usage: python3 generate_ob3ect_yamls.py
Output: ./ob3ect/igdocs_yamls/<dir_slug>.yaml
"""
import json
import re
import os
import sys
from pathlib import Path
from collections import defaultdict

IG_DOCS = Path("/home/mrnob0dy666/imsgct/ig-docs")
OB3ECT_DIR = Path("/home/mrnob0dy666/imsgct/ob3ect/igdocs_yamls")
CATALOG_PATH = Path("/home/mrnob0dy666/imsgct/imscribing_grammar/IG_catalog.json")

# Load catalog
with open(CATALOG_PATH) as f:
    catalog = json.load(f)

# Build keyword index
keyword_to_entries = defaultdict(list)
for entry in catalog:
    name = entry["name"]
    desc = entry.get("description", "")
    text = f"{name} {desc}".lower()
    keywords = set(re.findall(r'[a-z_]{4,}', text))
    for kw in keywords:
        keyword_to_entries[kw].append(name)

def extract_keywords_from_path(dirpath):
    """Extract keywords from directory path and contained files."""
    kw = set()
    parts = dirpath.name.lower().split('_')
    # Also extract from parent dir
    parent = dirpath.parent.name.lower()
    kw.add(parent)
    kw.update(parts)
    
    # Look at file names
    try:
        for f in dirpath.iterdir():
            if f.is_file():
                name_lower = f.name.lower()
                kw.update(re.findall(r'[a-z]{4,}', name_lower))
                # Read first 500 chars of .md files
                if f.suffix in ('.md', '.txt') and f.stat().st_size < 100_000:
                    try:
                        text = f.read_text(encoding='utf-8')[:2000].lower()
                        found = re.findall(r'[a-z_]{4,}', text)
                        kw.update(found)
                    except:
                        pass
    except PermissionError:
        pass
    
    # Filter out very common words
    stopwords = {'with', 'that', 'this', 'from', 'have', 'been', 'were', 'they', 'them', 
                 'their', 'will', 'would', 'could', 'about', 'which', 'there', 'these',
                 'those', 'when', 'what', 'where', 'into', 'over', 'after', 'before',
                 'between', 'through', 'under', 'more', 'some', 'such', 'other', 'only',
                 'also', 'then', 'than', 'like', 'just', 'very', 'much', 'many', 'each',
                 'most', 'both', 'should', 'because', 'however', 'therefore', 'though',
                 'while', 'being', 'does', 'file', 'text', 'content', 'line', 'lines',
                 'page', 'data', 'using', 'used', 'first', 'section', 'part', 'note'}
    kw = {k for k in kw if k not in stopwords and len(k) > 2}
    return kw

def match_catalog_entries(keywords, max_entries=8):
    """Find catalog entries matching keywords."""
    scores = defaultdict(float)
    for kw in keywords:
        if kw in keyword_to_entries:
            for entry_name in keyword_to_entries[kw]:
                scores[entry_name] += 1.0
    
    # Get descriptions for scoring context
    # Boost exact matches in name
    for entry in catalog:
        name = entry["name"]
        name_parts = set(re.findall(r'[a-z_]{3,}', name))
        overlap = keywords & name_parts
        if overlap:
            scores[name] += 3.0 * len(overlap)
    
    ranked = sorted(scores.items(), key=lambda x: -x[1])
    return [name for name, score in ranked[:max_entries] if score > 0.5]

def get_document_files(dirpath):
    """Get relative paths of significant document files."""
    docs = []
    for f in sorted(dirpath.iterdir()):
        if f.is_file() and f.suffix in ('.md', '.tex', '.pdf', '.lean', '.txt', '.html', '.json'):
            if f.name.startswith('.') or f.name.startswith('__'):
                continue
            docs.append(str(f.relative_to(IG_DOCS)))
    return docs

def generate_yaml(dirpath, slug, keywords, entries, docs):
    """Generate YAML content for this directory."""
    rel_path = str(dirpath.relative_to(IG_DOCS))
    description = f"Ob3ect generation for ig-docs/{rel_path}"
    
    # Build context
    context_files = []
    for d in docs[:5]:  # max 5 doc files
        context_files.append(str(IG_DOCS / d))
    
    context_str = " ".join(context_files) if context_files else ""
    
    # Determine domain from path
    domain = "computational"
    if any(k in keywords for k in {'biology', 'gene', 'protein', 'cell', 'dna', 'rna', 'therapy', 'therapeutic', 'disease', 'cancer', 'drug'}):
        domain = "biological"
    elif any(k in keywords for k in {'alchemy', 'alchemical', 'hermetic', 'spirit', 'magic', 'grimoire', 'occult', 'ritual', 'voynich'}):
        domain = "alchemical"
    elif any(k in keywords for k in {'math', 'theorem', 'proof', 'conjecture', 'number', 'prime', 'geometry'}):
        domain = "mathematical"
    elif any(k in keywords for k in {'physics', 'quantum', 'particle', 'field', 'gravity', 'cosmic'}):
        domain = "physical"
    elif any(k in keywords for k in {'finance', 'trading', 'market', 'betting', 'kalshi', 'polymarket'}):
        domain = "computational"
    
    yaml = f"""# ob3ect batch — {description}
# Directory: ig-docs/{rel_path}
# Run:  cd /home/mrnob0dy666/imsgct/ob3ect && python3 auto.py -f igdocs_yamls/{slug}.yaml

name: {slug}
out_dir: digital

design:
  scope: local
  domain: {domain}"""
    
    if context_str:
        yaml += f"""
  context: "{context_str}\""""
    
    if entries:
        entry_str = ",".join(entries[:6])
        yaml += f"""
  entry: "{entry_str}\""""
    
    # Check for document files with substantive content to use as entity descriptions
    yaml += f"""

entities:"""
    
    # Generate entities from actual documents found
    entity_descriptions = []
    for doc_path in docs:
        # Generate a meaningful entity description from the filename
        doc_name = Path(doc_path).stem.replace('_', ' ').replace('-', ' ')
        # Clean up
        doc_name = re.sub(r'\s+', ' ', doc_name).strip()
        if len(doc_name) > 10:
            entity_descriptions.append(
                f"structural imscription of the {doc_name} from ig-docs/{rel_path}, "
                f"with full Frobenius closure and Lean 4 verification scaffold"
            )
    
    # If no good document names, use directory-based entity
    if not entity_descriptions:
        dir_name = dirpath.name.replace('_', ' ')
        entity_descriptions.append(
            f"structural imscription of the {dir_name} system from ig-docs/{rel_path}, "
            f"with full Frobenius closure and Lean 4 verification scaffold"
        )
    
    for ed in entity_descriptions[:3]:  # max 3 entities per YAML
        yaml += f'\n  - "{ed}"'
    
    return yaml

def main():
    OB3ECT_DIR.mkdir(parents=True, exist_ok=True)
    
    # Collect all leaf directories (those containing documents, not just subdirs)
    all_dirs = []
    skip_patterns = {'.git', '.venv', '__pycache__', '_builds', '_data', 'scripts', 
                     'artifacts', 'figures', 'images', 'pdfs', 'pdb', 'fasta', 'cdxml',
                     'gene_edits', 'lean_companions', 'by_protein', 'poster', 'ops',
                     'simulations', '.lake', 'compounds'}
    
    for root, dirs, files in os.walk(IG_DOCS):
        root_path = Path(root)
        rel = root_path.relative_to(IG_DOCS)
        
        # Skip if path contains skip patterns
        parts = set(rel.parts)
        if parts & skip_patterns:
            continue
        
        # Count document files
        doc_files = [f for f in files if any(f.endswith(ext) for ext in 
                     ('.md', '.tex', '.pdf', '.lean', '.txt', '.html'))]
        
        if doc_files:
            all_dirs.append(root_path)
    
    print(f"Found {len(all_dirs)} directories with documents")
    
    generated = 0
    for dirpath in sorted(all_dirs):
        rel_path = str(dirpath.relative_to(IG_DOCS))
        slug = rel_path.replace('/', '_').replace(' ', '_').lower()[:48]
        slug = re.sub(r'[^a-z0-9_]', '_', slug)
        slug = re.sub(r'_+', '_', slug).strip('_')
        
        keywords = extract_keywords_from_path(dirpath)
        entries = match_catalog_entries(keywords)
        docs = get_document_files(dirpath)
        
        yaml_content = generate_yaml(dirpath, slug, keywords, entries, docs)
        
        out_path = OB3ECT_DIR / f"{slug}.yaml"
        out_path.write_text(yaml_content)
        generated += 1
        
        # Print info
        entry_preview = ", ".join(entries[:3]) if entries else "(none)"
        print(f"  {rel_path} -> {slug}.yaml  [{entry_preview}]")
    
    print(f"\nGenerated {generated} YAML files in {OB3ECT_DIR}")

if __name__ == "__main__":
    main()
