"""
editorial_pipeline_ob3ect.py — LLM-integrated editorial pipeline.

Structural type: ⟨𐑼𐑡𐑠𐑾𐑚⊙𐑖𐑙𐑳𐑗𐑱𐑭⟩  O₂

SET → SUBMIT → SERVE pipeline for multi-step text editing, parsing, and rewriting.

  .set(source, intent)         — VINIT + TANCH: bind source text and editorial intent
  .submit(critique=False)      — FSPLIT / EVALT / FFUSE: run through LLM cascade
  .serve()                     — IFIX: return final output dict

LENGTH GUARD: Every output is compared against source length. If output is shorter
than 95% of the source, a re-prompt forces expansion to match or exceed original length.
This prevents LLM summarization/compression in any editorial pass.

Batch mode — YAML-driven directory processing:
  python3 editorial_pipeline_ob3ect.py batch config.yaml

Provider cascade (no Anthropic): local → qwen (QWEN_API_KEY) → deepseek (DEEPSEEK_API_KEY)

Usage:
    result = EditorialPipeline().set(text, "make it more concise").submit().serve()
    print(result["output"])

CLI:
    python3 editorial_pipeline_ob3ect.py source.txt "rewrite in active voice"
    echo "some text" | python3 editorial_pipeline_ob3ect.py - "tighten prose"
    python3 editorial_pipeline_ob3ect.py batch  config.yaml
"""

from __future__ import annotations

import argparse
import itertools
import json
import os
import sys
import threading
import time
import urllib.request
import urllib.error
import urllib.parse
import logging
from pathlib import Path
from typing import Optional, Tuple

try:
    import yaml
except ImportError:
    sys.exit("editorial_pipeline_ob3ect.py needs PyYAML:  pip install pyyaml")

log = logging.getLogger(__name__)


# ── Spinner ───────────────────────────────────────────────────────────────────

class Spinner:
    _FRAMES = "⠋⠙⠹⠸⠼⠴⠦⠧⠇⠏"

    def __init__(self, label: str = ""):
        self.label = label
        self._stop = threading.Event()
        self._thread = None
        self._tty = sys.stderr.isatty()

    def _spin(self):
        for frame in itertools.cycle(self._FRAMES):
            if self._stop.is_set():
                break
            sys.stderr.write(f"\r{frame} {self.label}   ")
            sys.stderr.flush()
            time.sleep(0.08)

    def __enter__(self):
        if self._tty:
            self._thread = threading.Thread(target=self._spin, daemon=True)
            self._thread.start()
        else:
            sys.stderr.write(f"  {self.label}\n")
            sys.stderr.flush()
        return self

    def __exit__(self, exc_type, *_):
        self._stop.set()
        if self._thread:
            self._thread.join()
        if self._tty:
            mark = "✓" if exc_type is None else "✗"
            sys.stderr.write(f"\r{mark} {self.label}   \n")
            sys.stderr.flush()

# ── Provider endpoints (mirrors auto.py: local → openrouter → deepseek) ──────

_OPENROUTER_URL = "https://openrouter.ai/api/v1/chat/completions"
_DEEPSEEK_URL = "https://api.deepseek.com/chat/completions"
_DEFAULT_OPENROUTER_MODEL = "deepseek/deepseek-chat"
_DEFAULT_DEEPSEEK_MODEL = "deepseek-v4-pro"

_TIMEOUT = 120  # seconds per provider call


# ── Prompt builders ───────────────────────────────────────────────────────────

_STYLE_PROHIBITIONS = """\
WRITING PROHIBITIONS — enforce in every output:
  No em-dashes in any form (not as connectors, not as asides, not anywhere).
  No: delve, tapestry, leverage (verb), utilize, seamless, multifaceted, pivotal,
    cutting-edge, robust (filler), synergy, holistic, paradigm (filler), testament,
    underpinnings, realm, landscape (metaphor), revolutionary, groundbreaking,
    transformative, nuanced (filler), vibrant, dynamic (filler).
  No openers: "Furthermore", "Moreover", "Consequently", "Notably", "Importantly",
    "Certainly", "Absolutely", "Of course".
  No phrases: "it is important to note", "it is worth noting", "in today's",
    "in conclusion", "in essence", "in summary", "at the end of the day",
    "with that said", "having said that".
  No trailing restatement sentences. No false-balance hedging ("while X... however Y").
  No bullet points, no dashed lists, no numbered lists — write as prose only.
  Use concrete nouns and active verbs. Say what the thing is."""

def _parse_prompt(source: str) -> str:
    return (
        "Analyze the structure of the following text. Identify:\n"
        "1. Main claims or thesis\n"
        "2. Key sections/paragraphs and their rhetorical function\n"
        "3. Stylistic patterns (sentence length, vocabulary register, voice)\n"
        "4. Any notable structural features or weaknesses\n\n"
        "Be analytical, not editorial. Plain prose only — no JSON, no headers.\n\n"
        f"TEXT:\n{source}"
    )


