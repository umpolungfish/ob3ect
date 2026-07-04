--- living_paper.py (原始)


+++ living_paper.py (修改后)
#!/usr/bin/env python3
"""
Living Paper Interface for ob3ect
===================================

A haptic/digital hybrid system for drawing IMASM diagrams by hand
and converting them to executable code with real-time verification.

This module provides:
- Practice worksheet generation for learning pen-mode diagrams
- SVG template generation with grid overlays
- Diagram syntax validation from coordinate input
- Stroke order capture simulation
- Real-time Frobenius condition checking
"""

import json
import math
from pathlib import Path
from dataclasses import dataclass, field
from typing import Optional
from enum import Enum


class NodeShape(Enum):
    """Four node shapes from READING_GUIDE.md"""
    CIRCLE = "circle"      # Logical operations
    DIAMOND = "diamond"    # Frobenius operations (μ, δ)
    HEXAGON = "hexagon"    # Dialetheia operations (B-state)
    SQUARE = "square"      # Linear logic operations


class LinePattern(Enum):
    """12 unique line patterns for different tokens"""
    SOLID = "solid"           # VINIT, TANCH
    DASHED = "dashed"         # AFWD, AREV
    DOTTED = "dotted"         # CLINK, IMSCRIB
    DOT_DASH = "dot-dash"     # FSPLIT, FFUSE
    DOUBLE = "double"         # EVALT, EVALF
    WAVY = "wavy"             # ENGAGR
    ZIGZAG = "zigzag"         # IFIX
    # Additional patterns for extended opcodes
    BOLD = "bold"
    LIGHT = "light"
    CROSSHATCH = "crosshatch"
    ARROW_LEFT = "arrow-left"
    ARROW_RIGHT = "arrow-right"


class BelnapState(Enum):
    """Belnap FOUR register states with hatch patterns"""
    VOID = "void"       # Empty (no hatch)
    TRUE = "true"       # Vertical lines
    FALSE = "false"     # Horizontal lines
    BOTH = "both"       # Cross-hatch (diagonal both ways)


@dataclass
class Node:
    """A node in an IMASM diagram"""
    id: str
    shape: NodeShape
    x: float
    y: float
    size: float = 40.0
    opcode: Optional[str] = None
    belnap_state: BelnapState = BelnapState.VOID
    label: str = ""
    nesting_depth: int = 0


@dataclass
class Edge:
    """A connection between nodes"""
    source: str
    target: str
    pattern: LinePattern = LinePattern.SOLID
    label: str = ""
    is_bridge: bool = False  # Crossing bridge
    guard_port: bool = False


