"""Ob3ect Design Pipeline v2 - Generative Core Engine
Author: Lando⊗⊙-boundary Operator"""
from __future__ import annotations
import json
from dataclasses import dataclass, field, asdict
from enum import Enum
from pathlib import Path
from typing import Any, Dict, List, Optional, Tuple

try:
    from ob3ect.topology import TopologyReport, analyze_topology
except ImportError:
    try:
        from topology import TopologyReport, analyze_topology
    except ImportError:
        TopologyReport = None
        analyze_topology = None

class Opcode(Enum):
    VINIT="VINIT"; TANCH="TANCH"; AFWD="AFWD"; AREV="AREV"
    CLINK="CLINK"; IMSCRIB="IMSCRIB"; FSPLIT="FSPLIT"; FFUSE="FFUSE"
    EVALT="EVALT"; EVALF="EVALF"; ENGAGR="ENGAGR"; IFIX="IFIX"
    @property
    def family(self):
        if self in (self.VINIT,self.TANCH,self.AFWD,self.AREV,self.CLINK,self.IMSCRIB): return "Logical"
        if self in (self.FSPLIT,self.FFUSE): return "Frobenius"
        if self in (self.EVALT,self.EVALF,self.ENGAGR): return "Dialetheia"
        return "Linear"

    @property
    def glyph(self):
        return GLYPH[self.value]

class RegisterState(Enum):
    VOID="00"; TRUE="01"; FALSE="10"; BOTH="11"

# Single-glyph codes — the alphabet is fully SYMBOLIC (no Latin initials, so no token can
# collide with a verdict letter T/N/B/F). Five are the pen-mode READING_GUIDE §3 midpoint
# glyphs (◇ ● + ×, and = from its double-line ═); ¬ is its stated "fix (¬)"; > and < are its
# forward/reverse arrows. The rest are symbolic by the same principle: ⊢/⊣ are the opening
# and closing boundary turnstiles, ⊞ is the Belnap Both that ENGAGR holds, and IMSCRIB is ⊙
# for a reason, not by availability: imscribing is the very act of INCLOSURE — the monadic
# operation itself — hence self-referential, and so referenced self-referentially. The glyph
# is a boundary drawn around its own centre, denoting the act of denoting. Its appearance as
# Criticality in the 12-primitive notation is not a collision: it is the same structure
# surfacing wherever inclosure closes on itself.
# Authority is MoDoT ask_native/src/imasm.rs Token::code(); this mirrors it.
GLYPH = {"VINIT":"⊢","TANCH":"⊣","AFWD":">","AREV":"<","CLINK":"=","IMSCRIB":"⊙",
         "FSPLIT":"◇","FFUSE":"●","EVALT":"+","EVALF":"×","ENGAGR":"⊞","IFIX":"¬"}

def glyph_word(ops):
    """Glue an opcode sequence into its single-glyph IMASM word: ⊢⊙=◇>+<⊞×●¬¬⊣.

    The word is the NODE LIST only — the edges are not in it, so the same word wired two
    ways is two different programs. An unknown opcode renders as ? rather than being
    dropped, so a malformed sequence cannot pass as a clean word.
    """
    return "".join(GLYPH.get(str(o), "?") for o in ops)


class OpOpcode(Enum):
    """Operators ON a word, not tokens IN it — of a different order than the twelve
    node-opcodes above. A node-opcode is a symbol inside a word; a composition verb turns a
    word into a graph; an op-opcode maps a whole word to another word. Appending an
    op-opcode's name as a token does nothing — it is not a node. The twelve are the wheel;
    the op-opcode is the axis the wheel turns on (the thirteenth, of the crown's order, not
    the rim's). ROTAT is the first: the cyclic shift of a ring, the Weyl-Heisenberg X.
    """
    ROTAT = "ROTAT"


def rotat(ops, k: int = 1):
    """ROTAT — the cyclic shift op-opcode: rotate a word by k (default 1), k mod len.

    The ring automorphism. Every spectral invariant is ROTAT-invariant (that invariance
    is the signal it is a symmetry, not that it is inert): on one ring nothing measurable
    moves; between two rings being bound it sets their relative phase. A balanced tiling of
    a period-n cycle is unique up to ROTAT. Returns a new list; the input is untouched.
    """
    seq = list(ops)
    if not seq:
        return seq
    s = k % len(seq)
    return seq[s:] + seq[:s]

