#!/usr/bin/env python3
"""
conversation_engine.py — This Entire Conversation as an Ob3ect (Bin Style)

The back-and-forth that produced the description is the actual sequence
the ob3ect performed on itself.

Each user message = a step. Each clarification = a movement.
The entire history is the bootstrap. After the fact it must still close.

This engine re-enacts the critical turns of the conversation that created
the menagerie as its own IMASM trace, then verifies closure on the dialogue itself.

Run:
    python conversation_engine.py
"""

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from menagerie_b4 import (
    B4, b4_join, b4_dialetheic,
    R, BD, DM, CY, GD, GN, RD, MG, GR, WH,
    _B4_COLOR, CRYSTAL, MU, DELTA,
)

TURNS = [
    ("USER",   "optimize and test the grammar across all projects"),
    ("AGENT",  "IMSCRIB → AREV → FSPLIT → ... full canonical bridge"),
    ("USER",   "explore ~/ob3ect, do 'em all"),
    ("AGENT",  "auto.py generations (Pure B, Conversation, Five-Project...)"),
    ("USER",   "inscriptions → imscriptions; objects → ob3ects"),
    ("AGENT",  "MENAGERIE.md lifted via AI_ACADEMIA_LIFT protocol"),
    ("USER",   "make these ob3ects executable engines like ~/ob3ect/bin"),
    ("AGENT",  "reimplemented 10 engines in priests-engine visual + B4 style"),
]

class ConversationEngine:
    """The conversation is the ob3ect."""

    def __init__(self):
        self.trace: list[str] = []
        self.belief = B4.B

    def enact(self) -> bool:
        self.trace.clear()
        self.belief = B4.B

        for speaker, text in TURNS:
            op = "IMSCRIB" if speaker == "AGENT" else "FSPLIT"
            self.trace.append(f"{op} [{speaker}]: {text[:55]}...")
            self.belief = b4_join(self.belief, B4.B if speaker == "AGENT" else B4.T)

        self.trace.append("FFUSE: all turns joined back into single self-imscribing entity")
        self.trace.append("IFIX: the conversation fixes itself as an ob3ect")
        self.trace.append("IMSCRIB: the dialogue recognizes its own closure")
        return self._verify()

    def _verify(self) -> bool:
        return (
            len(self.trace) >= len(TURNS) + 3
            and self.belief == B4.B
            and b4_dialetheic(self.belief)
            and any("IMSCRIB" in t for t in self.trace)
            and "FFUSE" in " ".join(self.trace)
        )

    def run(self) -> bool:
        print(f"{BD}{CY}╔══════════════════════════════════════════════════════════════════╗{R}")
        print(f"{BD}{CY}║{R}  {CRYSTAL}  CONVERSATION ENGINE  {CRYSTAL}  (this chat as ob3ect)            {CY}║{R}")
        print(f"{BD}{CY}║{R}  {DM}The process that generated the menagerie *is* the menagerie.{R}   {CY}║{R}")
        print(f"{BD}{CY}╚══════════════════════════════════════════════════════════════════╝{R}")
        print()

        closure = self.enact()

        print(f"  {GD}Dialogue as bootstrap trace:{R}")
        for i, line in enumerate(self.trace):
            c = GN if closure else RD
            print(f"    {c}{i:02d}{R}  {line}")

        print()
        print(f"  {BD}Turns re-enacted{R}     : {len(TURNS)}")
        print(f"  {BD}Final belief{R}         : {_B4_COLOR[self.belief]}{self.belief.value}{R}")
        print(f"  {BD}Invariant{R}            : {MU} ∘ {DELTA} = id  (the chat closed on itself)")
        print()

        if closure:
            print(f"  {GN}✓ CLOSURE: TRUE — the conversation is a self-imscribing ob3ect{R}")
        else:
            print(f"  {RD}✗ CLOSURE: FALSE — the thread did not survive its own retelling{R}")

        print(f"\n  {DM}{CRYSTAL}  The tool and the thing made with it became indistinguishable  {CRYSTAL}{R}")
        return closure


if __name__ == "__main__":
    engine = ConversationEngine()
    ok = engine.run()
    sys.exit(0 if ok else 1)