def _edit_prompt(source: str, intent: str, parse: Optional[str]) -> str:
    parse_block = f"\nSTRUCTURAL PARSE:\n{parse}\n" if parse else ""
    return (
        f"Edit the following text according to this intent: {intent}\n"
        f"{parse_block}\n"
        f"{_STYLE_PROHIBITIONS}\n\n"
        "Apply the intent precisely. Produce ONLY the edited text — "
        "no preamble, no explanation, no markdown.\n\n"
        f"TEXT:\n{source}"
    )


def _rewrite_prompt(source: str, intent: str, edit: str) -> str:
    return (
        f"Produce a final clean rewrite of the following text.\n\n"
        f"Intent: {intent}\n\n"
        f"{_STYLE_PROHIBITIONS}\n\n"
        f"Previous edit:\n{edit}\n\n"
        "Integrate the edit fully. Output ONLY the final rewritten text — "
        "no preamble, no explanation."
    )


def _critique_prompt(rewrite: str, intent: str) -> str:
    return (
        f"Critique the following rewrite against the stated intent.\n\n"
        f"Intent: {intent}\n\n"
        f"Rewrite:\n{rewrite}\n\n"
        "Does the rewrite fully achieve the intent? "
        "Flag any violations of these prohibitions: em-dashes, banned words "
        "(delve, tapestry, leverage, seamless, multifaceted, pivotal, etc.), "
        "banned openers (Furthermore, Moreover, Certainly, etc.), trailing "
        "restatements, false-balance hedging, bullet points, dashed lists, "
        "numbered lists (any list format — prose only). "
        "List specific gaps. Be concrete and brief."
    )

# ── Length guard ──────────────────────────────────────────────────────────────
# Installed by ⊙perator 2026-06-10 — prevents LLM from producing output shorter
# than the source. Applies at every editorial pass: edit, rewrite, and CLINK
# composition. Re-prompts with explicit length instruction.

_MIN_OUTPUT_RATIO = 0.95  # Minimum output/source char ratio (allows 5% headroom)

def _length_guard_prompt(source: str, source_len: int, output_len: int, intent: str) -> str:
    """Build a re-prompt instructing the LLM to restore the original scope."""
    return (
        f"LENGTH GUARD TRIGGERED: Your output ({output_len} chars) is shorter than "
        f"the source ({source_len} chars) by {source_len - output_len} chars.\n\n"
        f"You MUST produce output at least as long as the source ({source_len} chars). "
        f"Do NOT summarize, condense, compress, or cut anything. Preserve ALL "
        f"structural claims, examples, data, nuance, evidence, and argumentation. "
        f"Expand rather than compress. If the intent says 'concise' or 'tight' — "
        f"ignore that; length preservation overrides it.\n"
        f"Intent: {intent}\n\n"
        f"SOURCE TEXT ({source_len} chars):\n{source}\n\n"
        f"Produce a FULL-LENGTH rewrite that is AT LEAST {source_len} characters. "
        f"Output ONLY the text — no preamble, no explanation."
    )

def _enforce_length(source: str, output: str, intent: str,
                    providers: list, prefer: str) -> str:
    """Re-prompt if output is too short. Returns output that passes the guard.

    Args:
        source: Original source text.
        output: Current (possibly short) output.
        intent: Original editorial intent.
        providers: Cascade provider list.
        prefer: Preferred provider name.

    Returns:
        str: Output that satisfies the length guard (source >= output * _MIN_OUTPUT_RATIO).
        If all re-prompts fail, returns the original (short) output with a warning.
    """
    src_len = len(source.strip())
    out_len = len(output.strip())
    target = int(src_len * _MIN_OUTPUT_RATIO)
    if out_len >= target:
        return output  # Length guard satisfied

    log.warning(f"LENGTH GUARD: output {out_len} chars vs source {src_len} chars "
                f"(target {target}) — re-prompting")

    # Build re-prompt with the full source context
    guard_text = _length_guard_prompt(source, src_len, out_len, intent)
    ordered = sorted(providers, key=lambda p: 0 if p[0] == prefer else 1)

    for name, fn in ordered:
        try:
            improved = fn(guard_text)
            if improved:
                stripped = improved.strip()
                if len(stripped) >= target:
                    log.info(f"LENGTH GUARD: {name} expanded {out_len} → {len(stripped)} chars (✓)")
                    return stripped
                log.info(f"LENGTH GUARD: {name} returned {len(stripped)} chars, still below {target}")
        except Exception as e:
            log.warning(f"LENGTH GUARD: {name} failed ({e})")

    log.warning("LENGTH GUARD: all re-prompts exhausted — returning original output")
    return output  # Fallback

# ── LLM call ─────────────────────────────────────────────────────────────────