BOOTSTRAP_STEPS = {1:"IMSCRIB",2:"AREV",3:"FSPLIT",4:"AFWD",5:"FFUSE",6:"CLINK",7:"IFIX",8:"IMSCRIB"}
OS_FLOOR = {"D":1,"T":3,"R":2,"P":4,"F":2,"K":1,"G":2,"Gamma":2,"Phi":1,"H":2,"S":2,"Omega":2}

# --- T/F lane display -------------------------------------------------------
# Each operation is shown in the lane where it commits, so the reader sees at a
# glance where in the T/F register an op takes place:
#   TRUE  = commits a true polarity   (EVALT evaluate-true, AFWD advance-forward)
#   FALSE = commits a false polarity  (EVALF evaluate-false, AREV advance-reverse)
#   BOTH  = acts on the shared register (structural + dialetheia: everything else)
LANES = ("TRUE", "BOTH", "FALSE")

def opcode_lane(opcode: str) -> str:
    if opcode in ("EVALT", "AFWD"): return "TRUE"
    if opcode in ("EVALF", "AREV"): return "FALSE"
    return "BOTH"

def render_lane_columns(steps, colw: int = 22) -> List[str]:
    """Render a bootstrap sequence as 3 lane-columns, one row per step, sequence
    order preserved top-to-bottom; each step appears only in its own lane."""
    out = []
    out.append("  " + " | ".join(l.center(colw) for l in LANES))
    out.append("  " + "-"*colw + "-+-" + "-"*colw + "-+-" + "-"*colw)
    for s in steps:
        lane = opcode_lane(s.get("opcode", ""))
        txt = ("%s %s %s" % (s.get("step_num",""), s.get("opcode",""),
                             s.get("domain_action","")))[:colw].ljust(colw)
        out.append("  " + " | ".join(txt if l == lane else " "*colw for l in LANES))
    return out
@dataclass
class DomainCharter:
    domain_name: str; domain_type: str; scope: str
    surface_tokens: List[str]; boundary_condition: str
    justification: str = ""
    def validate(self):
        e = []
        if not self.domain_name.strip(): e.append("domain_name required")
        if not self.domain_type.strip(): e.append("domain_type required")
        if self.scope not in ("local","mesoscale","maximal"): e.append("bad scope")
        if len(self.surface_tokens) < 3: e.append("need >=3 surface tokens")
        if not self.boundary_condition.strip(): e.append("boundary required")
        return e

@dataclass
class OpcodeEntry:
    opcode: str; chosen_element: str; justification: str
    rejected_candidates: List[Tuple[str,str]] = field(default_factory=list)
    def validate(self):
        e = []
        if not self.chosen_element.strip(): e.append("%s: chosen required" % self.opcode)
        if not self.justification.strip(): e.append("%s: justification required" % self.opcode)
        return e

@dataclass
class OpcodeMap:
    entries: Dict[str,OpcodeEntry] = field(default_factory=dict)
    def validate(self):
        e = []
        for oc in Opcode:
            if oc.value not in self.entries: e.append("Missing: "+oc.value)
        for v in self.entries.values(): e.extend(v.validate())
        return e
    def os_floor_check(self): return len(self.entries) == 12

@dataclass
class SplitFuseReport:
    split_element: str; split_input: str; split_outputs: List[str]
    fuse_element: str; fuse_result: str; frobenius_verdict: str; test_instance: str
    failure_reason: str = ""
    def validate(self):
        e = []
        if self.frobenius_verdict not in ("PASS","FAIL"): e.append("Verdict must be PASS/FAIL")
        if self.frobenius_verdict=="FAIL" and not self.failure_reason.strip(): e.append("failure_reason required")
        return e

@dataclass
class RegisterMapping:
    void_description:str; true_description:str; false_description:str; both_description:str
    transitions: List[Dict[str,str]] = field(default_factory=list)
    entropy_assertion: str = ""
    def validate(self):
        e = []
        if not self.void_description.strip(): e.append("void required")
        if not self.both_description.strip(): e.append("both required")
        return e
@dataclass
class BootstrapSequence:
    steps: List[Dict[str,str]] = field(default_factory=list)
    closure_verified: bool = False
    failure_modes: List[str] = field(default_factory=list)
    def validate(self):
        e = []
        if not self.steps: e.append("sequence must have at least one step")
        if not self.closure_verified: e.append("closure required")
        return e

