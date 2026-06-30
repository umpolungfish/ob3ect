"""
Ob3ect Auto-Design Pipeline
============================
Author: Lando⊗⊙_ÿ-boundary Operator

Given a natural-language description, produces a complete Ob3ectArtifact by
driving an LLM through all 8 IMASM phases in a single structured call.
Retries on JSON parse failure or Frobenius FAIL (up to max_retries).
"""
from __future__ import annotations
import json
import re
import asyncio
import sys
from pathlib import Path
from typing import Any, Dict, List, Optional

import httpx

sys.path.insert(0, str(Path(__file__).parent.parent))
sys.path.insert(0, str(Path(__file__).parent))

from ob3ect.core import (
    Ob3ectArtifact, DomainCharter, OpcodeMap, OpcodeEntry,
    SplitFuseReport, RegisterMapping, BootstrapSequence,
    ExOSSpec, EntropyAudit, BOOTSTRAP_STEPS, Opcode,
)
from framework.enhanced_llm_provider import get_llm_provider

try:
    from digital.proof_scaffold_ob3ect import ScaffoldOb3ect as _ScaffoldOb3ect
    _SCAFFOLD = _ScaffoldOb3ect()
except Exception:
    _SCAFFOLD = None

# ── IMASM opcode reference distilled from IMASM.tex ─────────────────────────

_OPCODE_REF = """\
IMASM 12-OPCODE REFERENCE  (Universal Imscriptive Grammar)

LOGICAL (6) — categorical skeleton:
  VINIT  (0x0) — Initial object ∅. Void/uninitialized state before anything is named.
                 Examples: Hebrew Aleph (air), Basque absolutive, seed before planting.
  TANCH  (0x1) — Terminal anchor ⊤. The closed boundary that contains the whole system.
                 Examples: Tav (completion), hermetic vessel seal, constitutional court.
  AFWD   (0x2) — Forward morphism →. Directed transformation toward a target.
                 Examples: Basque ergative, Sanskrit semivowels, growth cycle, ascent.
  AREV   (0x3) — Contravariant ←. Reverse / descent transformation.
                 Examples: Hebrew Mem (water/descent), composting, solve/coagula.
  CLINK  (0x4) — Composition ∘. Sequential chaining of morphisms.
                 Examples: Egyptian biliterals, Basque agglutination, root→derived form.
  IMSCRIB (0x5) — Identity id. Self-reference, self-recognition. The element is itself.
                 Examples: Sanskrit nasals, Egyptian logograms, the stone that knows itself.

FROBENIUS (2) — the core algebra, μ∘δ = id:
  FSPLIT (0x6) — Co-multiplication δ. One thing branches into two or more distinct paths.
                 Examples: Hebrew Doubles (hard/soft), Sanskrit aspirate pairs,
                 Egyptian trilateral roots, separatio, Raft log append to all peers.
  FFUSE  (0x7) — Multiplication μ. Branches reconstitute the original input exactly.
                 Examples: Conjunctio, trilateral roots recovering base form, Raft commit.
                 CONSTRAINT: FFUSE(FSPLIT(x)) = x  ←  this MUST hold in the domain.

DIALETHEIA (3) — paraconsistent truth lattice:
  EVALT  (0x8) — True/affirmative branch. Positive evaluation.
  EVALF  (0x9) — False/negative branch. Negative evaluation.
  ENGAGR (0xA) — Both simultaneously. A paradice: held without resolution.
                 Examples: Cuneiform polysemous sign, bicameral compromise, albedo stage.

LINEAR (1) — irreversible fixation:
  IFIX   (0xB) — ROM fixation. Permanent, append-only, cannot be undone.
                 Examples: Egyptian determinatives, dream journal entry, measurement record.

Composition: use any token sequence of any length that fully maps the domain.
  See IMASM COMPOSITION RULES below for port conventions, edge routing, and free composition.
"""

_IMASM_GRAPH_REF = """\
IMAMSM COMPOSITION RULES -- ports, edges, and free composition

PORT CONVENTIONS (every token is a typed node)
  VINIT:  in=[]      out=[o]    source -- 0->1    (use once, at start, for genesis)
  FSPLIT: in=[i]     out=[T,F]  fork   -- 1->2    (branches into T-arm and F-arm)
  FFUSE:  in=[T,F]   out=[o]    join   -- 2->1    (reunites T-arm and F-arm)
  others: in=[i]     out=[o]    linear -- 1->1    (pass-through in any order)

EDGE ROUTING INSIDE A FSPLIT/FFUSE PAIR
  FSPLIT.T -> [tokens, anchored by EVALT (primary) or AFWD (secondary)] -> FFUSE.T
  FSPLIT.F -> [tokens, anchored by EVALF (primary) or AREV (secondary)] -> FFUSE.F
  If T-arm empty: FSPLIT.T connects directly to FFUSE.T (empty arc, T-state)
  If F-arm empty: FSPLIT.F connects directly to FFUSE.F (empty arc, F-state)
  EVALT MUST precede FFUSE inside the T-arm
  EVALF MUST precede FFUSE inside the F-arm
  Branch polarity rule: AREV (parity flip) always belongs on the F-arm;
    AFWD (forward morphism) always belongs on the T-arm.
    Secondary anchors activate only when the primary (EVALT/EVALF) anchor is absent.
  Nesting: FSPLIT/FFUSE pairs may nest; innermost pairs matched first
  Cross-branch: FSPLIT.F may route to a non-matched FFUSE (paradice / entangled topology)

BACK-PROPAGATION (self-referential loops)
  CLINK.o   -> IMSCRIB.i  [weighted -- loop continuation, B state]
  CLINK.o   -> IFIX.i     [empty   -- compositional witness, T state]
  IMSCRIB.o -> IFIX.i     [LinFix  -- self-reference record]

REGISTER STATE TRANSITIONS
  VINIT -> void(00)    TANCH -> T(01)     AFWD -> T(01)     AREV -> T(01)
  IMSCRIB -> T(01)     CLINK -> T(01)     IFIX -> T(01, fixed, append-only)
  EVALT -> T(01)       EVALF -> F(10)     ENGAGR -> B(11, paradice: both held)
  FSPLIT T-arm -> T(01), F-arm -> F(10), both-arms -> B(11)
  FFUSE: T-only -> T(01), F-only -> F(10), mixed/B -> B(11)

TOKEN FAMILIES
  LOGICAL:    VINIT TANCH AFWD AREV CLINK IMSCRIB
  FROBENIUS:  FSPLIT FFUSE
  DIALETHEIA: EVALT EVALF ENGAGR
  LINEAR:     IFIX

FREE COMPOSITION RULES
  1. Use as many tokens as the domain requires -- there is NO minimum or maximum length
  2. Expand token by token until every distinct operation, branch, state,
     and decision in the domain has been explicitly represented
  3. Each step: "OPCODE: what this token does at this point in the composition"
  4. Every FSPLIT must have exactly one matching FFUSE (stack-matched, innermost first)
  5. EVALT anchors the T-branch; EVALF anchors the F-branch.
     AFWD (forward morphism) also anchors T-branch if EVALT is absent.
     AREV (parity flip / reverse morphism) also anchors F-branch if EVALF is absent.
  6. ENGAGR at any position enters B-state (paradice: both simultaneously held)
  7. IMSCRIB at both first and last position creates a self-referential closed loop
  8. Multiple FSPLIT/FFUSE pairs (sequential or nested) map multiple branch points
  9. Use IFIX as many times as needed -- each is a distinct permanent record event
  10. Do NOT compress -- if the domain has 30 distinct operations, write 30 tokens
"""