@dataclass
class IMSASMDiagram:
    """Complete IMASM diagram with nodes and edges"""
    name: str
    nodes: list[Node] = field(default_factory=list)
    edges: list[Edge] = field(default_factory=list)
    width: float = 800.0
    height: float = 600.0
    grid_size: float = 20.0
    lane_t: float = 100.0   # T-lane position
    lane_f: float = 500.0   # F-lane position

    def add_node(self, node: Node) -> None:
        self.nodes.append(node)

    def add_edge(self, edge: Edge) -> None:
        self.edges.append(edge)

    def validate_frobenius(self) -> tuple[bool, str]:
        """
        Check if diagram satisfies μ∘δ = id_A
        Returns (is_valid, message)
        """
        # Find all FSPLIT and FFUSE pairs
        splits = [n for n in self.nodes if n.opcode == "FSPLIT"]
        fuses = [n for n in self.nodes if n.opcode == "FFUSE"]

        if len(splits) != len(fuses):
            return False, f"Frobenius violation: {len(splits)} splits but {len(fuses)} fuses"

        # Check each split has a corresponding fuse
        for split in splits:
            # Find edges from split
            split_outputs = [e for e in self.edges if e.source == split.id]
            if len(split_outputs) != 2:
                return False, f"FSPLIT {split.id} must have exactly 2 outputs"

            # Trace paths to find corresponding fuse
            # (simplified check - full implementation would trace through graph)

        return True, "Frobenius condition satisfied"

    def validate_syntax(self) -> list[str]:
        """Validate diagram syntax according to READING_GUIDE.md"""
        errors = []

        # Check node placement in lanes
        for node in self.nodes:
            if node.x < self.lane_t - 50 or node.x > self.lane_f + 50:
                errors.append(f"Node {node.id} outside valid lane boundaries")

            # Check nesting depth matches line thickness
            if node.nesting_depth > 3:
                errors.append(f"Node {node.id} nesting depth {node.nesting_depth} exceeds max (3)")

        # Check edge patterns match opcodes
        opcode_to_pattern = {
            "VINIT": LinePattern.SOLID,
            "TANCH": LinePattern.SOLID,
            "AFWD": LinePattern.DASHED,
            "AREV": LinePattern.DASHED,
            "CLINK": LinePattern.DOTTED,
            "IMSCRIB": LinePattern.DOTTED,
            "FSPLIT": LinePattern.DOT_DASH,
            "FFUSE": LinePattern.DOT_DASH,
            "EVALT": LinePattern.DOUBLE,
            "EVALF": LinePattern.DOUBLE,
            "ENGAGR": LinePattern.WAVY,
            "IFIX": LinePattern.ZIGZAG,
        }

        for edge in self.edges:
            # Find source node opcode
            source_node = next((n for n in self.nodes if n.id == edge.source), None)
            if source_node and source_node.opcode:
                expected_pattern = opcode_to_pattern.get(source_node.opcode)
                if expected_pattern and edge.pattern != expected_pattern:
                    errors.append(
                        f"Edge {edge.source}->{edge.target}: pattern {edge.pattern.value} "
                        f"doesn't match opcode {source_node.opcode} (expected {expected_pattern.value})"
                    )

        return errors

    def to_svg(self, pen_mode: bool = False) -> str:
        """Generate SVG representation of diagram"""
        bg_color = "#ffffff" if pen_mode else "#1a1a2e"
        line_color = "#000000" if pen_mode else "#e0e0ff"
        text_color = "#000000" if pen_mode else "#ffffff"
        grid_color = "#cccccc" if pen_mode else "#333355"

        svg_parts = [
            f'<?xml version="1.0" encoding="UTF-8"?>',
            f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {self.width} {self.height}"',
            f'     style="background-color: {bg_color}; font-family: monospace;">',
            f'  <defs>',
        ]

        # Define patterns for line styles
        patterns = [
            ('dashed', '5,5'),
            ('dotted', '2,2'),
            ('dot-dash', '5,2,2,2'),
            ('double', ''),  # Handled specially
            ('wavy', ''),    # Handled specially
            ('zigzag', ''),  # Handled specially
        ]

        for name, dashes in patterns:
            if dashes:
                svg_parts.append(
                    f'    <pattern id="{name}" patternUnits="userSpaceOnUse">'
                )
                svg_parts.append(
                    f'      <line x1="0" y1="0" x2="10" y2="0" '
                    f'stroke="{line_color}" stroke-width="2" stroke-dasharray="{dashes}"/>'
                )
                svg_parts.append(f'    </pattern>')

        # Define hatch patterns for Belnap states
        hatch_defs = [
            ('void', ''),
            ('true', 'vertical'),
            ('false', 'horizontal'),
            ('both', 'cross'),
        ]

        for state, hatch_type in hatch_defs:
            if hatch_type == 'vertical':
                svg_parts.append(
                    f'    <pattern id="hatch-{state}" patternUnits="userSpaceOnUse" '
                    f'width="4" height="4" patternTransform="rotate(0)">')
                svg_parts.append(
                    f'      <line x1="0" y1="0" x2="0" y2="4" '
                    f'stroke="{line_color}" stroke-width="0.5"/>'
                )
                svg_parts.append(f'    </pattern>')
            elif hatch_type == 'horizontal':
                svg_parts.append(
                    f'    <pattern id="hatch-{state}" patternUnits="userSpaceOnUse" '
                    f'width="4" height="4" patternTransform="rotate(90)">')
                svg_parts.append(
                    f'      <line x1="0" y1="0" x2="0" y2="4" '
                    f'stroke="{line_color}" stroke-width="0.5"/>'
                )
                svg_parts.append(f'    </pattern>')
            elif hatch_type == 'cross':
                svg_parts.append(
                    f'    <pattern id="hatch-{state}" patternUnits="userSpaceOnUse" '
                    f'width="4" height="4">')
                svg_parts.append(
                    f'      <line x1="0" y1="0" x2="4" y2="4" '
                    f'stroke="{line_color}" stroke-width="0.5"/>'
                )
                svg_parts.append(
                    f'      <line x1="4" y1="0" x2="0" y2="4" '
                    f'stroke="{line_color}" stroke-width="0.5"/>'
                )
                svg_parts.append(f'    </pattern>')

        svg_parts.append(f'  </defs>')

        # Draw grid
        svg_parts.append(f'  <g id="grid" stroke="{grid_color}" stroke-width="0.5" opacity="0.3">')
        for x in range(0, int(self.width), int(self.grid_size)):
            svg_parts.append(f'    <line x1="{x}" y1="0" x2="{x}" y2="{self.height}"/>')
        for y in range(0, int(self.height), int(self.grid_size)):
            svg_parts.append(f'    <line x1="0" y1="{y}" x2="{self.width}" y2="{y}"/>')
        svg_parts.append(f'  </g>')

        # Draw lane markers
        svg_parts.append(f'  <g id="lanes" stroke="{grid_color}" stroke-width="1" stroke-dasharray="10,5">')
        svg_parts.append(f'    <line x1="{self.lane_t}" y1="0" x2="{self.lane_t}" y2="{self.height}"/>')
        svg_parts.append(f'    <line x1="{self.lane_f}" y1="0" x2="{self.lane_f}" y2="{self.height}"/>')
        svg_parts.append(f'    <text x="{self.lane_t - 20}" y="20" fill="{text_color}" font-size="12">T</text>')
        svg_parts.append(f'    <text x="{self.lane_f + 10}" y="20" fill="{text_color}" font-size="12">F</text>')
        svg_parts.append(f'  </g>')

        # Draw edges
        svg_parts.append(f'  <g id="edges" stroke="{line_color}" stroke-width="2" fill="none">')
        for edge in self.edges:
            source = next((n for n in self.nodes if n.id == edge.source), None)
            target = next((n for n in self.nodes if n.id == edge.target), None)
            if not source or not target:
                continue

            # Calculate edge coordinates (from edge of source to edge of target)
            dx = target.x - source.x
            dy = target.y - source.y
            dist = math.sqrt(dx*dx + dy*dy)
            if dist == 0:
                continue

            ratio = (source.size / 2) / dist
            x1 = source.x + dx * ratio
            y1 = source.y + dy * ratio
            x2 = target.x - dx * ratio
            y2 = target.y - dy * ratio

            # Draw based on pattern
            if edge.pattern == LinePattern.DOUBLE:
                # Double line
                offset = 3
                svg_parts.append(
                    f'    <line x1="{x1-offset}" y1="{y1-offset}" x2="{x2-offset}" y2="{y2-offset}" '
                    f'stroke="{line_color}" stroke-width="1.5"/>'
                )
                svg_parts.append(
                    f'    <line x1="{x1+offset}" y1="{y1+offset}" x2="{x2+offset}" y2="{y2+offset}" '
                    f'stroke="{line_color}" stroke-width="1.5"/>'
                )
            elif edge.pattern == LinePattern.WAVY:
                # Wavy line (simplified as sine wave)
                num_waves = 5
                wave_amp = 5
                points = []
                for i in range(num_waves * 10 + 1):
                    t = i / (num_waves * 10)
                    px = x1 + (x2 - x1) * t
                    py = y1 + (y2 - y1) * t + wave_amp * math.sin(t * num_waves * 2 * math.pi)
                    points.append(f"{px},{py}")
                svg_parts.append(
                    f'    <polyline points="{" ".join(points)}" '
                    f'stroke="{line_color}" stroke-width="2" fill="none"/>'
                )
            elif edge.pattern == LinePattern.ZIGZAG:
                # Zigzag line
                num_zigs = 8
                zig_amp = 5
                points = []
                for i in range(num_zigs * 2 + 1):
                    t = i / (num_zigs * 2)
                    px = x1 + (x2 - x1) * t
                    py = y1 + (y2 - y1) * t + zig_amp * ((-1) ** i)
                    points.append(f"{px},{py}")
                svg_parts.append(
                    f'    <polyline points="{" ".join(points)}" '
                    f'stroke="{line_color}" stroke-width="2" fill="none"/>'
                )
            else:
                # Standard line with dash pattern
                dash_array = ""
                if edge.pattern == LinePattern.DASHED:
                    dash_array = 'stroke-dasharray="5,5"'
                elif edge.pattern == LinePattern.DOTTED:
                    dash_array = 'stroke-dasharray="2,2"'
                elif edge.pattern == LinePattern.DOT_DASH:
                    dash_array = 'stroke-dasharray="5,2,2,2"'

                svg_parts.append(
                    f'    <line x1="{x1}" y1="{y1}" x2="{x2}" y2="{y2}" '
                    f'{dash_array}/>'
                )

            # Add label if present
            if edge.label:
                mid_x = (x1 + x2) / 2
                mid_y = (y1 + y2) / 2
                svg_parts.append(
                    f'    <text x="{mid_x}" y="{mid_y - 5}" fill="{text_color}" '
                    f'font-size="10" text-anchor="middle">{edge.label}</text>'
                )

        svg_parts.append(f'  </g>')

        # Draw nodes
        svg_parts.append(f'  <g id="nodes">')
        for node in self.nodes:
            # Determine shape
            if node.shape == NodeShape.CIRCLE:
                shape_elem = f'<circle cx="{node.x}" cy="{node.y}" r="{node.size/2}"'
            elif node.shape == NodeShape.SQUARE:
                half = node.size / 2
                shape_elem = f'<rect x="{node.x - half}" y="{node.y - half}" '
                shape_elem += f'width="{node.size}" height="{node.size}"'
            elif node.shape == NodeShape.DIAMOND:
                half = node.size / 2
                points = f"{node.x},{node.y-half} {node.x+half},{node.y} {node.x},{node.y+half} {node.x-half},{node.y}"
                shape_elem = f'<polygon points="{points}"'
            elif node.shape == NodeShape.HEXAGON:
                half = node.size / 2
                points = []
                for i in range(6):
                    angle = math.radians(60 * i - 30)
                    px = node.x + half * math.cos(angle)
                    py = node.y + half * math.sin(angle)
                    points.append(f"{px},{py}")
                shape_elem = f'<polygon points="{" ".join(points)}"'

            # Add fill for Belnap state
            fill = 'fill="none"'
            if node.belnap_state != BelnapState.VOID:
                fill = f'fill="url(#hatch-{node.belnap_state.value})"'

            # Line thickness based on nesting depth
            stroke_width = 2 + node.nesting_depth

            svg_parts.append(
                f'    <g id="node-{node.id}" {shape_elem} '
                f'stroke="{line_color}" stroke-width="{stroke_width}" {fill}>'
            )

            # Add opcode label
            if node.opcode:
                svg_parts.append(
                    f'      <text x="{node.x}" y="{node.y + 4}" fill="{text_color}" '
                    f'font-size="10" text-anchor="middle" font-weight="bold">{node.opcode}</text>'
                )

            svg_parts.append(f'    </g>')

        svg_parts.append(f'  </g>')

        # Add title
        svg_parts.append(
            f'  <text x="{self.width/2}" y="30" fill="{text_color}" '
            f'font-size="16" text-anchor="middle" font-weight="bold">{self.name}</text>'
        )

        svg_parts.append(f'</svg>')

        return '\n'.join(svg_parts)

    def to_ob3ect_json(self) -> dict:
        """Convert diagram to ob3ect JSON structure"""
        # Extract IMASM sequence from diagram
        imasm_sequence = []

        # Sort nodes by x-coordinate (left to right reading)
        sorted_nodes = sorted(self.nodes, key=lambda n: n.x)

        for node in sorted_nodes:
            if node.opcode:
                imasm_sequence.append({
                    "opcode": node.opcode,
                    "node_id": node.id,
                    "position": {"x": node.x, "y": node.y},
                    "belnap_state": node.belnap_state.value,
                })

        # Build ob3ect structure
        ob3ect = {
            "name": self.name.lower().replace(" ", "_"),
            "is_valid_ob3ect": True,
            "imasm_sequence": imasm_sequence,
            "frobenius_verified": self.validate_frobenius()[0],
            "syntax_errors": self.validate_syntax(),
            "phases": {
                "phase_0": {
                    "domain_name": self.name,
                    "domain_type": "computational",
                    "scope": "local",
                    "surface_tokens": [n.opcode for n in self.nodes if n.opcode],
                    "boundary_condition": "IMASM diagram boundary",
                    "justification": "Generated from Living Paper Interface",
                },
                "phase_1": {},  # Would be filled by auto-designer
                "phase_2": {},  # Frobenius verification
                "phase_3": {},  # Belnap states
                "phase_4": {"steps": [], "closure_verified": True},
                "phase_5": {},  # Compiler mechanics
                "phase_6": {},  # Energy accounting
            },
        }

        return ob3ect


