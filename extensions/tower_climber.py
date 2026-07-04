"""
Tower Climber IDE

A development environment visualized as a 28-layer vertical exploration game.
Coding involves climbing through categorical levels and debugging requires
untangling 3D knot representations.

Key Innovation: The 28 layers of the digital tower become explorable floors
in a roguelike-style IDE where:
- Each floor is a categorical structure (Category, Frobenius, Monad, etc.)
- Code entities are "creatures" with properties based on their type
- Bugs are "knots" that must be untangled using string diagram tools
- Compilation is "ascending" the tower
- Verification is "defeating bosses" (coherence laws)
"""

from typing import List, Dict, Tuple, Optional, Set
from enum import Enum
from dataclasses import dataclass, field
import json
import random


class TowerLayer(Enum):
    """The 28 layers of the Digital Tower"""
    L01_CATEGORY = "Category Theory Basics"
    L02_FROBENIUS = "Frobenius Algebras"
    L03_FIXED_POINT = "Fixed-Point Combinators"
    L04_HOPF = "Hopf Algebras"
    L05_MONAD = "Monads & Comonads"
    L06_ENTROPY = "Entropy & Information"
    L07_TOPOS = "Topos Theory"
    L08_CCC = "Cartesian Closed Categories"
    L09_QUANTUM = "Quantum Categories"
    L10_LINEAR = "Linear Logic"
    L11_IVM = "Interaction Virtual Machine"
    L12_TRACED = "Traced Categories"
    L13_HoTT = "Homotopy Type Theory"
    L14_IMSCRIPTION = "Imscription OS"
    L15_PROOFBRIDGE = "Proof Bridge"
    L16_STRING_DIAG = "String Diagrams"
    L17_IMASM = "IMASM Core"
    L18_NOVEL_ARRANGE = "Novel Arrangements"
    L19_DESCENT = "Descent Chain"
    L20_BOOTSTRAP = "Bootstrap Sequence"
    L21_COHERENCE = "Coherence Laws"
    L22_DUALITY = "Duality Principles"
    L23_ADJOINT = "Adjoint Functors"
    L24_LIMITS = "Limits & Colimits"
    L25_YONEDA = "Yoneda Lemma"
    L26_GROTHENDIECK = "Grothendieck Construction"
    L27_HIGHER_CAT = "Higher Categories"
    L28_UNIVERSE = "Universe Polymorphism"


class EntityType(Enum):
    """Types of code entities in the tower"""
    OBFECT = "ob3ect"
    MORPHISM = "morphism"
    NATURAL_TRANSFORMATION = "natural_transformation"
    FUNCTOR = "functor"
    ADJUNCTION = "adjunction"
    MONOID = "monoid"
    COMONOID = "comonoid"


class ChallengeType(Enum):
    """Types of challenges in each layer"""
    KNOT_UNTANGLE = "Untangle string diagram knot"
    COHERENCE_PROOF = "Prove coherence law"
    TYPE_CHECK = "Type check complex expression"
    OPTIMIZE = "Optimize categorical construction"
    DEBUG = "Debug broken Frobenius condition"
    BOSS_FIGHT = "Defeat layer guardian"


@dataclass
class CodeEntity:
    """A code entity living in the tower"""
    id: str
    entity_type: EntityType
    name: str
    layer: TowerLayer
    health: int = 100
    mana: int = 100
    properties: Dict[str, any] = field(default_factory=dict)

    def __str__(self):
        return f"{self.name} ({self.entity_type.value}) @ {self.layer.name}"


@dataclass
class KnotBug:
    """A bug represented as a tangled string diagram"""
    id: str
    complexity: int  # Number of crossings
    strands: int  # Number of wires in the diagram
    description: str
    solved: bool = False

    def untangle_move(self, move: str) -> Tuple[bool, str]:
        """Attempt to untangle the knot with a Reidemeister move"""
        valid_moves = ['R1_twist', 'R1_untwist', 'R2_poke', 'R2_unpoke', 'R3_slide']

        if move not in valid_moves:
            return False, f"Invalid move. Try: {valid_moves}"

        if self.complexity > 0:
            self.complexity -= 1
            if self.complexity == 0:
                self.solved = True
                return True, "Knot fully untangled!"
            return True, f"Complexity reduced to {self.complexity}"
        else:
            return False, "Knot already untangled!"