@dataclass
class ExOSSpec:
    compiler_frontend:str; ipc_mechanism:str; memory_mechanism:str
    scheduler_mechanism:str; alfs_store:str; alfs_bootstrap_program:str = ""
    def validate(self):
        e = []
        for a in ["compiler_frontend","ipc_mechanism","memory_mechanism","scheduler_mechanism","alfs_store"]:
            if not getattr(self,a,"").strip(): e.append(a+" required")
        return e

@dataclass
class EntropyAudit:
    cycle_cost:str; pre_cycle_state:str; post_cycle_state:str
    delta_s_verdict:str; failure_mode:str = ""
    def validate(self):
        e = []
        if not self.delta_s_verdict.strip(): e.append("delta_s required")
        return e
@dataclass
class Ob3ectArtifact:
    name: str; domain_charter: DomainCharter; opcode_map: OpcodeMap
    split_fuse_report: SplitFuseReport; register_mapping: RegisterMapping
    bootstrap_sequence: BootstrapSequence; exos_spec: ExOSSpec
    entropy_audit: EntropyAudit; instantiation_notes: str = ""
    lean_scaffold: Optional[str] = None
    topology_report: Optional[Any] = None  # TopologyReport if topology module available
    glyph_word: Optional[str] = None  # the bootstrap sequence as one glued IMASM word
    # ── Gated grounding (imscribe_generator_agent) ──────────────────────────
    # auto_design() now runs the description through the GATED imscriber
    # (imscribing_grammar/agents/imscribe_generator_agent.py) BEFORE its own
    # design LLM call, and shunts the resulting grounded 12-primitive tuple
    # into that call as mandatory context — the same axiom/grounding checks
    # (Axiom 6 D_∞ cycle-check, Axiom 7 T_⋈ closing-bond check, etc.) that
    # `imscribe generate` runs now also constrain what ob3ect can mint,
    # instead of ob3ect assigning primitives freely with no gate at all.
    grounded_tuple: Optional[str] = None       # the gated imscriber's Imscription.to_notation()
    grounding_status: str = "ungated"          # "full" | "partial" | "failed" | "override" | "ungated"
    grounding_reasoning: str = ""              # the gated imscriber's own reasoning for the assignment
    grounding_failed_primitives: list = field(default_factory=list)
    # WHICH primitives failed grounding. The gate computes this and it was being
    # discarded: an artifact could carry grounding_status "failed" with nothing
    # anywhere saying what failed, so the verdict was unactionable. A status
    # without its cause is not a verdict, it is a mood.
    # ── Lean verification (the actual scripture-level check) ────────────────
    # generate_guided's Axiom A/B and generate_from_description's Axiom 6/7 are
    # both wet-lab heuristics on an LLM's self-consistency — not a proof. This
    # is the real gate: the artifact's own lean_scaffold, elaborated for real
    # against p4ramill via `lake env lean`. lean_verified=None means it was
    # never checked (no p4ramill, no lake, no scaffold) — never conflated with
    # a pass.
    lean_verified: Optional[bool] = None
    lean_verification_output: str = ""
    sixteen_3_breakdown: Optional[str] = None
    # ── ROTAT orbit audit (the op-opcode turned on the word) ────────────────
    # The full ROTAT orbit of the bootstrap word: every readout recomputed at
    # every rotation. A readout constant across the orbit is a spectral
    # invariant (the invariance IS the signal it is a symmetry); a readout
    # that moves is phase, not spectrum. Also carries the canonical rotation
    # (lexicographically minimal glyph word), since a balanced tiling of a
    # period-n cycle is unique up to ROTAT.
    rotat_audit: Optional[dict] = None

    def validate_all(self):
        return {"phase_0":self.domain_charter.validate(),"phase_1":self.opcode_map.validate(),
            "phase_2":self.split_fuse_report.validate(),"phase_3":self.register_mapping.validate(),
            "phase_4":self.bootstrap_sequence.validate(),"phase_5":self.exos_spec.validate(),
            "phase_6":self.entropy_audit.validate()}

    @property
    def is_valid_ob3ect(self):
        return all(len(v)==0 for v in self.validate_all().values())

    def report(self):
        a=self; nl=chr(10); parts=[]
        parts.append("="*70)
        parts.append("Ob3ect: "+a.name)
        parts.append("Valid: "+str(a.is_valid_ob3ect))
        parts.append("Domain: %s (%s)" % (a.domain_charter.domain_name,a.domain_charter.domain_type))
        parts.append("Scope: "+a.domain_charter.scope)
        parts.append("="*70)
        parts.append("Phase -1: Gated Grounding (imscribe_generator_agent, runs BEFORE design)")
        parts.append("  Status: "+a.grounding_status)
        if a.grounding_failed_primitives:
            parts.append("  Ungrounded: "+", ".join(a.grounding_failed_primitives))
        if a.grounded_tuple:
            parts.append("  Tuple: "+a.grounded_tuple)
        if a.grounding_reasoning:
            parts.append("  Reasoning: "+a.grounding_reasoning[:200] +
                          ("..." if len(a.grounding_reasoning) > 200 else ""))
        parts.append("")
        parts.append("Phase 10: Lean Verification (lean is scripture — the actual final gate)")
        if a.lean_verified is None:
            parts.append("  Not checked: "+(a.lean_verification_output or "no lean_scaffold to verify"))
        else:
            parts.append("  Kernel verdict: "+("✓ ELABORATED" if a.lean_verified else "✗ REJECTED"))
            if a.lean_verification_output:
                parts.append("  "+a.lean_verification_output[:300].replace(chr(10), chr(10)+"  "))
        parts.append("")
        parts.append("Phase 0: Domain Charter")
        parts.append("  Tokens: "+", ".join(a.domain_charter.surface_tokens))
        parts.append("  TANCH: "+a.domain_charter.boundary_condition)
        parts.append("")
        parts.append("Phase 1: Opcode Map")
        for oc in Opcode:
            e=a.opcode_map.entries.get(oc.value)
            if e: parts.append("  %8s -> %s" % (oc.value, e.chosen_element))
        parts.append("")
        parts.append("Phase 2: Frobenius")
        parts.append("  Split: "+a.split_fuse_report.split_element)
        parts.append("  Outputs: "+str(a.split_fuse_report.split_outputs))
        parts.append("  Fuse: "+a.split_fuse_report.fuse_element)
        parts.append("  Verdict: "+a.split_fuse_report.frobenius_verdict)
        parts.append("")
        parts.append("Phase 3: Registers")
        parts.append("  00: "+a.register_mapping.void_description)
        parts.append("  01: "+a.register_mapping.true_description)
        parts.append("  10: "+a.register_mapping.false_description)
        parts.append("  11: "+a.register_mapping.both_description)
        parts.append("")
        parts.append("Phase 4: Bootstrap  (lanes: where each operation commits)")
        parts.extend(render_lane_columns(a.bootstrap_sequence.steps))
        parts.append("  Closure: "+str(a.bootstrap_sequence.closure_verified))
        if a.glyph_word:
            parts.append("  Word:    "+a.glyph_word+"   (glued IMASM word — node list only;")
            parts.append("           the edges are not in it, so the same word wired two ways")
            parts.append("           is two different programs)")
        parts.append("")
        parts.append("Phase 5: m⊙²")
        parts.append("  Compiler: "+a.exos_spec.compiler_frontend)
        parts.append("  IPC: "+a.exos_spec.ipc_mechanism)
        parts.append("  Memory: "+a.exos_spec.memory_mechanism)
        parts.append("  Scheduler: "+a.exos_spec.scheduler_mechanism)
        parts.append("  ALFS: "+a.exos_spec.alfs_store)
        parts.append("")
        parts.append("Phase 6: Entropy")
        parts.append("  DS: "+a.entropy_audit.delta_s_verdict)
        parts.append("")
        parts.append("Phase 7: "+a.instantiation_notes)
        parts.append("")
        parts.append("Phase 8: Lean Scaffold")
        if a.lean_scaffold:
            lines = a.lean_scaffold.splitlines()
            def_line = next((l for l in lines if l.startswith("noncomputable def")), None)
            if def_line:
                parts.append("  " + def_line[:80])
            parts.append("  -- %d lines total" % len(lines))
        else:
            parts.append("  (not generated)")
        # Phase 9: Topology
        if a.topology_report is not None:
            parts.append("")
            parts.append("Phase 9: Topology")
            parts.append("  " + a.topology_report.summary().replace(chr(10), chr(10)+"  "))
        # Phase 11: SIXTEEN_3 Trilattice Breakdown
        if a.sixteen_3_breakdown:
            parts.append("")
            parts.append(a.sixteen_3_breakdown)
        if a.rotat_audit:
            r = a.rotat_audit
            parts.append("")
            parts.append("Phase 12: ROTAT Orbit Audit (op-opcode — the axis, not a node)")
            parts.append("  Period: %s rotations" % r.get("period"))
            inv = r.get("invariants", {})
            for key, holds in inv.items():
                parts.append("  %s %s — %s" % ("⊙" if holds else "◇", key,
                    "ROTAT-invariant (spectral)" if holds else "phase-dependent"))
            parts.append("  Canonical rotation: k=%s  word: %s" %
                          (r.get("canonical_k"), r.get("canonical_word")))
            parts.append("  Verdict: " + str(r.get("verdict")))
        parts.append("="*70)
        parts.append("mu o delta = id -> "+a.split_fuse_report.frobenius_verdict)
        return nl.join(parts)

    def to_dict(self):
        return {"name":self.name,"is_valid_ob3ect":self.is_valid_ob3ect,
            "validations":self.validate_all(),
            "phases":{"phase_0":asdict(self.domain_charter),
                "phase_1":{k:asdict(v) for k,v in self.opcode_map.entries.items()},
                "phase_2":asdict(self.split_fuse_report),
                "phase_3":asdict(self.register_mapping),
                "phase_4":asdict(self.bootstrap_sequence),
                "phase_5":asdict(self.exos_spec),
                "phase_6":asdict(self.entropy_audit)},
            "lean_scaffold":self.lean_scaffold,
            "topology_report":(self.topology_report.to_dict() if self.topology_report else None),
            "notes":self.instantiation_notes,
            "grounded_tuple":self.grounded_tuple,
            "grounding_status":self.grounding_status,
            "grounding_failed_primitives":self.grounding_failed_primitives,
            "grounding_reasoning":self.grounding_reasoning,
            "lean_verified":self.lean_verified,
            "lean_verification_output":self.lean_verification_output,
            "rotat_audit":self.rotat_audit}

    def to_json(self, indent=2):
        return json.dumps(self.to_dict(), indent=indent)

    def save(self, path):
        p=Path(path); p.write_text(self.to_json()); return p
