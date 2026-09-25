"""Regression checks for a banked clear followed by fusion and fixation."""

import unittest

from lattice_cycler import parse_word
from weight_flow import run


class FactorFrameFusionTest(unittest.TestCase):
    def test_fixation_before_fusion_strands_banked_weight(self):
        steps, unknown = parse_word("⊣⊣∈≻⊤≺⊥⋈⊡∋⊙⊞")
        self.assertFalse(unknown)
        machine = run(steps)
        self.assertEqual(dict(machine.frame_weight[0]), {"T": 1, "F": 1})
        self.assertEqual(dict(machine.reg_weight), {"F": 1})
        self.assertTrue(any(kind == "INERT" and glyph == "∋"
                            for _, glyph, kind, _ in machine.ledger))

    def test_fusion_before_fixation_restores_banked_weight(self):
        steps, unknown = parse_word("⊣⊣∈≻⊤≺⊥⋈∋⊡⊙⊞")
        self.assertFalse(unknown)
        machine = run(steps)
        self.assertEqual(machine.frame_weight, [])
        self.assertEqual(dict(machine.reg_weight), {"T": 1, "F": 1})
        self.assertTrue(any(kind == "FUSE" and detail["restored"] == {"T": 1}
                            for _, _, kind, detail in machine.ledger))


if __name__ == "__main__":
    unittest.main()