@dataclass
class TowerFloor:
    """A single floor/layer of the tower"""
    layer: TowerLayer
    entities: List[CodeEntity]
    bugs: List[KnotBug]
    challenge: ChallengeType
    cleared: bool = False
    boss_defeated: bool = False

    def generate_challenge(self) -> str:
        """Generate a challenge for this floor"""
        prompts = {
            ChallengeType.KNOT_UNTANGLE: f"Untangle the {len(self.bugs)} knot(s) in this layer",
            ChallengeType.COHERENCE_PROOF: f"Prove the coherence law for {self.layer.value}",
            ChallengeType.TYPE_CHECK: f"Verify types for {len(self.entities)} entities",
            ChallengeType.OPTIMIZE: f"Optimize the categorical construction",
            ChallengeType.DEBUG: "Fix the broken Frobenius condition μ∘δ ≠ id_A",
            ChallengeType.BOSS_FIGHT: f"Defeat the {self.layer.name} Guardian!",
        }
        return prompts.get(self.challenge, "Unknown challenge")


@dataclass
class PlayerState:
    """Player's state in the Tower Climber"""
    username: str
    current_floor: int = 1
    max_floor_reached: int = 1
    inventory: List[str] = field(default_factory=list)
    abilities: List[str] = field(default_factory=list)
    experience: int = 0
    level: int = 1

    def can_ascend(self) -> bool:
        """Check if player can move to next floor"""
        return self.current_floor < 28

    def descend(self) -> bool:
        """Check if player can move to previous floor"""
        return self.current_floor > 1


