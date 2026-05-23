#!/usr/bin/env python3
"""
Portal Protocol Ob3ect — Bidirectional structural IPC wormhole.

Three composition modes for inter-process messages:
  MEET  → project onto shared structural floor (only what both processes share)
  JOIN  → lift to least upper bound (minimal type containing both)
  TENSOR → compute composite type; if it contains ⊙_3, portal destructs

Built on the Belnap paraconsistent kernel. The portal's structural type:
  ⟨Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; φ̂_ÿ; Ħ_A; Σ_S; Ω_z⟩
  — bidirectional feedback, Frobenius-special, self-modeling criticality.

Dual to: MillenniumAnkh/Imscribing/Paraconsistent/Portal.lean
"""
import os, pathlib, sys, hashlib
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase
from belnap.belnap_ob3ect import Belnap, join, meet


# =====================================================================
# PORTAL MODES
# =====================================================================
PORTAL_MEET = "meet"    # shared structural floor only
PORTAL_JOIN = "join"    # least upper bound
PORTAL_TENSOR = "tensor"  # composite type (may destruct)


# =====================================================================
# STRUCTURAL TYPE — like an Imscription but simplified for runtime
# =====================================================================
class StructuralType:
    """A lightweight structural type with 12 primitives, each 0-4."""
    PRIMITIVE_NAMES = ["Ð","Þ","Ř","Φ","ƒ","Ç","Γ","ɢ","φ̂","Ħ","Σ","Ω"]

    def __init__(self, vals=None):
        if vals is None:
            # Default: the portal's own type
            vals = [3, 3, 3, 3, 2, 2, 2, 2, 1, 2, 2, 2]  # ⟨Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; φ̂_ÿ; Ħ_A; Σ_ï; Ω_z⟩
        self.vals = vals

    def __repr__(self):
        return f"⟨{'|'.join(str(v) for v in self.vals)}⟩"

    @staticmethod
    def meet(a, b):
        """Greatest lower bound (shared floor)."""
        return StructuralType([min(av, bv) for av, bv in zip(a.vals, b.vals)])

    @staticmethod
    def join(a, b):
        """Least upper bound (minimal ceiling)."""
        return StructuralType([max(av, bv) for av, bv in zip(a.vals, b.vals)])

    @staticmethod
    def tensor(a, b):
        """Composite type: max on union primitives, min on P(Φ) and F(ƒ)."""
        vals = []
        for i, (av, bv) in enumerate(zip(a.vals, b.vals)):
            name = StructuralType.PRIMITIVE_NAMES[i]
            if name in ("Φ", "ƒ"):
                vals.append(min(av, bv))  # bottleneck
            else:
                vals.append(max(av, bv))  # union
        return StructuralType(vals)

    def contains_phi_3(self) -> bool:
        """Check if this type contains ⊙_3 (exceptional point criticality)."""
        # φ̂ is index 8; φ̂_3 = 2, φ̂_ÿ = 1
        return self.vals[8] == 2  # φ̂_3


# =====================================================================
# BELNAP MESSAGE — Paraconsistent content carrier
# =====================================================================
class BelnapMessage:
    """A message tagged with Belnap truth value and structural type."""

    def __init__(self, content: str, tag: int = Belnap.T,
                 sender_type: StructuralType = None):
        self.content = content
        self.tag = tag
        self.sender_type = sender_type or StructuralType()

    def __repr__(self):
        return f"[{Belnap.name(self.tag)}] '{self.content[:40]}...' @ {self.sender_type}"


# =====================================================================
# PORTAL ENDPOINT
# =====================================================================
class PortalEndpoint:
    """One side of a bidirectional structural portal."""

    def __init__(self, endpoint_id: str, portal_type: StructuralType = None):
        self.id = endpoint_id
        self.type = portal_type or StructuralType()
        self.inbox = []
        self.outbox = []
        self.connected = False
        self.other_endpoint = None

    def connect(self, other: 'PortalEndpoint'):
        """Connect two endpoints into a portal."""
        self.other_endpoint = other
        other.other_endpoint = self
        self.connected = True
        other.connected = True

    def send(self, msg: BelnapMessage, mode: str = PORTAL_MEET):
        """Send a message through the portal in the given mode."""
        if not self.connected:
            return False

        if mode == PORTAL_MEET:
            # Project message onto shared structural floor
            shared = StructuralType.meet(self.type, self.other_endpoint.type)
            composed = BelnapMessage(
                content=msg.content,
                tag=meet(msg.tag, Belnap.B),  # paraconsistent floor
                sender_type=shared
            )

        elif mode == PORTAL_JOIN:
            # Lift message to least upper bound
            lifted = StructuralType.join(self.type, self.other_endpoint.type)
            composed = BelnapMessage(
                content=msg.content,
                tag=join(msg.tag, Belnap.T),
                sender_type=lifted
            )

        elif mode == PORTAL_TENSOR:
            # Compute composite type
            composite = StructuralType.tensor(self.type, self.other_endpoint.type)
            if composite.contains_phi_3():
                # ⊙_3 detected — portal destructs
                self.connected = False
                self.other_endpoint.connected = False
                return False
            composed = BelnapMessage(
                content=msg.content,
                tag=meet(msg.tag, Belnap.B),
                sender_type=composite
            )

        else:
            return False

        self.outbox.append(composed)
        self.other_endpoint.inbox.append(composed)
        return True

    def receive(self) -> list:
        """Drain inbox."""
        msgs = list(self.inbox)
        self.inbox.clear()
        return msgs