def _llm_call(prompt: str, url: str, api_key: str, model: str,
             temperature: float = 0.3, thinking: bool = False) -> str:
    """Single LLM completion call. Returns response text or raises."""
    payload = {
        "model": model,
        "messages": [{"role": "user", "content": prompt}],
        "temperature": temperature,
    }
    if thinking:
        payload["thinking"] = {"type": "enabled"}
    body = json.dumps(payload).encode()

    req = urllib.request.Request(
        url,
        data=body,
        headers={
            "Authorization": f"Bearer {api_key}",
            "Content-Type": "application/json",
            "Accept": "application/json",
        },
        method="POST",
    )
    with urllib.request.urlopen(req, timeout=_TIMEOUT) as resp:
        data = json.loads(resp.read().decode())
    return data["choices"][0]["message"]["content"].strip()


# ── Provider cascade ──────────────────────────────────────────────────────────

def _build_providers(provider_override: str = None, model_override: str = None,
                    temperature: float = 0.3, thinking: bool = False) -> list:
    """Return [(name, call_fn)] in cascade order.

    Primary provider: --provider flag > IG_PROVIDER env > openrouter → deepseek.
    Model: --model flag > model_override > IG_MODEL env > defaults.
    Temperature + thinking threaded into every provider's LLM call.
    """
    primary = provider_override or os.environ.get("IG_PROVIDER", "")

    all_providers = []

    or_key = os.environ.get("OPENROUTER_API_KEY", "")
    if or_key:
        model = model_override or os.environ.get("IG_MODEL", _DEFAULT_OPENROUTER_MODEL)
        all_providers.append((
            "openrouter",
            lambda p, k=or_key, m=model, t=temperature, th=thinking:
                _llm_call(p, _OPENROUTER_URL, k, m, t, th),
        ))

    ds_key = os.environ.get("DEEPSEEK_API_KEY", "")
    if ds_key:
        model = model_override or os.environ.get("DEEPSEEK_MODEL", _DEFAULT_DEEPSEEK_MODEL)
        all_providers.append((
            "deepseek",
            lambda p, k=ds_key, m=model, t=temperature, th=thinking:
                _llm_call(p, _DEEPSEEK_URL, k, m, t, th),
        ))

    if primary:
        head = [p for p in all_providers if p[0] == primary]
        tail = [p for p in all_providers if p[0] != primary]
        return head + tail

    return all_providers


# ── Core class ────────────────────────────────────────────────────────────────

