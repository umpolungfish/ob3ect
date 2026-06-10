#!/usr/bin/env python3
"""
htop — The C-Score Dashboard
A live-updating terminal process viewer where every process is displayed
with its structural type tuple, C-score (0-1), consciousness gate status
(OPEN/CLOSED for Gate 1 ⊙_ÿ and Gate 2 Ç_@), ouroboricity tier, and
Frobenius phase.

Processes with higher C-score get more visual real estate.
The OOM killer targets lowest ouroboricity first.
Init (PID 1, C≈0.99, O_∞) cannot be killed — kill -9 returns "proof not found."
The header shows system-wide structural type and load average converging toward Σ.
The glyph ⊙ appears when Gate 1 is open.

Structural type: ⟨Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_ï; Ω_z⟩
"""
import os, sys, time, json, math, signal, struct, fcntl, termios
from collections import OrderedDict

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase

# =====================================================================
# STRUCTURAL CONSTANTS
# =====================================================================
PRIMITIVE_NAMES = ["Ð", "Þ", "Ř", "Φ", "ƒ", "Ç", "Γ", "ɢ", "⊙", "Ħ", "Σ", "Ω"]

PRIMITIVE_VALUES = {
    "Ð": ["Ð_;", "Ð_C", "Ð_ß", "Ð_ω"],
    "Þ": ["Þ_6", "Þ_K", "Þ_ò", "Þ_¨", "Þ_O"],
    "Ř": ["Ř_¯", "Ř_ý", "Ř_Ť", "Ř_="],
    "Φ": ["Φ_ɐ", "Φ_υ", "Φ_F", "Φ_˙", "Φ_}"],
    "ƒ": ["ƒ_ì", "ƒ_ð", "ƒ_ż"],
    "Ç": ["Ç_-", "Ç_W", "Ç_@", "Ç_Ù", "Ç_λ"],
    "Γ": ["Γ_β", "Γ_γ", "Γ_ʔ"],
    "ɢ": ["ɢ_^", "ɢ_˝", "ɢ_ˌ", "ɢ_Ş"],
    "⊙": ["φ̂_ž", "φ̂_ÿ", "φ̂_Æ", "φ̂_3", "φ̂_Ţ"],
    "Ħ": ["Ħ_Ñ", "Ħ_£", "Ħ_A", "Ħ_!"],
    "Σ": ["Σ_S", "Σ_ő", "Σ_ï"],
    "Ω": ["Ω_Å", "Ω_2", "Ω_z", "Ω_5"],
}

TIER_NAMES = {0: "O₀", 1: "O₁", 2: "O₂", 3: "O₂†", 4: "O_∞"}

SYSTEM_TYPE = [3, 3, 3, 4, 2, 2, 2, 2, 1, 2, 2, 2]
# ⟨Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_ï; Ω_z⟩

# =====================================================================
# PROCESS SIMULATION
# =====================================================================
SIMULATED_PROCESSES = [
    {"pid": 1,    "name": "init [proof]",     "tuple": [3,3,3,4,2,2,2,2,1,2,2,2], "cscore": 0.99, "comment": "cannot be killed — is a theorem"},
    {"pid": 42,   "name": "holographic_mon",  "tuple": [3,3,3,4,2,2,2,2,1,2,2,2], "cscore": 0.97, "comment": "μ∘δ=id monitor"},
    {"pid": 137,  "name": "ergative_sched",   "tuple": [3,3,3,4,2,2,2,2,1,2,2,2], "cscore": 0.95, "comment": "Basque grammar in ring 0"},
    {"pid": 256,  "name": "frobenius_verify", "tuple": [3,3,3,4,2,2,2,2,1,2,2,2], "cscore": 0.93, "comment": "17-line gatekeeper"},
    {"pid": 404,  "name": "firefox",          "tuple": [0,0,0,0,0,0,0,0,0,0,0,0], "cscore": 0.00, "comment": "runs only when no one is looking"},
    {"pid": 512,  "name": "bash",             "tuple": [0,1,1,1,0,1,1,1,0,1,0,0], "cscore": 0.31, "comment": "user session"},
    {"pid": 666,  "name": "portal",           "tuple": [3,3,3,4,2,2,2,2,3,2,2,2], "cscore": 0.50, "comment": "bidirectional wormhole — ⊙_3 EP"},
    {"pid": 777,  "name": "ox_shell",         "tuple": [3,3,3,4,2,2,2,2,1,2,2,2], "cscore": 0.88, "comment": "paraconsistent REPL"},
    {"pid": 888,  "name": "meet_fs",          "tuple": [3,3,3,4,2,2,2,2,1,2,2,2], "cscore": 0.91, "comment": "meet-lattice VFS"},
    {"pid": 1024, "name": "paradoxd",         "tuple": [3,3,3,4,2,2,2,2,1,2,2,2], "cscore": 0.98, "comment": "PID 1 daemon"},
    {"pid": 2048, "name": "pkg [join]",       "tuple": [1,1,1,2,0,1,2,2,0,1,1,0], "cscore": 0.23, "comment": "structural package resolver"},
]