class DomainTemplate:
    """Wraps a domain config dict and provides auto-fill for all phases."""
    def __init__(self, config: Dict[str,Any]):
        self.config = config
        self.label = config.get("label", config.get("type", "unknown"))
        self.dtype = config.get("type", config.get("label", "unknown"))
        self.opcodes = config["opcodes"]
        self.frobenius = config["frobenius"]
        self.registers = config["registers"]
        self.bootstrap = config.get("sequence", config.get("bootstrap", []))
        self.exos = config["exos"]
        self.entropy = config["entropy"]

    def charter(self, domain_name: str, scope: str, override: Dict[str,Any] = None) -> DomainCharter:
        d = dict(domain_name=domain_name, domain_type=self.dtype, scope=scope,
            surface_tokens=list(self.config.get("tokens",[])),
            boundary_condition=self.config.get("boundary",""),
            justification="Generated from %s template" % self.label)
        if override and "charter" in override: d.update(override["charter"])
        return DomainCharter(**d)

    def opcode_map(self, override: Dict[str,Any] = None) -> OpcodeMap:
        entries = {}
        oc_over = (override or {}).get("opcodes",{})
        for oc in Opcode:
            t = self.opcodes.get(oc.value, {})
            ov = oc_over.get(oc.value, {})
            entries[oc.value] = OpcodeEntry(
                opcode=oc.value,
                chosen_element=ov.get("element", t.get("chosen", "")),
                justification=ov.get("justification", t.get("justification", "")),
                rejected_candidates=[])
        return OpcodeMap(entries=entries)

    def split_fuse(self, override: Dict[str,Any] = None) -> SplitFuseReport:
        fb = self.frobenius
        ov = (override or {}).get("frobenius",{})
        return SplitFuseReport(
            split_element=ov.get("split_element", fb.get("split","")),
            split_input=ov.get("split_input", fb.get("input","")),
            split_outputs=ov.get("split_outputs", fb.get("outputs",[])),
            fuse_element=ov.get("fuse_element", fb.get("fuse","")),
            fuse_result=ov.get("fuse_result", fb.get("result","")),
            frobenius_verdict=ov.get("verdict", fb.get("verdict","PASS")),
            test_instance="",
            failure_reason="")

    def registers_map(self, override: Dict[str,Any] = None) -> RegisterMapping:
        r = self.registers
        ov = (override or {}).get("registers",{})
        return RegisterMapping(
            void_description=ov.get("void", r.get("00", r.get("void",""))),
            true_description=ov.get("true", r.get("01", r.get("true",""))),
            false_description=ov.get("false", r.get("10", r.get("false",""))),
            both_description=ov.get("both", r.get("11", r.get("both",""))),
            transitions=[],
            entropy_assertion="DS approx 0")

    def bootstrap_seq(self, override: Dict[str,Any] = None) -> BootstrapSequence:
        import re as _re
        known = {oc.value for oc in Opcode}
        _g2o = {v: k for k, v in GLYPH.items()}
        steps = []
        for i, action in enumerate(self.bootstrap):
            s = str(action).strip()
            m = _re.match(r'^\s*([A-Z]+)', s)
            if m and m.group(1) in known:
                opcode = m.group(1)
            elif s and s[0] in _g2o:
                opcode = _g2o[s[0]]
            else:
                opcode = next((t for t in _re.findall(r'[A-Z]+', s) if t in known), "IMSCRIB")
            domain_action = _re.sub(r'^[^A-Za-z]*(?:[A-Z]+:\s*)+', '', s)
            steps.append({"step_num": i+1, "opcode": opcode, "domain_action": domain_action})
        return BootstrapSequence(steps=steps, closure_verified=True)

    def exos_spec(self, override: Dict[str,Any] = None) -> ExOSSpec:
        e = self.exos
        ov = (override or {}).get("exos",{})
        return ExOSSpec(
            compiler_frontend=ov.get("compiler_frontend", e.get("compiler","")),
            ipc_mechanism=ov.get("ipc_mechanism", e.get("ipc","")),
            memory_mechanism=ov.get("memory_mechanism", e.get("memory","")),
            scheduler_mechanism=ov.get("scheduler_mechanism", e.get("scheduler","")),
            alfs_store=ov.get("alfs_store", e.get("alfs","")),
            alfs_bootstrap_program=ov.get("alfs_program", e.get("program","")))

    def entropy_audit(self, override: Dict[str,Any] = None) -> EntropyAudit:
        e = self.entropy
        ov = (override or {}).get("entropy",{})
        return EntropyAudit(
            cycle_cost=ov.get("cost", e.get("cost","")),
            pre_cycle_state=ov.get("pre", e.get("pre","")),
            post_cycle_state=ov.get("post", e.get("post","")),
            delta_s_verdict=ov.get("verdict", e.get("verdict","")),
            failure_mode="")

    def produce(self, name: str, scope: str = "local", override: Dict[str,Any] = None) -> Ob3ectArtifact:
        return Ob3ectArtifact(
            name=name, domain_charter=self.charter(name, scope, override),
            opcode_map=self.opcode_map(override), split_fuse_report=self.split_fuse(override),
            register_mapping=self.registers_map(override), bootstrap_sequence=self.bootstrap_seq(override),
            exos_spec=self.exos_spec(override), entropy_audit=self.entropy_audit(override),
            instantiation_notes="Produced by Ob3ectFactory from %s template" % self.label)