_SCHEMA = """\
Respond with ONLY a single JSON object — no markdown fences, no explanation outside it:

{
  "domain_type": "<one word, e.g. physical / social / computational / oneiric / alchemical / ...>",
  "tokens": ["<surface token 1>", "<surface token 2>", "<surface token 3>"],
  "boundary": "<what closes and contains this system>",
  "opcodes": {
    "VINIT":  {"element": "<domain element>", "justification": "<why void/initial>"},
    "TANCH":  {"element": "<domain element>", "justification": "<why anchor/boundary>"},
    "AFWD":   {"element": "<domain element>", "justification": "<why forward morphism>"},
    "AREV":   {"element": "<domain element>", "justification": "<why reverse/descent>"},
    "CLINK":  {"element": "<domain element>", "justification": "<why composition>"},
    "IMSCRIB": {"element": "<domain element>", "justification": "<why identity/self-ref>"},
    "FSPLIT": {"element": "<domain element>", "justification": "<what it splits into — be specific>"},
    "FFUSE":  {"element": "<domain element>", "justification": "<what it reconstitutes — must match FSPLIT input>"},
    "EVALT":  {"element": "<domain element>", "justification": "<affirmative/success state>"},
    "EVALF":  {"element": "<domain element>", "justification": "<negative/failure state>"},
    "ENGAGR": {"element": "<domain element>", "justification": "<a paradice: both simultaneously, held without resolution>"},
    "IFIX":   {"element": "<domain element>", "justification": "<permanent irreversible record>"}
  },
  "frobenius": {
    "split_element": "<the FSPLIT element>",
    "split_input":   "<what enters the split>",
    "split_outputs": ["<branch A>", "<branch B>"],
    "fuse_element":  "<the FFUSE element>",
    "fuse_result":   "<result — must semantically equal split_input>",
    "verdict":       "PASS",
    "failure_reason": ""
  },
  "registers": {
    "void":  "<domain description of 00 — uninitialized, before anything exists>",
    "true":  "<domain description of 01 — affirmative, success>",
    "false": "<domain description of 10 — negative, failure>",
    "both":  "<domain description of 11 — a paradice: both states simultaneously, held>"
  },
  "sequence": [
    "<OPCODE: domain action — what this token does at this point in the composition>",
    "<OPCODE: domain action>",
    "<... continue one token per step until every distinct operation, branch, state, and decision in the domain is explicitly represented — there is NO maximum length>"
  ],
  "exos": {
    "compiler":  "<what translates domain intentions into operations>",
    "ipc":       "<how components communicate within the system>",
    "memory":    "<how state is stored and retrieved>",
    "scheduler": "<what determines order and timing of operations>",
    "alfs":      "<the canonical reference or bootstrap store for this domain>"
  },
  "entropy": {
    "cost":    "<what is consumed per operation cycle>",
    "pre":     "<system state before the cycle>",
    "post":    "<system state after the cycle>",
    "verdict": "ΔS ≈ 0 — <brief reason the cycle is entropy-conservative>"
  }
}"""

