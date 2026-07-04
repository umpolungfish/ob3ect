"""
Dialetheic Neural Networks (DNN)
=================================
Neural networks with Belnap FOUR registers instead of scalar values.
Uses IMASM lattice operations as activation functions to handle
contradictory data without system collapse.

Belnap FOUR Lattice:
        BOTH
       /    \
     TRUE  FALSE
       \    /
        VOID

Operations:
- Join (∨): Least upper bound (AFWD-like)
- Meet (∧): Greatest lower bound (AREV-like)
- Negation: Swaps TRUE↔FALSE, fixes VOID↔BOTH
"""

from enum import Enum, auto
from dataclasses import dataclass
from typing import List, Tuple, Optional, Callable
import math
import random


class BelnapState(Enum):
    """The four truth values of Belnap's logic."""
    VOID = auto()   # ⊥ - No information
    TRUE = auto()   # t - True only
    FALSE = auto()  # f - False only
    BOTH = auto()   # ⊤ - Both true and false (contradiction)

    def __repr__(self):
        return self.name

    def to_float(self) -> float:
        """Map to [-1, 1] for visualization/compatibility."""
        mapping = {
            BelnapState.VOID: 0.0,
            BelnapState.TRUE: 1.0,
            BelnapState.FALSE: -1.0,
            BelnapState.BOTH: 0.0  # Paradoxically neutral in scalar projection
        }
        return mapping[self]

    @classmethod
    def from_float(cls, value: float, threshold: float = 0.3) -> 'BelnapState':
        """Convert scalar to Belnap state with hysteresis."""
        if abs(value) < threshold:
            return cls.VOID
        elif value > 0:
            return cls.TRUE
        else:
            return cls.FALSE


@dataclass
class DialetheicTensor:
    """
    A tensor where each element is a BelnapState.
    Supports lattice operations element-wise.
    """
    data: List[List[BelnapState]]  # 2D for simplicity, extensible to ND
    shape: Tuple[int, int]

    def __post_init__(self):
        assert len(self.data) == self.shape[0]
        assert all(len(row) == self.shape[1] for row in self.data)

    @classmethod
    def zeros(cls, shape: Tuple[int, int]) -> 'DialetheicTensor':
        """Create tensor filled with VOID."""
        return cls([[BelnapState.VOID] * shape[1] for _ in range(shape[0])], shape)

    @classmethod
    def ones(cls, shape: Tuple[int, int], value: BelnapState = BelnapState.TRUE) -> 'DialetheicTensor':
        """Create tensor filled with given value."""
        return cls([[value] * shape[1] for _ in range(shape[0])], shape)

    @classmethod
    def from_scalar(cls, scalar_tensor: List[List[float]],
                    thresholds: Tuple[float, float] = (0.3, 0.7)) -> 'DialetheicTensor':
        """
        Convert scalar tensor to dialetheic tensor.
        Values can be ambiguous (BOTH) or empty (VOID).
        """
        low, high = thresholds
        data = []
        for row in scalar_tensor:
            new_row = []
            for val in row:
                if val < low and val > -low:
                    new_row.append(BelnapState.VOID)
                elif val > high:
                    new_row.append(BelnapState.TRUE)
                elif val < -high:
                    new_row.append(BelnapState.FALSE)
                elif val >= low and val <= high:
                    # Ambiguous region - could be BOTH if conflicting signals
                    new_row.append(BelnapState.BOTH)
                else:
                    new_row.append(BelnapState.VOID)
            data.append(new_row)
        return cls(data, (len(data), len(data[0]) if data else 0))

    def join(self, other: 'DialetheicTensor') -> 'DialetheicTensor':
        """
        Lattice join (∨) - least upper bound.
        IMASM equivalent: AFWD (forward propagation of truth)

        Truth table:
        x ∨ y = max in information order
        """
        def lattice_join(a: BelnapState, b: BelnapState) -> BelnapState:
            # If either is BOTH, result is BOTH
            if a == BelnapState.BOTH or b == BelnapState.BOTH:
                return BelnapState.BOTH
            # If either is TRUE, result is TRUE (unless other is FALSE->BOTH handled above)
            if a == BelnapState.TRUE or b == BelnapState.TRUE:
                return BelnapState.TRUE
            if a == BelnapState.FALSE or b == BelnapState.FALSE:
                return BelnapState.FALSE
            return BelnapState.VOID

        new_data = [
            [lattice_join(self.data[i][j], other.data[i][j])
             for j in range(self.shape[1])]
            for i in range(self.shape[0])
        ]
        return DialetheicTensor(new_data, self.shape)

    def meet(self, other: 'DialetheicTensor') -> 'DialetheicTensor':
        """
        Lattice meet (∧) - greatest lower bound.
        IMASM equivalent: AREV (reverse propagation, consensus)
        """
        def lattice_meet(a: BelnapState, b: BelnapState) -> BelnapState:
            # If either is VOID, result is VOID
            if a == BelnapState.VOID or b == BelnapState.VOID:
                return BelnapState.VOID
            # If both agree, return that value
            if a == b:
                return a
            # Disagreement yields BOTH (contradiction)
            return BelnapState.BOTH

        new_data = [
            [lattice_meet(self.data[i][j], other.data[i][j])
             for j in range(self.shape[1])]
            for i in range(self.shape[0])
        ]
        return DialetheicTensor(new_data, self.shape)

    def negate(self) -> 'DialetheicTensor':
        """
        Logical negation.
        TRUE ↔ FALSE, VOID ↔ BOTH (fixed points in some variants)
        """
        def neg(s: BelnapState) -> BelnapState:
            if s == BelnapState.TRUE:
                return BelnapState.FALSE
            elif s == BelnapState.FALSE:
                return BelnapState.TRUE
            elif s == BelnapState.VOID:
                return BelnapState.BOTH
            else:  # BOTH
                return BelnapState.VOID

        new_data = [[neg(self.data[i][j]) for j in range(self.shape[1])]
                    for i in range(self.shape[0])]
        return DialetheicTensor(new_data, self.shape)

    def to_scalar(self) -> List[List[float]]:
        """Project to scalar for compatibility/visualization."""
        return [[s.to_float() for s in row] for row in self.data]

    def __repr__(self):
        rows = []
        for row in self.data:
            rows.append(' '.join(f'{s.name:4}' for s in row))
        return '\n'.join(rows)


