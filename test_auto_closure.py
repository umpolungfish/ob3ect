"""Offline closure regressions. No designer, model calls or artifact rewrites."""
import unittest
from unittest.mock import patch
from pathlib import Path

import auto
from digital.imasm16_3_core import Sequence16_3Trace, parse_glyph_word


class AutoClosureTest(unittest.TestCase):
    def build(self, word):
        with patch.object(auto, "_SCAFFOLD", None), \
             patch.object(auto, "_generate_ascii_circuit", return_value=None):
            return auto._build_artifact("closure regression", "local", {
                "sequence": list(word),
            })

    def test_supplied_open_word_is_not_verified_closed(self):
        art = self.build("⊢∈∈≻⊤⋈∈⊤⊥⊞∋⋈≺⊞∋⊙⊡⊡⊣")
        self.assertEqual(art.split_fuse_report.frobenius_verdict, "B")
        self.assertFalse(art.bootstrap_sequence.closure_verified)
        self.assertIn("closure required", art.bootstrap_sequence.validate())

    def test_transformed_reconnection_and_register_return_are_separate(self):
        trace = Sequence16_3Trace(parse_glyph_word("⊢∈⊤∋⊣"))
        trace.run()
        self.assertFalse(trace.is_closed())
        self.assertTrue(trace.has_transformed_reconnection())
        self.assertTrue(self.build("⊢∈⊤∋⊣").bootstrap_sequence.closure_verified)

    def test_identity_void_and_unmatched_fuse_are_not_closed(self):
        for word in ("⊢∈⊙∋⊣", "⊢⊤⊣", "⊢∋⊣"):
            with self.subTest(word=word):
                self.assertFalse(self.build(word).bootstrap_sequence.closure_verified)

    def test_unavailable_or_failed_checker_cannot_certify_closure(self):
        with patch.object(auto, "_IMASM16_3_AVAILABLE", False):
            self.assertFalse(self.build("⊢∈⊤∋⊣").bootstrap_sequence.closure_verified)
        with patch.object(auto.Sequence16_3Trace, "run", side_effect=ValueError("broken")):
            art = self.build("⊢∈⊤∋⊣")
        self.assertFalse(art.bootstrap_sequence.closure_verified)
        self.assertEqual(art.split_fuse_report.frobenius_verdict, "UNCHECKED")
        self.assertIn("ValueError: broken", art.split_fuse_report.failure_reason)

    def test_b_label_alone_does_not_override_structural_closure(self):
        with patch.object(auto.Sequence16_3Trace, "tri_ancestral_verdict",
                          return_value=("B", "paradox held")):
            self.assertTrue(self.build("⊢∈⊞∋⊣").bootstrap_sequence.closure_verified)

    def test_diagram_receives_the_actual_trilattice_trace(self):
        art = self.build("⊢∈⊤⊞∋⊣")
        with patch.object(auto, "_generate_diagram", return_value=None) as render:
            auto._write_diagrams(art, Path("."), "unused")
        trace = render.call_args.kwargs["trilattice_data"]
        self.assertEqual(trace["glyph_word"], art.glyph_word)
        self.assertEqual(trace["register_seq"], ["N", "N", "N", "T", "Ttf", "Ttf"])

    def test_reports_do_not_count_open_b_as_closed(self):
        art = self.build("⊢∈⊤⊣")
        zoom = auto.ZoomChain("seed", "target", [auto.ZoomLevel("open", art, 0)], [])
        self.assertIn("PARTIAL", zoom.report())
        tree = auto.ChurnTree("open", auto.ChurnNode("open", art, 0), 1)
        self.assertIn("Frobenius closed: 0", tree.report())


if __name__ == "__main__":
    unittest.main()
