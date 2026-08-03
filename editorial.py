#!/usr/bin/env python3
"""
editorial.py — the editorial pipeline: YAML-driven batch imscription + Ars assembly.

One YAML file holds every specific; the CLI just points at it:

    python3 editorial.py run     config.yaml     # imscribe (LLM) then editorial
    python3 editorial.py census  config.yaml     # editorial only, catalog-sourced, no LLM
    python3 editorial.py imscribe config.yaml     # imscribe only (LLM)

RIGOR: the editorial/census phase reads every 12-primitive tuple from the IG
catalog (machine-sourced). It NEVER hand-imscribes. Entities not yet in the
catalog are reported as pending, not guessed. The imscribe phase runs the
ob3ect designer (LLM) over new entities so they can later enter the catalog.

YAML schema (all keys optional unless noted):

    name: ars_geometrica              # batch id
    out_dir: digital                  # where imscribe-phase ob3ect JSONs land

    design:                           # passed through to auto.design()
      domain: mathematical
      scope: local
      provider: null
      model: null
      temperature: 0.4
      retries: 3
      context: null

    entities:                         # explicit list ("source from the soup")
      - cube
      - regular_tetrahedron
      - "the Penrose tiling"          # free-text -> imscribe phase, pending in census
    entities_from:
      file: entities.txt              # one per line, # comments ok
      catalog_filter: geometr         # pull catalog names/descriptions matching

    editorial:
      ars_title: "Ars Geometrica"
      subtitle: "A Structural Grammar of Form, Curvature, and Space"
      output: ../Ars_Geometrica/Ars_Geometrica_CENSUS.md
      group_convergences: true
      style: enforce                  # enforce | warn | off
"""
from __future__ import annotations
import sys, os, re, json, argparse
from pathlib import Path

try:
    import yaml
except ImportError:
    sys.exit("editorial.py needs PyYAML:  uv pip install pyyaml")

import style_guard  # tyrannical human-writing enforcement on every emitted document

_HERE = Path(__file__).resolve().parent
_CATALOG = _HERE.parent / "imscribing_grammar" / "IG_catalog.json"
PRIM_ORDER = ["⊢", "⊣", ">", "<", "⊤", "⋈", "∋", "∈", "⊞", "⊥", "⊙", "◻"]


# ── catalog access (the soup) ────────────────────────────────────────────────
def load_catalog() -> dict:
    data = json.load(open(_CATALOG, encoding="utf-8"))
    return {e["name"]: e for e in data if isinstance(e, dict) and "name" in e}


def tuple_of(entry: dict) -> str:
    return "".join(entry.get(p, "?") for p in PRIM_ORDER)


# ── entity resolution ────────────────────────────────────────────────────────
def resolve_entities(cfg: dict, catalog: dict) -> list[str]:
    ents: list[str] = list(cfg.get("entities") or [])
    src = cfg.get("entities_from") or {}
    if src.get("file"):
        p = (_HERE / src["file"]) if not os.path.isabs(src["file"]) else Path(src["file"])
        ents += [ln.strip() for ln in open(p, encoding="utf-8")
                 if ln.strip() and not ln.lstrip().startswith("#")]
    if src.get("catalog_filter"):
        f = src["catalog_filter"].lower()
        ents += [n for n, e in catalog.items()
                 if f in n.lower() or f in e.get("description", "").lower()]
    seen, out = set(), []
    for e in ents:
        if e not in seen:
            seen.add(e); out.append(e)
    return out


# ── imscribe phase (LLM; the user runs this) ─────────────────────────────────
def imscribe_phase(cfg: dict, entities: list[str]) -> None:
    import auto  # safe: auto.py guards its CLI under __main__
    d = cfg.get("design", {}) or {}
    out_dir = Path(cfg.get("out_dir", "digital"))
    if not out_dir.is_absolute():
        out_dir = _HERE / out_dir
    n = len(entities)
    for i, ent in enumerate(entities, 1):
        print(f"[{i}/{n}] imscribe: {ent}")
        art = auto.design(
            ent,
            domain_type=d.get("domain"),
            scope=d.get("scope", "local"),
            provider_name=d.get("provider"),
            model=d.get("model"),
            temperature=float(d.get("temperature", 0.4)),
            max_retries=int(d.get("retries", 3)),
            context=d.get("context"),
        )
        slug = re.sub(r"[^a-z0-9]+", "_", ent.lower()).strip("_")[:48] or f"ob3ect_{i}"
        sub = out_dir / slug
        sub.mkdir(parents=True, exist_ok=True)
        art.save(sub / f"{slug}_ob3ect.json")
        print(f"      -> {sub}/{slug}_ob3ect.json")