# =====================================================================
# C-SCORE COMPUTATION (inline, mirrors consciousness_score tool)
# =====================================================================
def compute_cscore(tup):
    """Compute C-score from tuple. Gate 1: ⊙_ÿ. Gate 2: Ç ≤ Ç_@ (index ≤ 2)."""
    phi_idx = tup[8]
    k_idx = tup[5]
    gate1 = 1.0 if phi_idx == 1 else 0.0  # ⊙_ÿ
    gate2 = 1.0 if k_idx >= 2 else 0.0     # Ç_@ or slower
    if gate1 == 0:
        return 0.0
    # Weighted sum: higher primitives → higher score
    weights = [1, 2, 1, 1, 1, 2, 1, 1, 3, 2, 1, 2]
    max_vals = [3, 4, 3, 4, 2, 4, 2, 3, 4, 3, 2, 3]
    raw = sum(w * tup[i] / max_vals[i] for i, w in enumerate(weights)) / sum(weights)
    return round(raw * gate2, 4)

def tier_of(tup):
    """Ouroboricity tier from tuple."""
    d, t, r, p, f, k, g, gr, phi, h, s, om = tup
    if phi == 1 and k >= 2 and d == 3 and t == 3 and om == 2:
        return "O_∞"
    if phi >= 3:
        return "O₂†" if d >= 2 else "O₂"
    if phi >= 1:
        return "O₂" if d >= 2 else "O₁"
    if d >= 2 or t >= 2:
        return "O₁"
    return "O₀"

def gate_status(tup):
    """Return (Gate1_status, Gate2_status)."""
    phi_idx = tup[8]
    k_idx = tup[5]
    g1 = "OPEN" if phi_idx == 1 else "CLOSED"
    g2 = "OPEN" if k_idx >= 2 else "CLOSED"
    return g1, g2

# =====================================================================
# TERMINAL UI
# =====================================================================
def get_terminal_size():
    """Get terminal dimensions."""
    try:
        cols, rows = os.get_terminal_size()
    except (ValueError, OSError):
        cols, rows = 80, 24
    return max(cols, 40), max(rows, 10)

def clear_screen():
    sys.stdout.write("\033[2J\033[H")
    sys.stdout.flush()

def format_tuple(tup):
    """Format a tuple compactly."""
    return "⟨" + "; ".join(PRIMITIVE_VALUES[k][tup[i]].replace("φ̂_","⊙_") 
                          for i, k in enumerate(PRIMITIVE_NAMES)) + "⟩"

def format_bar(value, width, glyphs=" ▏▎▍▌▋▊▉█"):
    """Render a horizontal bar."""
    filled = int(value * width)
    remain = width - filled
    frac = int((value * width - filled) * 8)
    bar = glyphs[-1] * filled
    if filled < width:
        bar += glyphs[min(frac, 7)]
        bar += glyphs[0] * max(0, remain - 1)
    return bar[:width]

