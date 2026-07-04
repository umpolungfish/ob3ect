--- extensions/dialetheic_nn/README.md (原始)


+++ extensions/dialetheic_nn/README.md (修改后)
# Dialetheic Neural Networks (DNN)

## Overview

Neural networks with **Belnap FOUR registers** instead of scalar values. Uses IMASM lattice operations as activation functions to handle contradictory data without system collapse.

## The Belnap FOUR Lattice

```
        BOTH (⊤)
       /    \
     TRUE  FALSE
       \    /
        VOID (⊥)
```

### Truth Values
- **VOID** (⊥): No information
- **TRUE** (t): True only
- **FALSE** (f): False only
- **BOTH** (⊤): Both true and false (contradiction/dialetheia)

### Lattice Operations

| Operation | Symbol | IMASM Equivalent | Description |
|-----------|--------|------------------|-------------|
| Join      | ∨      | AFWD             | Least upper bound - forward propagation of truth |
| Meet      | ∧      | AREV             | Greatest lower bound - consensus/reverse propagation |
| Negation  | ¬      | -                | Swaps TRUE↔FALSE, VOID↔BOTH |

## Key Features

1. **Contradiction Preservation**: Unlike standard neural networks that average contradictory signals, DNNs maintain contradictions explicitly as BOTH states.

2. **Lattice-Based Computation**: Matrix multiplication is replaced with dialetheic operations:
   - Multiplication → Meet (∧)
   - Addition → Join (∨)

3. **Explicit Uncertainty**: VOID states represent genuine absence of information, not just zero.

4. **Paradox Handling**: Can process paradoxical inputs (e.g., "this statement is false") without numerical instability.

## Usage

### Basic Example

```python
from dnn import DialetheicNetwork, DialetheicTensor, BelnapState

# Create a network: 4 inputs → 3 hidden → 2 outputs
net = DialetheicNetwork.create([4, 3, 2], contradiction_rate=0.1)

# Test with contradictory input
input_data = [[0.9, -0.8, 0.1, -0.2]]  # Mix of positive and negative
output = net.predict(input_data)

# Analyze contradictions in the network
contradiction_map = net.get_contradiction_map()
print(f"Layer contradictions: {contradiction_map}")
```

### Lattice Operations

```python
from dnn import DialetheicTensor, BelnapState

a = DialetheicTensor([[BelnapState.TRUE, BelnapState.FALSE]], (1, 2))
b = DialetheicTensor([[BelnapState.FALSE, BelnapState.TRUE]], (1, 2))

# Join (union of information)
result_join = a.join(b)  # [TRUE, TRUE]

# Meet (consensus)
result_meet = a.meet(b)  # [BOTH, BOTH] - contradiction!

# Negation
result_neg = a.negate()  # [FALSE, TRUE]
```

## Architecture

### `BelnapState`
Enum representing the four truth values with conversion methods to/from floats.

### `DialetheicTensor`
Multi-dimensional tensor where each element is a BelnapState. Supports:
- Element-wise lattice operations
- Conversion to/from scalar tensors
- Batch processing

### `DialetheicLayer`
Neural network layer with:
- Belnap state weights (can be contradictory!)
- Lattice-based forward pass
- Configurable activation functions

### `DialetheicNetwork`
Multi-layer network with:
- Automatic architecture creation
- Contradiction analysis tools
- Scalar compatibility layer

## Applications

1. **Conflicting Sensor Data**: Fuse information from unreliable sensors without losing contradiction information.

2. **Legal Reasoning**: Model cases with conflicting precedents or evidence.

3. **Medical Diagnosis**: Handle symptoms that point to contradictory diagnoses.

4. **Quantum-Classical Interfaces**: Represent superposition-like states in classical computation.

5. **Debate Analysis**: Track opposing arguments without forcing premature resolution.

6. **Learning from Noisy Labels**: Train on datasets with contradictory labels while preserving uncertainty.

## Running the Demo

```bash
python dnn.py
```

This demonstrates:
- Network creation with controlled contradiction rates
- Processing of various input patterns (clear, ambiguous, contradictory)
- Lattice operation examples
- Paradox handling capabilities

## Future Extensions

- **Training Algorithms**: Develop backpropagation analogues for lattice-valued networks
- **Visualization Tools**: String diagram representations of network computations
- **Hardware Implementation**: FPGA circuits with Belnap-state registers
- **Hybrid Networks**: Combine dialetheic and scalar layers
- **Category Theory**: Formal proofs of network composition properties

## Mathematical Foundation

The dialetheic neural network is grounded in:
- **Belnap's Four-Valued Logic** (1977)
- **Lattice Theory** (Birkhoff)
- **IMASM Coordinate System** (ob3ect project)
- **Special Frobenius Algebras** (category theory)

Each layer preserves the Frobenius condition μ∘δ = id_A through its lattice operations.

## License

Part of the ob3ect project - see main repository for licensing terms.