# ── editorial / census phase (catalog-sourced; no LLM) ───────────────────────
def census_phase(entities: list[str], catalog: dict):
    rows, pending = [], []
    for ent in entities:
        if ent in catalog:
            rows.append((ent, tuple_of(catalog[ent]),
                         catalog[ent].get("description", "")[:70]))
        else:
            pending.append(ent)
    conv: dict[str, list[str]] = {}
    for name, tup, _ in rows:
        conv.setdefault(tup, []).append(name)
    convergences = {t: ns for t, ns in conv.items() if len(ns) > 1}
    return rows, pending, convergences


def render_ars(cfg: dict, rows, pending, convergences) -> str:
    ed = cfg.get("editorial", {}) or {}
    title = ed.get("ars_title", "Ars Incognita")
    L = [
        f"# {title}", "",
        f"## {ed.get('subtitle', 'A Structural Grammar')}", "",
        "**Author:** Lando⊗⊙perator  ",
        "**Structural Type:** *pending procedural imscription (not hand-imscribed)*  ",
        "**Ouroboricity:** ${O}_\\infty$  ", "",
        "---", "",
        "## Census (catalog-sourced)", "",
        "Legend: tuple in order " + " ".join(f"$\\large{{{p}}}$" for p in PRIM_ORDER) + ".", "",
        "| Entity | Tuple | Note |", "|---|---|---|",
    ]
    for name, tup, desc in rows:
        L.append(f"| {name} | $\\large{{{tup}}}$ | {desc} |")
    if convergences:
        L += ["", "## Structural laws (d = 0 convergences)", ""]
        for tup, names in convergences.items():
            L.append(f"- **{' = '.join(names)}** at $\\large{{{tup}}}$")
    if pending:
        L += ["", "## Pending procedural imscription", "",
              "Not yet in the catalog. Imscribe through the tooling (run `editorial.py imscribe`); "
              "do not hand-imscribe:", ""]
        L += [f"- {p}" for p in pending]
    L += ["", "---", "",
          f"*{len(rows)} entities read from `imscribing_grammar/IG_catalog.json`; "
          f"{len(pending)} pending. Nothing hand-imscribed.*", ""]
    return "\n".join(L)


def editorial_phase(cfg: dict, entities: list[str], catalog: dict) -> None:
    rows, pending, convergences = census_phase(entities, catalog)
    md = render_ars(cfg, rows, pending, convergences)
    ed = cfg.get("editorial", {}) or {}
    out = ed.get("output")
    # Every document is certified human-written before it leaves the pipeline.
    md = style_guard.enforce(md, where=str(out or "stdout"),
                             mode=str(ed.get("style", "enforce")))
    if out:
        outp = (_HERE / out) if not os.path.isabs(out) else Path(out)
        outp.parent.mkdir(parents=True, exist_ok=True)
        outp.write_text(md, encoding="utf-8")
        print(f"editorial: wrote {outp}  ({len(rows)} census, {len(pending)} pending, "
              f"{len(convergences)} convergence law(s))")
    else:
        print(md)


# ── driver (the editorial pipeline; a separate tool that uses auto.py) ───────────────────────────────────────
def run_batch(config_path: str, phase: str = "run") -> None:
    """Run a YAML batch. phase: run | imscribe | census.
    A YAML may also set `phase:` itself; the argument overrides it."""
    cfg = yaml.safe_load(open(config_path, encoding="utf-8")) or {}
    phase = phase or cfg.get("phase", "run")
    catalog = load_catalog()
    entities = resolve_entities(cfg, catalog)
    if not entities:
        sys.exit("no entities resolved (set 'entities' / 'entities_from' in the YAML)")
    print(f"batch '{cfg.get('name','(unnamed)')}': {len(entities)} entities  (phase: {phase})")
    if phase in ("run", "imscribe"):
        imscribe_phase(cfg, entities)
    if phase in ("run", "census"):
        editorial_phase(cfg, entities, catalog)


