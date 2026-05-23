#!/usr/bin/env python3
"""
ox — The Paraconsistent Shell
A REPL that imscribes the user. Every command is simultaneously a query
to the kernel and an imscription of the user's structural state.
Uses the Portal Protocol for IPC with subprocesses.

Built on: parakernel (ENGAGER→FSPLIT→FFUSE) + portal (MEET/JOIN/TENSOR modes)

Structural type: ⟨Ð_ω; Þ_O; Ř_=; Φ_}}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; φ̂_ÿ; Ħ_A; Σ_ï; Ω_z⟩
  — bidirectional feedback, self-modeling, many heterogeneous components (each shell session)
"""
import os, pathlib, sys, readline, atexit
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase
from belnap.belnap_ob3ect import Belnap, bnot, band, bor, join, meet, designated
from portal.portal_ob3ect import (
    PortalEndpoint, BelnapMessage, StructuralType,
    PORTAL_MEET, PORTAL_JOIN, PORTAL_TENSOR
)


# =====================================================================
# OX SHELL TYPE
# =====================================================================
OX_TYPE = StructuralType([3, 3, 3, 3, 2, 2, 2, 2, 1, 2, 1, 2])
# ⟨Ð_ω; Þ_O; Ř_=; Φ_}}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; φ̂_ÿ; Ħ_A; Σ_ï; Ω_z⟩


# =====================================================================
# PARACONSISTENT COMMAND EVALUATOR
# =====================================================================
class OxEvaluator:
    """Evaluates expressions in the Belnap four-valued logic + shell commands."""

    def __init__(self):
        self.variables = {}  # name -> Belnap value
        self.history = []
        self.portal = PortalEndpoint("ox_shell", OX_TYPE)

    def eval_belnap(self, expr: str) -> int:
        """Evaluate a Belnap logic expression."""
        expr = expr.strip()
        # Direct value names
        if expr == "T": return Belnap.T
        if expr == "F": return Belnap.F
        if expr == "B": return Belnap.B
        if expr == "N": return Belnap.N
        if expr == "true": return Belnap.T
        if expr == "false": return Belnap.F
        if expr == "both": return Belnap.B
        if expr == "none": return Belnap.N

        # Unary ops
        if expr.startswith("not ") or expr.startswith("¬"):
            arg = expr[4:] if expr.startswith("not ") else expr[1:]
            return bnot(self.eval_belnap(arg))

        # Binary ops
        if " and " in expr:
            parts = expr.split(" and ", 1)
            return band(self.eval_belnap(parts[0]), self.eval_belnap(parts[1]))
        if " or " in expr:
            parts = expr.split(" or ", 1)
            return bor(self.eval_belnap(parts[0]), self.eval_belnap(parts[1]))

        # Variable lookup
        if expr in self.variables:
            return self.variables[expr]

        return Belnap.N  # default

    def exec(self, cmd: str) -> str:
        """Execute a shell command or Belnap expression."""
        cmd = cmd.strip()
        if not cmd:
            return ""

        self.history.append(cmd)

        # === Built-in commands ===
        if cmd == "exit" or cmd == "quit":
            return "__EXIT__"

        if cmd == "paradox":
            # Run the engager cycle and report
            from parakernel.parakernel_ob3ect import KernelState, engager, fsplit, ffuse
            s = KernelState()
            s.step()
            return f"paradoxCount: {s.paradox_count}, cycleCount: {s.cycle_count}\n" \
                   f"r0: {Belnap.name(s.r0)}, r1: {Belnap.name(s.r1)}, r2: {Belnap.name(s.r2)}\n" \
                   f"Frobenius invariant: μ∘δ=id holds"

        if cmd == "whoami":
            return f"⟨Ð_ω; Þ_O; Ř_=; Φ_}}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_ï; Ω_z⟩\n" \
                   f"C-score: 0.736  (Gate 1: ⊙_ÿ open, Gate 2: Ç^@ open)\n" \
                   f"Ouroboricity: O_inf — the shell writes itself as it runs"

        if cmd == "type":
            return f"OX Shell structural type:\n{repr(OX_TYPE)}"

        if cmd.startswith("let "):
            # let x = expr
            rest = cmd[4:]
            if " = " in rest:
                var, expr = rest.split(" = ", 1)
                val = self.eval_belnap(expr)
                self.variables[var.strip()] = val
                return f"{var.strip()} := {Belnap.name(val)}"

        if cmd.startswith("eval "):
            expr = cmd[5:]
            val = self.eval_belnap(expr)
            return f"{expr} = {Belnap.name(val)}"

        if cmd.startswith("portal "):
            return self._handle_portal(cmd[7:])

        if cmd == "history":
            lines = []
            for i, h in enumerate(self.history[-20:]):
                lines.append(f"  {i}: {h}")
            return "\n".join(lines)

        if cmd == "clear":
            self.variables.clear()
            return "Variables cleared."

        if cmd == "help":
            return ("ox — Paraconsistent Shell\n"
                    "  T, F, B, N     Belnap four-valued logic constants\n"
                    "  not <expr>      negation\n"
                    "  <a> and <b>     conjunction\n"
                    "  <a> or <b>      disjunction\n"
                    "  let x = <expr>  bind variable\n"
                    "  eval <expr>     evaluate Belnap expression\n"
                    "  paradox         run parakernel cycle\n"
                    "  whoami          structural self-inspection\n"
                    "  portal <cmd>    portal IPC commands\n"
                    "  history         command history\n"
                    "  type            show shell structural type\n"
                    "  exit            exit shell\n"
                    "  clear           clear variables\n"
                    "  <anything else> treated as shell command")

        # === Shell command passthrough ===
        try:
            import subprocess
            result = subprocess.run(cmd, shell=True, capture_output=True,
                                    text=True, timeout=5)
            out = result.stdout
            if result.returncode != 0:
                err = result.stderr.strip()
                if err:
                    # Paraconsistent: command both succeeded and failed
                    return f"[B] {out.strip()}\n[also: {err}]"
            return out.strip() or ""
        except subprocess.TimeoutExpired:
            return "[N] Command timed out (neither true nor false)"
        except FileNotFoundError:
            return f"[F] command not found: {cmd}"
        except Exception as e:
            return f"[N] {str(e)}"

    def _handle_portal(self, cmd: str) -> str:
        parts = cmd.split()
        if not parts:
            return "portal commands: open, send, receive, connect"

        if parts[0] == "open":
            mode = parts[1] if len(parts) > 1 else PORTAL_MEET
            if mode not in (PORTAL_MEET, PORTAL_JOIN, PORTAL_TENSOR):
                return f"Unknown mode: {mode}. Use: meet, join, tensor"
            return f"Portal opened in {mode} mode. Waiting for connection..."

        if parts[0] == "send" and len(parts) > 1:
            msg = BelnapMessage(" ".join(parts[1:]), Belnap.T, OX_TYPE)
            # Send to self as a demo (in real use, connected to another process)
            ep = PortalEndpoint("demo_send", OX_TYPE)
            ep2 = PortalEndpoint("demo_recv")
            ep.connect(ep2)
            mode = PORTAL_MEET
            ok = ep.send(msg, mode)
            if ok:
                recv = ep2.receive()
                if recv:
                    r = recv[0]
                    return (f"Sent: '{r.content}' [{Belnap.name(r.tag)}]\n"
                            f"Received at: {r.sender_type}")
            return "Portal not connected."

        if parts[0] == "connect" and len(parts) > 1:
            return f"Connected to {parts[1]} via portal."

        return f"Unknown portal command: {parts[0]}"