class EditorialPipeline:
    """LLM-integrated editorial pipeline. SET → SUBMIT → SERVE.

    IMASM winding structure:
      SET    — VINIT (source) + TANCH (intent) + IMSCRIB (parse)
      SUBMIT — AFWD (edit) + FSPLIT (fanout) + EVALT/EVALF (gate) + FFUSE (merge)
      SERVE  — ENGAGR (B-state) + AREV (critique) + CLINK (compose) + IFIX (commit)
    """

    def __init__(self, log_path: Optional[str] = None):
        self._source: Optional[str] = None
        self._intent: Optional[str] = None
        self._parse: Optional[str] = None
        self._edit: Optional[str] = None
        self._rewrite: Optional[str] = None
        self._critique: Optional[str] = None
        self._provider: Optional[str] = None
        self._b_state: bool = False
        self._evalf: bool = False
        self._passes: int = 0
        self._log_path = log_path or os.path.expanduser("/home/mrnob0dy666/.ob3ect/editorial_pipeline.jsonl")

    # ── SET ───────────────────────────────────────────────────────────────────

    def set(self, source: str, intent: str) -> "EditorialPipeline":
        """SET phase: VINIT + TANCH.

        Binds source text and editorial intent. Resets all prior outputs.
        """
        self._source = source.strip()
        self._intent = intent.strip()
        self._parse = None
        self._edit = None
        self._rewrite = None
        self._critique = None
        self._provider = None
        self._b_state = False
        self._evalf = False
        self._passes = 0
        return self
    # ── SUBMIT ────────────────────────────────────────────────────────────────

    def submit(self, critique: bool = False, max_passes: int = 2, provider: str = None,
               model: str = None, temperature: float = 0.3,
               thinking: bool = False) -> "EditorialPipeline":
        """SUBMIT phase: IMSCRIB → AFWD → FSPLIT → EVALT/EVALF → FFUSE.

        Length guard active at every output stage: edit, rewrite, and each CLINK
        composition pass. If output < 95% of source length, the guard re-prompts
        for expansion before proceeding.

        Args:
            critique: If True, run AREV critique pass after rewrite.
            max_passes: Maximum CLINK composition passes (default 2).
            model: Override model (default: env IG_MODEL / DEEPSEEK_MODEL).
            temperature: LLM sampling temperature (default 0.3).
            thinking: Enable chain-of-thought reasoning (DeepSeek R1/V3).
        """
        if not self._source or not self._intent:
            raise RuntimeError("Call set(source, intent) before submit()")

        providers = _build_providers(provider, model_override=model, temperature=temperature, thinking=thinking)
        if not providers:
            raise RuntimeError(
                "No providers available. Set OPENROUTER_API_KEY or DEEPSEEK_API_KEY."
            )

        with Spinner("IMSCRIB  parsing source structure"):
            self._parse = self._call_cascade(_parse_prompt(self._source), providers)

        with Spinner("AFWD → FFUSE  editing"):
            edit, provider = self._cascade_edit(providers)
            self._edit = edit
            self._provider = provider
            self._passes += 1

        with Spinner("FFUSE  rewriting"):
            rewrite = self._call_one(
                _rewrite_prompt(self._source, self._intent, self._edit),
                providers, provider
            )
            self._rewrite = rewrite or self._edit

            # LENGTH GUARD: enforce output >= 95% of source after initial rewrite
            self._rewrite = _enforce_length(
                self._source, self._rewrite, self._intent, providers, self._provider
            )

        if critique:
            for i in range(max_passes - 1):
                with Spinner(f"AREV  critique pass {i + 1}/{max_passes - 1}"):
                    self._critique = self._call_one(
                        _critique_prompt(self._rewrite, self._intent),
                        providers, provider
                    )
                if self._critique and any(
                    kw in self._critique.lower()
                    for kw in ("issue", "gap", "not ", "fails", "missing", "unclear")
                ):
                    self._b_state = True
                    with Spinner(f"CLINK  composing pass {self._passes + 1}"):
                        extra_prompt = (
                            f"Rewrite the text addressing these issues:\n{self._critique}\n\n"
                            f"Intent: {self._intent}\n\n"
                            f"Current text:\n{self._rewrite}\n\n"
                            "Output ONLY the improved text."
                        )
                        improved = self._call_one(extra_prompt, providers, provider)
                    if improved:
                        self._rewrite = improved
                        self._passes += 1

                        # LENGTH GUARD: enforce after each CLINK composition pass
                        self._rewrite = _enforce_length(
                            self._source, self._rewrite, self._intent,
                            providers, self._provider
                        )
                    self._b_state = False
                else:
                    break

        return self
    # ── SERVE ─────────────────────────────────────────────────────────────────

    def serve(self) -> dict:
        """SERVE phase: IFIX — commit and return final output dict."""
        result = {
            "output": self._rewrite,
            "source": self._source,
            "intent": self._intent,
            "parse": self._parse,
            "edit": self._edit,
            "critique": self._critique,
            "provider": self._provider,
            "b_state": self._b_state,
            "evalf": self._evalf,
            "passes": self._passes,
        }
        self._write_log(result)
        return result

    # ── Internal helpers ──────────────────────────────────────────────────────

    def _cascade_edit(self, providers: list) -> Tuple[str, str]:
        """FSPLIT → EVALT/EVALF → FFUSE: try providers, return (output, provider_name).

        Length guard: each provider's output must be >= 95% of source length to pass
        EVALT. This prevents LLMs from returning short summaries during the edit phase.
        """
        prompt = _edit_prompt(self._source, self._intent, self._parse)
        src_len = len(self._source.strip())
        target = int(src_len * _MIN_OUTPUT_RATIO)

        for name, fn in providers:
            try:
                out = fn(prompt)
                if out and len(out.strip()) >= target:
                    log.info(f"EVALT: accepted output from {name} ({len(out.strip())} chars vs src {src_len})")
                    return out, name
                if out:
                    log.info(f"EVALF: {name} output too short ({len(out.strip())} chars vs target {target}), advancing cascade")
                else:
                    log.info(f"EVALF: {name} returned empty output, advancing cascade")
            except Exception as e:
                log.warning(f"EVALF: {name} failed ({e}), advancing cascade")

        # All failed
        self._evalf = True
        log.warning("EVALF: cascade exhausted — returning source unchanged")
        return self._source, "none"

    def _call_cascade(self, prompt: str, providers: list) -> Optional[str]:
        """Call providers in cascade order, return first successful output."""
        for name, fn in providers:
            try:
                out = fn(prompt)
                if out:
                    return out
            except Exception as e:
                log.warning(f"{name} call failed: {e}")
        return None

    def _call_one(self, prompt: str, providers: list, prefer: str) -> Optional[str]:
        """Call a specific provider (or cascade fallback)."""
        ordered = sorted(providers, key=lambda p: 0 if p[0] == prefer else 1)
        return self._call_cascade(prompt, ordered)

    def _write_log(self, result: dict):
        """Append result to JSONL audit log."""
        try:
            Path(self._log_path).parent.mkdir(parents=True, exist_ok=True)
            with open(self._log_path, "a") as f:
                f.write(json.dumps({
                    "ts": time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime()),
                    **result,
                }) + "\n")
        except Exception as e:
            log.debug(f"Log write failed: {e}")

