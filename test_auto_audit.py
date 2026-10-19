"""Offline regression instruments for auto.py and its wiring interpretation."""
import asyncio
import tempfile
import unittest
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import AsyncMock, patch

import auto
from digital.imasm16_3_core import Sequence16_3Trace, parse_glyph_word
from symbolic_diagram import simulate_register
from tokens import Token
from topology import analyze_topology


class AutoAuditTest(unittest.TestCase):
    def test_json_requires_an_object(self):
        for text in ('[]', 'null', '"text"', '42'):
            with self.subTest(text=text), self.assertRaises(ValueError):
                auto._extract_json(text)
        self.assertEqual(auto._extract_json('```json\n{"sequence": []}\n```'), {"sequence": []})

    def test_unknown_operation_cannot_become_identity(self):
        for text in ("TELEPORT: move", "FSPLIT3: fork", {"opcode": "EVALT"}, ""):
            with self.subTest(text=text), self.assertRaises(ValueError):
                auto._parse_opcode(text)
        for name, glyph in auto._CORE_GLYPH.items():
            self.assertEqual(auto._parse_opcode(f"{name}: operation"), name)
            self.assertEqual(auto._parse_opcode(f"{glyph}: operation"), name)

    def test_trace_can_be_replayed_without_accumulating_old_results(self):
        trace = Sequence16_3Trace(parse_glyph_word("⊢∈⊤≺∋⊣"))
        trace.run()
        before = trace.json_report()
        trace.run()
        self.assertEqual(trace.json_report(), before)
        self.assertEqual(len(trace.timestamps), len(trace.steps))
        empty = Sequence16_3Trace([])
        empty.run()
        self.assertFalse(empty.is_closed())

    def test_diagram_projection_preserves_nested_banked_recovery(self):
        names = "VINIT FSPLIT EVALT FSPLIT EVALF FFUSE AREV FFUSE TANCH".split()
        self.assertEqual(simulate_register(tuple(Token[n].value for n in names)),
                         [0, 0, 1, 1, 3, 3, 0, 3, 3])

    def test_topology_counts_secondary_anchor_and_prefix_operations(self):
        report = analyze_topology("VINIT FSPLIT CLINK AFWD AREV IFIX FFUSE TANCH".split())
        self.assertEqual((report.t_branch_ops, report.f_branch_ops), (2, 2))
        self.assertEqual(report.empty_branches, 0)

    def test_rotated_topology_uses_local_indices(self):
        names = "VINIT FSPLIT CLINK EVALT FSPLIT EVALF FFUSE EVALF FFUSE TANCH".split()
        base = analyze_topology(names)
        for k in range(len(names)):
            report = analyze_topology(names[k:] + names[:k])
            self.assertEqual((report.t_branch_ops, report.f_branch_ops, report.empty_branches),
                             (base.t_branch_ops, base.f_branch_ops, base.empty_branches))

    def test_context_byte_limit_handles_multibyte_text(self):
        with tempfile.TemporaryDirectory(dir=Path(__file__).parent) as folder:
            path = Path(folder) / "context.md"
            path.write_text("𐑨" * 20)
            with patch.object(auto, "_CONTEXT_MAX_BYTES", 9):
                text = auto._load_context(str(path))
            self.assertIn("𐑨𐑨\n[... truncated", text)
            self.assertNotIn("𐑨𐑨𐑨", text)

    def test_scaffold_marks_preserve_lean_identifiers(self):
        self.assertEqual(auto._marks_in_scaffold("-- EVALT\ndef x_restrictToEVALT := 1"),
                         "-- ⊤\ndef x_restrictToEVALT := 1")


class LeanCheckTest(unittest.IsolatedAsyncioTestCase):
    async def verify(self, output, code=0):
        art = SimpleNamespace(lean_scaffold='def specimen := "error"')
        proc = SimpleNamespace(returncode=code, communicate=AsyncMock(return_value=(output, b"")))
        with tempfile.TemporaryDirectory(dir=Path(__file__).parent) as folder:
            with patch.object(auto, "_GATE_CHECK_DIR", Path(folder)), \
                 patch.object(auto.asyncio, "create_subprocess_exec", AsyncMock(return_value=proc)):
                await auto._verify_lean_scaffold(art, "same")
                await auto._verify_lean_scaffold(art, "same")
            self.assertEqual(len(list(Path(folder).glob("*.lean"))), 2)
        return art

    async def test_kernel_exit_code_and_sorry_warning(self):
        self.assertTrue((await self.verify(b'"error estimate"\n')).lean_verified)
        self.assertFalse((await self.verify(b"warning: declaration uses 'sorry'\n")).lean_verified)
        self.assertFalse((await self.verify(b"failure", 1)).lean_verified)


if __name__ == "__main__":
    unittest.main()
