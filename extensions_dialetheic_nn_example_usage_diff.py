--- extensions/dialetheic_nn/example_usage.py (原始)


+++ extensions/dialetheic_nn/example_usage.py (修改后)
"""
Example: Training a Dialetheic Neural Network on Contradictory Data

This demonstrates how DNNs can learn from datasets with conflicting labels
without collapsing the contradictions into averages.
"""

from dnn import (
    BelnapState, DialetheicTensor, DialetheicLayer,
    DialetheicNetwork, DialetheicActivation
)


def create_contradictory_dataset():
    """
    Create a toy dataset with contradictory labels.

    In standard ML, this would cause training instability.
    In DNNs, contradictions are explicitly represented as BOTH states.
    """
    # Features: simple 2D points
    X = [
        [1.0, 0.5],    # Point 1
        [-0.8, 0.9],   # Point 2
        [0.3, -0.7],   # Point 3
        [-0.5, -0.5],  # Point 4
        [0.9, 0.9],    # Point 5 - similar to Point 1 but...
    ]

    # Labels: Note the contradiction! Points 1 and 5 are similar but have opposite labels
    y = [
        [1.0],     # Point 1: TRUE
        [-1.0],    # Point 2: FALSE
        [-1.0],    # Point 3: FALSE
        [1.0],     # Point 4: TRUE (contradicts nearby Point 3?)
        [-1.0],    # Point 5: FALSE (contradicts similar Point 1!)
    ]

    return X, y


def demonstrate_contradiction_handling():
    """Show how DNN handles contradictory training examples."""

    print("=" * 70)
    print("DIALETHEIC NEURAL NETWORK: CONTRADICTORY DATA EXAMPLE")
    print("=" * 70)

    # Create dataset
    X, y = create_contradictory_dataset()

    print("\n1. Dataset with contradictions:")
    print("   Point 1 [1.0, 0.5] → TRUE")
    print("   Point 5 [0.9, 0.9] → FALSE  ← Similar features, opposite label!")
    print("   Point 3 [0.3, -0.7] → FALSE")
    print("   Point 4 [-0.5, -0.5] → TRUE  ← Potentially contradictory with Point 3")

    # Create network
    net = DialetheicNetwork.create([2, 4, 1], contradiction_rate=0.1)

    print(f"\n2. Network architecture: 2 → 4 → 1")
    print(f"   Initial contradiction rate in weights: ~10%")

    # Analyze initial state
    contr_map = net.get_contradiction_map()
    print(f"\n3. Initial weight contradictions by layer:")
    for i, layer_contr in enumerate(contr_map):
        avg_contr = sum(layer_contr) / len(layer_contr) if layer_contr else 0
        print(f"   Layer {i}: {[f'{c:.0%}' for c in layer_contr]} (avg: {avg_contr:.0%})")

    # Forward pass on all examples
    print(f"\n4. Forward pass on training data:")
    print("   " + "-" * 60)

    for i, (features, label) in enumerate(zip(X, y)):
        output = net.predict([features])
        input_tensor = DialetheicTensor.from_scalar([features])

        # Check what Belnap states the input converts to
        input_states = [[s.name for s in row] for row in input_tensor.data]

        print(f"\n   Example {i+1}:")
        print(f"      Features: {features}")
        print(f"      Target:   {label[0]:+.1f} ({'TRUE' if label[0] > 0 else 'FALSE'})")
        print(f"      Output:   {output[0][0]:+.2f}")
        print(f"      Input states: {input_states}")

    # Demonstrate explicit contradiction in network
    print(f"\n5. Explicit contradiction demonstration:")
    print("   Creating two contradictory input tensors...")

    true_input = DialetheicTensor([[BelnapState.TRUE, BelnapState.TRUE]], (1, 2))
    false_input = DialetheicTensor([[BelnapState.FALSE, BelnapState.FALSE]], (1, 2))

    # Show what happens when we combine them with meet (consensus)
    consensus = true_input.meet(false_input)
    print(f"\n   TRUE  ∧ FALSE = {consensus.data[0]}  ← Contradiction becomes BOTH!")

    # Show what happens with join (union)
    union = true_input.join(false_input)
    print(f"   TRUE  ∨ FALSE = {union.data[0]}  ← Union propagates TRUE")

    # Double negation test
    negated = true_input.negate()
    double_neg = negated.negate()
    print(f"\n   ¬TRUE = {negated.data[0]}")
    print(f"   ¬¬TRUE = {double_neg.data[0]}  ← Returns to original")

    print("\n" + "=" * 70)
    print("KEY INSIGHT:")
    print("Unlike standard neural networks that would try to average")
    print("contradictory labels (causing gradient instability), DNNs")
    print("maintain contradictions explicitly as BOTH states.")
    print("This allows reasoning ABOUT contradictions, not just despite them.")
    print("=" * 70)