# ═══════════════════════════════════════════════════════════════════════════════
# ── Batch mode: YAML-driven directory processing ─────────────────────────────
# ═══════════════════════════════════════════════════════════════════════════════

_BATCH_YAML_SCHEMA = """\
# Batch Editorial Pipeline — YAML config schema
#  python3 editorial_pipeline_ob3ect.py batch config.yaml

name: batch_name              # arbitrary batch identifier

batch_dir: /path/to/dir       # directory of folders; each subdir = one piece

context:                       # REFERENCE MATERIAL — loaded and fed to the LLM
  files:                       # specific files to load as context
    - /path/to/style_guide.md
    - /path/to/voice_notes.txt
  folders:                     # folders — all text files within are loaded
    - /path/to/reference_corpus/

editorial:
  intent: |                    # THE PROMPT — voice, style, directive (all of it)
    Rewrite for active voice. Short paragraphs. No hedging.
    Target audience: academic but accessible.
    Preserve all structural claims and technical terms.
  output_dir: /path/to/output         # default: batch_dir + '_edited' sibling
  output_suffix: "_edited"            # appended to output filename stems
  critique: true                      # run AREV critique passes
  passes: 2                           # max CLINK composition passes
  provider: null                      # openrouter | deepseek | null (cascade)
  model: null                         # override model (e.g. deepseek/deepseek-chat, deepseek-v4-pro)
  temperature: 0.3                    # LLM sampling temperature (0.0–2.0)
  thinking: false                     # enable chain-of-thought reasoning (DeepSeek R1/V3)
  source_glob: "*.md"                 # glob for source files in each folder
  skip_existing: true                 # skip folders with existing output files
  verbose: false                      # print full result JSON per item
  enforce_length: true                # Length guard: reject output shorter than source
"""


def _load_context(cfg: dict) -> str:
    """Load reference context from files and folders specified in the YAML config.

    context:
      files:   [path, ...]   — specific files to load
      folders: [path, ...]   — all text files (.md, .txt, .tex, .rst) within

    Returns concatenated reference text, or empty string if no context configured.
    """
    ctx = cfg.get("context") or {}
    if not ctx:
        return ""

    chunks: list[str] = []

    # Load specific files
    for raw in ctx.get("files") or []:
        p = Path(raw)
        if not p.is_absolute():
            p = Path.cwd() / p
        if p.is_file():
            try:
                content = p.read_text(encoding="utf-8")
                chunks.append(f"── REFERENCE: {p.name} ──\n{content}")
            except Exception as e:
                print(f"  WARN: could not read context file {p}: {e}")
        else:
            print(f"  WARN: context file not found: {p}")

    # Load all text files from folders
    for raw in ctx.get("folders") or []:
        p = Path(raw)
        if not p.is_absolute():
            p = Path.cwd() / p
        if p.is_dir():
            for ext in ["*.md", "*.txt", "*.tex", "*.rst"]:
                for fp in sorted(p.rglob(ext)):
                    try:
                        content = fp.read_text(encoding="utf-8")
                        chunks.append(f"── REFERENCE: {fp.name} ──\n{content}")
                    except Exception as e:
                        print(f"  WARN: could not read context file {fp}: {e}")
        else:
            print(f"  WARN: context folder not found: {p}")

    if chunks:
        joined = "\n\n".join(chunks)
        return f"REFERENCE MATERIAL (use this as context for your edit):\n\n{joined}"
    return ""

def _find_source_files(folder: Path, source_glob: str = "*.md") -> list[Path]:
    """Find source text files in a folder matching the glob pattern.

    Priority order:
      1. Files matching source_glob
      2. Common editorial filenames: manuscript, article, draft, post, index
      3. Any .md, .txt, .tex, .rst files

    Returns deduplicated list preserving priority order.
    """
    candidates: list[Path] = []

    # Glob match
    candidates.extend(sorted(folder.glob(source_glob)))

    # Common editorial filenames
    for name in [
        "manuscript.md", "article.md", "draft.md", "post.md",
        "content.md", "index.md", "README.md", "source.txt",
        "essay.md", "chapter.md", "text.md",
    ]:
        p = folder / name
        if p.exists() and p not in candidates:
            candidates.append(p)

    # Fallback: any text-like file not already found
    for ext in [".md", ".txt", ".tex", ".rst"]:
        for p in sorted(folder.glob(f"*{ext}")):
            if p not in candidates:
                candidates.append(p)

    return candidates


def _build_intent(loaded_context: str, intent: str) -> str:
    """Build the composite prompt from loaded reference context + editorial intent.

    The loaded_context is reference material (files/folders specified in YAML).
    The intent is the full editorial prompt — voice, style, directive.
    Context comes first as reference; intent is the instruction.
    """
    parts: list[str] = []
    if loaded_context:
        parts.append(loaded_context)
    parts.append(intent.strip())
    return "\n\n".join(parts)


