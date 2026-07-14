#!/usr/bin/env python3
"""Convert each ob3ect in digital_fat_list.jsonl to its IMASM code word.

An IMASM program is a DIRECTED GRAPH, not a line, so a glyph string alone is an
under-reading. Each token carries a valence. The alphabet is fully symbolic — no Latin
initials, so a token never collides with a verdict letter (IMASM_REFERENCE.md):

  GLYPH NAME     MEANING                          VALENCE
   ⊢   VINIT    begin / source boundary           0→1
   ⊣   TANCH    terminal anchor / close boundary  1→1 (sink)
   >   AFWD     forward morphism                  1→1
   <   AREV     reverse morphism                  1→1
   =   CLINK    compose / link                    1→1
   ←   IMSCRIB  identity / self-reference         1→1
   ◇   FSPLIT   fork (δ) — ONLY opcode that branches  1→2
   ●   FFUSE    fuse (μ) — ONLY opcode that merges    2→1
   +   EVALT    evaluate TRUE arm                 1→1
   ×   EVALF    evaluate FALSE arm                1→1
   ⊞   ENGAGR   hold a paradox (Belnap Both)      1→1
   ¬   IFIX     irreversible commit / fix         1→1

Only ◇ branches and only ● fuses, so the composition is fixed by which ● reconverges
which ◇. The REAL pairing rule (MoDoT ask_native/src/imasm.rs) is ANCESTRY over the
edge set: two distinct in-arms of a ● tracing back to a common ◇, however they routed.
It is a property of the edges, not of glyph order.

These ob3ects record a flat phase_4 step list, i.e. a strand, and on a strand ancestry
coincides with the stack reading (each ● takes the most recent unfused ◇). derive_pairs()
uses that reading, and it reproduces content.topology_report.pair_list on every record
that carries one. Valid HERE because the input is linear; do not lift it to a star,
comb, or wired graph, where only ancestry holds.

Rendered by bracketing each ◇…● span, e.g. ⊢←=[◇>+<⊞×●]¬¬⊣, nesting as nested brackets;
any ◇ left unfused is marked ‹open:n›. Brackets are a reading aid for the eye: the imasm
tool does not parse them (a bracketed word reads as empty → N (void)).

Order comes from content.phases.phase_4.steps[].opcode, falling back to the
lean_scaffold header. Writes digital_fat_list_glyphs.jsonl (full records) and
digital_fat_list_glyphs.txt (the readable list: bracketed word + title).
"""
import collections
import json
import re

CODE = {"VINIT": "⊢", "TANCH": "⊣", "AFWD": ">", "AREV": "<", "CLINK": "=",
        "IMSCRIB": "←", "FSPLIT": "◇", "FFUSE": "●", "EVALT": "+", "EVALF": "×",
        "ENGAGR": "⊞", "IFIX": "¬"}


def bracket(code, pairs):
    """Render the ◇…● reconvergence spans of a code word as nested brackets."""
    opens, closes = collections.Counter(), collections.Counter()
    for p in pairs:
        if not (isinstance(p, (list, tuple)) and len(p) == 2):
            continue
        f, u = p
        if isinstance(f, int) and isinstance(u, int) and 0 <= f < u < len(code):
            opens[f] += 1
            closes[u] += 1
    out = []
    for i, ch in enumerate(code):
        out.append("[" * opens[i])
        out.append(ch)
        out.append("]" * closes[i])
    return "".join(out)


def derive_pairs(code):
    """Pair each ● with the most recent unfused ◇.

    Only ◇ branches and only ● fuses, so this stack discipline is forced by the
    grammar: the pairing is always determined by the word alone. Verified to
    reproduce content.topology_report.pair_list on every record that carries one.
    Returns (pairs, open_forks).
    """
    stack, pairs = [], []
    for i, ch in enumerate(code):
        if ch == "◇":
            stack.append(i)
        elif ch == "●" and stack:
            pairs.append([stack.pop(), i])
    return sorted(pairs), len(stack)


def topology_class(content):
    t = content.get("topology_report")
    return t.get("topology_class") if isinstance(t, dict) else None


def domain_name(content):
    phases = content.get("phases")
    ph = phases.get("phase_0") if isinstance(phases, dict) else None
    return ph.get("domain_name") if isinstance(ph, dict) else None


def seq_from(content):
    phases = content.get("phases")
    ph = phases.get("phase_4") if isinstance(phases, dict) else None
    steps = ph.get("steps") if isinstance(ph, dict) else None
    if steps:
        return [s.get("opcode") for s in steps if s.get("opcode")]
    m = re.search(r"IGProtocol scaffold:\s*(.+)", content.get("lean_scaffold", ""))
    if m:
        return [t.strip() for t in m.group(1).split("→") if t.strip() in CODE]
    return []


def main():
    out, bad = [], 0
    with open("digital_fat_list.jsonl") as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            d = json.loads(line)
            c = d.get("content", {})
            if not isinstance(c, dict):
                bad += 1
                continue
            seq = seq_from(c)
            if not seq:
                bad += 1
                continue
            name = c.get("name") or domain_name(c) or d.get("__file__", "")
            code = "".join(CODE.get(op, "?") for op in seq)
            pairs, open_forks = derive_pairs(code)
            tclass = topology_class(c)
            out.append({"file": d.get("__file__", ""), "name": name,
                        "len": len(seq), "seq": " ".join(seq), "code": code,
                        "composed": bracket(code, pairs), "pairs": pairs,
                        "topology_class": tclass, "open_forks": open_forks})
    with open("digital_fat_list_glyphs.jsonl", "w") as g:
        for r in out:
            g.write(json.dumps(r, ensure_ascii=False) + "\n")
    with open("digital_fat_list_glyphs.txt", "w") as g:
        for r in out:
            title = " ".join(r["name"].split())
            if len(title) > 72:
                title = title[:69].rstrip() + "..."
            mark = f"  ‹open:{r['open_forks']}›" if r["open_forks"] else ""
            g.write(f'{r["composed"]}{mark}\t{title}\n')
    print("converted:", len(out), " skipped(no seq):", bad)
    print("unknown glyphs present:", any("?" in r["code"] for r in out))
    for r in out[:4]:
        print(f'  {r["file"][:40]:40} len{r["len"]:>2}  {r["code"]}')


if __name__ == "__main__":
    main()