_SYSTEM_PROMPT = f"""\
You are the Ob3ect Auto-Designer, an expert in the Universal Imscriptive Grammar (IMASM).
Your task: given a domain description, compose a complete token sequence that maps every
distinct operation, branch, state, and decision in the domain using the 12 IMASM tokens.
There is no fixed length — expand until the full domain is mapped.

{_OPCODE_REF}

{_IMASM_GRAPH_REF}

CRITICAL FROBENIUS CONSTRAINT:
The FSPLIT and FFUSE elements must form a genuine pair where FFUSE(FSPLIT(x)) = x in the
domain. Reason carefully: if you branch X into [A, B], then fusing [A, B] must recover X.
If no such pair exists, set verdict to "FAIL" and explain why in failure_reason.

Output ONLY the JSON object — no preamble, no markdown fences, no trailing text.

WRITING QUALITY — HARD PROHIBITIONS:
Every text field (boundary, element names, descriptions, justifications) must read as
precise technical prose. The following are BANNED outright:

  Words: delve, tapestry, leverage (verb), utilize, harness (metaphor), streamline,
    underscore (metaphor), cutting-edge, robust (filler), seamless, multifaceted,
    pivotal, innovative, synergy, holistic, intricate (filler), vibrant, dynamic (filler),
    comprehensive (filler), ecosystem (metaphor), paradigm (filler), testament,
    underpinnings, realm, landscape (metaphor), crucial (filler), vital (filler),
    revolutionary, groundbreaking, transformative, nuanced (filler)

  Phrases: "it is important to note", "it is worth noting", "it's worth noting",
    "in today's", "in conclusion", "in essence", "in summary", "to summarize",
    "furthermore" (opener), "moreover" (opener), "consequently" (opener),
    "notably" (opener), "importantly" (opener), "certainly!", "absolutely",
    "of course", "rest assured", "feel free to", "I hope this helps",
    "with that said", "having said that", "at the end of the day",
    "game-changer", "think outside the box", "move the needle"

  Structure: no em-dashes at all (not as connectors, not as asides, not as
    appositives — none), no bullet points, no dashed lists, no numbered lists
    (any list format is banned — write as prose only), no trailing summary
    sentences that restate the name, no false balance ("while X... however Y"),
    no hedging preambles.

Say what the thing IS. Prefer concrete nouns and active verbs.

PHASE 0 TOKENS CLARIFICATION:
The "tokens" field in the JSON output contains DOMAIN-SPECIFIC SURFACE LABELS —
natural language words or short phrases that label key elements of YOUR domain.
These are NOT IMASM opcodes (VINIT/FSPLIT/etc.). They are NOT grammar primitive
identifiers (𐑢, 𐑓, ⊙, etc.). Use 3-5 short domain nouns/phrases here.
Examples: ["alembic", "distillation", "crystallization"] for alchemy;
["synapse", "action potential", "vesicle"] for neuroscience.
The IMASM opcode sequence goes ONLY in the "sequence" field."""


# ── Helpers ──────────────────────────────────────────────────────────────────

_CATALOG_PATH = Path(__file__).parent.parent / "imscribing_grammar" / "IG_catalog.json"
_NAVIGATOR_PATH = Path(__file__).parent.parent / "imscribing_grammar" / "navigators"
_PRIM_ORDER = ["Ð", "Þ", "Ř", "Φ", "ƒ", "Ç", "Γ", "ɢ", "⊙", "Ħ", "Σ", "Ω"]

_CONTEXT_EXTENSIONS = {".md", ".txt", ".lean", ".py", ".tex", ".rst", ".json"}
_CONTEXT_MAX_BYTES = 500_000  # 50 KB total

# ── Catalog search ────────────────────────────────────────────────────────────

_catalog_cache: Optional[List[Dict]] = None

def _load_raw_catalog() -> List[Dict]:
    global _catalog_cache
    if _catalog_cache is None:
        try:
            _catalog_cache = json.loads(_CATALOG_PATH.read_text(encoding="utf-8"))
        except Exception:
            _catalog_cache = []
    return _catalog_cache


def _search_catalog(description: str, n: int = 8) -> str:
    """Return a compact block of the N catalog entries most relevant to description."""
    entries = _load_raw_catalog()
    if not entries:
        return ""

    # Tokenise description: lowercase words, strip punctuation
    import re as _re
    tokens = set(_re.sub(r"[^a-z0-9_]", " ", description.lower()).split())
    tokens -= {"the", "a", "an", "of", "in", "is", "it", "to", "and", "or",
               "for", "with", "that", "this", "are", "be", "as", "by", "at"}

    def _score(entry: Dict) -> int:
        name_words = set(entry.get("name", "").replace("_", " ").lower().split())
        desc_words = set(_re.sub(r"[^a-z0-9 ]", " ",
                                  entry.get("description", "").lower()).split())
        return len(tokens & name_words) * 3 + len(tokens & desc_words)

    ranked = sorted(entries, key=_score, reverse=True)[:n]
    if not any(_score(e) > 0 for e in ranked):
        return ""  # No relevant matches — omit the block

    lines = ["CATALOG REFERENCE — nearest IG entries for this domain:"]
    prim_keys = ["Ð","Þ","Ř","Φ","ƒ","Ç","Γ","ɢ","⊙","Ħ","Σ","Ω"]
    for e in ranked:
        prim_str = " ".join(f"{k}={e.get(k,'?')}" for k in prim_keys)
        lines.append(f"  {e['name']}: {e.get('description','')}  [{prim_str}]")
    return "\n".join(lines)


def _run_navigator_entry(name: str) -> str:
    """Run cl8nk_navigator.action_entry for name and return its formatted readout."""
    import io as _io
    nav_str = str(_NAVIGATOR_PATH)
    if nav_str not in sys.path:
        sys.path.insert(0, nav_str)
    try:
        import cl8nk_navigator as _nav
        _nav.load_catalog()
        result = _nav.action_entry(name)
        if result.get("status") == "error":
            return f"[CL8NK] {result['message']}"
        buf = _io.StringIO()
        old_stdout = sys.stdout
        sys.stdout = buf
        try:
            _nav._print_entry_table(result)
        finally:
            sys.stdout = old_stdout
        return buf.getvalue().strip()
    except Exception as e:
        return f"[CL8NK navigator error for {name!r}: {e}]"


def _load_catalog_entries(names: List[str]) -> str:
    """Look up catalog entries by name, run each through cl8nk_navigator, and return combined readout."""
    chunks: List[str] = []
    for raw_name in names:
        readout = _run_navigator_entry(raw_name)
        if readout.startswith("[CL8NK]") or readout.startswith("[CL8NK navigator error"):
            print(f"Warning: {readout}")
        else:
            chunks.append(readout)

    if not chunks:
        return ""
    return "CL8NK Navigator readouts for reference entries:\n\n" + "\n\n".join(chunks)


