"""
editorial_pipeline_ob3ect.py — LLM-integrated editorial pipeline.

Structural type: ⟨𐑼𐑡𐑠𐑾𐑚⊙𐑖𐑙𐑳𐑗𐑱𐑭⟩  O₂

SET → SUBMIT → SERVE pipeline for multi-step text editing, parsing, and rewriting.

  .set(source, intent)         — VINIT + TANCH: bind source text and editorial intent
  .submit(critique=False)      — FSPLIT / EVALT / FFUSE: run through LLM cascade
  .serve()                     — IFIX: return final output dict

Provider cascade (no Anthropic): local → qwen (QWEN_API_KEY) → deepseek (DEEPSEEK_API_KEY)

Usage:
    result = EditorialPipeline().set(text, "make it more concise").submit().serve()
    print(result["output"])

CLI:
    python3 editorial_pipeline_ob3ect.py source.txt "rewrite in active voice"
    echo "some text" | python3 editorial_pipeline_ob3ect.py - "tighten prose"
"""

from __future__ import annotations

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
_DEFAULT_OPENROUTER_MODEL = "deepseek/deepseek-r1"
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


# ── LLM call ─────────────────────────────────────────────────────────────────

def _llm_call(prompt: str, url: str, api_key: str, model: str) -> str:
    """Single LLM completion call. Returns response text or raises."""
    body = json.dumps({
        "model": model,
        "messages": [{"role": "user", "content": prompt}],
        "temperature": 0.3,
    }).encode()

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

def _build_providers(provider_override: str = None) -> list:
    """Return [(name, call_fn)] in cascade order.

    Primary provider: --provider flag > IG_PROVIDER env > openrouter → deepseek.
    Mirrors auto.py's provider selection logic.
    """
    primary = provider_override or os.environ.get("IG_PROVIDER", "")

    all_providers = []

    or_key = os.environ.get("OPENROUTER_API_KEY", "")
    if or_key:
        model = os.environ.get("IG_MODEL", _DEFAULT_OPENROUTER_MODEL)
        all_providers.append((
            "openrouter",
            lambda p, k=or_key, m=model: _llm_call(p, _OPENROUTER_URL, k, m),
        ))

    ds_key = os.environ.get("DEEPSEEK_API_KEY", "")
    if ds_key:
        model = os.environ.get("DEEPSEEK_MODEL", _DEFAULT_DEEPSEEK_MODEL)
        all_providers.append((
            "deepseek",
            lambda p, k=ds_key, m=model: _llm_call(p, _DEEPSEEK_URL, k, m),
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
        self._log_path = log_path or os.path.expanduser("~/.ob3ect/editorial_pipeline.jsonl")

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

    def submit(self, critique: bool = False, max_passes: int = 2, provider: str = None) -> "EditorialPipeline":
        """SUBMIT phase: IMSCRIB → AFWD → FSPLIT → EVALT/EVALF → FFUSE.

        Args:
            critique: If True, run AREV critique pass after rewrite.
            max_passes: Maximum CLINK composition passes (default 2).
        """
        if not self._source or not self._intent:
            raise RuntimeError("Call set(source, intent) before submit()")

        providers = _build_providers(provider)
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
        """FSPLIT → EVALT/EVALF → FFUSE: try providers, return (output, provider_name)."""
        prompt = _edit_prompt(self._source, self._intent, self._parse)
        for name, fn in providers:
            try:
                out = fn(prompt)
                if out and len(out.strip()) > 20:
                    log.info(f"EVALT: accepted output from {name}")
                    return out, name
                log.info(f"EVALF: {name} output too short, advancing cascade")
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


# ── CLI ───────────────────────────────────────────────────────────────────────

def _cli():
    import argparse

    parser = argparse.ArgumentParser(
        description="Editorial pipeline: SET → SUBMIT → SERVE",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=(
            "Examples:\n"
            "  editorial_pipeline_ob3ect.py source.txt 'make it more concise'\n"
            "  echo 'some text' | editorial_pipeline_ob3ect.py - 'rewrite in active voice'\n"
            "  editorial_pipeline_ob3ect.py source.txt 'fix passive voice' --critique --passes 2\n"
        ),
    )
    parser.add_argument("source", help="Source text file (or - for stdin)")
    parser.add_argument("intent", help="Editorial intent (e.g. 'make more concise')")
    parser.add_argument("--critique", action="store_true", help="Run AREV critique pass")
    parser.add_argument("--passes", type=int, default=2, help="Max CLINK composition passes")
    parser.add_argument("--provider", default=None, help="Override provider (openrouter|deepseek); also reads IG_PROVIDER env")
    parser.add_argument("--parse-only", action="store_true", help="Run IMSCRIB parse only")
    parser.add_argument("--json", action="store_true", help="Output full JSON result")
    parser.add_argument("--verbose", "-v", action="store_true", help="Verbose logging")
    args = parser.parse_args()

    logging.basicConfig(
        level=logging.DEBUG if args.verbose else logging.WARNING,
        format="%(levelname)s %(message)s",
    )

    if args.source == "-":
        source = sys.stdin.read()
    else:
        source = Path(args.source).read_text()

    pipe = EditorialPipeline()
    pipe.set(source, args.intent)

    if args.parse_only:
        providers = _build_providers(args.provider)
        if not providers:
            print("Error: no providers available (set OPENROUTER_API_KEY or DEEPSEEK_API_KEY)", file=sys.stderr)
            sys.exit(1)
        parse = pipe._call_cascade(_parse_prompt(source), providers)
        print(parse or "(no parse output)")
        sys.exit(0)

    pipe.submit(critique=args.critique, max_passes=args.passes, provider=args.provider)
    result = pipe.serve()

    if args.json:
        print(json.dumps(result, indent=2, ensure_ascii=False))
    else:
        print(result["output"] or "(no output)")
        if result["b_state"]:
            print("\n[B-STATE: output partially resolved — run with --passes for more]", file=sys.stderr)
        if result["evalf"]:
            print("\n[EVALF: cascade exhausted — source returned unchanged]", file=sys.stderr)
        if args.verbose:
            print(f"\n[provider: {result['provider']}, passes: {result['passes']}]", file=sys.stderr)


if __name__ == "__main__":
    _cli()