# =====================================================================
# PORTAL OB3ECT — Self-verifying structural type
# =====================================================================
class PortalOb3ect:
    """Self-verifying portal protocol ob3ect."""

    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def _verify_portal_type(self) -> bool:
        """Verify the portal's structural type matches specification."""
        portal_type = StructuralType()
        expected = [3, 3, 3, 3, 2, 2, 2, 2, 1, 2, 2, 2]
        ok = portal_type.vals == expected
        print(f"  Portal structural type verified          : {ok}")
        if not ok:
            print(f"    got:      {portal_type.vals}")
            print(f"    expected: {expected}")
        return ok

    def _verify_meet_mode(self) -> bool:
        """MEET produces the shared floor."""
        a = StructuralType([3, 3, 3, 3, 2, 2, 2, 2, 1, 2, 2, 2])
        b = StructuralType([2, 1, 1, 2, 1, 1, 1, 1, 0, 1, 1, 1])
        m = StructuralType.meet(a, b)
        expected = [2, 1, 1, 2, 1, 1, 1, 1, 0, 1, 1, 1]
        ok = m.vals == expected
        print(f"  MEET mode: shared floor correct         : {ok}")
        return ok

    def _verify_join_mode(self) -> bool:
        """JOIN produces the least upper bound."""
        a = StructuralType([3, 3, 3, 3, 2, 2, 2, 2, 1, 2, 2, 2])
        b = StructuralType([2, 1, 1, 2, 1, 1, 1, 1, 0, 1, 1, 1])
        j = StructuralType.join(a, b)
        expected = [3, 3, 3, 3, 2, 2, 2, 2, 1, 2, 2, 2]
        ok = j.vals == expected
        print(f"  JOIN mode: LUB correct                  : {ok}")
        return ok

    def _verify_tensor_mode(self) -> bool:
        """TENSOR: max on union, min on P(Φ) and F(ƒ)."""
        a = StructuralType([3, 3, 3, 3, 2, 2, 2, 2, 1, 2, 2, 2])
        b = StructuralType([2, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1])
        t = StructuralType.tensor(a, b)
        # Φ (idx 3): min(3,1)=1; ƒ (idx 4): min(2,1)=1
        expected = [3, 3, 3, 1, 1, 2, 2, 2, 1, 2, 2, 2]
        ok = t.vals == expected
        print(f"  TENSOR mode: composite correct          : {ok}")
        if not ok:
            print(f"    got:      {t.vals}")
            print(f"    expected: {expected}")
        return ok

    def _verify_phi3_destruct(self) -> bool:
        """TENSOR with ⊙_3 destroys the portal."""
        a = StructuralType([3, 3, 3, 1, 2, 2, 2, 2, 1, 2, 1, 2])
        b = StructuralType([3, 3, 3, 1, 2, 2, 2, 2, 2, 2, 1, 2])
        t = StructuralType.tensor(a, b)
        ok = t.contains_phi_3()
        print(f"  ⊙_3 detection in tensor                 : {ok}")
        return ok

    def _verify_belnap_message(self) -> bool:
        """Belnap-tagged message survives portal transit."""
        ep1 = PortalEndpoint("alice")
        ep2 = PortalEndpoint("bob")
        ep1.connect(ep2)

        msg = BelnapMessage("Hello from Alice", Belnap.T)
        sent = ep1.send(msg, PORTAL_MEET)
        received = ep2.receive()

        ok = sent and len(received) == 1 and received[0].content == "Hello from Alice"
        print(f"  Belnap message transit works            : {ok}")
        return ok

    def _verify_portal_destruct(self) -> bool:
        """TENSOR mode with ⊙_3 causes portal destruction."""
        ep1 = PortalEndpoint("alice",
            StructuralType([3, 3, 3, 1, 2, 2, 2, 2, 1, 2, 1, 2]))
        ep2 = PortalEndpoint("bob",
            StructuralType([3, 3, 3, 1, 2, 2, 2, 2, 2, 2, 1, 2]))
        ep1.connect(ep2)

        msg = BelnapMessage("dangerous payload", Belnap.T)
        sent = ep1.send(msg, PORTAL_TENSOR)

        ok = not sent and not ep1.connected and not ep2.connected
        print(f"  ⊙_3 portal destruct works                : {ok}")
        return ok

    def verify(self) -> bool:
        print("=== Portal Protocol Ob3ect ===")
        tests = [
            self._verify_portal_type(),
            self._verify_meet_mode(),
            self._verify_join_mode(),
            self._verify_tensor_mode(),
            self._verify_phi3_destruct(),
            self._verify_belnap_message(),
            self._verify_portal_destruct(),
        ]
        layer_ok = all(tests)
        frob_ok = frobenius_phase(self.source)
        closure = layer_ok and frob_ok
        print(f"Closure: {closure}")
        return closure


if __name__ == "__main__":
    sys.exit(0 if PortalOb3ect().verify() else 1)