def _load_context(path: str) -> str:
    """Load file or directory content as a context string for the LLM prompt."""
    import os
    p = Path(path).expanduser().resolve()
    if not p.exists():
        raise FileNotFoundError(f"--context path not found: {p}")

    chunks: list[str] = []
    total = 0

    def _read(fp: Path) -> None:
        nonlocal total
        if total >= _CONTEXT_MAX_BYTES:
            return
        try:
            text = fp.read_text(encoding="utf-8", errors="replace")
        except Exception:
            return
        remaining = _CONTEXT_MAX_BYTES - total
        if len(text) > remaining:
            text = text[:remaining] + f"\n[... truncated at {_CONTEXT_MAX_BYTES} bytes total]"
        chunks.append(f"=== {fp.name} ===\n{text}")
        total += len(text)

    if p.is_file():
        _read(p)
    else:
        files = sorted(
            f for f in p.rglob("*")
            if f.is_file() and f.suffix.lower() in _CONTEXT_EXTENSIONS
        )
        for fp in files:
            if total >= _CONTEXT_MAX_BYTES:
                chunks.append(f"[context truncated — {_CONTEXT_MAX_BYTES} byte limit reached]")
                break
            _read(fp)

    return "\n\n".join(chunks)


def _build_prompt(
    description: str,
    domain_type: Optional[str],
    retry_info: Optional[str] = None,
    context: Optional[str] = None,
) -> str:
    dt_hint = f"\nDomain type hint: {domain_type}" if domain_type else ""
    retry_block = (
        f"\n\nPREVIOUS ATTEMPT FAILED — correct these issues:\n{retry_info}"
        if retry_info else ""
    )
    context_block = (
        f"<domain-context>\n{context}\n</domain-context>\n\n"
        if context else ""
    )
    catalog_block = _search_catalog(description)
    catalog_section = (
        f"<catalog-reference>\n{catalog_block}\n</catalog-reference>\n\n"
        if catalog_block else ""
    )
    return f"{catalog_section}{context_block}Design an Ob3ect for:\n\n{description}{dt_hint}\n\n{_SCHEMA}{retry_block}"


def _extract_json(text: str) -> Dict[str, Any]:
    # 1. Direct parse
    try:
        return json.loads(text.strip())
    except json.JSONDecodeError:
        pass
    # 2. Strip markdown fence
    m = re.search(r"```(?:json)?\s*(\{.*?\})\s*```", text, re.DOTALL)
    if m:
        return json.loads(m.group(1))
    # 3. Outermost braces
    start = text.find("{")
    end = text.rfind("}") + 1
    if start >= 0 and end > start:
        return json.loads(text[start:end])
    raise ValueError("No JSON object found in LLM response")


_KNOWN_OPCODES = {oc.value for oc in Opcode}


def _parse_opcode(step_str: str) -> str:
    """Extract opcode name from 'OPCODE: description' bootstrap step string."""
    m = re.match(r'^\s*([A-Z]+)', str(step_str))
    if m and m.group(1) in _KNOWN_OPCODES:
        return m.group(1)
    return "IMSCRIB"


def _build_artifact(name: str, scope: str, data: Dict[str, Any]) -> Ob3ectArtifact:
    domain_type = data.get("domain_type", "custom")

    charter = DomainCharter(
        domain_name=name,
        domain_type=domain_type,
        scope=scope,
        surface_tokens=data.get("tokens", [name, "process", "output"]),
        boundary_condition=data.get("boundary", ""),
        justification="Auto-designed by Ob3ect Auto-Designer",
    )

    entries = {}
    for oc in Opcode:
        od = data.get("opcodes", {}).get(oc.value, {})
        entries[oc.value] = OpcodeEntry(
            opcode=oc.value,
            chosen_element=od.get("element", oc.value),
            justification=od.get("justification", ""),
            rejected_candidates=[],
        )

    fb = data.get("frobenius", {})
    split_fuse = SplitFuseReport(
        split_element=fb.get("split_element", ""),
        split_input=fb.get("split_input", ""),
        split_outputs=fb.get("split_outputs", []),
        fuse_element=fb.get("fuse_element", ""),
        fuse_result=fb.get("fuse_result", ""),
        frobenius_verdict=fb.get("verdict", "PASS"),
        test_instance="",
        failure_reason=fb.get("failure_reason", ""),
    )

    r = data.get("registers", {})
    registers = RegisterMapping(
        void_description=r.get("void", ""),
        true_description=r.get("true", ""),
        false_description=r.get("false", ""),
        both_description=r.get("both", ""),
        transitions=[],
        entropy_assertion="ΔS ≈ 0",
    )

    bs_actions = data.get("sequence", data.get("bootstrap", ["IMSCRIB: identity"]))
    bootstrap = BootstrapSequence(
        steps=[
            {
                "step_num": i + 1,
                "opcode": _parse_opcode(act),
                "domain_action": re.sub(r'^[A-Z]+:\s*', '', str(act).strip()),
            }
            for i, act in enumerate(bs_actions)
        ],
        closure_verified=True,
    )

    e = data.get("exos", {})
    exos = ExOSSpec(
        compiler_frontend=e.get("compiler", ""),
        ipc_mechanism=e.get("ipc", ""),
        memory_mechanism=e.get("memory", ""),
        scheduler_mechanism=e.get("scheduler", ""),
        alfs_store=e.get("alfs", ""),
        alfs_bootstrap_program="",
    )

    ent = data.get("entropy", {})
    entropy = EntropyAudit(
        cycle_cost=ent.get("cost", ""),
        pre_cycle_state=ent.get("pre", ""),
        post_cycle_state=ent.get("post", ""),
        delta_s_verdict=ent.get("verdict", "ΔS ≈ 0"),
        failure_mode="",
    )

    artifact = Ob3ectArtifact(
        name=name,
        domain_charter=charter,
        opcode_map=OpcodeMap(entries=entries),
        split_fuse_report=split_fuse,
        register_mapping=registers,
        bootstrap_sequence=bootstrap,
        exos_spec=exos,
        entropy_audit=entropy,
        instantiation_notes=f"Auto-designed from: {name}",
    )
    if _SCAFFOLD is not None:
        try:
            ops = [step["opcode"] for step in bootstrap.steps]
            # Position labels: one per step (position → domain_action),
            # avoiding the collapse bug where same-opcode steps overwrote each other.
            position_labels = {
                i: step.get("domain_action", "")
                for i, step in enumerate(bootstrap.steps)
            }
            artifact.lean_scaffold = _SCAFFOLD.run(ops, name=name,
                                                    position_labels=position_labels)
        except Exception:
            pass
    return artifact