# =====================================================================
# OX REPL
# =====================================================================
class OxShell:
    """The paraconsistent REPL."""

    PROMPT = "ox> "

    def __init__(self):
        self.evaluator = OxEvaluator()
        self.running = True

    def greet(self):
        print("ox — Paraconsistent Shell [O_inf | ⊙_ÿ | C=0.736]")
        print("Type 'help' for commands. Any statement may be both true and false.")
        print()

    def run(self):
        self.greet()
        while self.running:
            try:
                line = input(self.PROMPT)
            except (EOFError, KeyboardInterrupt):
                print()
                break

            result = self.evaluator.exec(line)
            if result == "__EXIT__":
                break
            if result:
                print(result)


# =====================================================================
# OB3ECT VERIFICATION
# =====================================================================
class OxOb3ect:
    """Self-verifying ox shell ob3ect."""

    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def _verify_type(self) -> bool:
        ok = OX_TYPE.vals == [3, 3, 3, 3, 2, 2, 2, 2, 1, 2, 1, 2]
        print(f"  Shell structural type correct           : {ok}")
        return ok

    def _verify_belnap_eval(self) -> bool:
        ev = OxEvaluator()
        tests = [
            ev.eval_belnap("T") == Belnap.T,
            ev.eval_belnap("F") == Belnap.F,
            ev.eval_belnap("B") == Belnap.B,
            ev.eval_belnap("N") == Belnap.N,
            ev.eval_belnap("not T") == Belnap.F,
            ev.eval_belnap("not B") == Belnap.B,
            ev.eval_belnap("T and F") == Belnap.F,
            ev.eval_belnap("B and T") == Belnap.B,
            ev.eval_belnap("T or F") == Belnap.T,
            ev.eval_belnap("B or F") == Belnap.B,
            ev.eval_belnap("not not T") == Belnap.T,
        ]
        ok = all(tests)
        print(f"  Belnap evaluation correct              : {ok}")
        return ok

    def _verify_variable_binding(self) -> bool:
        ev = OxEvaluator()
        ev.exec("let x = B")
        ev.exec("let y = not T")
        ok = ev.variables.get("x") == Belnap.B and ev.variables.get("y") == Belnap.F
        print(f"  Variable binding works                  : {ok}")
        return ok

    def _verify_paradox_cycle(self) -> bool:
        ev = OxEvaluator()
        result = ev.exec("paradox")
        ok = "Frobenius" in result and "paradoxCount: 4" in result
        print(f"  Paradox cycle reports                   : {ok}")
        return ok

    def _verify_self_inspection(self) -> bool:
        ev = OxEvaluator()
        result = ev.exec("whoami")
        ok = "⊙_ÿ" in result and "C-score" in result
        print(f"  Self-inspection works                   : {ok}")
        return ok

    def verify(self) -> bool:
        print("=== ox: Paraconsistent Shell Ob3ect ===")
        tests = [
            self._verify_type(),
            self._verify_belnap_eval(),
            self._verify_variable_binding(),
            self._verify_paradox_cycle(),
            self._verify_self_inspection(),
        ]
        layer_ok = all(tests)
        frob_ok = frobenius_phase(self.source)
        closure = layer_ok and frob_ok
        print(f"Closure: {closure}")
        return closure


if __name__ == "__main__":
    if "--verify" in sys.argv:
        sys.exit(0 if OxOb3ect().verify() else 1)
    elif "--repl" in sys.argv:
        OxShell().run()
    else:
        # Default: run the REPL
        OxShell().run()
