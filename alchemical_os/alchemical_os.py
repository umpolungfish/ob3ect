#!/usr/bin/env python3
"""
Alchemical OS - A Topological Window Manager based on IMASM Frobenius Algebra

This is a conceptual prototype demonstrating how an operating system interface
could be structured as a categorical tower where:
- Applications are ob3ects (Frobenius algebras)
- Windows are morphisms with drawable connections
- Resources are modeled as entropy flows
- The desktop is a traced symmetric monoidal category

Key Features:
- Topological workspace management (no rectangular windows)
- Visual resource tracking via entropy visualization
- Application composition via string diagram drawing
- Dialetheic error states (BOTH = running + crashed simultaneously)
"""

import asyncio
import json
import math
from dataclasses import dataclass, field
from enum import Enum, auto
from typing import Dict, List, Optional, Set, Tuple, Any
from collections import defaultdict
import svgwrite


class EntropyState(Enum):
    """Resource/entropy state of an application"""
    ORDERED = "ordered"      # Low entropy, efficient
    STABLE = "stable"        # Normal operation
    CHAOTIC = "chaotic"      # High entropy, needs attention
    CRITICAL = "critical"    # Entropy overflow imminent


class BelnapState(Enum):
    """Dialetheic truth values for application states"""
    VOID = "void"            # Not loaded
    TRUE = "running"         # Running normally
    FALSE = "crashed"        # Crashed/stopped
    BOTH = "paradox"         # Running AND crashed (zombie process)


@dataclass
class AlchemicalPort:
    """A port on an application ob3ect for connecting wires"""
    name: str
    port_type: str  # "input", "output", "bidirectional"
    data_type: str  # Type of data flowing through
    entropy_flow: float = 0.0  # Positive = entropy out, negative = entropy in
    connected_to: Optional[str] = None

    def to_dict(self) -> dict:
        return {
            "name": self.name,
            "type": self.port_type,
            "data_type": self.data_type,
            "entropy_flow": self.entropy_flow,
            "connected": self.connected_to
        }


@dataclass
class ApplicationOb3ect:
    """
    An application as a Frobenius algebra ob3ect.

    In Alchemical OS, every application is an ob3ect (A, μ, δ, η, ε) where:
    - A is the application's state space
    - μ is the merge operation (combining inputs)
    - δ is the split operation (forking outputs)
    - η is initialization
    - ε is termination
    """
    app_id: str
    name: str
    position: Tuple[float, float]  # (x, y) center position
    shape: str  # "circle", "diamond", "hexagon", "square"
    state: BelnapState = BelnapState.VOID
    entropy: EntropyState = EntropyState.ORDERED
    inputs: List[AlchemicalPort] = field(default_factory=list)
    outputs: List[AlchemicalPort] = field(default_factory=list)
    internal_state: Dict[str, Any] = field(default_factory=dict)

    # Frobenius structure
    mu_available: bool = True   # Can merge inputs
    delta_available: bool = True  # Can split outputs
    eta_complete: bool = False   # Initialization complete
    epsilon_pending: bool = False  # Termination requested

    def add_input(self, name: str, data_type: str) -> AlchemicalPort:
        port = AlchemicalPort(name=name, port_type="input", data_type=data_type)
        self.inputs.append(port)
        return port

    def add_output(self, name: str, data_type: str) -> AlchemicalPort:
        port = AlchemicalPort(name=name, port_type="output", data_type=data_type)
        self.outputs.append(port)
        return port

    def update_entropy(self) -> None:
        """Update entropy state based on current conditions"""
        if self.state == BelnapState.BOTH:
            self.entropy = EntropyState.CRITICAL
        elif self.state == BelnapState.FALSE:
            self.entropy = EntropyState.CHAOTIC
        elif len(self.inputs) > 3 or len(self.outputs) > 3:
            self.entropy = EntropyState.CHAOTIC
        else:
            self.entropy = EntropyState.STABLE

    def to_dict(self) -> dict:
        return {
            "app_id": self.app_id,
            "name": self.name,
            "position": self.position,
            "shape": self.shape,
            "state": self.state.value,
            "entropy": self.entropy.value,
            "inputs": [p.to_dict() for p in self.inputs],
            "outputs": [p.to_dict() for p in self.outputs],
            "frobenius": {
                "mu": self.mu_available,
                "delta": self.delta_available,
                "eta": self.eta_complete,
                "epsilon": self.epsilon_pending
            }
        }