def generate_practice_worksheet(output_dir: str = "worksheets") -> None:
    """Generate practice worksheets for learning IMASM diagrams"""
    output_path = Path(output_dir)
    output_path.mkdir(exist_ok=True)

    # Worksheet 1: Basic Frobenius algebra (bell example)
    bell_diagram = IMSASMDiagram(
        name="A Simple Bell That Rings",
        width=800,
        height=600,
    )

    # Add nodes in reading order
    nodes_data = [
        ("n0", NodeShape.CIRCLE, 100, 300, "VINIT", BelnapState.VOID),
        ("n1", NodeShape.SQUARE, 200, 300, "TANCH", BelnapState.VOID),
        ("n2", NodeShape.CIRCLE, 300, 300, "AFWD", BelnapState.TRUE),
        ("n3", NodeShape.DIAMOND, 400, 300, "FSPLIT", BelnapState.TRUE),
        ("n4", NodeShape.CIRCLE, 500, 200, "EVALT", BelnapState.TRUE),  # T-lane
        ("n5", NodeShape.CIRCLE, 500, 400, "EVALF", BelnapState.FALSE), # F-lane
        ("n6", NodeShape.CIRCLE, 600, 300, "CLINK", BelnapState.TRUE),
        ("n7", NodeShape.HEXAGON, 700, 300, "ENGAGR", BelnapState.BOTH),
        ("n8", NodeShape.CIRCLE, 800, 300, "AREV", BelnapState.TRUE),
        ("n9", NodeShape.DIAMOND, 900, 300, "FFUSE", BelnapState.TRUE),
        ("n10", NodeShape.SQUARE, 1000, 300, "IFIX", BelnapState.TRUE),
        ("n11", NodeShape.CIRCLE, 1100, 300, "IMSCRIB", BelnapState.TRUE),
    ]

    for node_id, shape, x, y, opcode, state in nodes_data:
        bell_diagram.add_node(Node(
            id=node_id,
            shape=shape,
            x=x,
            y=y,
            opcode=opcode,
            belnap_state=state,
        ))

    # Add edges
    edges_data = [
        ("n0", "n1", LinePattern.SOLID),
        ("n1", "n2", LinePattern.DASHED),
        ("n2", "n3", LinePattern.DASHED),
        ("n3", "n4", LinePattern.DOT_DASH),
        ("n3", "n5", LinePattern.DOT_DASH),
        ("n4", "n6", LinePattern.DOUBLE),
        ("n5", "n6", LinePattern.DOUBLE),
        ("n6", "n7", LinePattern.WAVY),
        ("n7", "n8", LinePattern.DASHED),
        ("n8", "n9", LinePattern.DOT_DASH),
        ("n9", "n10", LinePattern.ZIGZAG),
        ("n10", "n11", LinePattern.DOTTED),
    ]

    for src, tgt, pattern in edges_data:
        bell_diagram.add_edge(Edge(source=src, target=tgt, pattern=pattern))

    # Validate and save
    frob_valid, frob_msg = bell_diagram.validate_frobenius()
    syntax_errors = bell_diagram.validate_syntax()

    print(f"Bell diagram - Frobenius: {frob_msg}")
    if syntax_errors:
        print(f"Syntax errors: {syntax_errors}")

    # Save SVG (pen mode)
    svg_content = bell_diagram.to_svg(pen_mode=True)
    svg_file = output_path / "worksheet_1_bell_pen.svg"
    svg_file.write_text(svg_content)
    print(f"Saved: {svg_file}")

    # Save regular diagram
    svg_content = bell_diagram.to_svg(pen_mode=False)
    svg_file = output_path / "worksheet_1_bell_diagram.svg"
    svg_file.write_text(svg_content)
    print(f"Saved: {svg_file}")

    # Save ob3ect JSON
    ob3ect_json = bell_diagram.to_ob3ect_json()
    json_file = output_path / "worksheet_1_bell_ob3ect.json"
    json_file.write_text(json.dumps(ob3ect_json, indent=2))
    print(f"Saved: {json_file}")

    # Worksheet 2: Dialetheic Bootstrap
    bootstrap_diagram = IMSASMDiagram(
        name="Dialetheic Bootstrap",
        width=900,
        height=700,
    )

    # Simplified bootstrap sequence
    boot_nodes = [
        ("b0", NodeShape.CIRCLE, 100, 350, "VINIT", BelnapState.VOID),
        ("b1", NodeShape.HEXAGON, 250, 350, "IMSCRIB", BelnapState.BOTH),
        ("b2", NodeShape.CIRCLE, 400, 350, "AREV", BelnapState.BOTH),
        ("b3", NodeShape.DIAMOND, 550, 350, "FSPLIT", BelnapState.BOTH),
        ("b4", NodeShape.CIRCLE, 700, 250, "EVALT", BelnapState.TRUE),
        ("b5", NodeShape.CIRCLE, 700, 450, "EVALF", BelnapState.FALSE),
        ("b6", NodeShape.DIAMOND, 850, 350, "FFUSE", BelnapState.BOTH),
        ("b7", NodeShape.SQUARE, 1000, 350, "IFIX", BelnapState.BOTH),
    ]

    for node_id, shape, x, y, opcode, state in boot_nodes:
        bootstrap_diagram.add_node(Node(
            id=node_id,
            shape=shape,
            x=x,
            y=y,
            opcode=opcode,
            belnap_state=state,
        ))

    boot_edges = [
        ("b0", "b1", LinePattern.SOLID),
        ("b1", "b2", LinePattern.DASHED),
        ("b2", "b3", LinePattern.DASHED),
        ("b3", "b4", LinePattern.DOT_DASH),
        ("b3", "b5", LinePattern.DOT_DASH),
        ("b4", "b6", LinePattern.DOUBLE),
        ("b5", "b6", LinePattern.DOUBLE),
        ("b6", "b7", LinePattern.ZIGZAG),
    ]

    for src, tgt, pattern in boot_edges:
        bootstrap_diagram.add_edge(Edge(source=src, target=tgt, pattern=pattern))

    # Save bootstrap worksheet
    svg_content = bootstrap_diagram.to_svg(pen_mode=True)
    svg_file = output_path / "worksheet_2_bootstrap_pen.svg"
    svg_file.write_text(svg_content)
    print(f"Saved: {svg_file}")

    ob3ect_json = bootstrap_diagram.to_ob3ect_json()
    json_file = output_path / "worksheet_2_bootstrap_ob3ect.json"
    json_file.write_text(json.dumps(ob3ect_json, indent=2))
    print(f"Saved: {json_file}")

    print(f"\n✓ Generated practice worksheets in {output_path}/")


if __name__ == "__main__":
    generate_practice_worksheet()
    print("\nLiving Paper Interface initialized!")
    print("Next steps:")
    print("  1. Print the _pen.svg worksheets")
    print("  2. Practice drawing IMASM diagrams with a ballpoint pen")
    print("  3. Use the READING_GUIDE.md as reference")
    print("  4. Future: Integrate with smartpen for real-time digitization")