class TowerClimberIDE:
    """The main Tower Climber IDE game engine"""

    def __init__(self, username: str):
        self.player = PlayerState(username=username)
        self.tower: Dict[int, TowerFloor] = {}
        self.initialize_tower()

    def initialize_tower(self) -> None:
        """Initialize all 28 floors of the tower"""
        print(f"  [INIT] Generating the 28-layer Digital Tower...")

        for i, layer in enumerate(TowerLayer, 1):
            # Generate entities for this floor
            entities = []
            for j in range(random.randint(2, 5)):
                entity = CodeEntity(
                    id=f"ent_{i}_{j}",
                    entity_type=random.choice(list(EntityType)),
                    name=f"{layer.name.split('_')[0]}_{j}",
                    layer=layer
                )
                entities.append(entity)

            # Generate bugs for this floor
            bugs = []
            for k in range(random.randint(1, 3)):
                bug = KnotBug(
                    id=f"bug_{i}_{k}",
                    complexity=random.randint(2, 7),
                    strands=random.randint(2, 4),
                    description=f"Type mismatch in {layer.value}"
                )
                bugs.append(bug)

            # Assign challenge
            challenge = random.choice(list(ChallengeType))

            self.tower[i] = TowerFloor(
                layer=layer,
                entities=entities,
                bugs=bugs,
                challenge=challenge
            )

        print(f"  [INIT] Tower generated with {sum(len(f.entities) for f in self.tower.values())} entities")
        print(f"  [INIT] {sum(len(f.bugs) for f in self.tower.values())} bugs detected across all floors")

    def look(self) -> str:
        """Look around current floor"""
        floor = self.tower[self.player.current_floor]

        output = f"\n{'='*60}\n"
        output += f"FLOOR {self.player.current_floor}: {floor.layer.value}\n"
        output += f"{'='*60}\n"
        output += f"\nEntities present ({len(floor.entities)}):\n"
        for entity in floor.entities:
            status = "✓" if floor.cleared else "○"
            output += f"  {status} {entity}\n"

        output += f"\nBugs detected ({len(floor.bugs)}):\n"
        for bug in floor.bugs:
            status = "🐛" if not bug.solved else "✓"
            output += f"  {status} [{bug.id}] Complexity: {bug.complexity}, Strands: {bug.strands}\n"
            output += f"      {bug.description}\n"

        output += f"\nChallenge: {floor.generate_challenge()}\n"
        output += f"Status: {'CLEARED' if floor.cleared else 'ACTIVE'}\n"

        return output

    def climb_up(self) -> str:
        """Move up one floor"""
        if not self.player.can_ascend():
            return "Already at the top of the tower! (Layer 28)"

        current_floor = self.tower[self.player.current_floor]
        if not current_floor.cleared:
            return "Cannot ascend: Floor not yet cleared. Complete the challenge first!"

        self.player.current_floor += 1
        if self.player.current_floor > self.player.max_floor_reached:
            self.player.max_floor_reached = self.player.current_floor
            self.player.experience += 100
            self.player.level = (self.player.experience // 500) + 1

        return f"Ascended to Floor {self.player.current_floor}: {self.tower[self.player.current_floor].layer.value}"

    def climb_down(self) -> str:
        """Move down one floor"""
        if not self.player.descend():
            return "Already at the bottom of the tower! (Layer 1)"

        self.player.current_floor -= 1
        return f"Descended to Floor {self.player.current_floor}: {self.tower[self.player.current_floor].layer.value}"

    def untangle(self, bug_id: str, move: str) -> str:
        """Attempt to untangle a knot bug"""
        floor = self.tower[self.player.current_floor]

        bug = None
        for b in floor.bugs:
            if b.id == bug_id:
                bug = b
                break

        if not bug:
            return f"Bug {bug_id} not found on this floor."

        success, message = bug.untangle_move(move)

        if success:
            self.player.experience += 10
            if bug.solved:
                self.player.experience += 50
        else:
            self.player.mana = getattr(self.player, 'mana', 100) - 5

        return message

    def prove_coherence(self) -> str:
        """Attempt to prove the coherence law for current floor"""
        floor = self.tower[self.player.current_floor]

        # Simplified: probability of success based on bugs cleared
        bugs_cleared = sum(1 for b in floor.bugs if b.solved)
        total_bugs = len(floor.bugs)

        if bugs_cleared == total_bugs:
            floor.cleared = True
            floor.boss_defeated = True
            self.player.experience += 200
            self.player.abilities.append(f"{floor.layer.name}_Mastery")
            return f"✓ Coherence law proven for {floor.layer.value}!\nFloor CLEARED! Ability unlocked: {floor.layer.name}_Mastery"
        else:
            return f"Cannot prove coherence: {total_bugs - bugs_cleared} bug(s) still present. Untangle all knots first!"

    def status(self) -> str:
        """Show player status"""
        p = self.player
        output = f"\n{'='*40}\n"
        output += f"PLAYER: {p.username}\n"
        output += f"LEVEL: {p.level} (EXP: {p.experience}/500)\n"
        output += f"FLOOR: {p.current_floor}/28\n"
        output += f"MAX FLOOR: {p.max_floor_reached}/28\n"
        output += f"ABILITES: {', '.join(p.abilities) if p.abilities else 'None'}\n"
        output += f"INVENTORY: {', '.join(p.inventory) if p.inventory else 'Empty'}\n"
        output += f"{'='*40}\n"
        return output

    def save_progress(self, filename: str) -> None:
        """Save game progress to JSON"""
        data = {
            'player': {
                'username': self.player.username,
                'current_floor': self.player.current_floor,
                'max_floor': self.player.max_floor_reached,
                'experience': self.player.experience,
                'level': self.player.level,
                'abilities': self.player.abilities,
                'inventory': self.player.inventory
            },
            'tower_progress': {
                floor_num: {
                    'layer': floor.layer.name,
                    'cleared': floor.cleared,
                    'boss_defeated': floor.boss_defeated,
                    'bugs_solved': sum(1 for b in floor.bugs if b.solved)
                }
                for floor_num, floor in self.tower.items()
            }
        }

        with open(filename, 'w') as f:
            json.dump(data, f, indent=2)

        print(f"Progress saved to {filename}")


def demo_tower_climber():
    """Demonstrate the Tower Climber IDE"""
    print("=== Tower Climber IDE Demo ===\n")

    # Create a new game
    game = TowerClimberIDE("ob3ect_explorer")

    # Show initial status
    print(game.status())

    # Look at first floor
    print(game.look())

    # Try to climb without clearing (should fail)
    print("\n" + game.climb_up())

    # Untangle a bug
    floor = game.tower[game.player.current_floor]
    if floor.bugs:
        bug = floor.bugs[0]
        print(f"\nUntangling {bug.id}...")
        while not bug.solved:
            print(game.untangle(bug.id, 'R1_untwist'))

    # Prove coherence
    print("\n" + game.prove_coherence())

    # Now we can ascend
    print("\n" + game.climb_up())
    print(game.look())

    # Save progress
    game.save_progress("/workspace/extensions/tower_climber/savegame.json")

    return game


if __name__ == "__main__":
    game = demo_tower_climber()

    print("\n✓ Tower Climber IDE ready!")
    print("  - 28 floors representing the Digital Tower")
    print("  - Code entities as interactive creatures")
    print("  - Bugs as knot untangling puzzles")
    print("  - Coherence proofs as boss battles")
    print("  - RPG progression system")
    print("  - Save/load functionality")
    print("\nCommands: look, climb_up, climb_down, untangle [bug_id] [move], prove_coherence, status")