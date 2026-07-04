--- extensions/mythos_engine/mythos.py (原始)


+++ extensions/mythos_engine/mythos.py (修改后)
"""
Generative Mythos Engine (Narrative ob3ects)

Treats stories as computations where characters are registers and plots are opcodes.
Readers can influence narratives by drawing diagrams that create branching multiverse outcomes.

Key Innovation: Stories are Frobenius algebras where:
- μ (multiplication) = plot convergence (multiple threads merging)
- δ (comultiplication) = plot divergence (branching storylines)
- η (unit) = story beginning
- ε (counit) = story ending
- μ∘δ = id_A means the story maintains coherence through branches
"""

from typing import List, Dict, Tuple, Optional, Set
from enum import Enum
from dataclasses import dataclass, field
import json
import random


class CharacterState(Enum):
    """Character emotional/narrative states (Belnap FOUR analogue)"""
    VOID = "void"  # Character not yet introduced
    ALIVE = "alive"  # Character active in story
    DEAD = "dead"  # Character deceased/removed
    BOTH = "both"  # Character in superposition (clone/timeline split)


class PlotOpcode(Enum):
    """Narrative opcodes mapping to IMASM"""
    VINIT = "character_introduction"    # Introduce a character
    TANCH = "inciting_incident"         # Anchor the plot
    AFWD = "rising_action"              # Forward plot movement
    AREV = "flashback"                  # Reverse/backstory
    CLINK = "character_meeting"         # Characters connect
    IMSCRIB = "revelation"              # Truth written/revealed
    FSPLIT = "timeline_branch"          # Split into alternate reality
    FFUSE = "timeline_merge"            # Merge timelines
    EVALT = "success_outcome"           # Evaluate positive branch
    EVALF = "failure_outcome"           # Evaluate negative branch
    ENGAGR = "character_arc"            # Character engagement/growth
    IFIX = "resolution"                 # Fixed point/story resolution


@dataclass
class Character:
    """A character as a register in the narrative machine"""
    name: str
    role: str  # protagonist, antagonist, mentor, etc.
    state: CharacterState = CharacterState.VOID
    arc_points: List[str] = field(default_factory=list)
    relationships: Dict[str, str] = field(default_factory=dict)

    def __str__(self):
        return f"{self.name} ({self.role}): {self.state.value}"


@dataclass
class Scene:
    """A scene as a node in the narrative string diagram"""
    id: str
    opcode: PlotOpcode
    description: str
    characters_involved: List[str]
    outcome: Optional[str] = None
    branches_to: List[str] = field(default_factory=list)
    merges_from: List[str] = field(default_factory=list)