def demonstrate_sensor_fusion():
    """
    Example: Fusing data from unreliable sensors.

    Sensor 1 says TRUE, Sensor 2 says FALSE → System records BOTH
    rather than averaging to 0 (which would lose information).
    """
    print("\n\n" + "=" * 70)
    print("APPLICATION: MULTI-SENSOR FUSION WITH CONFLICTING READINGS")
    print("=" * 70)

    # Simulate three sensors reporting on the same phenomenon
    sensor_1 = [0.9, 0.8, 0.95]   # Strong positive
    sensor_2 = [-0.85, -0.9, -0.8]  # Strong negative (malfunctioning?)
    sensor_3 = [0.1, -0.2, 0.05]  # Uncertain/ambiguous

    print("\nSensor readings on same event:")
    print(f"   Sensor 1 (reliable):  {sensor_1}")
    print(f"   Sensor 2 (conflicted): {sensor_2}")
    print(f"   Sensor 3 (uncertain):  {sensor_3}")

    # Convert to dialetheic tensors
    t1 = DialetheicTensor.from_scalar([sensor_1])
    t2 = DialetheicTensor.from_scalar([sensor_2])
    t3 = DialetheicTensor.from_scalar([sensor_3])

    print(f"\nConverted to Belnap states:")
    print(f"   Sensor 1: {[s.name for s in t1.data[0]]}")
    print(f"   Sensor 2: {[s.name for s in t2.data[0]]}")
    print(f"   Sensor 3: {[s.name for s in t3.data[0]]}")

    # Fuse sensors using different strategies

    # Strategy 1: Consensus (meet) - only accept what all agree on
    consensus_all = t1.meet(t2).meet(t3)
    print(f"\nConsensus fusion (meet all):")
    print(f"   Result: {[s.name for s in consensus_all.data[0]]}")
    print(f"   → Only accepts information all sensors agree on")

    # Strategy 2: Union (join) - combine all information
    union_all = t1.join(t2).join(t3)
    print(f"\nUnion fusion (join all):")
    print(f"   Result: {[s.name for s in union_all.data[0]]}")
    print(f"   → Combines all information, contradictions become BOTH")

    # Strategy 3: Reliable sensors only
    reliable_fusion = t1.join(t3)  # Skip conflicted sensor 2
    print(f"\nReliable-only fusion (sensors 1 & 3):")
    print(f"   Result: {[s.name for s in reliable_fusion.data[0]]}")

    print("\n" + "=" * 70)
    print("ADVANTAGE: Standard averaging would give [~0, ~0, ~0]")
    print("losing all information. DNN preserves the conflict explicitly!")
    print("=" * 70)


if __name__ == "__main__":
    demonstrate_contradiction_handling()
    demonstrate_sensor_fusion()

    print("\n\n" + "=" * 70)
    print("Next steps:")
    print("  - Implement training algorithm with lattice-valued gradients")
    print("  - Add visualization of contradiction flow through network")
    print("  - Connect to IMASM string diagram generator")
    print("  - Formalize in Lean 4 (category theory proofs)")
    print("=" * 70)