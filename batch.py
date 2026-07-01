#!/usr/bin/env python3
"""
batch.py — YAML-driven batch imscription + editorial pipeline for ob3ect.

One YAML file holds every specific; the CLI just points at it:

    python3 batch.py run     config.yaml     # imscribe (LLM) then editorial
    python3 batch.py census  config.yaml     # editorial only, catalog-sourced, no LLM
    python3 batch.py imscribe config.yaml     # imscribe only (LLM)

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
"""
from __future__ import annotations
import sys, os, re, json, argparse
from pathlib import Path

try:
    import yaml
except ImportError:
    sys.exit("batch.py needs PyYAML:  uv pip install pyyaml")

_HERE = Path(__file__).resolve().parent
_CATALOG = _HERE.parent / "imscribing_grammar" / "IG_catalog.json"
PRIM_ORDER = ["Ð", "Þ", "Ř", "Φ", "Ç", "ƒ", "ɢ", "Γ", "Σ", "Ħ", "⊙", "Ω"]


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
        "**Ouroboricity:** \\(O_\\infty\\)  ", "",
        "---", "",
        "## Census (catalog-sourced)", "",
        "Legend: tuple in order `Ð Þ Ř Φ Ç ƒ ɢ Γ Σ Ħ ⊙ Ω`.", "",
        "| Entity | Tuple | Note |", "|---|---|---|",
    ]
    for name, tup, desc in rows:
        L.append(f"| {name} | `{tup}` | {desc} |")
    if convergences:
        L += ["", "## Structural laws (d = 0 convergences)", ""]
        for tup, names in convergences.items():
            L.append(f"- **{' = '.join(names)}** at `{tup}`")
    if pending:
        L += ["", "## Pending procedural imscription", "",
              "Not yet in the catalog. Imscribe through the tooling (run `batch.py imscribe`); "
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
    if out:
        outp = (_HERE / out) if not os.path.isabs(out) else Path(out)
        outp.parent.mkdir(parents=True, exist_ok=True)
        outp.write_text(md, encoding="utf-8")
        print(f"editorial: wrote {outp}  ({len(rows)} census, {len(pending)} pending, "
              f"{len(convergences)} convergence law(s))")
    else:
        print(md)


# ── driver (also called by auto.py -f) ───────────────────────────────────────
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
def main(argv=None):
    ap = argparse.ArgumentParser(description="YAML-driven ob3ect batch + editorial pipeline.")
    ap.add_argument("phase", choices=["run", "imscribe", "census"],
                    help="run = imscribe then editorial; imscribe = LLM only; census = editorial only")
    ap.add_argument("config", help="path to the batch YAML")
    args = ap.parse_args(argv)
    run_batch(args.config, args.phase)


if __name__ == "__main__":
    main()