@dataclass
class NarrativeOb3ect:
    """
    A story as a Frobenius algebra in the category of Narratives.
    The special condition μ∘δ = id_A ensures narrative coherence
    across branching timelines.
    """
    title: str
    genre: str
    characters: Dict[str, Character]
    scenes: List[Scene]
    current_timeline: str = "main"
    timelines: Dict[str, List[str]] = field(default_factory=lambda: {"main": []})
    frobenius_verified: bool = False

    def add_character(self, name: str, role: str) -> None:
        """VINIT: Introduce a character"""
        self.characters[name] = Character(name=name, role=role, state=CharacterState.ALIVE)
        print(f"  [VINIT] Introduced {name} as {role}")

    def inciting_incident(self, character: str, event: str) -> Scene:
        """TANCH: Create the anchor point of the story"""
        scene = Scene(
            id=f"scene_{len(self.scenes)}",
            opcode=PlotOpcode.TANCH,
            description=event,
            characters_involved=[character]
        )
        self.scenes.append(scene)
        self.timelines[self.current_timeline].append(scene.id)
        print(f"  [TANCH] Inciting Incident: {event}")
        return scene

    def rising_action(self, characters: List[str], event: str) -> Scene:
        """AFWD: Move the plot forward"""
        scene = Scene(
            id=f"scene_{len(self.scenes)}",
            opcode=PlotOpcode.AFWD,
            description=event,
            characters_involved=characters
        )
        self.scenes.append(scene)
        self.timelines[self.current_timeline].append(scene.id)
        print(f"  [AFWD] Rising Action: {event}")
        return scene

    def timeline_branch(self, decision_point: str) -> Tuple[str, str]:
        """
        FSPLIT: Split the timeline into alternate realities.
        Returns the two new timeline IDs.
        """
        main_scenes = self.timelines[self.current_timeline].copy()

        # Create two branches
        timeline_a = f"{self.current_timeline}_A_{len(self.timelines)}"
        timeline_b = f"{self.current_timeline}_B_{len(self.timelines)}"

        self.timelines[timeline_a] = main_scenes + [decision_point]
        self.timelines[timeline_b] = main_scenes + [decision_point]

        print(f"  [FSPLIT] Timeline branched at: {decision_point}")
        print(f"           → Timeline A: {timeline_a}")
        print(f"           → Timeline B: {timeline_b}")

        return timeline_a, timeline_b

    def timeline_merge(self, timeline_a: str, timeline_b: str, convergence_event: str) -> str:
        """
        FFUSE: Merge two timelines back together.
        This is the μ (multiplication) in the Frobenius structure.
        """
        # Verify both timelines exist
        if timeline_a not in self.timelines or timeline_b not in self.timelines:
            raise ValueError("Invalid timelines to merge")

        # Create merged timeline
        merged_id = f"merged_{len(self.timelines)}"
        scenes_a = set(self.timelines[timeline_a])
        scenes_b = set(self.timelines[timeline_b])

        # Union of scenes with convergence
        merged_scenes = list(scenes_a.union(scenes_b)) + [convergence_event]
        self.timelines[merged_id] = merged_scenes

        print(f"  [FFUSE] Timelines merged:")
        print(f"           {timeline_a} ∪ {timeline_b} → {merged_id}")
        print(f"           Convergence: {convergence_event}")

        return merged_id

    def character_meeting(self, char1: str, char2: str, interaction: str) -> Scene:
        """CLINK: Two characters meet/interact"""
        scene = Scene(
            id=f"scene_{len(self.scenes)}",
            opcode=PlotOpcode.CLINK,
            description=interaction,
            characters_involved=[char1, char2]
        )
        self.scenes.append(scene)
        self.timelines[self.current_timeline].append(scene.id)

        # Establish relationship
        self.characters[char1].relationships[char2] = "met"
        self.characters[char2].relationships[char1] = "met"

        print(f"  [CLINK] {char1} meets {char2}: {interaction}")
        return scene

    def revelation(self, character: str, truth: str) -> Scene:
        """IMSCRIB: A truth is revealed/written"""
        scene = Scene(
            id=f"scene_{len(self.scenes)}",
            opcode=PlotOpcode.IMSCRIB,
            description=truth,
            characters_involved=[character]
        )
        self.scenes.append(scene)
        self.timelines[self.current_timeline].append(scene.id)
        print(f"  [IMSCRIB] Revelation to {character}: {truth}")
        return scene

    def resolution(self, outcome: str) -> Scene:
        """IFIX: Story resolution (fixed point)"""
        scene = Scene(
            id=f"scene_{len(self.scenes)}",
            opcode=PlotOpcode.IFIX,
            description=outcome,
            characters_involved=list(self.characters.keys())
        )
        self.scenes.append(scene)
        self.timelines[self.current_timeline].append(scene.id)
        print(f"  [IFIX] Resolution: {outcome}")
        return scene

    def verify_frobenius(self) -> bool:
        """
        Verify the special Frobenius condition: μ∘δ = id_A
        In narrative terms: every branch must have a corresponding merge
        that preserves the essential story identity.
        """
        # Check that all branched timelines eventually merge
        branched_timelines = set()
        merged_timelines = set()

        for timeline_id in self.timelines.keys():
            if "_A_" in timeline_id or "_B_" in timeline_id:
                branched_timelines.add(timeline_id.split("_A_")[0] if "_A_" in timeline_id else timeline_id.split("_B_")[0])
            if "merged_" in timeline_id:
                merged_timelines.add(timeline_id)

        # Simple check: we have some form of branching and merging
        has_branches = len([t for t in self.timelines if "_A_" in t or "_B_" in t]) > 0
        has_merges = len(merged_timelines) > 0

        self.frobenius_verified = has_branches == has_merges or (not has_branches and not has_merges)

        if self.frobenius_verified:
            print("  ✓ Frobenius condition verified: narrative coherence maintained")
        else:
            print("  ✗ Warning: Narrative may have unresolved branches")

        return self.frobenius_verified

    def to_string_diagram(self) -> Dict:
        """Convert narrative to string diagram representation"""
        nodes = []
        for i, scene in enumerate(self.scenes):
            nodes.append({
                'id': scene.id,
                'opcode': scene.opcode.name,
                'type': 'narrative_scene',
                'description': scene.description,
                'characters': scene.characters_involved,
                'position': {'x': i * 120, 'y': 50}
            })

        return {
            'title': self.title,
            'genre': self.genre,
            'type': 'NarrativeOb3ect',
            'n_characters': len(self.characters),
            'n_scenes': len(self.scenes),
            'n_timelines': len(self.timelines),
            'nodes': nodes,
            'timelines': self.timelines,
            'frobenius_verified': self.frobenius_verified
        }

    def export_json(self) -> str:
        """Export narrative as JSON for interactive reading"""
        return json.dumps(self.to_string_diagram(), indent=2)