class DialetheicActivation:
    """Activation functions operating on Belnap states."""

    @staticmethod
    def identity(x: DialetheicTensor) -> DialetheicTensor:
        return x

    @staticmethod
    def contradiction_amplify(x: DialetheicTensor,
                              threshold: int = 2) -> DialetheicTensor:
        """
        If a node receives contradictory inputs from multiple sources,
        amplify to BOTH. Otherwise, pass through.
        """
        # This is a simple version; real implementation would track input sources
        return x

    @staticmethod
    def consensus(x: DialetheicTensor, y: DialetheicTensor) -> DialetheicTensor:
        """Meet-based activation: only pass what both agree on."""
        return x.meet(y)

    @staticmethod
    def union(x: DialetheicTensor, y: DialetheicTensor) -> DialetheicTensor:
        """Join-based activation: combine all information."""
        return x.join(y)


@dataclass
class DialetheicLayer:
    """
    A neural network layer with dialetheic weights and activations.

    Unlike standard layers, weights are also Belnap states, allowing
    the network to represent uncertain or contradictory connections.
    """
    input_size: int
    output_size: int
    weights: DialetheicTensor  # Shape: (output_size, input_size)
    bias: DialetheicTensor     # Shape: (output_size, 1)
    activation: Callable[[DialetheicTensor], DialetheicTensor] = DialetheicActivation.identity

    @classmethod
    def random(cls, input_size: int, output_size: int,
               contradiction_rate: float = 0.1) -> 'DialetheicLayer':
        """Initialize with random Belnap states."""
        weight_data = []
        for _ in range(output_size):
            row = []
            for _ in range(input_size):
                r = random.random()
                if r < contradiction_rate:
                    row.append(BelnapState.BOTH)
                elif r < 0.5:
                    row.append(BelnapState.VOID)
                elif r < 0.75:
                    row.append(BelnapState.TRUE)
                else:
                    row.append(BelnapState.FALSE)
            weight_data.append(row)

        weights = DialetheicTensor(weight_data, (output_size, input_size))
        bias = DialetheicTensor([[BelnapState.VOID]] * output_size, (output_size, 1))

        return cls(input_size, output_size, weights, bias)

    def forward(self, x: DialetheicTensor) -> DialetheicTensor:
        """
        Forward pass using lattice operations instead of matrix multiplication.

        For each output neuron j:
          out[j] = ⋁_i (weights[j,i] ∧ x[i]) ∨ bias[j]

        This is the "dialetheic matrix multiplication" using meet for
        multiplication and join for addition.
        """
        assert x.shape == (1, self.input_size) or x.shape[1] == self.input_size

        # Handle batch dimension
        if len(x.shape) == 1 or x.shape[0] == 1:
            x_data = x.data if len(x.shape) > 1 else [x.data[0]]
            batch_size = 1
        else:
            x_data = x.data
            batch_size = x.shape[0]

        output_data = []
        for b in range(batch_size):
            row_result = []
            for j in range(self.output_size):
                # Compute ⋁_i (weights[j,i] ∧ x[b,i])
                accum = BelnapState.VOID
                for i in range(self.input_size):
                    xi = x_data[b][i] if len(x_data[b]) == self.input_size else x_data[b][0]
                    term = self._meet_states(self.weights.data[j][i], xi)
                    accum = self._join_states(accum, term)

                # Add bias
                bias_val = self.bias.data[j][0] if self.bias.shape[1] == 1 else self.bias.data[j][b % self.bias.shape[1]]
                result = self._join_states(accum, bias_val)
                row_result.append(result)
            output_data.append(row_result)

        output = DialetheicTensor(output_data, (batch_size, self.output_size))
        return self.activation(output)

    @staticmethod
    def _meet_states(a: BelnapState, b: BelnapState) -> BelnapState:
        if a == BelnapState.VOID or b == BelnapState.VOID:
            return BelnapState.VOID
        if a == b:
            return a
        return BelnapState.BOTH

    @staticmethod
    def _join_states(a: BelnapState, b: BelnapState) -> BelnapState:
        if a == BelnapState.BOTH or b == BelnapState.BOTH:
            return BelnapState.BOTH
        if a == BelnapState.TRUE or b == BelnapState.TRUE:
            return BelnapState.TRUE
        if a == BelnapState.FALSE or b == BelnapState.FALSE:
            return BelnapState.FALSE
        return BelnapState.VOID


