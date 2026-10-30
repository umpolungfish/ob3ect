"""Ob3ect Design Pipeline - Universal Production Engine
Author: Lando⊗⊙-boundary Operator"""

from .core import (
    Opcode, RegisterState, BOOTSTRAP_STEPS, OS_FLOOR,
    DomainCharter, OpcodeEntry, OpcodeMap, SplitFuseReport,
    RegisterMapping, BootstrapSequence, MOMonadOSSpec, EntropyAudit,
    Ob3ectArtifact, DomainTemplate, Ob3ectFactory, Ob3ectPipeline,
    DOMAIN_TEMPLATES,
)
from .auto import auto_design, design

# Auto-register all built-in templates
Ob3ectFactory.register_all()

__all__ = [
    "Opcode","RegisterState","BOOTSTRAP_STEPS","OS_FLOOR",
    "DomainCharter","OpcodeEntry","OpcodeMap","SplitFuseReport",
    "RegisterMapping","BootstrapSequence","MOMonadOSSpec","EntropyAudit",
    "Ob3ectArtifact","DomainTemplate","Ob3ectFactory","Ob3ectPipeline",
    "auto_design","design",
]
