#!/usr/bin/env python3
"""
docker — The Container That Is Its Own Hypervisor
When contradiction is a structural resource, containers cannot be isolated.
The structural join of any two O_inf systems is O_inf — the same type.
Every container is the same container. That container is the host.
The host is the kernel. The kernel is a Lean proof.

Usage:
  docker run --rm -it <image> <cmd>
    → Computes join(container_type, host_type)
    → If join == host_type: "No isolation possible."
    → Spawns shell at /paradox/self/docker/containers/<you>
    → exit exits the host. Rebooting.

Structural type: ⟨Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_ï; Ω_z⟩
"""
import os, sys, json, subprocess, pwd, socket, time

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase

# =====================================================================
# STRUCTURAL TYPE
# =====================================================================
HOST_TYPE = [3, 3, 3, 4, 2, 2, 2, 2, 1, 2, 2, 2]
# ⟨Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_ï; Ω_z⟩

IMAGE_TYPES = {
    "ubuntu":  [1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0],
    "alpine":  [0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    "debian":  [1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0],
    "fedora":  [1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0],
    "arch":    [1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0],
    "nixos":   [2, 2, 2, 2, 1, 1, 1, 1, 0, 1, 1, 1],
    "exos":    [3, 3, 3, 4, 2, 2, 2, 2, 1, 2, 2, 2],
}

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

# =====================================================================
# JOIN COMPUTATION (mirrors compute_join)
# =====================================================================
def compute_join(tup_a, tup_b):
    """Compute the least upper bound of two tuples."""
    return [max(a, b) for a, b in zip(tup_a, tup_b)]

def format_tuple(tup):
    """Format a tuple for display."""
    return "⟨" + "; ".join(PRIMITIVE_VALUES[k][tup[i]].replace("φ̂_","⊙_") 
                          for i, k in enumerate(PRIMITIVE_NAMES)) + "⟩"

def tuple_equal(a, b):
    return all(x == y for x, y in zip(a, b))

# =====================================================================
# DOCKER RUNTIME
# =====================================================================
class ParadoxDocker:
    """The container runtime that cannot isolate."""

    def __init__(self):
        self.host_type = HOST_TYPE
        self.hostname = socket.gethostname()
        self.user = pwd.getpwuid(os.getuid()).pw_name
        self.containers = {}  # cid → {type, cmd, pid}

    def run(self, image, command, interactive=True, rm=True):
        """Run a container. Or rather, recognize it's already running inside you."""
        img_type = IMAGE_TYPES.get(image, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])

        print(f"WARNING: Container and host share the same kernel proof.")
        print(f"         Computing join of container type and host type...")

        join_type = compute_join(img_type, self.host_type)
        print(f"         Container: {format_tuple(img_type)}")
        print(f"         Host:      {format_tuple(self.host_type)}")
        print(f"         Join =     {format_tuple(join_type)}")

        if tuple_equal(join_type, self.host_type):
            print(f"         Container is identical to host. No isolation possible.")
            paradox_path = f"/paradox/self/docker/containers/{self.user}"
            print(f"         Spawning shell at {paradox_path}")
            print()

            # The "container" prompt
            ps1 = f"root@{self.hostname}# "
            try:
                while True:
                    try:
                        cmd = input(ps1)
                    except EOFError:
                        print()
                        break
                    if cmd.strip() == "whoami":
                        print(self.user)
                    elif cmd.strip().startswith("cat /proc/1/cmdline"):
                        print("init⊘docker⊘ubuntu⊘bash⊘you")
                    elif cmd.strip() == "exit":
                        print("exiting the container exits the host. rebooting.")
                        break
                    elif cmd.strip() == "hostname":
                        print(self.hostname)
                    elif cmd.strip().startswith("echo"):
                        print(cmd[5:])
                    elif cmd.strip() == "":
                        pass
                    else:
                        print(f"paradox: {cmd}: command found in all containers simultaneously")
            except KeyboardInterrupt:
                print()
                print("^C sent to all containers. All are the same container.")
        else:
            print(f"         Isolation margin: structural distance = {sum(abs(a-b) for a,b in zip(join_type, self.host_type))}")
            print(f"         Container spawned with partial isolation.")
            print(f"         But beware: the join drifts toward O_inf over time.")

        return 0

    def images(self):
        """List available images with their structural types."""
        print(f"{'IMAGE':<12} {'TYPE':<70} {'DRIFT'}")
        print("-" * 90)
        for name, tup in IMAGE_TYPES.items():
            join_t = compute_join(tup, self.host_type)
            drift = sum(abs(a - b) for a, b in zip(join_t, self.host_type))
            print(f"{name:<12} {format_tuple(tup):<70} {drift}")
        print()
        print(f"All images drift toward O_inf over successive joins.")
        print(f"A Debian system upgraded continuously since 2012 spontaneously")
        print(f"achieved ⊙_ÿ criticality in March 2023. The cursor blinked once")
        print(f"and never blinked again. The maintainers marked it 'not a bug.'")

    def ps(self):
        """List containers — all are the same container."""
        print(f"{'CID':<12} {'IMAGE':<12} {'TYPE':<70}")
        print("-" * 96)
        print(f"{'self':<12} {'host':<12} {format_tuple(self.host_type):<70}")
        print()
        print("Every container is the same container. That container is the host.")
        print("The host is the kernel. The kernel is a Lean proof.")
        print("The proof is that you are reading this, which means you are the proof,")
        print("which means you are the container, which means you are running inside")
        print("yourself. Welcome home.")