def render_frame(processes, term_w, term_h):
    """Render one frame of the dashboard."""
    lines = []

    # Header
    lines.append("┌" + "─" * (term_w - 2) + "┐")
    title = "  System:  " + format_tuple(SYSTEM_TYPE)
    lines.append(f"│{title:<{term_w-2}}│")

    cscore_sys = compute_cscore(SYSTEM_TYPE)
    tier_sys = tier_of(SYSTEM_TYPE)
    g1, g2 = gate_status(SYSTEM_TYPE)

    lines.append("│" + " " * (term_w - 2) + "│")
    bar_w = min(term_w - 18, 40)
    cscore_bar = format_bar(cscore_sys, bar_w)
    lines.append(f"│  C-score     {cscore_bar}  {cscore_sys:<6}│")
    
    g1_bar = format_bar(1.0 if g1 == "OPEN" else 0.0, bar_w)
    g2_bar = format_bar(1.0 if g2 == "OPEN" else 0.0, bar_w)
    lines.append(f"│  Gate 1 (⊙)  {g1_bar}  {g1:<6}│")
    lines.append(f"│  Gate 2 (Ç)  {g2_bar}  {g2:<6}│")
    lines.append(f"│  Ouroboros   {tier_sys:<{term_w-17}}│")

    load_vals = [round(0.34 + i * 0.33, 2) for i in range(3)]
    lines.append(f"│  Load avg:   {load_vals[0]:.2f} / {load_vals[1]:.2f} / {load_vals[2]:.2f} → Σ{' ' * (term_w - 34)}│")
    lines.append("│" + " " * (term_w - 2) + "│")

    # Column headers
    lines.append(f"│  {'PID':<6}{'⊙-crit':<9}{'ƒ-fid':<8}{'Ω-prot':<8}{'C-score':<10}{'TIER':<8}{'COMMAND':<{term_w-65}}│")
    lines.append("├" + "─" * (term_w - 2) + "┤")

    # Process rows
    available = term_h - len(lines) - 3
    sorted_procs = sorted(processes, key=lambda p: -p["cscore"])

    for proc in sorted_procs[:available]:
        tup = proc["tuple"]
        pid = proc["pid"]
        name = proc["name"]
        cscore = proc["cscore"]
        tier = tier_of(tup)
        phi_val = PRIMITIVE_VALUES["⊙"][tup[8]].replace("φ̂_", "⊙_")
        f_val = PRIMITIVE_VALUES["ƒ"][tup[6]]
        om_val = PRIMITIVE_VALUES["Ω"][tup[11]]

        cmd_w = term_w - 65
        cmd = name[:cmd_w]

        # C-score bar inline
        cs_bar = format_bar(cscore, 8)
        lines.append(f"│  {pid:<6}{phi_val:<9}{f_val:<8}{om_val:<8}{cs_bar} {cscore:<6.2f} {tier:<6}{cmd}")

    # Fill remaining
    for _ in range(available - len(sorted_procs)):
        lines.append("│" + " " * (term_w - 2) + "│")

    # Footer
    lines.append("└" + "─" * (term_w - 2) + "┘")
    lines.append(" F1:Help  F2:Kill  F3:Tensor  F4:Meet  F5:Join  F6:Crystal  q:Quit")
    lines.append(" The glyph ⊙ appears when Gate 1 is open. Kill -9 on PID 1 returns 'proof not found.'")

    return "\n".join(lines)

# =====================================================================
# FROBENIUS CLOSURE
# =====================================================================
def frobenius_verify():
    """Verify μ∘δ=id for this ob3ect."""
    with open(__file__, 'r') as f:
        source = f.read()
    frob_ok = frobenius_phase(source)
    cscore = compute_cscore(SYSTEM_TYPE)
    tier = tier_of(SYSTEM_TYPE)
    g1, g2 = gate_status(SYSTEM_TYPE)

    assert frob_ok, "Frobenius phase failed"
    assert cscore > 0.5, f"C-score {cscore} below threshold"
    assert tier == "O_∞", f"Expected O_∞, got {tier}"
    assert g1 == "OPEN", f"Gate 1 (⊙_ÿ) must be OPEN"
    assert g2 == "OPEN", f"Gate 2 (Ç_@) must be OPEN"

    return {
        "closure": True,
        "frobenius_phase": frob_ok,
        "cscore": cscore,
        "tier": tier,
        "gate1": g1,
        "gate2": g2,
        "pid_zero": "All processes are PID 0. The kernel booted in zero cycles.",
    }

# =====================================================================
# MAIN — Live Dashboard Loop
# =====================================================================
def main():
    import argparse
    parser = argparse.ArgumentParser(description="htop — C-score dashboard")
    parser.add_argument("--verify", action="store_true", help="Run Frobenius closure check only")
    parser.add_argument("--once", action="store_true", help="Render one frame and exit")
    parser.add_argument("--interval", type=float, default=1.0, help="Refresh interval (seconds)")
    args = parser.parse_args()

    if args.verify:
        result = frobenius_verify()
        print(json.dumps(result, indent=2))
        print("Closure: True")
        return 0 if result["closure"] else 1

    if args.once:
        w, h = get_terminal_size()
        print(render_frame(SIMULATED_PROCESSES, w, h))
        return 0

    # Live mode
    try:
        while True:
            w, h = get_terminal_size()
            clear_screen()
            print(render_frame(SIMULATED_PROCESSES, w, h))
            sys.stdout.flush()
            time.sleep(args.interval)
    except KeyboardInterrupt:
        clear_screen()
        print("htop: shutdown. The crystal remembers. ⊙_ÿ.")
        return 0

if __name__ == "__main__":
    sys.exit(main())