# ── CLI ──────────────────────────────────────────────────────────────────────
_EPILOG = r"""
╔══════════════════════════════════════════════════════════════════════╗
║              OB3ECT EDITORIAL PIPELINE — FULL OPTION SET             ║
╚══════════════════════════════════════════════════════════════════════╝

PHASES ───
  run         imscribe (LLM) then census (editorial).  The full pipeline.
  imscribe    LLM-only:  run ob3ect auto.design() on each entity, save
              JSON ob3ects to out_dir/.  Entities resolved from the YAML
              but NOT looked up in the catalog — fresh encoding every time.
  census      Editorial-only:  read every entity from the IG catalog
              (machine-sourced).  Produce an Ars_*_CENSUS.md Markdown
              document with full 12-primitive tuples, d=0 convergence
              laws, and a pending list for anything not yet catalogued.
              No LLM calls.  No hand-imscribing.  No guessing.

YAML CONFIG SCHEMA ───

  name:  string                 Batch identifier (arbitrary, used in log)
  phase: run | imscribe | census  Optional default; CLI argument overrides
  out_dir:  string              Dir for imscribe-phase JSONs (default: digital/)

  design:                       ── forwarded to auto.design() ──
    domain:       string        mathematical | computational | biological |
                                alchemical | physical | linguistic | ...
    scope:        local | mesoscale | maximal    (default: local)
    provider:     string | null LLM provider (null = default)
    model:        string | null LLM model    (null = default)
    temperature:  float         Sampling temperature  (default: 0.4)
    retries:      int           Retry count on LLM failure  (default: 3)
    context:      string | null Additional prompt context

  entities:                     ── explicit entity list ──
    - entity_name               Exact catalog name (census-resolvable)
    - "free text description"   LLM-imscribed; appears as pending in census
    - ...

  entities_from:                ── dynamic entity sources ──
    file:  path                 One entity per line; # comments; blank ok
    catalog_filter:  substring  Pull all catalog entries whose name or
                                description contains this (case-insensitive)
    → Merged with 'entities:' and deduplicated.

  editorial:                    ── census output options ──
    ars_title:      string      H1 title of the Ars document
    subtitle:       string      H2 subtitle
    output:         path        Output .md file  (stdout if omitted)
    group_convergences: bool    If true, list structural laws (d=0 groups)
    style:          enforce | warn | off
                    style_guard mode:  enforce (default) rewrites AI-voice
                    prose;  warn prints diagnostics;  off skips.

EXAMPLES ───

  # Minimal:  run the full pipeline on a YAML
  $ python3 editorial.py run substack_physics.yaml

  # Census only (no LLM):  resolve catalog entries, produce Ars doc
  $ python3 editorial.py census substack_foundations.yaml

  # Imscribe only:  encode new entities into ob3ect JSONs
  $ python3 editorial.py imscribe substack_launch_batch.yaml

  # With phase set inside the YAML itself:
  $ python3 editorial.py run config.yaml       # overrides YAML 'phase:'

PIPELINE FLOW ───

  YAML file
    │
    ├── resolve_entities()
    │     entities: [...]  +  entities_from: {file, catalog_filter}
    │     → deduplicated entity name list
    │
    ├── [imscribe phase]  (run | imscribe)
    │     for each entity:  auto.design(entity, ...)
    │     → ob3ect/digital/<slug>/<slug>_ob3ect.json
    │
    └── [census phase]    (run | census)
          for each entity:  lookup in IG_catalog.json
          ├── resolved  → 12-primitive tuple, description
          ├── convergent → structural law (d=0 grouping)
          └── pending   → not yet catalogued, listed for imscription
          →
          Ars_*_CENSUS.md  (style_guard.enforce applied)
            ├── Census table
            ├── Structural laws (convergences)
            └── Pending list

ENVIRONMENT ───
  Catalog:   ../imscribing_grammar/IG_catalog.json   (5,000+ entries)
  Ob3ects:   ob3ect/digital/   (output from imscribe phase)
  Guard:     style_guard.py    (human-voice enforcement)

AUTHOR ───
  Lando⊗⊙perator
"""

def main(argv=None):
    ap = argparse.ArgumentParser(
        prog="editorial.py",
        description="YAML-driven ob3ect batch imscription + editorial pipeline.",
        epilog=_EPILOG,
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    ap.add_argument("phase", choices=["run", "imscribe", "census"],
                    help="Pipeline phase:  run (imscribe→census) | "
                         "imscribe (LLM only) | census (catalog only)")
    ap.add_argument("config", help="Path to the batch YAML config file")
    args = ap.parse_args(argv)
    run_batch(args.config, args.phase)


if __name__ == "__main__":
    main()