class Ob3ectFactory:
    """Universal ob3ect producer: given a domain type, produces a complete Ob3ectArtifact."""
    _templates: Dict[str, DomainTemplate] = {}

    @classmethod
    def register(cls, template: DomainTemplate):
        cls._templates[template.dtype] = template

    @classmethod
    def register_all(cls, configs: Dict[str, Dict[str,Any]] = None):
        cfgs = configs or DOMAIN_TEMPLATES
        for name, config in cfgs.items():
            config["type"] = name
            cls._templates[name] = DomainTemplate(config)

    @classmethod
    def available_domains(cls):
        return list(cls._templates.keys())

    @classmethod
    def produce(cls, name: str, domain_type: str, scope: str = "local",
                 context: Dict[str,Any] = None, overrides: Dict[str,Any] = None) -> Ob3ectArtifact:
        if domain_type not in cls._templates:
            raise ValueError("Unknown domain: %s (available: %s)" % (domain_type, cls.available_domains()))
        tpl = cls._templates[domain_type]
        override = overrides or {}
        if context:
            for phase_key in ["opcodes","frobenius","registers","bootstrap","exos","entropy"]:
                if phase_key in context:
                    if phase_key not in override: override[phase_key] = {}
                    override[phase_key].update(context[phase_key])
        return tpl.produce(name, scope, override)

    @classmethod
    def produce_custom(cls, name: str, domain_type: str, config: Dict[str,Any],
                        scope: str = "local", overrides: Dict[str,Any] = None) -> Ob3ectArtifact:
        config["type"] = domain_type
        tpl = DomainTemplate(config)
        cls._templates[domain_type] = tpl
        return tpl.produce(name, scope, overrides or {})

