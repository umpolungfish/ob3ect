--- extensions/dialetheic_nn/test_dnn.py (原始)


+++ extensions/dialetheic_nn/test_dnn.py (修改后)
"""
Test suite for Dialetheic Neural Networks
Tests lattice operations, network forward pass, and contradiction handling.
"""

import unittest
from dnn import (
    BelnapState, DialetheicTensor, DialetheicLayer,
    DialetheicNetwork, DialetheicActivation
)


class TestBelnapState(unittest.TestCase):

    def test_state_values(self):
        """Test that all four states exist."""
        self.assertEqual(BelnapState.VOID.name, 'VOID')
        self.assertEqual(BelnapState.TRUE.name, 'TRUE')
        self.assertEqual(BelnapState.FALSE.name, 'FALSE')
        self.assertEqual(BelnapState.BOTH.name, 'BOTH')

    def test_to_float(self):
        """Test scalar projection."""
        self.assertEqual(BelnapState.VOID.to_float(), 0.0)
        self.assertEqual(BelnapState.TRUE.to_float(), 1.0)
        self.assertEqual(BelnapState.FALSE.to_float(), -1.0)
        self.assertEqual(BelnapState.BOTH.to_float(), 0.0)

    def test_from_float(self):
        """Test scalar conversion."""
        self.assertEqual(BelnapState.from_float(0.0), BelnapState.VOID)
        self.assertEqual(BelnapState.from_float(0.5), BelnapState.TRUE)
        self.assertEqual(BelnapState.from_float(-0.5), BelnapState.FALSE)
        self.assertEqual(BelnapState.from_float(0.2), BelnapState.VOID)  # Below threshold


class TestDialetheicTensor(unittest.TestCase):

    def setUp(self):
        self.tensor_a = DialetheicTensor(
            [[BelnapState.TRUE, BelnapState.FALSE],
             [BelnapState.VOID, BelnapState.BOTH]],
            (2, 2)
        )

    def test_creation(self):
        """Test tensor creation."""
        self.assertEqual(self.tensor_a.shape, (2, 2))
        self.assertEqual(self.tensor_a.data[0][0], BelnapState.TRUE)

    def test_zeros(self):
        """Test zeros initialization."""
        z = DialetheicTensor.zeros((3, 3))
        self.assertEqual(z.shape, (3, 3))
        for row in z.data:
            for val in row:
                self.assertEqual(val, BelnapState.VOID)

    def test_join_operation(self):
        """Test lattice join (∨)."""
        a = DialetheicTensor([[BelnapState.TRUE, BelnapState.FALSE]], (1, 2))
        b = DialetheicTensor([[BelnapState.FALSE, BelnapState.TRUE]], (1, 2))

        result = a.join(b)

        # TRUE ∨ FALSE = TRUE
        # FALSE ∨ TRUE = TRUE
        self.assertEqual(result.data[0][0], BelnapState.TRUE)
        self.assertEqual(result.data[0][1], BelnapState.TRUE)

    def test_meet_operation(self):
        """Test lattice meet (∧)."""
        a = DialetheicTensor([[BelnapState.TRUE, BelnapState.FALSE]], (1, 2))
        b = DialetheicTensor([[BelnapState.FALSE, BelnapState.TRUE]], (1, 2))

        result = a.meet(b)

        # TRUE ∧ FALSE = BOTH (contradiction!)
        # FALSE ∧ TRUE = BOTH (contradiction!)
        self.assertEqual(result.data[0][0], BelnapState.BOTH)
        self.assertEqual(result.data[0][1], BelnapState.BOTH)

    def test_negation(self):
        """Test logical negation."""
        a = DialetheicTensor([
            [BelnapState.TRUE, BelnapState.FALSE,
             BelnapState.VOID, BelnapState.BOTH]
        ], (1, 4))

        result = a.negate()

        self.assertEqual(result.data[0][0], BelnapState.FALSE)  # ¬TRUE = FALSE
        self.assertEqual(result.data[0][1], BelnapState.TRUE)   # ¬FALSE = TRUE
        self.assertEqual(result.data[0][2], BelnapState.BOTH)   # ¬VOID = BOTH
        self.assertEqual(result.data[0][3], BelnapState.VOID)   # ¬BOTH = VOID

    def test_scalar_conversion(self):
        """Test round-trip scalar conversion."""
        scalar_input = [[1.0, -1.0, 0.0, 0.5]]
        tensor = DialetheicTensor.from_scalar(scalar_input)
        scalar_output = tensor.to_scalar()

        # Should preserve structure (exact values may differ due to thresholding)
        self.assertEqual(len(scalar_output), 1)
        self.assertEqual(len(scalar_output[0]), 4)


class TestDialetheicLayer(unittest.TestCase):

    def test_layer_creation(self):
        """Test layer initialization."""
        layer = DialetheicLayer.random(4, 3, contradiction_rate=0.1)

        self.assertEqual(layer.input_size, 4)
        self.assertEqual(layer.output_size, 3)
        self.assertEqual(layer.weights.shape, (3, 4))
        self.assertEqual(layer.bias.shape, (3, 1))

    def test_forward_pass(self):
        """Test forward propagation."""
        layer = DialetheicLayer.random(3, 2, contradiction_rate=0.0)

        x = DialetheicTensor([[BelnapState.TRUE, BelnapState.TRUE, BelnapState.TRUE]], (1, 3))
        output = layer.forward(x)

        self.assertEqual(output.shape, (1, 2))

    def test_contradiction_propagation(self):
        """Test that contradictions propagate through the layer."""
        # Create layer with some BOTH weights
        layer = DialetheicLayer.random(2, 2, contradiction_rate=0.5)

        x = DialetheicTensor([[BelnapState.TRUE, BelnapState.FALSE]], (1, 2))
        output = layer.forward(x)

        # Output should exist and have correct shape
        self.assertEqual(output.shape, (1, 2))


