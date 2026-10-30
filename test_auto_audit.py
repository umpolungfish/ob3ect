"""Offline regression instruments for auto.py and its wiring interpretation."""
import asyncio
import json
import subprocess
import sys
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
    def test_catalog_references_exclude_zero_score_entries(self):
        entries = [{"name": "braid_gate", "description": "source crossing"},
                   {"name": "orchard", "description": "fruit tree"}]
        with patch.object(auto, "_load_raw_catalog", return_value=entries):
            found = auto._search_catalog("braid")
            self.assertIn("braid_gate", found)
            self.assertNotIn("orchard", found)
            self.assertEqual(auto._search_catalog("verified proof"), "")

    def test_interrupt_handler_uses_the_delivered_signal_status(self):
        import signal
        with patch("signal.signal") as register, patch.object(auto.os, "write"), \
             patch.object(auto.os, "_exit") as exit_process:
            auto._install_interrupt_handler()
            handler = register.call_args_list[-1].args[1]
            handler(signal.SIGTERM, None)
            exit_process.assert_called_once_with(143)

    def test_tokenizer_unavailable_is_not_a_zero_token_measurement(self):
        from unittest.mock import Mock
        provider = SimpleNamespace(local_http=True, base_url="http://server/v1/chat/completions")
        response = Mock()
        with patch("httpx.post", return_value=response):
            response.json.return_value = {}
            self.assertIsNone(auto._count_tokens(provider, "question"))
            response.json.return_value = {"tokens": [1, 2, 3]}
            self.assertEqual(auto._count_tokens(provider, "question"), 3)
        with patch("httpx.get", return_value=response):
            response.json.return_value = {"default_generation_settings": {"n_ctx": -2}}
            self.assertIsNone(auto._server_context_limit(provider))

    def test_cli_rejects_missing_context_and_malformed_batch_before_design(self):
        script = Path(auto.__file__).resolve()
        with tempfile.TemporaryDirectory(dir=Path(__file__).parent) as folder:
            root = Path(folder)
            batch = root / "batch.yaml"
            cases = [(None, ["specimen", "--context", str(root / "missing")]),
                     ("- invalid-root\n", ["-f", str(batch)]),
                     ("entities: string-instead-of-list\n", ["-f", str(batch)])]
            for body, args in cases:
                if body:
                    batch.write_text(body)
                result = subprocess.run([sys.executable, str(script), *args],
                                        capture_output=True, text=True, timeout=20)
                self.assertEqual(result.returncode, 2, result.stderr)
                self.assertIn("error:", result.stderr)
                self.assertNotIn("Provider:", result.stdout)

    def test_malformed_design_sections_are_response_errors(self):
        base = {"sequence": ["VINIT: source", "EVALT: evaluate"]}
        for key, value in (("opcodes", []), ("registers", None), ("entropy", "bad"),
                           ("boundary", 2), ("tokens", [1]),
                           ("frobenius", {"split_outputs": "two"})):
            with self.subTest(key=key), self.assertRaises(ValueError):
                auto._validate_sequence({**base, key: value})

    def test_failed_orbit_observations_do_not_become_symmetry(self):
        steps = [{"opcode": n} for n in ["VINIT", "FSPLIT", "EVALT", "FFUSE", "TANCH"]]
        def reading(word):
            if word[0] == "VINIT":
                raise ValueError("missing first observation")
            return {"banked_ok": True, "vacuous": True}
        with patch.object(auto, "_IMASM16_3_AVAILABLE", False), \
             patch.object(auto, "analyze_topology", None), \
             patch.object(auto, "_import_banked_count_check", return_value=reading):
            audit = auto._rotat_orbit_audit(steps)
        self.assertIsNone(audit["invariants"]["banked_ok"])
        self.assertIn("INCOMPLETE", audit["verdict"])
        self.assertEqual(audit["banked_orbit_summary"]["unchecked"], 1)
        with patch.object(auto, "_IMASM16_3_AVAILABLE", False), \
             patch.object(auto, "analyze_topology", None), \
             patch.object(auto, "_import_banked_count_check", side_effect=ImportError()):
            self.assertIn("INCOMPLETE", auto._rotat_orbit_audit(steps)["verdict"])

    def test_concurrent_output_bundles_and_atomic_publication(self):
        from concurrent.futures import ThreadPoolExecutor
        with tempfile.TemporaryDirectory(dir=Path(__file__).parent) as folder:
            root = Path(folder)
            with ThreadPoolExecutor(max_workers=4) as pool:
                paths = list(pool.map(lambda _: auto._reserve_output_directory(root, "same"), range(12)))
            self.assertEqual(len(set(paths)), 12)
            target = paths[0] / "result.json"
            target.write_text('{"old": true}')
            with patch("ob3ect.core.os.replace", side_effect=OSError("interrupted")):
                with self.assertRaises(OSError):
                    auto.atomic_write_text(target, '{"new": true}')
            self.assertEqual(json.loads(target.read_text()), {"old": True})
            self.assertEqual(list(paths[0].iterdir()), [target])
            auto.atomic_write_text(target, '{"new": true}')
            self.assertEqual(json.loads(target.read_text()), {"new": True})
    def test_context_fitting_counts_system_and_preserves_required_content(self):
        build = lambda description, domain, retry, context: (description + (retry or "") + (context or ""))
        with patch.object(auto, "_SYSTEM_PROMPT", "SYSTEM"), \
             patch.object(auto, "_build_prompt", build), \
             patch.object(auto, "_server_context_limit", return_value=50), \
             patch.object(auto, "_count_tokens", side_effect=lambda p, s: len(s)):
            trimmed = auto._fit_context(None, "question", None, None, "x" * 100,
                                        reserve=5, required_context="TUPLE")
            self.assertLessEqual(len("SYSTEM\nquestionTUPLE\n\n" + trimmed), 45)
            with self.assertRaisesRegex(ValueError, "Required prompt"):
                auto._fit_context(None, "question" * 10, None, None, None,
                                  reserve=5, required_context="TUPLE")

    def test_native_wiring_is_saved_with_its_input_graph(self):
        art = auto._build_artifact("wiring audit", "local", {"sequence": [
            "VINIT: source", "FSPLIT: branch", "EVALT: project", "FFUSE: join", "TANCH: return"]})
        saved = art.to_dict()["wiring_check"]
        self.assertEqual(saved["status"], "checked")
        self.assertEqual(saved["nodes"], [s["opcode"] for s in art.bootstrap_sequence.steps])
        self.assertEqual(saved["pairs"], [[1, 3]])

    def test_manifests_distinguish_equal_descriptions_and_carry_words(self):
        data = {"sequence": ["VINIT: source", "FSPLIT: fork", "EVALT: evaluate", "FFUSE: join", "TANCH: read"]}
        a = auto._build_artifact("same", "local", data)
        b = auto._build_artifact("same", "local", data)
        self.assertNotEqual(a.artifact_id, b.artifact_id)
        self.assertEqual(a.to_dict()["artifact_id"], a.artifact_id)
        root = auto.ChurnNode("same", a, 0)
        root.children.append(auto.ChurnNode("same", b, 1, opcode="EVALT", step_num=2))
        with tempfile.TemporaryDirectory(dir=Path(__file__).parent) as folder:
            manifest = json.loads(auto.ChurnTree("same", root, 2).save(Path(folder)).read_text())
            self.assertEqual(manifest["root"]["children"][0]["artifact_id"], b.artifact_id)
            self.assertEqual(manifest["root"]["glyph_word"], a.glyph_word)
            path = auto.ZoomChain("start", "end", [auto.ZoomLevel("same", a, 0)], []).save(Path(folder))
            self.assertEqual(json.loads(path.read_text())["levels"][0]["glyph_word"], a.glyph_word)

    def test_json_requires_an_object(self):
        for text in ('[]', 'null', '"text"', '42', '```json\n[{"sequence": []}]\n```'):
            with self.subTest(text=text), self.assertRaises(ValueError):
                auto._extract_json(text)
        self.assertEqual(auto._extract_json('```json\n{"sequence": []}\n```'), {"sequence": []})

    def test_unknown_operation_cannot_become_identity(self):
        for text in ("TELEPORT: move", "TELEPORT: use EVALT later", "FSPLIT3: fork", {"opcode": "EVALT"}, ""):
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
    async def test_cancelled_check_reaps_its_process(self):
        art = SimpleNamespace(lean_scaffold="def specimen := 1")
        from unittest.mock import Mock
        proc = SimpleNamespace(returncode=None, kill=Mock(), wait=AsyncMock(),
                               communicate=AsyncMock(side_effect=asyncio.CancelledError))
        with tempfile.TemporaryDirectory(dir=Path(__file__).parent) as folder:
            with patch.object(auto, "_GATE_CHECK_DIR", Path(folder)), \
                 patch.object(auto.asyncio, "create_subprocess_exec", AsyncMock(return_value=proc)), \
                 self.assertRaises(asyncio.CancelledError):
                await auto._verify_lean_scaffold(art, "cancelled")
        proc.kill.assert_called_once()
        proc.wait.assert_awaited_once()
        self.assertIsNone(art.lean_verified)

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