@dataclass
class MorphismWire:
    """A wire (morphism) connecting two application ports"""
    wire_id: str
    source_app: str
    source_port: str
    target_app: str
    target_port: str
    wire_type: str  # "data", "control", "entropy"
    tension: float = 1.0  # Visual tension for curved rendering
    active: bool = True

    def to_dict(self) -> dict:
        return {
            "wire_id": self.wire_id,
            "source": f"{self.source_app}.{self.source_port}",
            "target": f"{self.target_app}.{self.target_port}",
            "type": self.wire_type,
            "tension": self.tension,
            "active": self.active
        }


class AlchemicalDesktop:
    """
    The desktop as a Traced Symmetric Monoidal Category.

    Objects: Application ob3ects
    Morphisms: Wires connecting ports
    Tensor product: Parallel application execution
    Trace: Feedback loops (recursive computations)
    """

    def __init__(self, width: int = 1920, height: int = 1080):
        self.width = width
        self.height = height
        self.applications: Dict[str, ApplicationOb3ect] = {}
        self.wires: List[MorphismWire] = []
        self.zones: Dict[str, List[str]] = defaultdict(list)  # Workspace zones
        self.global_entropy: float = 0.0

    def create_application(self, app_id: str, name: str, position: Tuple[float, float],
                          shape: str = "circle") -> ApplicationOb3ect:
        """Create a new application ob3ect on the desktop"""
        app = ApplicationOb3ect(
            app_id=app_id,
            name=name,
            position=position,
            shape=shape
        )
        app.eta_complete = True  # Initialized
        app.state = BelnapState.TRUE
        self.applications[app_id] = app
        return app

    def connect(self, source_app: str, source_port: str,
                target_app: str, target_port: str,
                wire_type: str = "data") -> Optional[MorphismWire]:
        """Connect two ports with a morphism wire"""
        if source_app not in self.applications or target_app not in self.applications:
            return None

        source = self.applications[source_app]
        target = self.applications[target_app]

        # Find ports
        src_port = next((p for p in source.outputs if p.name == source_port), None)
        tgt_port = next((p for p in target.inputs if p.name == target_port), None)

        if not src_port or not tgt_port:
            return None

        # Create wire
        wire_id = f"wire_{len(self.wires)}"
        wire = MorphismWire(
            wire_id=wire_id,
            source_app=source_app,
            source_port=source_port,
            target_app=target_app,
            target_port=target_port,
            wire_type=wire_type
        )

        src_port.connected_to = f"{target_app}.{target_port}"
        tgt_port.connected_to = f"{source_app}.{source_port}"

        self.wires.append(wire)

        # Update entropy flows
        self._recalculate_entropy()

        return wire

    def _recalculate_entropy(self) -> None:
        """Recalculate global and local entropy based on connections"""
        total_entropy = 0.0

        for app in self.applications.values():
            # More connections = more entropy
            connection_count = len([w for w in self.wires
                                   if w.source_app == app.app_id or w.target_app == app.app_id])
            app.internal_state["connection_entropy"] = connection_count * 0.1
            total_entropy += connection_count * 0.1

            # State-based entropy
            if app.state == BelnapState.BOTH:
                total_entropy += 5.0
            elif app.state == BelnapState.FALSE:
                total_entropy += 2.0

            app.update_entropy()

        self.global_entropy = total_entropy

    def create_zone(self, zone_id: str, app_ids: List[str]) -> None:
        """Create a workspace zone containing applications"""
        self.zones[zone_id] = app_ids

    def apply_frobenius_mu(self, app_id: str) -> bool:
        """Apply multiplication (merge) operation to an application"""
        if app_id not in self.applications:
            return False
        app = self.applications[app_id]
        if not app.mu_available:
            return False

        # Merge all inputs into single state
        app.internal_state["merged"] = True
        app.mu_available = False
        return True

    def apply_frobenius_delta(self, app_id: str) -> bool:
        """Apply comultiplication (split) operation to an application"""
        if app_id not in self.applications:
            return False
        app = self.applications[app_id]
        if not app.delta_available:
            return False

        # Split output to multiple targets
        app.internal_state["split"] = True
        app.delta_available = False
        return True

    def render_svg(self, filename: str, mode: str = "alchemical") -> None:
        """Render the desktop as an SVG string diagram"""
        dwg = svgwrite.Drawing(filename, size=(f"{self.width}px", f"{self.height}px"))

        # Background based on mode
        if mode == "alchemical":
            # Alchemical theme: parchment-like with mystical colors
            bg_color = "#f5ebd9"
            grid_color = "#d4c4a8"
            wire_colors = {
                "data": "#8b4513",
                "control": "#4682b4",
                "entropy": "#dc143c"
            }
            app_colors = {
                "circle": "#ffd700",
                "diamond": "#da70d6",
                "hexagon": "#20b2aa",
                "square": "#cd853f"
            }
        else:  # pen mode
            bg_color = "#ffffff"
            grid_color = "#cccccc"
            wire_colors = {"data": "#000000", "control": "#000000", "entropy": "#000000"}
            app_colors = {"circle": "#ffffff", "diamond": "#ffffff",
                         "hexagon": "#ffffff", "square": "#ffffff"}

        # Background
        dwg.add(dwg.rect(insert=(0, 0), size=(self.width, self.height), fill=bg_color))

        # Entropy gradient overlay
        if self.global_entropy > 10:
            opacity = min(0.3, self.global_entropy / 50.0)
            dwg.add(dwg.rect(insert=(0, 0), size=(self.width, self.height),
                           fill="#ff0000", opacity=opacity))

        # Draw grid (subtle)
        grid_size = 50
        for x in range(0, self.width, grid_size):
            dwg.add(dwg.line((x, 0), (x, self.height), stroke=grid_color, stroke_width=0.5, opacity=0.3))
        for y in range(0, self.height, grid_size):
            dwg.add(dwg.line((0, y), (self.width, y), stroke=grid_color, stroke_width=0.5, opacity=0.3))

        # Draw wires (morphisms)
        for wire in self.wires:
            if not wire.active:
                continue

            src_app = self.applications.get(wire.source_app)
            tgt_app = self.applications.get(wire.target_app)
            if not src_app or not tgt_app:
                continue

            start = src_app.position
            end = tgt_app.position

            # Curved wire with tension
            mid_x = (start[0] + end[0]) / 2
            mid_y = (start[1] + end[1]) / 2 - (50 * wire.tension)

            path = dwg.path(d=f"M {start[0]} {start[1]} Q {mid_x} {mid_y} {end[0]} {end[1]}",
                          fill="none",
                          stroke=wire_colors.get(wire.wire_type, "#000000"),
                          stroke_width=2 if wire.wire_type == "entropy" else 1.5)
            dwg.add(path)

            # Arrow head
            angle = math.atan2(end[1] - start[1], end[0] - start[0])
            arrow_size = 8
            arrow_points = [
                (end[0] - arrow_size * math.cos(angle - math.pi/6),
                 end[1] - arrow_size * math.sin(angle - math.pi/6)),
                (end[0], end[1]),
                (end[0] - arrow_size * math.cos(angle + math.pi/6),
                 end[1] - arrow_size * math.sin(angle + math.pi/6))
            ]
            dwg.add(dwg.polygon(points=arrow_points,
                              fill=wire_colors.get(wire.wire_type, "#000000")))

        # Draw applications (ob3ects)
        for app in self.applications.values():
            x, y = app.position
            size = 40

            # Shape based on app shape
            if app.shape == "circle":
                shape_el = dwg.circle(center=(x, y), r=size/2,
                                    fill=app_colors.get("circle", "#ffffff"),
                                    stroke="#000000", stroke_width=2)
            elif app.shape == "diamond":
                points = [(x, y-size/2), (x+size/2, y), (x, y+size/2), (x-size/2, y)]
                shape_el = dwg.polygon(points=points,
                                     fill=app_colors.get("diamond", "#ffffff"),
                                     stroke="#000000", stroke_width=2)
            elif app.shape == "hexagon":
                angle_step = math.pi / 3
                points = [(x + size/2 * math.cos(i * angle_step),
                          y + size/2 * math.sin(i * angle_step)) for i in range(6)]
                shape_el = dwg.polygon(points=points,
                                     fill=app_colors.get("hexagon", "#ffffff"),
                                     stroke="#000000", stroke_width=2)
            else:  # square
                shape_el = dwg.rect(insert=(x-size/2, y-size/2), size=(size, size),
                                  fill=app_colors.get("square", "#ffffff"),
                                  stroke="#000000", stroke_width=2)

            dwg.add(shape_el)

            # App name label
            dwg.add(dwg.text(app.name, insert=(x, y-size-5),
                           text_anchor="middle",
                           font_size="12px",
                           fill="#000000"))

            # State indicator (inner pattern for Belnap state)
            if app.state == BelnapState.BOTH:
                # X pattern for BOTH
                dwg.add(dwg.line((x-10, y-10), (x+10, y+10), stroke="#000000", stroke_width=1))
                dwg.add(dwg.line((x+10, y-10), (x-10, y+10), stroke="#000000", stroke_width=1))
            elif app.state == BelnapState.FALSE:
                # Horizontal line for FALSE
                dwg.add(dwg.line((x-10, y), (x+10, y), stroke="#000000", stroke_width=1))
            elif app.state == BelnapState.TRUE:
                # Vertical line for TRUE
                dwg.add(dwg.line((x, y-10), (x, y+10), stroke="#000000", stroke_width=1))

            # Entropy glow
            if app.entropy == EntropyState.CRITICAL:
                dwg.add(dwg.circle(center=(x, y), r=size/2+5,
                                 fill="none", stroke="#ff0000",
                                 stroke_width=2, opacity=0.5))
            elif app.entropy == EntropyState.CHAOTIC:
                dwg.add(dwg.circle(center=(x, y), r=size/2+3,
                                 fill="none", stroke="#ffa500",
                                 stroke_width=1, opacity=0.5))

        # Global entropy display
        dwg.add(dwg.text(f"Global Entropy: {self.global_entropy:.2f}",
                        insert=(10, 20),
                        font_size="14px",
                        fill="#000000"))

        # Zone labels
        for zone_id, app_ids in self.zones.items():
            if app_ids:
                apps = [self.applications[aid] for aid in app_ids if aid in self.applications]
                if apps:
                    avg_x = sum(a.position[0] for a in apps) / len(apps)
                    avg_y = min(a.position[1] for a in apps) - 30
                    dwg.add(dwg.text(f"Zone: {zone_id}", insert=(avg_x, avg_y),
                                   text_anchor="middle",
                                   font_size="12px",
                                   fill="#666666"))

        dwg.save()
        print(f"Desktop rendered to {filename}")

    def export_configuration(self) -> dict:
        """Export entire desktop configuration as JSON"""
        return {
            "applications": {aid: app.to_dict() for aid, app in self.applications.items()},
            "wires": [w.to_dict() for w in self.wires],
            "zones": dict(self.zones),
            "global_entropy": self.global_entropy,
            "dimensions": {"width": self.width, "height": self.height}
        }