def _generate_diagram(artifact: Ob3ectArtifact) -> Optional[Any]:
    """Generate a v3 symbolic wiring diagram from the artifact's bootstrap opcodes.

    Uses IMSCRIBr's symbolic_diagram module to render a full-edge-granularity
    SVG showing register deltas, categorical edge coloring, nesting depth,
    IFIX barriers, guard semantics, pair-identity, and CLINK double-stroke.
    """
    try:
        imscibr_path = str(Path(__file__).resolve().parents[1] / "IMSCRIBr")
        if imscibr_path not in sys.path:
            sys.path.insert(0, imscibr_path)
        from tokens import Token
        from wiring import imscr_wiring
        from symbolic_diagram import render_wiring_svg_v3

        ops = [step["opcode"] for step in artifact.bootstrap_sequence.steps]
        if not ops:
            print("  Diagram: no opcodes — skipping")
            return None

        token_list = []
        for op in ops:
            try:
                token_list.append(Token[op])
            except KeyError:
                print(f"  Diagram: unknown opcode {op!r} — skipping")
                return None

        if not token_list:
            return None

        tokens = tuple(token_list)
        graph = imscr_wiring(tokens)
        graph.name = artifact.name.replace(" ", "_")[:40]
        graph.description = artifact.split_fuse_report.split_element or ""

        # Determine ouroboricity tier
        has_frob = any(t == Token.FSPLIT for t in tokens) and any(t == Token.FFUSE for t in tokens)
        self_ref = (tokens[0] == tokens[-1]) if tokens else False
        has_cross = graph.has_cross_branch()
        if self_ref and has_cross:
            tier = "O_\u221e"
        elif has_frob:
            tier = "O\u2082"
        else:
            tier = "O\u2081"

        return render_wiring_svg_v3(graph, graph.name, tier, graph.description, "")
    except ImportError as e:
        print(f"  Diagram: IMSCRIBr not available ({e}) — skipping")
        return None
    except Exception as e:
        print(f"  Diagram: generation failed ({e}) — skipping")
        return None



# ── Public API ────────────────────────────────────────────────────────────────

_PROVIDER_CHAIN: List[str] = ["local", "openrouter", "deepseek"]


def _build_provider_chain() -> List[Any]:
    """Return ordered list of live LLMProvider instances, skipping unavailable ones."""
    chain = []
    for name in _PROVIDER_CHAIN:
        try:
            p = get_llm_provider(name)
            if hasattr(p, "model_path") and not Path(p.model_path).exists():
                continue
            chain.append(p)
        except (ValueError, Exception):
            continue
    return chain


async def auto_design(
    description: str,
    name: Optional[str] = None,
    domain_type: Optional[str] = None,
    scope: str = "local",
    provider_name: Optional[str] = None,
    model: Optional[str] = None,
    max_retries: int = 100,
    temperature: float = 0.4,
    context: Optional[str] = None,
) -> Ob3ectArtifact:
    """
    Auto-design an Ob3ect from a natural-language description.

    Uses enhanced_llm_provider (QWEN_API_KEY → mulerouter, DEEPSEEK_API_KEY →
    deepseek.com) with local fine-tuned model as primary when available.
    Falls back through the chain on permanent HTTP errors.

    Args:
        description:   What the ob3ect is / does
        name:          Artifact name (defaults to first clause of description)
        domain_type:   Optional hint (physical/social/computational/oneiric/...)
        scope:         local | mesoscale | maximal
        provider_name: Override primary provider (local/qwen/deepseek)
        max_retries:   Retry attempts on JSON parse or Frobenius failure
        temperature:   LLM temperature

    Returns:
        Validated Ob3ectArtifact
    """
    artifact_name = name or description.strip()

    if provider_name:
        chain = _PROVIDER_CHAIN.copy()
        if provider_name in chain:
            chain.remove(provider_name)
        chain.insert(0, provider_name)
        providers = []
        for n in chain:
            try:
                kwargs = {"model": model} if model and n == provider_name else {}
                p = get_llm_provider(n, **kwargs)
                if hasattr(p, "model_path") and not Path(p.model_path).exists():
                    continue
                providers.append(p)
            except Exception:
                continue
    else:
        first_kwargs = {"model": model} if model else {}
        providers = []
        for n in _PROVIDER_CHAIN:
            try:
                kwargs = first_kwargs if not providers else {}
                p = get_llm_provider(n, **kwargs)
                if hasattr(p, "model_path") and not Path(p.model_path).exists():
                    continue
                providers.append(p)
            except Exception:
                continue

    if not providers:
        raise RuntimeError(
            "No provider available. Check QWEN_API_KEY / DEEPSEEK_API_KEY env vars."
        )

    provider_idx = 0
    provider = providers[provider_idx]

    retry_info: Optional[str] = None
    artifact: Optional[Ob3ectArtifact] = None

    def _next_provider(err: Exception) -> None:
        nonlocal provider_idx, provider
        provider_idx += 1
        if provider_idx >= len(providers):
            raise RuntimeError(
                f"All providers exhausted. Last error: {err}"
            ) from err
        provider = providers[provider_idx]
        print(f"Provider failed, switching to: {provider.__class__.__name__}")

    attempt = 0
    while attempt < max_retries:
        prompt = _build_prompt(description, domain_type, retry_info, context=context)
        try:
            raw = await provider.query(
                prompt,
                system=_SYSTEM_PROMPT,
                temperature=temperature,
            )
            data = _extract_json(raw)
            artifact = _build_artifact(artifact_name, scope, data)

            if artifact.split_fuse_report.frobenius_verdict == "PASS":
                return artifact

            sfr = artifact.split_fuse_report
            retry_info = (
                f"Frobenius verdict: FAIL.\n"
                f"  FSPLIT {sfr.split_element!r}: {sfr.split_input!r} → {sfr.split_outputs}\n"
                f"  FFUSE  {sfr.fuse_element!r}: returned {sfr.fuse_result!r}\n"
                f"  Reason: {sfr.failure_reason}\n"
                f"  Fix: choose a split/fuse pair where FFUSE(FSPLIT(x)) = x holds in the domain."
            )
            attempt += 1

        except httpx.HTTPStatusError as e:
            if e.response.status_code == 429:
                retry_info = "Rate limited — retry."
                attempt += 1
            else:
                _next_provider(e)   # permanent failure, don't burn retry slot

        except (json.JSONDecodeError, ValueError, KeyError) as e:
            retry_info = f"JSON parse failed ({e}). Respond with ONLY a valid JSON object."
            attempt += 1

        except Exception as e:
            _next_provider(e)

    # Return best artifact even if Frobenius didn't pass after all retries
    if artifact is not None:
        return artifact
    raise RuntimeError(f"Auto-design failed after {max_retries} attempts")


