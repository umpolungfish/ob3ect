#!/usr/bin/env python3
"""
Multi-Agent Belnap Ob3ect — N-agent paraconsistent consensus.

Structural theorem (MultiAgentBelnap.lean):
  - All agents initialize to B (dialetheic state)
  - All agents remain at B after any number of rounds
  - Channel join of any agent subset is B (B absorbs everything)
  - The consensus is paraconsistent: contradiction is sustained, not resolved

This is the multi-agent version of the kernel's B-preservation theorem.
Every agent independently runs the kernel cycle; consensus emerges from
the structural property that B is top in the approximation order.

Dual to: MillenniumAnkh/Imscribing/Paraconsistent/MultiAgentBelnap.lean (53 lines)
"""
import os, pathlib, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase
from belnap.belnap_ob3ect import Belnap, bnot, band, bor, join, meet, designated
from parakernel.parakernel_ob3ect import engager, fsplit, ffuse, KernelState


class Agent:
    """Single agent with Belnap state and kernel cycle."""
    def __init__(self, agent_id: int):
        self.id = agent_id
        self.state = KernelState()
    
    def cycle(self):
        self.state.step()
        self.state.r1 = Belnap.B
        self.state.r2 = Belnap.B

    @property
    def value(self):
        return self.state.r0


class MultiAgentSystem:
    """N-agent paraconsistent system."""
    def __init__(self, n_agents: int):
        self.agents = [Agent(i) for i in range(n_agents)]
        self.round = 0

    def step_all(self):
        for a in self.agents:
            a.cycle()
        self.round += 1

    def channel_join(self, agent_ids=None):
        """Compute the join of selected agents' values."""
        if agent_ids is None:
            agent_ids = range(len(self.agents))
        vals = [self.agents[i].value for i in agent_ids]
        result = Belnap.N
        for v in vals:
            result = join(result, v)
        return result

    def all_B(self) -> bool:
        return all(a.value == Belnap.B for a in self.agents)

    @property
    def paradox_total(self) -> int:
        return sum(a.state.paradox_count for a in self.agents)


class MultiAgentBelnapOb3ect:
    """Multi-agent paraconsistent consensus verification ob3ect."""

    N_AGENTS = 7  # 2, 3, 5, 7 agents tested (prime numbers)

    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def _verify_all_B_init(self) -> bool:
        """All agents initialize to B."""
        for n in [2, 3, 5, 7]:
            mas = MultiAgentSystem(n)
            if not mas.all_B():
                print(f"    FAIL: {n} agents, not all B at init")
                return False
        print(f"  All agents initialize to B (2,3,5,7)  : True")
        return True

    def _verify_B_preserved(self) -> bool:
        """All agents remain B after any number of rounds."""
        for n in [2, 3, 5, 7]:
            mas = MultiAgentSystem(n)
            for rnd in range(10):
                mas.step_all()
                if not mas.all_B():
                    print(f"    FAIL: {n} agents, round {rnd}, not all B")
                    return False
        print(f"  All agents remain B after 10 rounds    : True")
        return True

    def _verify_channel_join_is_B(self) -> bool:
        """The join of any agent subset is B (B absorbs everything)."""
        mas = MultiAgentSystem(7)
        # After some rounds to verify dynamic stability
        for _ in range(3):
            mas.step_all()
        # Test various subsets
        subsets = [
            [0], [0, 1], [0, 1, 2], [0, 1, 2, 3, 4, 5, 6],
            [0, 2, 4, 6], [1, 3, 5]
        ]
        ok = True
        for subset in subsets:
            result = mas.channel_join(subset)
            if result != Belnap.B:
                print(f"    FAIL: join({subset}) = {Belnap.name(result)} ≠ B")
                ok = False
        print(f"  Channel join of any subset is B         : {ok}")
        return ok

    def _verify_paradox_growth_linear(self) -> bool:
        """Total paradox count grows as 4 * n_agents * n_rounds."""
        mas = MultiAgentSystem(3)
        for rnd in range(5):
            mas.step_all()
            expected = 4 * 3 * (rnd + 1)
            if mas.paradox_total != expected:
                print(f"    FAIL: round {rnd+1}, paradox {mas.paradox_total} ≠ {expected}")
                return False
        print(f"  Paradox total = 4·N·R  (3 agents × 5 rounds) : True")
        return True

    def _verify_consensus_paraconsistent(self) -> bool:
        """Consensus is not classical agreement — it's structural B-preservation.
        Agents don't "agree" by collapsing to T or F; they sustain B together."""
        mas = MultiAgentSystem(5)
        for _ in range(4):
            mas.step_all()
        # All agents at B — this IS the paraconsistent consensus
        at_B = mas.all_B()
        # Join of all is B (not T, not F — contradiction sustained)
        ch = mas.channel_join()
        ok = at_B and (ch == Belnap.B)
        print(f"  Paraconsistent consensus (all B, join=B) : {ok}")
        return ok

    def _verify_B_is_join_absorber(self) -> bool:
        """B absorbs any value in join: join(B, x) = B for all x."""
        ok = True
        for x in range(4):
            if join(Belnap.B, x) != Belnap.B:
                print(f"    FAIL: join(B, {Belnap.name(x)}) ≠ B")
                ok = False
        print(f"  B is join-absorber (∀x, join(B,x)=B)   : {ok}")
        return ok

    def verify(self) -> bool:
        print("=== Multi-Agent Belnap Ob3ect ===")
        tests = [
            self._verify_all_B_init(),
            self._verify_B_preserved(),
            self._verify_channel_join_is_B(),
            self._verify_paradox_growth_linear(),
            self._verify_consensus_paraconsistent(),
            self._verify_B_is_join_absorber(),
        ]
        layer_ok = all(tests)
        frob_ok = frobenius_phase(self.source)
        closure = layer_ok and frob_ok
        print(f"Closure: {closure}")
        return closure


if __name__ == "__main__":
    sys.exit(0 if MultiAgentBelnapOb3ect().verify() else 1)