def demo_alchemical_os():
    """Demonstrate Alchemical OS with a sample workflow"""
    print("Initializing Alchemical OS...")

    # Create desktop
    desktop = AlchemicalDesktop(width=1200, height=800)

    # Create applications as ob3ects
    browser = desktop.create_application("browser", "Web Browser", (200, 200), "circle")
    browser.add_output("html", "text/html")
    browser.add_output("js", "application/javascript")

    editor = desktop.create_application("editor", "Code Editor", (500, 200), "square")
    editor.add_input("source", "text/plain")
    editor.add_output("code", "text/plain")

    compiler = desktop.create_application("compiler", "Compiler", (800, 200), "diamond")
    compiler.add_input("source", "text/plain")
    compiler.add_output("binary", "application/octet-stream")
    compiler.add_output("errors", "text/plain")

    terminal = desktop.create_application("terminal", "Terminal", (500, 500), "hexagon")
    terminal.add_input("command", "text/plain")
    terminal.add_input("output", "text/plain")

    debugger = desktop.create_application("debugger", "Debugger", (900, 500), "hexagon")
    debugger.add_input("binary", "application/octet-stream")
    debugger.add_input("errors", "text/plain")
    debugger.add_output("trace", "text/plain")

    # Connect applications (draw wires)
    desktop.connect("browser", "js", "editor", "source", "data")
    desktop.connect("editor", "code", "compiler", "source", "data")
    desktop.connect("compiler", "binary", "debugger", "binary", "data")
    desktop.connect("compiler", "errors", "debugger", "errors", "data")
    desktop.connect("debugger", "trace", "terminal", "output", "data")

    # Apply Frobenius operations
    desktop.apply_frobenius_mu("compiler")  # Merge inputs
    desktop.apply_frobenius_delta("compiler")  # Split outputs

    # Create workspace zones
    desktop.create_zone("development", ["editor", "compiler", "debugger"])
    desktop.create_zone("io", ["browser", "terminal"])

    # Simulate a paradox (application running and crashed)
    debugger.state = BelnapState.BOTH
    desktop._recalculate_entropy()

    # Render the desktop
    desktop.render_svg("alchemical_desktop.svg", mode="alchemical")
    desktop.render_svg("alchemical_desktop_pen.svg", mode="pen")

    # Export configuration
    config = desktop.export_configuration()
    with open("alchemical_desktop_config.json", "w") as f:
        json.dump(config, f, indent=2)

    print(f"\nDesktop Statistics:")
    print(f"  Applications: {len(desktop.applications)}")
    print(f"  Wires (morphisms): {len(desktop.wires)}")
    print(f"  Zones: {len(desktop.zones)}")
    print(f"  Global Entropy: {desktop.global_entropy:.2f}")
    print(f"\nParadoxical applications: {[a.name for a in desktop.applications.values() if a.state == BelnapState.BOTH]}")
    print("\nOutput files generated:")
    print("  - alchemical_desktop.svg (colorful alchemical theme)")
    print("  - alchemical_desktop_pen.svg (pen-mode for printing)")
    print("  - alchemical_desktop_config.json (configuration)")


if __name__ == "__main__":
    demo_alchemical_os()