class TestDialetheicNetwork(unittest.TestCase):

    def test_network_creation(self):
        """Test multi-layer network creation."""
        net = DialetheicNetwork.create([5, 4, 3, 2], contradiction_rate=0.1)

        self.assertEqual(len(net.layers), 3)
        self.assertEqual(net.layers[0].input_size, 5)
        self.assertEqual(net.layers[0].output_size, 4)
        self.assertEqual(net.layers[1].input_size, 4)
        self.assertEqual(net.layers[2].output_size, 2)

    def test_network_forward(self):
        """Test full network forward pass."""
        net = DialetheicNetwork.create([3, 4, 2])

        x = DialetheicTensor([[BelnapState.TRUE, BelnapState.VOID, BelnapState.FALSE]], (1, 3))
        output = net.forward(x)

        self.assertEqual(output.shape, (1, 2))

    def test_predict_interface(self):
        """Test scalar prediction interface."""
        net = DialetheicNetwork.create([4, 3, 2])

        input_data = [[0.8, -0.6, 0.2, -0.9]]
        output = net.predict(input_data)

        self.assertEqual(len(output), 1)
        self.assertEqual(len(output[0]), 2)
        # All outputs should be valid floats
        for val in output[0]:
            self.assertIsInstance(val, float)

    def test_contradiction_analysis(self):
        """Test contradiction mapping."""
        net = DialetheicNetwork.create([3, 2, 1], contradiction_rate=0.3)

        contr_map = net.get_contradiction_map()

        self.assertEqual(len(contr_map), 2)  # Two layers
        self.assertEqual(len(contr_map[0]), 2)  # First layer has 2 neurons
        self.assertEqual(len(contr_map[1]), 1)  # Second layer has 1 neuron

        # Values should be between 0 and 1
        for layer_contr in contr_map:
            for contr_ratio in layer_contr:
                self.assertGreaterEqual(contr_ratio, 0.0)
                self.assertLessEqual(contr_ratio, 1.0)


class TestLatticeProperties(unittest.TestCase):
    """Test mathematical properties of the lattice operations."""

    def test_join_commutativity(self):
        """Join should be commutative: a ∨ b = b ∨ a"""
        a = DialetheicTensor([[BelnapState.TRUE, BelnapState.VOID]], (1, 2))
        b = DialetheicTensor([[BelnapState.FALSE, BelnapState.BOTH]], (1, 2))

        ab = a.join(b)
        ba = b.join(a)

        self.assertEqual(ab.data, ba.data)

    def test_meet_commutativity(self):
        """Meet should be commutative: a ∧ b = b ∧ a"""
        a = DialetheicTensor([[BelnapState.TRUE, BelnapState.VOID]], (1, 2))
        b = DialetheicTensor([[BelnapState.FALSE, BelnapState.BOTH]], (1, 2))

        ab = a.meet(b)
        ba = b.meet(a)

        self.assertEqual(ab.data, ba.data)

    def test_double_negation(self):
        """Double negation should return original: ¬¬a = a"""
        a = DialetheicTensor([
            [BelnapState.TRUE, BelnapState.FALSE,
             BelnapState.VOID, BelnapState.BOTH]
        ], (1, 4))

        result = a.negate().negate()

        self.assertEqual(result.data, a.data)

    def test_idempotency_join(self):
        """Join should be idempotent: a ∨ a = a"""
        a = DialetheicTensor([[BelnapState.TRUE, BelnapState.BOTH]], (1, 2))

        result = a.join(a)

        self.assertEqual(result.data, a.data)

    def test_idempotency_meet(self):
        """Meet should be idempotent: a ∧ a = a"""
        a = DialetheicTensor([[BelnapState.FALSE, BelnapState.VOID]], (1, 2))

        result = a.meet(a)

        self.assertEqual(result.data, a.data)


class TestContradictionHandling(unittest.TestCase):
    """Test specific contradiction scenarios."""

    def test_explicit_contradiction(self):
        """Test that contradictory inputs produce BOTH states."""
        # Create tensors representing conflicting information
        positive = DialetheicTensor([[BelnapState.TRUE, BelnapState.TRUE]], (1, 2))
        negative = DialetheicTensor([[BelnapState.FALSE, BelnapState.FALSE]], (1, 2))

        # Meet should produce contradiction
        result = positive.meet(negative)

        self.assertEqual(result.data[0][0], BelnapState.BOTH)
        self.assertEqual(result.data[0][1], BelnapState.BOTH)

    def test_void_absorption_meet(self):
        """Test that VOID absorbs in meet: a ∧ ⊥ = ⊥"""
        a = DialetheicTensor([[BelnapState.TRUE, BelnapState.BOTH]], (1, 2))
        void = DialetheicTensor([[BelnapState.VOID, BelnapState.VOID]], (1, 2))

        result = a.meet(void)

        self.assertEqual(result.data[0][0], BelnapState.VOID)
        self.assertEqual(result.data[0][1], BelnapState.VOID)

    def test_both_absorption_join(self):
        """Test that BOTH absorbs in join: a ∨ ⊤ = ⊤"""
        a = DialetheicTensor([[BelnapState.TRUE, BelnapState.FALSE]], (1, 2))
        both = DialetheicTensor([[BelnapState.BOTH, BelnapState.BOTH]], (1, 2))

        result = a.join(both)

        self.assertEqual(result.data[0][0], BelnapState.BOTH)
        self.assertEqual(result.data[0][1], BelnapState.BOTH)


if __name__ == '__main__':
    unittest.main(verbosity=2)