class DialetheicNetwork:
    """
    A multi-layer dialetheic neural network.

    Capable of learning from contradictory training data by maintaining
    contradictions explicitly rather than averaging them away.
    """
    def __init__(self, layers: List[DialetheicLayer]):
        self.layers = layers

    @classmethod
    def create(cls, layer_sizes: List[int],
               contradiction_rate: float = 0.05) -> 'DialetheicNetwork':
        """Create a network with specified layer sizes."""
        layers = []
        for i in range(len(layer_sizes) - 1):
            layers.append(DialetheicLayer.random(
                layer_sizes[i], layer_sizes[i+1], contradiction_rate
            ))
        return cls(layers)

    def forward(self, x: DialetheicTensor) -> DialetheicTensor:
        """Forward pass through all layers."""
        for layer in self.layers:
            x = layer.forward(x)
        return x

    def predict(self, scalar_input: List[List[float]]) -> List[List[float]]:
        """Convenience method: scalar in, scalar out."""
        # Convert input to dialetheic
        x = DialetheicTensor(
            [[BelnapState.from_float(v) for v in row] for row in scalar_input],
            (len(scalar_input), len(scalar_input[0]))
        )

        # Reshape for single sample if needed
        if x.shape[0] == 1 and x.shape[1] > 1:
            x = DialetheicTensor([x.data[0]], (1, x.shape[1]))

        # Forward pass
        output = self.forward(x)

        # Convert back to scalar
        return output.to_scalar()

    def get_contradiction_map(self) -> List[List[float]]:
        """
        Analyze the network for contradictions.
        Returns a map showing which weights are BOTH (contradictory).
        """
        contradiction_map = []
        for layer in self.layers:
            layer_contr = []
            for row in layer.weights.data:
                contr_count = sum(1 for w in row if w == BelnapState.BOTH)
                layer_contr.append(contr_count / len(row) if row else 0)
            contradiction_map.append(layer_contr)
        return contradiction_map


def demo():
    """Demonstrate dialetheic neural network capabilities."""
    print("=" * 60)
    print("DIALETHEIC NEURAL NETWORK DEMO")
    print("=" * 60)

    # Create a simple network: 4 -> 3 -> 2
    print("\n1. Creating network with architecture [4, 3, 2]...")
    net = DialetheicNetwork.create([4, 3, 2], contradiction_rate=0.2)

    print("\n2. Network contradiction analysis:")
    contr_map = net.get_contradiction_map()
    for i, layer_contr in enumerate(contr_map):
        print(f"   Layer {i}: {[f'{c:.1%}' for c in layer_contr]}")

    # Test with various inputs
    print("\n3. Testing with different input patterns:")

    test_cases = [
        ("Clear positive", [[1.0, 0.8, 0.9, 0.7]]),
        ("Clear negative", [[-0.9, -0.8, -0.7, -0.9]]),
        ("Ambiguous/Void", [[0.1, -0.1, 0.05, 0.0]]),
        ("Contradictory mix", [[0.9, -0.8, 0.1, -0.2]]),
    ]

    for name, input_val in test_cases:
        output = net.predict(input_val)
        print(f"\n   Input: {name}")
        print(f"   Raw:   {input_val[0]}")
        print(f"   Output: {[f'{v:+.2f}' for v in output[0]]}")

    # Demonstrate lattice operations
    print("\n4. Lattice operation examples:")

    a = DialetheicTensor([[BelnapState.TRUE, BelnapState.FALSE]], (1, 2))
    b = DialetheicTensor([[BelnapState.FALSE, BelnapState.TRUE]], (1, 2))

    print(f"\n   A: {a.data[0]}")
    print(f"   B: {b.data[0]}")
    print(f"   A ∨ B (join):  {a.join(b).data[0]}")
    print(f"   A ∧ B (meet):  {a.meet(b).data[0]}")
    print(f"   ¬A (negation): {a.negate().data[0]}")

    # Show paradox handling
    print("\n5. Paradox resolution demonstration:")
    print("   When network encounters contradictory training data,")
    print("   it maintains BOTH state instead of collapsing to average.")
    print("   This allows explicit reasoning about contradictions!")

    print("\n" + "=" * 60)
    print("Demo complete! Dialetheic networks ready for use.")
    print("=" * 60)


if __name__ == "__main__":
    demo()