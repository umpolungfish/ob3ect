#!/usr/bin/env python3
"""
style_guard.py — tyrannical human-writing enforcement for the editorial pipeline.

Every document the editorial pipeline emits passes through `enforce()`. It does
two things, in order:

  1. humanize(text)      — auto-fixes the mechanical AI tells it can fix without
                           guessing intent: em / en / bar dashes used as
                           punctuation, spaced double-hyphen dashes, doubled
                           spaces, "encode" -> "imscribe".
  2. assert_human(text)  — refuses to emit any document that still carries an AI
                           vocabulary tell, a filler/scaffold phrase, or a
                           structural tell. Raises StyleViolation; the pipeline
                           will not write the file.

Exemptions (never inspected, never rewritten):
  · fenced code blocks  ```...```
  · inline code spans   `...`   (Shavian glyphs, 12-primitive tuples, Lean live here)
  · markdown horizontal rules  (a line that is only ---, ***, ___)
  · table separator rows        (| --- | --- |)

The em-dash ban is absolute, per standing house style: no em-dash in any form.
There is no "unless" and no severity knob for it — it is auto-removed every time.
"""
from __future__ import annotations
import re
from typing import NamedTuple


class StyleViolation(Exception):
    """Raised when a document cannot be certified as human-written."""


# ── the dash ban (auto-fixed, absolute) ──────────────────────────────────────
# U+2014 em, U+2013 en, U+2015 bar, U+2E3A/B two/three-em, U+2012 figure dash.
_DASH_CHARS = "—–―‒⸺⸻"
# numeric ranges (3—5, 3 -- 5) read as "3 to 5", not "3, 5".
_DASH_RANGE = re.compile(rf"(?<=\d)\s*(?:[{_DASH_CHARS}]|-{{2,3}})\s*(?=\d)")
_DASH_UNICODE = re.compile(rf"\s*[{_DASH_CHARS}]\s*")
# " -- " and " --- " used inline as a dash (NOT a standalone markdown --- rule).
_DASH_ASCII = re.compile(r"(?<=\S) *-{2,3} *(?=\S)")
_DOUBLE_SPACE = re.compile(r"(?<=\S)  +(?=\S)")
_ENCODE = re.compile(r"\bencod(e|es|ed|ing)\b", re.IGNORECASE)


# ── vocabulary tells (hard-fail; the LLM/human must rewrite) ──────────────────
# Words that mark machine prose. Matched whole-word, case-insensitive.
_BANNED_WORDS = {
    "delve", "delves", "delving", "tapestry", "realm", "realms", "leverage",
    "leverages", "leveraging", "boasts", "boast", "seamless", "seamlessly",
    "showcase", "showcases", "showcasing", "elevate", "elevates", "unlock",
    "unlocks", "unlocking", "harness", "harnesses", "harnessing", "pivotal",
    "multifaceted", "nuanced", "intricate", "intricacies", "myriad",
    "underscore", "underscores", "underscoring", "moreover", "furthermore",
    "notably", "importantly", "crucially", "essentially", "ultimately",
    "comprehensive", "holistic", "robustly", "cutting-edge", "game-changer",
    "game-changing", "paradigm-shift", "synergy", "synergies", "seamlessly",
    "transformative", "revolutionize", "revolutionizes", "revolutionizing",
    "testament", "beacon", "landscape",
}

# Filler / scaffold phrases (hard-fail). Regex, case-insensitive, code exempt.
_BANNED_PHRASES = [
    r"it['’]s worth noting",
    r"it is worth noting",
    r"it['’]s important to note",
    r"it is important to note",
    r"needless to say",
    r"in conclusion",
    r"in summary",
    r"to summarize",
    r"at the end of the day",
    r"in today['’]s (?:world|landscape|era)",
    r"in the world of",
    r"in the realm of",
    r"plays? a (?:pivotal|key|crucial|vital|significant) role",
    r"rich (?:tapestry|history|landscape)",
    r"ever[- ]evolving",
    r"at the heart of",
    r"a testament to",
    r"navigat(?:e|ing) the (?:complex|complexities|world|landscape)",
    r"when it comes to",
    r"in this (?:document|section|paper|essay),? we (?:will|shall)",
    r"this (?:document|section|paper) (?:will|aims to) (?:explore|examine|discuss)",
    r"let['’]s (?:explore|dive|delve|take a look)",
    r"dive (?:deep|deeper|into)",
    r"first(?:ly)?,.*second(?:ly)?,.*(?:third(?:ly)?|finally)",  # canned enumeration
    r"not only\b.*\bbut also\b",  # overused correlative (soft tell)
]

# Structural tells (hard-fail): opening/closing scaffolding that reads as machine.
_STRUCTURE_TELLS = [
    (re.compile(r"^\s*(?:In conclusion|To conclude|In summary|Overall)\b", re.IGNORECASE | re.MULTILINE),
     "canned conclusion opener"),
    (re.compile(r"^\s*(?:This (?:document|section|paper|essay|guide) )", re.IGNORECASE | re.MULTILINE),
     "self-referential document opener"),
]


class Finding(NamedTuple):
    kind: str      # "word" | "phrase" | "structure"
    hit: str
    line: int