class ProviderAuditTest(unittest.IsolatedAsyncioTestCase):
    async def test_invalid_execution_budgets_fail_before_generation(self):
        with patch.object(auto, "_run_gated_imscription", AsyncMock()) as gate:
            with self.assertRaises(ValueError):
                await auto.auto_design("specimen", max_retries=0)
        gate.assert_not_awaited()
        with patch.object(auto, "auto_design", AsyncMock()) as design:
            for kwargs in ({"windings": 0}, {"max_ob3ects": 0}, {"concurrency": 0}):
                with self.assertRaises(ValueError):
                    await auto.churn_design("specimen", **kwargs)
        design.assert_not_awaited()

    async def test_rate_limit_retries_wait_and_respect_the_budget(self):
        import httpx
        error = httpx.HTTPStatusError("rate limited", request=httpx.Request("POST", "http://offline"),
                                     response=httpx.Response(429, headers={"Retry-After": "2"}))
        data = {"sequence": ["VINIT: source", "FSPLIT: branch", "EVALT: project", "FFUSE: join", "TANCH: read"]}
        provider = SimpleNamespace(query=AsyncMock(side_effect=[error, json.dumps(data)]))
        with patch.object(auto, "get_llm_provider", return_value=provider), \
             patch.object(auto.asyncio, "sleep", AsyncMock()) as sleep, \
             patch.object(auto, "_verify_lean_scaffold", AsyncMock()), \
             patch.object(auto, "_kernel_repairs", AsyncMock()):
            await auto.auto_design("specimen", provider_name="pinned", skip_gate=True, max_retries=2)
        sleep.assert_awaited_once_with(2.0)
        self.assertEqual(provider.query.await_count, 2)

    async def test_gate_uses_provider_defaults_instead_of_a_foreign_model(self):
        from unittest.mock import Mock
        agent = SimpleNamespace(generate_guided=AsyncMock(return_value="result"))
        config = Mock(return_value="configuration")
        with patch.object(auto, "_build_gate_agent_config", config), \
             patch.object(auto, "_ImscriptionGeneratorAgent", Mock(return_value=agent)):
            self.assertEqual(await auto._run_gated_imscription("specimen", "deepseek", None), "result")
            config.assert_called_once_with(provider="deepseek", model=None, max_tokens=4000)
            config.reset_mock()
            await auto._run_gated_imscription("specimen", "llamacpp", "nickname")
            config.assert_called_once_with(provider="llamacpp", model=None, max_tokens=4000)

    async def test_zoom_pins_provider_and_validates_the_complete_chain(self):
        valid = {"levels": ["seed", "middle", "target"], "clink_morphisms": ["first", "second"]}
        provider = SimpleNamespace(query=AsyncMock(return_value=json.dumps(valid)))
        with patch.object(auto, "get_llm_provider", return_value=provider) as factory:
            self.assertEqual(await auto._discover_zoom_levels("seed", "target", 3,
                             provider_name="pinned", model="selected"),
                             (valid["levels"], valid["clink_morphisms"]))
        factory.assert_called_once_with("pinned", model="selected")
        for bad in ({"levels": "seed"}, {**valid, "levels": ["changed", "middle", "target"]},
                    {**valid, "clink_morphisms": ["only one"]},
                    {**valid, "levels": ["seed", None, "target"]}):
            provider.query = AsyncMock(return_value=json.dumps(bad))
            with patch.object(auto, "get_llm_provider", return_value=provider), self.assertRaises(RuntimeError):
                await auto._discover_zoom_levels("seed", "target", 3, provider_name="pinned")
        with self.assertRaises(ValueError):
            await auto._discover_zoom_levels("seed", "target", 1)

    async def test_fallback_refits_original_context_and_retries_refit(self):
        data = {"sequence": ["VINIT: source", "FSPLIT: branch", "EVALT: project",
                             "FFUSE: join", "TANCH: read"]}
        first = SimpleNamespace(query=AsyncMock(return_value=""), model="first")
        second = SimpleNamespace(query=AsyncMock(side_effect=["broken", json.dumps(data)]),
                                 invalidate_last=AsyncMock(), model="second")
        contexts = []
        def fit(provider, description, domain, retry, context, **kwargs):
            contexts.append((provider, retry, context, kwargs.get("required_context")))
            return "short" if provider is first else context
        with patch.object(auto, "_PROVIDER_CHAIN", ["first", "second"]), \
             patch.dict(auto.os.environ, {"IG_PROVIDER": "", "IG_MODEL": ""}), \
             patch.object(auto, "_UNREACHABLE", set()), \
             patch.object(auto, "get_llm_provider", side_effect=[first, second]), \
             patch.object(auto, "_fit_context", side_effect=fit), \
             patch.object(auto, "_verify_lean_scaffold", AsyncMock()), \
             patch.object(auto, "_kernel_repairs", AsyncMock()):
            art = await auto.auto_design("audit", skip_gate=True, context="original")
        self.assertEqual([c[2] for c in contexts], ["original"] * 3)
        self.assertIsNotNone(contexts[-1][1])
        self.assertEqual(art.grounding_status, "ungated")
        second.invalidate_last.assert_awaited_once()

    async def test_pinned_provider_and_failed_grounding_are_preserved(self):
        data = {"sequence": ["VINIT: source", "FSPLIT: branch", "EVALT: project",
                             "FFUSE: join", "TANCH: read"]}
        provider = SimpleNamespace(query=AsyncMock(return_value=json.dumps(data)), model="pinned")
        gate = SimpleNamespace(imscription=SimpleNamespace(to_notation=lambda: "TUPLE"),
                               grounding_status="failed", reasoning="cause",
                               failed_primitives=["axis"])
        with patch.object(auto, "get_llm_provider", return_value=provider) as factory, \
             patch.object(auto, "_UNREACHABLE", {"pinned"}), \
             patch.object(auto, "_run_gated_imscription", AsyncMock(return_value=gate)), \
             patch.object(auto, "_fit_context", side_effect=lambda *a, **k: "optional"), \
             patch.object(auto, "_verify_lean_scaffold", AsyncMock()), \
             patch.object(auto, "_kernel_repairs", AsyncMock()):
            art = await auto.auto_design("audit", provider_name="pinned")
        factory.assert_called_once_with("pinned")
        prompt = provider.query.call_args.args[0]
        self.assertIn("TUPLE", prompt)
        self.assertIn("grounding: failed", prompt)
        self.assertNotIn("already-grounded", prompt)
        self.assertEqual(art.grounding_status, "failed")
        self.assertEqual(art.grounding_failed_primitives, ["axis"])


if __name__ == "__main__":
    unittest.main()