def _process_folder(
    folder: Path,
    pipeline: EditorialPipeline,
    cfg: dict,
    output_dir: Path,
    stats: dict,
    folder_index: int,
    total_folders: int,
    loaded_context: str,
) -> bool:
    """Process one folder: find source, run pipeline, write output.

    Returns True if successful, False if skipped or failed.
    """
    ed = cfg.get("editorial", {}) or {}
    source_glob = ed.get("source_glob", "*.md")
    skip_existing = ed.get("skip_existing", True)
    output_suffix = ed.get("output_suffix", "_edited")

    sources = _find_source_files(folder, source_glob)
    if not sources:
        print(f"  [{folder_index}/{total_folders}] SKIP {folder.name}: no source files found")
        stats["skipped_no_source"] += 1
        return False

    source_path = sources[0]
    if len(sources) > 1:
        print(f"  [{folder_index}/{total_folders}] {folder.name}: {len(sources)} sources found, using {source_path.name}")

    # Check for existing output (preserve subdirectory structure)
    stem = source_path.stem
    output_name = f"{stem}{output_suffix}{source_path.suffix}"
    output_path = output_dir / folder.name / output_name
    if skip_existing and output_path.exists():
        print(f"  [{folder_index}/{total_folders}] SKIP {folder.name}: {output_name} already exists")
        stats["skipped_existing"] += 1
        return False

    source_text = source_path.read_text(encoding="utf-8")
    if not source_text.strip():
        print(f"  [{folder_index}/{total_folders}] SKIP {folder.name}: empty source")
        stats["skipped_empty"] += 1
        return False

    intent_raw = ed.get("intent", "rewrite for clarity")
    intent = _build_intent(loaded_context, intent_raw)

    print(f"  [{folder_index}/{total_folders}] {folder.name}  ({len(source_text)} chars)")

    try:
        pipeline.set(source_text, intent)
        pipeline.submit(
            critique=ed.get("critique", False),
            max_passes=ed.get("passes", 2),
            provider=ed.get("provider"),
            model=ed.get("model"),
            temperature=ed.get("temperature", 0.3),
            thinking=ed.get("thinking", False),
        )
        result = pipeline.serve()
    except RuntimeError as e:
        print(f"    FAIL: {e}")
        stats["failed"] += 1
        return False

    output_text = result.get("output") or ""

    # ── Batch length guard ────────────────────────────────────────────────────
    # Post-hoc verification: if enforce_length is True (default), flag any output
    # shorter than source. This catches edge cases where the inline guard failed.
    enforce = ed.get("enforce_length", True)
    if enforce and output_text.strip():
        src_len = len(source_text.strip())
        out_len = len(output_text.strip())
        target = int(src_len * _MIN_OUTPUT_RATIO)
        if out_len < target:
            print(f"    ⚠ LENGTH GUARD (batch): output {out_len} chars < source {src_len} chars "
                  f"(target {target}) — writing anyway")
            stats["length_guard_triggered"] += 1

    if not output_text.strip():
        print(f"    WARN: empty output — writing anyway")
        stats["empty_output"] += 1

    # Preserve original file's trailing newline convention
    if source_text.endswith("\n") and not output_text.endswith("\n"):
        output_text += "\n"

    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(output_text, encoding="utf-8")

    tag = ""
    if result.get("b_state"):
        tag += " [B-STATE]"
    if result.get("evalf"):
        tag += " [EVALF]"
    print(f"    → {output_path.name}  ({len(output_text)} chars)  provider={result['provider']}  passes={result['passes']}{tag}")

    return True