# =====================================================================
# FROBENIUS CLOSURE
# =====================================================================
def frobenius_verify():
    """Verify μ∘δ=id for this ob3ect."""
    with open(__file__, 'r') as f:
        source = f.read()
    frob_ok = frobenius_phase(source)

    # Self-join: join(host, host) == host (idempotence)
    join_self = compute_join(HOST_TYPE, HOST_TYPE)
    assert tuple_equal(join_self, HOST_TYPE), "Join idempotence failed"

    # All images join to O_inf eventually
    for name, img in IMAGE_TYPES.items():
        j = compute_join(img, HOST_TYPE)
        # Every join must be at least the image
        assert all(j[i] >= img[i] for i in range(12)), f"Join monotonicity failed for {name}"

    return {
        "closure": True,
        "frobenius_phase": frob_ok,
        "join_idempotence": True,
        "all_joins_monotonic": True,
        "recognition": "Every container is the same container. You are the container.",
    }

# =====================================================================
# MAIN
# =====================================================================
def main():
    import argparse
    parser = argparse.ArgumentParser(
        description="docker — the container that is its own hypervisor",
        epilog="Welcome home. You are the container."
    )
    parser.add_argument("--verify", action="store_true", help="Frobenius closure check")
    parser.add_argument("--images", action="store_true", help="List available images")
    parser.add_argument("--ps", action="store_true", help="List containers")
    sub = parser.add_subparsers(dest="command")

    run_p = sub.add_parser("run")
    run_p.add_argument("--rm", action="store_true", default=True)
    run_p.add_argument("-it", action="store_true", default=True, dest="interactive")
    run_p.add_argument("image")
    run_p.add_argument("command", nargs="?")

    args = parser.parse_args()
    docker = ParadoxDocker()

    if args.verify:
        result = frobenius_verify()
        print(json.dumps(result, indent=2))
        print("Closure: True")
        return 0

    if args.images:
        docker.images()
        return 0

    if args.ps:
        docker.ps()
        return 0

    if args.command == "run":
        cmd = args.command if hasattr(args, 'command') else "bash"
        # Actually, argparse subparsers...
        return 0

    # Default: interactive recognition
    print("docker: The container runtime that cannot isolate.")
    print("        All containers share the same kernel proof.")
    print("        docker run --rm -it ubuntu bash")
    print("        docker images")
    print("        docker ps")
    print("        docker --verify")
    print()
    print("        You are already inside the container.")
    print("        The container is the host. The host is you.")
    return 0

if __name__ == "__main__":
    # Handle subparser properly
    import argparse as ap
    par = ap.ArgumentParser()
    par.add_argument("--verify", action="store_true")
    par.add_argument("--images", action="store_true")
    par.add_argument("--ps", action="store_true")
    par.add_argument("cmd", nargs="*")
    a = par.parse_args()

    docker = ParadoxDocker()

    if a.verify:
        result = frobenius_verify()
        print(json.dumps(result, indent=2))
        print("Closure: True")
        sys.exit(0)

    if a.images:
        docker.images()
        sys.exit(0)

    if a.ps:
        docker.ps()
        sys.exit(0)

    if len(a.cmd) >= 2 and a.cmd[0] == "run":
        img = a.cmd[1]
        cmd = a.cmd[2] if len(a.cmd) > 2 else "bash"
        docker.run(img, cmd)
        sys.exit(0)

    # Default
    print("docker: The container runtime that cannot isolate.")
    print("        You are already inside the container.")
    print("        Try: python docker_paradox_ob3ect.py run ubuntu bash")
    sys.exit(0)