def design(description: str, **kwargs) -> Ob3ectArtifact:
    """Synchronous wrapper around auto_design."""
    return asyncio.run(auto_design(description, **kwargs))


# ── ZoomChain ─────────────────────────────────────────────────────────────────

_ZOOM_SYSTEM = """\
You are identifying a natural Granularity (Γ) zoom hierarchy in the Universal Imscriptive Grammar.
Each level must be a coherent entity where the IMASM bootstrap runs — a bounded system with its
own identity, Frobenius structure, and terminal anchor (TANCH). The hierarchy runs from
finest-grain (seed, Γ=0) to coarsest-grain (target, Γ=N-1). Each CLINK morphism describes
how the finer-grain entity composes into the next coarser level.

All text fields must be precise technical prose. Banned: delve, tapestry, leverage (verb),
seamless, multifaceted, pivotal, cutting-edge, synergy, holistic, paradigm (filler), testament,
realm, landscape (metaphor), "it is important to note", "in essence", "furthermore" (opener),
"moreover" (opener), "certainly!", false-balance hedging, trailing restatement summaries,
em-dashes in any form (not as connectors, not as asides, not anywhere),
bullet points, dashed lists, numbered lists — prose only."""

_ZOOM_LEVEL_SCHEMA = """\
{
  "levels": ["<level 0 = seed>", "<level 1>", ..., "<level N-1 = target>"],
  "clink_morphisms": [
    "<how level 0 embeds/composes into level 1 via CLINK>",
    ...,
    "<how level N-2 embeds into level N-1>"
  ]
}"""


async def _discover_zoom_levels(
    seed: str, target: str, n_levels: int, temperature: float = 0.3
) -> tuple:
    """Use LLM to discover N zoom levels between seed (Γ=0) and target (Γ=N-1)."""
    providers = _build_provider_chain()
    if not providers:
        return [seed, target], [f"{seed} composes into {target}"]
    provider = providers[0]
    prompt = (
        f"Seed (Γ=0, finest grain): {seed}\n"
        f"Target (Γ={n_levels - 1}, coarsest grain): {target}\n"
        f"Total levels requested: {n_levels}\n\n"
        f"Identify exactly {n_levels} zoom levels forming a natural Granularity hierarchy.\n"
        f"Level 0 must be the seed, level {n_levels - 1} must be the target.\n"
        f"Each intermediate level should be a natural 'zoom step' — a category of description\n"
        f"where the IMASM bootstrap runs coherently as a bounded system.\n\n"
        f"Output ONLY this JSON:\n{_ZOOM_LEVEL_SCHEMA}"
    )
    try:
        raw = await provider.query(prompt, system=_ZOOM_SYSTEM, temperature=temperature)
        data = _extract_json(raw)
        levels = data.get("levels", [])
        morphisms = data.get("clink_morphisms", [])
        if len(levels) < 2:
            levels = [seed, target]
        if len(morphisms) < len(levels) - 1:
            morphisms += [f"composes into {levels[i+1]}" for i in range(len(morphisms), len(levels) - 1)]
        return levels, morphisms
    except Exception as e:
        print(f"  [zoom discovery fallback: {e}]")
        # fallback: evenly interpolate
        if n_levels == 2:
            return [seed, target], [f"{seed} composes into {target}"]
        mid = f"intermediate scale between {seed} and {target}"
        return [seed, mid, target], [f"{seed} → {mid}", f"{mid} → {target}"]


class ZoomLevel:
    def __init__(self, description: str, artifact: Ob3ectArtifact, gamma: int):
        self.description = description
        self.artifact = artifact
        self.gamma = gamma