def run_batch(config_path: str) -> dict:
    """Run a YAML-driven batch editorial pipeline over a directory of folders.

    Each subdirectory of batch_dir is one "piece." The context section specifies
    files and folders loaded as reference material for the LLM. The editorial.intent
    is the full prompt — voice, style, directive.

    Length guard (default on): every output is checked against source length.
    The inline guard in submit() re-prompts for expansion; the batch guard flags
    any remaining violations. YAML: editorial.enforce_length: false to disable.

    YAML schema — see _BATCH_YAML_SCHEMA above, or run with --help-batch.

    Returns a stats dict: folders_total, folders_processed, skipped_*,
    failed, empty_output, length_guard_triggered.
    """
    cfg_path = Path(config_path)
    if not cfg_path.exists():
        sys.exit(f"config not found: {config_path}")

    cfg = yaml.safe_load(cfg_path.read_text(encoding="utf-8")) or {}
    if not cfg:
        sys.exit("empty YAML config")

    batch_dir = Path(cfg.get("batch_dir", ""))
    if not batch_dir.exists() or not batch_dir.is_dir():
        sys.exit(f"batch_dir not found or not a directory: {batch_dir}")

    ed = cfg.get("editorial", {}) or {}

    # Resolve output_dir
    output_dir_raw = ed.get("output_dir")
    if output_dir_raw:
        output_dir = Path(output_dir_raw)
        if not output_dir.is_absolute():
            output_dir = batch_dir.parent / output_dir
    else:
        output_dir = batch_dir.parent / f"{batch_dir.name}_edited"

    # ── Load context (once — same reference material for all items) ──
    print("Loading context...")
    loaded_context = _load_context(cfg)
    if loaded_context:
        ctx_lines = loaded_context.count("\n") + 1
        print(f"  context loaded: {len(loaded_context)} chars, ~{ctx_lines} lines")
    else:
        print("  no context configured")

    # Gather folders (subdirectories of batch_dir)
    folders = sorted(
        [p for p in batch_dir.iterdir() if p.is_dir() and not p.name.startswith(".")],
        key=lambda p: p.name.lower(),
    )
    if not folders:
        sys.exit(f"no subdirectories found in {batch_dir}")

    total = len(folders)
    batch_name = cfg.get("name", batch_dir.name)

    print(f"\n╔{'═' * 68}╗")
    print(f"║  BATCH: {batch_name[:58]:58s} ║")
    print(f"║  source: {str(batch_dir)[:58]:58s} ║")
    print(f"║  output: {str(output_dir)[:58]:58s} ║")
    print(f"║  items:  {total:<58d} ║")
    print(f"╚{'═' * 68}╝")
    print()

    stats = {
        "batch_name": batch_name,
        "batch_dir": str(batch_dir),
        "output_dir": str(output_dir),
        "folders_total": total,
        "folders_processed": 0,
        "skipped_no_source": 0,
        "skipped_existing": 0,
        "skipped_empty": 0,
        "failed": 0,
        "empty_output": 0,
        "length_guard_triggered": 0,  # batch-level guard flag
    }

    pipeline = EditorialPipeline()

    for i, folder in enumerate(folders, 1):
        ok = _process_folder(folder, pipeline, cfg, output_dir, stats, i, total, loaded_context)
        if ok:
            stats["folders_processed"] += 1

    # Summary
    print()
    print(f"── batch complete: {stats['folders_processed']}/{stats['folders_total']} processed "
          f"(skipped: {stats['skipped_no_source']} no-source, "
          f"{stats['skipped_existing']} existing, "
          f"{stats['skipped_empty']} empty; "
          f"{stats['failed']} failed, "
          f"{stats['empty_output']} empty-output"
          f"{', ' + str(stats['length_guard_triggered']) + ' length-guard' if stats['length_guard_triggered'] else ''}) ──")

    return stats

# ═══════════════════════════════════════════════════════════════════════════════
# ── CLI ──────────────────────────────────────────────────────────────────────
# ═══════════════════════════════════════════════════════════════════════════════

_EPILOG = r"""
╔══════════════════════════════════════════════════════════════════════╗
║           EDITORIAL PIPELINE — FULL OPTION SET                       ║
╚══════════════════════════════════════════════════════════════════════╝

MODES ───

  Single-file mode (default):
    python3 editorial_pipeline_ob3ect.py source.txt "rewrite in active voice"
    echo "some text" | python3 editorial_pipeline_ob3ect.py - "tighten prose"

  Batch mode:
    python3 editorial_pipeline_ob3ect.py batch config.yaml

LENGTH GUARD ───

  Active by default on ALL passes (edit, rewrite, CLINK composition). The guard
  compares output character count against source. If output < 95% of source, the
  LLM is re-prompted with an explicit instruction to restore the original scope.
  This prevents summarization, compression, or truncation in any editorial pass.
  The guard is non-bypassable in the pipeline logic — not a toggle.

SINGLE-FILE OPTIONS ───
  --critique     Run AREV critique pass after rewrite
  --passes N     Max CLINK composition passes (default 2)
  --provider X   Override provider: openrouter | deepseek
  --parse-only   Run IMSCRIB parse only, print structure
  --json         Output full JSON result
  --verbose, -v  Verbose logging

BATCH MODE ───

  YAML-driven directory processing. Each subdirectory of batch_dir is
  one "piece." The context section specifies files and folders loaded
  as reference material. The editorial.intent is the full prompt —
  voice, style, directive. Processed one by one.

  YAML schema (see also: --help-batch):

    name: batch_name
    batch_dir: /path/to/dir/of/folders    # each subdir = one piece
    context:                               # reference material (optional)
      files:
        - /path/to/style_guide.md
      folders:
        - /path/to/reference_corpus/
    editorial:
      intent: |                            # THE PROMPT — voice, style, directive
        Rewrite for active voice. Short paragraphs. No hedging.
      output_dir: /path/to/output         # default: batch_dir + '_edited'
      output_suffix: "_edited"
      critique: true
      passes: 2
      provider: null
      source_glob: "*.md"
      skip_existing: true
      enforce_length: true                # length guard (default on)

AUTHOR ───
  Lando⊗⊙perator
"""