# ── code-exemption machinery ─────────────────────────────────────────────────
def _mask_code(text: str) -> tuple[str, dict[str, str]]:
    """Replace fenced blocks and inline code with opaque tokens so their contents
    are never inspected or rewritten. Returns (masked_text, restore_map)."""
    store: dict[str, str] = {}
    i = 0

    def _stash(m: re.Match) -> str:
        nonlocal i
        key = f"\x00CODE{i}\x00"
        store[key] = m.group(0)
        i += 1
        return key

    # fenced blocks first (```lang ... ```), then inline `code`.
    text = re.sub(r"```.*?```", _stash, text, flags=re.DOTALL)
    text = re.sub(r"`[^`\n]*`", _stash, text)
    return text, store


def _unmask(text: str, store: dict[str, str]) -> str:
    for key, val in store.items():
        text = text.replace(key, val)
    return text


def _is_rule_or_sep(line: str) -> bool:
    """True for a standalone markdown horizontal rule or a table separator row —
    both use hyphens legitimately and must not be treated as dashes."""
    s = line.strip()
    if re.fullmatch(r"(?:-{3,}|\*{3,}|_{3,})", s):
        return True
    if s.startswith("|") and re.fullmatch(r"[|\s:-]+", s) and "-" in s:
        return True
    return False


# ── phase 1: auto-fix ────────────────────────────────────────────────────────
def humanize(text: str) -> str:
    """Auto-fix the mechanical tells. Absolute, idempotent, code-exempt."""
    masked, store = _mask_code(text)
    out_lines = []
    for line in masked.split("\n"):
        if _is_rule_or_sep(line):
            out_lines.append(line)
            continue
        line = _DASH_RANGE.sub(" to ", line)
        line = _DASH_UNICODE.sub(", ", line)
        line = _DASH_ASCII.sub(", ", line)
        line = _ENCODE.sub(lambda m: _match_case(m.group(0), "imscribe"), line)
        line = _DOUBLE_SPACE.sub(" ", line)
        # a dash-fix can leave ", ," or " ," — tidy those.
        line = re.sub(r",\s*,", ",", line)
        line = re.sub(r"\s+,", ",", line)
        out_lines.append(line)
    return _unmask("\n".join(out_lines), store)


def _match_case(src: str, repl: str) -> str:
    if src.isupper():
        return repl.upper()
    if src[:1].isupper():
        return repl.capitalize()
    return repl


# ── phase 2: hard certification ──────────────────────────────────────────────
def check(text: str) -> list[Finding]:
    """Return every remaining human-writing violation (code-exempt). Empty == clean."""
    masked, _ = _mask_code(text)
    # drop rule / separator lines from inspection entirely.
    inspect = "\n".join("" if _is_rule_or_sep(ln) else ln for ln in masked.split("\n"))
    findings: list[Finding] = []

    def _line_of(pos: int) -> int:
        return inspect.count("\n", 0, pos) + 1

    for m in re.finditer(r"[A-Za-z][A-Za-z'’-]*", inspect):
        if m.group(0).lower() in _BANNED_WORDS:
            findings.append(Finding("word", m.group(0), _line_of(m.start())))
    for pat in _BANNED_PHRASES:
        for m in re.finditer(pat, inspect, re.IGNORECASE | re.DOTALL):
            findings.append(Finding("phrase", m.group(0).strip()[:60], _line_of(m.start())))
    for rx, label in _STRUCTURE_TELLS:
        for m in rx.finditer(inspect):
            findings.append(Finding("structure", label, _line_of(m.start())))
    # remaining raw dash after humanize would be a bug; catch it too.
    for m in re.finditer(rf"[{_DASH_CHARS}]", inspect):
        findings.append(Finding("word", "em/en-dash", _line_of(m.start())))
    return sorted(findings, key=lambda f: f.line)


def assert_human(text: str, where: str = "document") -> None:
    findings = check(text)
    if not findings:
        return
    lines = [f"style_guard: {where} is not certifiably human-written "
             f"({len(findings)} tell(s)):"]
    for f in findings:
        lines.append(f"  line {f.line}: [{f.kind}] {f.hit!r}")
    lines.append("Rewrite the flagged spans (vocabulary/filler/structure) and re-run.")
    raise StyleViolation("\n".join(lines))


# ── the one call the pipeline makes ──────────────────────────────────────────
def enforce(text: str, where: str = "document", mode: str = "enforce") -> str:
    """Auto-fix, then certify. mode: 'enforce' (fix + raise), 'fix' (fix only),
    'off' (passthrough)."""
    if mode == "off":
        return text
    text = humanize(text)
    if mode == "enforce":
        assert_human(text, where)
    return text


if __name__ == "__main__":
    import sys
    src = sys.stdin.read() if len(sys.argv) < 2 else open(sys.argv[1], encoding="utf-8").read()
    fixed = humanize(src)
    problems = check(fixed)
    sys.stdout.write(fixed)
    if problems:
        sys.stderr.write(f"\n{len(problems)} uncertifiable tell(s):\n")
        for p in problems:
            sys.stderr.write(f"  line {p.line}: [{p.kind}] {p.hit!r}\n")
        sys.exit(1)