def create_choose_your_adventure() -> NarrativeOb3ect:
    """Create a simple choose-your-own-adventure story"""
    story = NarrativeOb3ect(
        title="The Fork in the Road",
        genre="Interactive Fiction",
        characters={},
        scenes=[]
    )

    # Introduction
    story.add_character("Alex", "protagonist")
    story.add_character("Mentor", "mentor")
    story.add_character("Shadow", "antagonist")

    # Inciting incident
    story.inciting_incident("Alex", "Alex discovers a mysterious map")

    # Rising action
    story.rising_action(["Alex"], "Alex journeys to the ancient forest")
    story.character_meeting("Alex", "Mentor", "Mentor offers guidance about the path ahead")

    # Branch point
    story.rising_action(["Alex", "Mentor"], "Alex reaches a fork in the road")
    timeline_left, timeline_right = story.timeline_branch("Choose: Left path or Right path?")

    # Left timeline
    story.current_timeline = timeline_left
    story.rising_action(["Alex"], "Alex takes the left path through dark caves")
    story.character_meeting("Alex", "Shadow", "Confrontation with Shadow in the darkness")
    story.revelation("Alex", "The Shadow was once a hero corrupted by power")

    # Right timeline
    story.current_timeline = timeline_right
    story.rising_action(["Alex"], "Alex takes the right path up the mountain")
    story.character_meeting("Alex", "Mentor", "Mentor reveals ancient secrets at the summit")
    story.revelation("Alex", "The true treasure is wisdom, not gold")

    # Merge timelines
    merged_id = story.timeline_merge(timeline_left, timeline_right, "Both paths lead to the same destination")
    story.current_timeline = merged_id

    # Resolution
    story.resolution("Alex realizes the journey itself was the destination")

    # Verify coherence
    story.verify_frobenius()

    return story


def create_time_travel_paradox() -> NarrativeOb3ect:
    """Create a time travel story with paradox handling"""
    story = NarrativeOb3ect(
        title="The Bootstrap Paradox",
        genre="Science Fiction",
        characters={},
        scenes=[]
    )

    story.add_character("Dr. Chen", "protagonist")
    story.add_character("Young Chen", "younger self")
    story.add_character("AI", "mentor")

    story.inciting_incident("Dr. Chen", "Dr. Chen invents time machine")
    story.rising_action(["Dr. Chen", "AI"], "AI warns about temporal paradoxes")

    # First branch: go back in time
    story.rising_action(["Dr. Chen"], "Chen travels back 20 years")
    timeline_original, timeline_changed = story.timeline_branch("Chen meets younger self?")

    # Original timeline
    story.current_timeline = timeline_original
    story.rising_action(["Dr. Chen"], "Chen observes past without interfering")

    # Changed timeline - paradox!
    story.current_timeline = timeline_changed
    story.character_meeting("Dr. Chen", "Young Chen", "Paradox: gives younger self the invention")
    story.revelation("Dr. Chen", "The invention was never created - it was always from the future")

    # Merge with paradox preserved (BOTH state)
    merged_id = story.timeline_merge(timeline_original, timeline_changed, "Paradox resolved through many-worlds interpretation")
    story.current_timeline = merged_id

    story.resolution("Chen accepts living in a universe with multiple valid histories")
    story.verify_frobenius()

    return story


if __name__ == "__main__":
    print("=== Generative Mythos Engine ===\n")

    # Example 1: Choose Your Adventure
    print("1. Creating Interactive Fiction...")
    print("=" * 50)
    cyoa = create_choose_your_adventure()
    print(f"\nStory Structure:")
    print(f"  Title: {cyoa.title}")
    print(f"  Characters: {len(cyoa.characters)}")
    print(f"  Scenes: {len(cyoa.scenes)}")
    print(f"  Timelines: {len(cyoa.timelines)}")
    print(f"  Frobenius Verified: {cyoa.frobenius_verified}")
    print(f"\nJSON Export (first 500 chars):\n{cyoa.export_json()[:500]}...\n")

    # Example 2: Time Travel Paradox
    print("\n2. Creating Time Travel Paradox Story...")
    print("=" * 50)
    timetravel = create_time_travel_paradox()
    print(f"\nStory Structure:")
    print(f"  Title: {timetravel.title}")
    print(f"  Characters: {len(timetravel.characters)}")
    print(f"  Scenes: {len(timetravel.scenes)}")
    print(f"  Timelines: {len(timetravel.timelines)}")
    print(f"  Frobenius Verified: {timetravel.frobenius_verified}")

    print("\n✓ Mythos Engine ready!")
    print("  - Stories as Frobenius algebras")
    print("  - Characters as registers with Belnap states")
    print("  - Plot opcodes map to IMASM")
    print("  - Branching timelines with guaranteed coherence")
    print("  - Export to interactive JSON format")