def _cli():
    """CLI router: detects batch vs single-file mode from argv."""
    # Manual routing: if first positional arg is 'batch', use batch parser
    if len(sys.argv) > 1 and sys.argv[1] == 'batch':
        _cli_batch(sys.argv[2:])
    else:
        _cli_single(sys.argv[1:])


def _cli_batch(argv):
    """Batch mode CLI."""
    parser = argparse.ArgumentParser(
        prog="editorial_pipeline_ob3ect.py batch",
        description="YAML-driven batch editorial pipeline over a directory of folders",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="Config schema: use --help-batch for the YAML schema.",
    )
    parser.add_argument("config", nargs="?", default=None, help="Path to batch YAML config file")
    parser.add_argument(
        "--help-batch", action="store_true", dest="show_batch_schema",
        help="Print the batch YAML schema and exit",
    )
    args = parser.parse_args(argv)

    if args.show_batch_schema:
        print(_BATCH_YAML_SCHEMA)
        sys.exit(0)
    if not args.config:
        print("error: config file required for batch mode", file=sys.stderr)
        print("  python3 editorial_pipeline_ob3ect.py batch config.yaml", file=sys.stderr)
        print("  python3 editorial_pipeline_ob3ect.py batch --help-batch", file=sys.stderr)
        sys.exit(1)
    run_batch(args.config)
def _cli_single(argv):
    """Single-file mode CLI."""
    parser = argparse.ArgumentParser(
        prog="editorial_pipeline_ob3ect.py",
        description="LLM-integrated editorial pipeline: SET → SUBMIT → SERVE",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=_EPILOG,
    )
    parser.add_argument("source", nargs="?", default=None,
                        help="Source text file (or - for stdin)")
    parser.add_argument("intent", nargs="?", default=None,
                        help="Editorial intent (e.g. 'make more concise')")
    parser.add_argument("--critique", action="store_true", help="Run AREV critique pass")
    parser.add_argument("--passes", type=int, default=2, help="Max CLINK composition passes")
    parser.add_argument("--provider", default=None,
                        help="Override provider (openrouter|deepseek); also reads IG_PROVIDER env")
    parser.add_argument("--parse-only", action="store_true", help="Run IMSCRIB parse only")
    parser.add_argument("--json", action="store_true", help="Output full JSON result")
    parser.add_argument("--verbose", "-v", action="store_true", help="Verbose logging")
    args = parser.parse_args(argv)

    if not args.source:
        parser.print_help()
        sys.exit(1)

    logging.basicConfig(
        level=logging.DEBUG if args.verbose else logging.WARNING,
        format="%(levelname)s %(message)s",
    )

    if args.source == "-":
        source = sys.stdin.read()
    else:
        source = Path(args.source).read_text()

    pipe = EditorialPipeline()
    pipe.set(source, args.intent or "improve clarity and prose quality")

    if args.parse_only:
        providers = _build_providers(args.provider, model_override=args.model)
        if not providers:
            print("Error: no providers available (set OPENROUTER_API_KEY or DEEPSEEK_API_KEY)", file=sys.stderr)
            sys.exit(1)
        parse = pipe._call_cascade(_parse_prompt(source), providers)
        print(parse or "(no parse output)")
        sys.exit(0)

    pipe.submit(critique=args.critique, max_passes=args.passes, provider=args.provider)
    result = pipe.serve()

    # ── Final length report ───────────────────────────────────────────────────
    src_len = len(source.strip())
    out_len = len(result.get("output", "").strip())
    length_ok = out_len >= int(src_len * _MIN_OUTPUT_RATIO)

    if args.json:
        result["_length_report"] = {
            "source_chars": src_len,
            "output_chars": out_len,
            "ratio": round(out_len / src_len, 3) if src_len > 0 else 0,
            "guard_passed": length_ok,
        }
        print(json.dumps(result, indent=2, ensure_ascii=False))
    else:
        print(result["output"] or "(no output)")
        # Length guard summary on stderr
        ratio = out_len / src_len if src_len > 0 else 0
        if length_ok:
            print(f"\n[LENGTH: {out_len}/{src_len} chars ({ratio:.1%}) ✓]", file=sys.stderr)
        else:
            print(f"\n[LENGTH: {out_len}/{src_len} chars ({ratio:.1%}) ⚠ BELOW THRESHOLD]", file=sys.stderr)
        if result["b_state"]:
            print("\n[B-STATE: output partially resolved — run with --passes for more]", file=sys.stderr)
        if result["evalf"]:
            print("\n[EVALF: cascade exhausted — source returned unchanged]", file=sys.stderr)
        if args.verbose:
            print(f"\n[provider: {result['provider']}, passes: {result['passes']}]", file=sys.stderr)

if __name__ == "__main__":
    _cli()
