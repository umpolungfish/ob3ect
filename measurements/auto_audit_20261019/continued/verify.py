"""Offline audit receipt generator. No provider or ob3ect agent execution."""
import ast
import hashlib
import json
from pathlib import Path
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[4]
OUT = Path(__file__).resolve().parent
sys.path.insert(0, str(ROOT / "ob3ect"))
sys.path.insert(0, str(ROOT / "IMSCRIBr"))
import auto
from native_wiring import inspect_wiring
from wiring import NOVEL_GRAPHS
import networkx as nx
from symbolic_diagram import render_wiring_svg_v3
from digital.imasm16_3_core import Sequence16_3Trace, IMASM12_TO_16_3

receipt = {}
for label, cwd, cmd in [
    ("auto", ROOT / "ob3ect", [sys.executable, "-m", "unittest", "test_auto_audit", "test_auto_closure", "test_weight_flow", "-v"]),
    ("wiring", ROOT / "IMSCRIBr", [sys.executable, "-m", "unittest", "test_wiring", "-v"]),
    ("cli_help", ROOT / "ob3ect", [sys.executable, "auto.py", "--help"]),
]:
    run = subprocess.run(cmd, cwd=cwd, capture_output=True, text=True)
    (OUT / (label + ".log")).write_text(run.stdout + run.stderr)
    receipt[label] = {"command": cmd, "returncode": run.returncode, "tail": (run.stdout + run.stderr)[-900:]}
    if run.returncode:
        raise RuntimeError(receipt[label])

assert not nx.check_planarity(nx.complete_bipartite_graph(3, 3))[0]
assert nx.check_planarity(nx.path_graph(4))[0]
receipt["planarity"] = {"instrument": "networkx.check_planarity", "version": nx.__version__,
                        "controls": {"K3_3": False, "path4": True}, "graphs": {}}
for name, graph in NOVEL_GRAPHS.items():
    underlying = nx.Graph()
    underlying.add_nodes_from(range(graph.n()))
    underlying.add_edges_from((w.src_node, w.dst_node) for w in graph.wires)
    reading = inspect_wiring(graph)
    receipt["planarity"]["graphs"][name] = {"planar": nx.check_planarity(underlying)[0], "native": reading}

ops = "VINIT FSPLIT EVALT FSPLIT EVALT AREV FFUSE EVALF FFUSE TANCH".split()
artifact = auto._build_artifact("native audit", "local", {"sequence": [op + ": audit operation" for op in ops]})
trace = Sequence16_3Trace([IMASM12_TO_16_3[op] for op in ops])
trace.run()
for pen in (False, True):
    name = "native_pen" if pen else "native_color"
    svg = auto._generate_diagram(artifact, pen_mode=pen, trilattice_data=trace.json_report())
    if svg is None:
        raise RuntimeError("SVG generation failed")
    svg.save(OUT / (name + ".svg"))
    subprocess.run(["rsvg-convert", str(OUT / (name + ".svg")), "-o", str(OUT / (name + ".png"))], check=True)
(OUT / "graph.json").write_text(json.dumps(artifact.wiring_check, indent=2))

files = ["ob3ect/auto.py", "ob3ect/core.py", "ob3ect/test_auto_audit.py", "IMSCRIBr/wiring.py",
         "IMSCRIBr/symbolic_diagram.py", "IMSCRIBr/test_wiring.py", "IMSCRIBr/native_wiring.py", "IMSCRIBr/native/wiring_probe.rs"]
receipt["source_hashes"] = {f: hashlib.sha256((ROOT / f).read_bytes()).hexdigest() for f in files}
receipt["definition_inventory"] = {}
for f in ("ob3ect/auto.py", "IMSCRIBr/wiring.py"):
    tree = ast.parse((ROOT / f).read_text())
    receipt["definition_inventory"][f] = [{"name": n.name, "start": n.lineno, "end": n.end_lineno}
        for n in tree.body if isinstance(n, (ast.FunctionDef, ast.AsyncFunctionDef, ast.ClassDef))]
receipt["renderings"] = {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in OUT.glob("native_*")}
(OUT / "receipt.json").write_text(json.dumps(receipt, indent=2))
print(json.dumps({k: v for k, v in receipt.items() if k in ("auto", "wiring")}, indent=2))