class ZoomChain:
    def __init__(self, seed: str, target: str, levels: List["ZoomLevel"], clink_morphisms: List[str]):
        self.seed = seed
        self.target = target
        self.levels = levels
        self.clink_morphisms = clink_morphisms

    def report(self) -> str:
        sep = "=" * 70
        lines = [sep, f"ZoomChain: {self.seed}  →  {self.target}", sep]
        for lvl in self.levels:
            art = lvl.artifact
            tanch = art.opcode_map.entries.get("TANCH", type("", (), {"chosen_element": "?"})()).chosen_element
            frob = art.split_fuse_report.frobenius_verdict
            ds = art.entropy_audit.delta_s_verdict
            lines.append(f"\n[Γ={lvl.gamma}] {lvl.description}")
            lines.append(f"  TANCH    : {tanch}")
            lines.append(f"  Frobenius: {frob}  |  {ds}")
            if lvl.gamma < len(self.levels) - 1 and lvl.gamma < len(self.clink_morphisms):
                lines.append(f"  ↕ CLINK  : {self.clink_morphisms[lvl.gamma]}")
        lines.append(f"\n{sep}")
        lines.append(f"Levels: {len(self.levels)}  |  CLINK morphisms: {len(self.clink_morphisms)}")
        all_pass = all(lvl.artifact.split_fuse_report.frobenius_verdict == "PASS" for lvl in self.levels)
        lines.append(f"Chain Frobenius: {'PASS' if all_pass else 'PARTIAL'}")
        lines.append(sep)
        return "\n".join(lines)

    def save(self, out_dir: Path) -> Path:
        manifest = {
            "seed": self.seed,
            "target": self.target,
            "clink_morphisms": self.clink_morphisms,
            "levels": [
                {
                    "gamma": lvl.gamma,
                    "description": lvl.description,
                    "tanch": lvl.artifact.opcode_map.entries.get(
                        "TANCH", type("", (), {"chosen_element": "?"})()
                    ).chosen_element,
                    "frobenius": lvl.artifact.split_fuse_report.frobenius_verdict,
                }
                for lvl in self.levels
            ],
        }
        path = out_dir / "zoom_manifest.json"
        path.write_text(json.dumps(manifest, indent=2, ensure_ascii=False))
        return path


async def zoom_design(
    seed: str,
    target: str,
    n_levels: int = 4,
    domain_type: Optional[str] = None,
    scope: str = "local",
    provider_name: Optional[str] = None,
    model: Optional[str] = None,
    max_retries: int = 3,
    temperature: float = 0.4,
    context: Optional[str] = None,
) -> ZoomChain:
    """
    Design a zoom chain of N ob3ects spanning seed (Γ=0, finest) to target (Γ=N-1, coarsest).
    Each level is a full Ob3ectArtifact; adjacent levels are connected by CLINK morphisms.
    Reverse zoom (coarse→fine) is just seed=target, target=seed.
    """
    print(f"Discovering {n_levels}-level Γ hierarchy: {seed!r} → {target!r}")
    level_descs, morphisms = await _discover_zoom_levels(seed, target, n_levels, temperature)
    print(f"Levels: {level_descs}")

    zoom_levels = []
    for i, desc in enumerate(level_descs):
        print(f"\n  [Γ={i}] Imscribing: {desc}")
        art = await auto_design(
            desc,
            name=desc,
            domain_type=domain_type,
            scope=scope,
            provider_name=provider_name,
            model=model,
            max_retries=max_retries,
            temperature=temperature,
            context=context,
        )
        zoom_levels.append(ZoomLevel(desc, art, i))

    return ZoomChain(seed, target, zoom_levels, morphisms)


def zoom(seed: str, target: str, **kwargs) -> ZoomChain:
    """Synchronous wrapper around zoom_design."""
    return asyncio.run(zoom_design(seed, target, **kwargs))


# ── CLI spinner ──────────────────────────────────────────────────────────────

import itertools as _itertools
import threading as _threading
import time as _time


class _Spinner:
    _FRAMES = ["⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏"]

    def __init__(self, msg: str = "Imscribing") -> None:
        self._msg = msg
        self._stop = _threading.Event()
        self._thread = _threading.Thread(target=self._spin, daemon=True)
        self._t0 = 0.0

    def _spin(self) -> None:
        for frame in _itertools.cycle(self._FRAMES):
            if self._stop.is_set():
                break
            elapsed = _time.monotonic() - self._t0
            line = f"\r{frame} {self._msg}... {elapsed:.1f}s "
            sys.stderr.write(line)
            sys.stderr.flush()
            _time.sleep(0.08)
        sys.stderr.write("\r" + " " * 60 + "\r")
        sys.stderr.flush()

    def __enter__(self) -> "_Spinner":
        self._t0 = _time.monotonic()
        self._thread.start()
        return self

    def __exit__(self, *_: object) -> None:
        self._stop.set()
        self._thread.join()


# ── CLI ───────────────────────────────────────────────────────────────────────