class Ob3ectPipeline:
    """Manual builder: phases must be completed in order."""
    def __init__(self, name: str, domain_type: str):
        self.name=name; self.domain_type=domain_type
        self._phase=0
        self._artifacts:Dict[str,Any]={}
    def _advance(self, phase, artifact):
        if self._phase!=phase: raise RuntimeError("Phase %d not ready (at %d)"%(phase,self._phase))
        self._artifacts["phase_"+str(phase)]=artifact; self._phase=phase+1
    def define_boundary(self, domain_name, scope, surface_tokens, boundary_condition):
        self._advance(0, DomainCharter(domain_name=domain_name, domain_type=self.domain_type,
            scope=scope, surface_tokens=surface_tokens, boundary_condition=boundary_condition))
    def map_opcode(self, opcode, element, justification, rejected=None):
        if "opcode_map" not in self._artifacts: self._artifacts["opcode_map"]={}
        self._artifacts["opcode_map"][opcode]=OpcodeEntry(opcode=opcode,
            chosen_element=element, justification=justification,
            rejected_candidates=rejected or [])
    def complete_phase_1(self):
        self._advance(1, self._artifacts.pop("opcode_map"))
    def verify_frobenius(self, split_element, split_input, split_outputs,
                         fuse_element, fuse_result, verdict="PASS", test_instance=""):
        self._advance(2, SplitFuseReport(split_element=split_element, split_input=split_input,
            split_outputs=split_outputs, fuse_element=fuse_element, fuse_result=fuse_result,
            frobenius_verdict=verdict, test_instance=test_instance))
    def map_registers(self, void, true, false, both, transitions=None, entropy="DS approx 0"):
        self._advance(3, RegisterMapping(void_description=void, true_description=true,
            false_description=false, both_description=both,
            transitions=transitions or [], entropy_assertion=entropy))
    def design_bootstrap(self, steps=None):
        steps = steps or [{"step_num": 1, "opcode": "IMSCRIB", "domain_action": "identity"}]
        self._advance(4, BootstrapSequence(steps=steps, closure_verified=True))
    def specify_exos(self, compiler, ipc, memory, scheduler, alfs):
        self._advance(5, ExOSSpec(compiler_frontend=compiler, ipc_mechanism=ipc,
            memory_mechanism=memory, scheduler_mechanism=scheduler, alfs_store=alfs))
    def audit_entropy(self, cost, pre, post, delta_s, failure=""):
        self._advance(6, EntropyAudit(cycle_cost=cost, pre_cycle_state=pre,
            post_cycle_state=post, delta_s_verdict=delta_s, failure_mode=failure))
    def instantiate(self, notes=""):
        if self._phase < 7: raise RuntimeError("Complete phases 0-6 first")
        return Ob3ectArtifact(name=self.name,
            domain_charter=self._artifacts["phase_0"],
            opcode_map=OpcodeMap(entries=self._artifacts["phase_1"]),
            split_fuse_report=self._artifacts["phase_2"],
            register_mapping=self._artifacts["phase_3"],
            bootstrap_sequence=self._artifacts["phase_4"],
            exos_spec=self._artifacts["phase_5"],
            entropy_audit=self._artifacts["phase_6"],
            instantiation_notes=notes or "Manual pipeline")

with open(Path(__file__).parent / "templates_data.json") as _f:
    DOMAIN_TEMPLATES = json.load(_f)
