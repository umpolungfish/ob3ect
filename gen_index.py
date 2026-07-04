#!/usr/bin/env python3
"""
Generate the master INDEX.yaml for igdocs_yamls/
"""
import os
from collections import defaultdict

yamls = sorted([f for f in os.listdir('/home/mrnob0dy666/imsgct/ob3ect/igdocs_yamls') if f.endswith('.yaml')])

categories = defaultdict(list)
for y in yamls:
    parts = y.replace('.yaml','').split('_')
    cat = parts[0]
    categories[cat].append(y)

lines = []
lines.append("# igdocs_yamls INDEX — Master index of all 422 ob3ect auto.py YAML configs")
lines.append(f"# Generated: 2026-07-08")
lines.append(f"# Total YAMLs: {len(yamls)}")
lines.append(f"# Categories: {len(categories)}")
lines.append("#")
lines.append("# Each YAML maps one ig-docs document directory to ob3ect/auto.py")
lines.append("# Run any with: cd /home/mrnob0dy666/imsgct/ob3ect && python3 auto.py -f igdocs_yamls/<name>.yaml")
lines.append("#")
lines.append("")

for cat in sorted(categories.keys()):
    lines.append(f"## {cat}/ ({len(categories[cat])} directories)")
    lines.append("")
    for y in sorted(categories[cat]):
        # Derive ig-docs path from filename
        rel_path = y.replace('.yaml','').replace('_','/').replace('esoterica/esoterica','esoterica')
        rel_path = rel_path.replace('mathematics/math','mathematics/math')
        lines.append(f"- `{y}` → `ig-docs/{rel_path}/`")
    lines.append("")

with open('/home/mrnob0dy666/imsgct/ob3ect/igdocs_yamls/INDEX.yaml', 'w') as f:
    f.write('\n'.join(lines))

print("INDEX.yaml written")