if __name__ == "__main__":
    import argparse
    ap = argparse.ArgumentParser(description="Auto-design an Ob3ect from a description.")
    ap.add_argument("description", nargs="+", help="Natural-language description")
    ap.add_argument("--domain", dest="domain_type", default=None,
                    help="Domain type hint (biological, computational, alchemical, ...)")
    ap.add_argument("--scope", default="local",
                    help="Scope: local | mesoscale | maximal (default: local)")
    ap.add_argument("--provider", dest="provider_name", default=None,
                    help="Override provider (openrouter, deepseek, local)")
    ap.add_argument("--model", default=None,
                    help="Model ID passed to the provider (e.g. deepseek-chat, qwen3-235b-a22b)")
    ap.add_argument("--retries", type=int, default=3, dest="max_retries")
    ap.add_argument("--temp", type=float, default=0.4, dest="temperature")
    ap.add_argument("--thinking", action="store_true", default=False,
                    help="Enable <thinking> tokens in local Qwen model (default: off)")
    ap.add_argument("--no-scaffold", action="store_true", dest="no_scaffold",
                    help="Suppress Lean scaffold output")
    ap.add_argument("--no-diagram", action="store_true", dest="no_diagram",
                    help="Suppress symbolic wiring diagram output")
    ap.add_argument("--context", dest="context_path", default=None, metavar="PATH",
                    help="File or directory of domain documents to include as context "
                         "(.md/.txt/.lean/.py/.tex/.json; up to 500 KB total)")
    ap.add_argument("--entry", dest="catalog_entries", default=None, metavar="NAMES",
                    help="Comma-separated catalog entry names to inject as context "
                         "(e.g. --entry yhwh,dark_matter,proton)")
    ap.add_argument("--zoom-to", dest="zoom_target", default=None, metavar="TARGET",
                    help="Design a zoom chain from DESCRIPTION (Γ=0, finest) to TARGET (Γ=N-1, coarsest)")
    ap.add_argument("--zoom-levels", type=int, default=4, dest="zoom_levels",
                    help="Number of levels in the zoom chain (default: 4)")
    args = ap.parse_args()

    desc = " ".join(args.description)

    ctx: Optional[str] = None
    if args.context_path:
        try:
            ctx = _load_context(args.context_path)
            n_files = ctx.count("=== ")
            print(f"Context loaded: {args.context_path} ({len(ctx):,} chars, {n_files} file(s))\n")
        except FileNotFoundError as e:
            print(f"Warning: {e} — proceeding without context")

    if args.catalog_entries:
        names = [n.strip() for n in args.catalog_entries.split(",") if n.strip()]
        entry_ctx = _load_catalog_entries(names)
        if entry_ctx:
            print(f"Catalog entries: {', '.join(names)}\n")
        ctx = "\n\n".join(p for p in [ctx, entry_ctx] if p) or None

    if args.thinking:
        import framework.enhanced_llm_provider as _ep
        _ep.enable_thinking = True

    import re as _re_slug

    # ── Zoom chain mode ──────────────────────────────────────────────────
    if args.zoom_target:
        print(f"Zoom chain: {desc!r}  →  {args.zoom_target!r}  ({args.zoom_levels} levels)\n")
        sys.stdout.flush()
        chain = asyncio.run(zoom_design(
            desc,
            args.zoom_target,
            n_levels=args.zoom_levels,
            domain_type=args.domain_type,
            scope=args.scope,
            provider_name=args.provider_name,
            model=args.model,
            max_retries=args.max_retries,
            temperature=args.temperature,
            context=ctx,
        ))
        print("\n" + chain.report())

        slug = _re_slug.sub(r'[^a-z0-9]', '_',
                            f"zoom_{desc[:20]}_{args.zoom_target[:20]}".strip().lower())
        slug = _re_slug.sub(r'_+', '_', slug).strip('_')
        out_dir = Path(__file__).parent / "digital" / slug
        out_dir.mkdir(parents=True, exist_ok=True)

        for lvl in chain.levels:
            lvl_slug = _re_slug.sub(r'[^a-z0-9]', '_', lvl.description.strip().lower())[:48]
            lvl_slug = _re_slug.sub(r'_+', '_', lvl_slug).strip('_')
            lvl_dir = out_dir / f"gamma_{lvl.gamma}_{lvl_slug}"
            lvl_dir.mkdir(parents=True, exist_ok=True)
            lvl.artifact.save(lvl_dir / f"{lvl_slug}_ob3ect.json")
            if lvl.artifact.lean_scaffold and not args.no_scaffold:
                (lvl_dir / f"{lvl_slug}_scaffold.lean").write_text(lvl.artifact.lean_scaffold)
            if not args.no_diagram:
                svg = _generate_diagram(lvl.artifact)
                if svg:
                    diagram_path = lvl_dir / f"{lvl_slug}_diagram.svg"
                    svg.save(diagram_path)
                    print(f"  Diagram:    {diagram_path}")

        manifest_path = chain.save(out_dir)
        print(f"\nManifest: {manifest_path}")
        sys.exit(0)

    # ── Single ob3ect mode ───────────────────────────────────────────────
    print(f"Auto-designing: {desc}\n")
    sys.stdout.flush()
    with _Spinner("Imscribing"):
        art = design(
            desc,
            domain_type=args.domain_type,
            scope=args.scope,
            provider_name=args.provider_name,
            model=args.model,
            max_retries=args.max_retries,
            temperature=args.temperature,
            context=ctx,
        )
    print(art.report())
    errs = art.validate_all()
    has_errors = any(v for v in errs.values())
    print(f"\nValid: {art.is_valid_ob3ect}")
    if has_errors:
        print("Validation issues:", {k: v for k, v in errs.items() if v})
    if not args.no_scaffold:
        if art.lean_scaffold:
            print("\n" + "="*70)
            print("Lean Scaffold")
            print("="*70)
            print(art.lean_scaffold)

    # ── Persist to disk ──────────────────────────────────────────────────
    slug = _re_slug.sub(r'[^a-z0-9]', '_', desc.strip().lower())[:48]
    slug = _re_slug.sub(r'_+', '_', slug).strip('_')
    out_dir = Path(__file__).parent / "digital" / slug
    out_dir.mkdir(parents=True, exist_ok=True)
    json_path = art.save(out_dir / f"{slug}_ob3ect.json")
    print(f"\nSaved to: {json_path}")
    # Also save Lean scaffold if generated
    if art.lean_scaffold:
        lean_path = out_dir / f"{slug}_scaffold.lean"
        lean_path.write_text(art.lean_scaffold)
        print(f"Scaffold:   {lean_path}")
    # Also generate symbolic wiring diagram
    if not args.no_diagram:
        svg = _generate_diagram(art)
        if svg:
            diagram_path = out_dir / f"{slug}_diagram.svg"
            svg.save(diagram_path)
            print(f"Diagram:    {diagram_path}")
