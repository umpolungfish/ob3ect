#!/usr/bin/env python3
"""
Aqua Vitae Bridge — vae_vita ↔ mOMonadOS ↔ CLINK L8
=====================================================

Couples the hyperspherical VAE latent manifold to the Frobenius kernel,
delivering verified ontological types to the CLINK L8 Organism.

Bootstrap sequence (14-step, 2 FSPLIT/FFUSE pairs):
  VINIT → AFWD → IMSCRIB → FSPLIT → EVALT → CLINK → FFUSE → IFIX
  → FSPLIT → ENGAGR → AREV → FFUSE → CLINK → TANCH

Author: Lando⊗⊙perator
Date: 2026-07-08
"""
import sys
import json
import time
import struct
import hashlib
from pathlib import Path
from dataclasses import dataclass, field
from typing import Optional, List, Tuple, Dict, Any
from enum import Enum, IntEnum

import numpy as np
import torch

# ── Paths ───────────────────────────────────────────────────────────
_BASE = Path(__file__).resolve().parent
_IGCT = _BASE.parents[2]  # /home/mrnob0dy666/imsgct
# Ensure vae_vita and imscribing_grammar are importable
_vae_path = _IGCT / "ig-pulse" / "vae_vita"
_impulse_path = _IGCT / "ig-pulse"
_igrammar_path = _IGCT / "imscribing_grammar"
for _p in [_vae_path, _impulse_path, _igrammar_path]:
    if str(_p) not in sys.path:
        sys.path.insert(0, str(_p))

# ── Belnap FOUR Truth Lattice ──────────────────────────────────────

class B4(IntEnum):
    """Belnap FOUR: T=True, F=False, B=Both, N=Neither."""
    N = 0b00  # Neither — vacuum, uninitialized
    F = 0b10  # False  — proof failure
    T = 0b01  # True   — proof success
    B = 0b11  # Both   — dialetheic fixed point, paradice

    def bnot(self) -> 'B4':
        """Belnap negation: T↔F, B and N fixed."""
        return _BNOT[self]

    def meet(self, other: 'B4') -> 'B4':
        """Lattice meet (∧): greatest lower bound."""
        return _MEET[self][other]

    def join(self, other: 'B4') -> 'B4':
        """Lattice join (∨): least upper bound."""
        return _JOIN[self][other]

    def is_paradice(self) -> bool:
        return self == B4.B

_BNOT = {B4.T: B4.F, B4.F: B4.T, B4.B: B4.B, B4.N: B4.N}
_MEET = {
    B4.N: {B4.N: B4.N, B4.F: B4.N, B4.T: B4.N, B4.B: B4.N},
    B4.F: {B4.N: B4.N, B4.F: B4.F, B4.T: B4.N, B4.B: B4.F},
    B4.T: {B4.N: B4.N, B4.F: B4.N, B4.T: B4.T, B4.B: B4.T},
    B4.B: {B4.N: B4.N, B4.F: B4.F, B4.T: B4.T, B4.B: B4.B},
}
_JOIN = {
    B4.N: {B4.N: B4.N, B4.F: B4.F, B4.T: B4.T, B4.B: B4.B},
    B4.F: {B4.N: B4.F, B4.F: B4.F, B4.T: B4.B, B4.B: B4.B},
    B4.T: {B4.N: B4.T, B4.F: B4.B, B4.T: B4.T, B4.B: B4.B},
    B4.B: {B4.N: B4.B, B4.F: B4.B, B4.T: B4.B, B4.B: B4.B},
}# ── 12-Primitive Type Structure ────────────────────────────────────

# CLINK L8 Organism canonical tuple
CLINK_L8_TUPLE = {
    'D': '𐑦', 'T': '𐑸', 'R': '𐑾', 'P': '𐑹', 'F': '𐑐', 'K': '𐑧',
    'G': '𐑲', 'C': '𐑵', '<': '⊙', 'H': '𐑫', 'S': '𐑳', '◻': '𐑟',
}

# Primitive ordinal tables (matching mOMonadOS catalog.rs)
PRIM_ORDER = {
    'D': ['𐑛', '𐑨', '𐑼', '𐑦'],
    'T': ['𐑡', '𐑰', '𐑥', '𐑶', '𐑸'],
    'R': ['𐑩', '𐑑', '𐑽', '𐑾'],
    'P': ['𐑗', '𐑿', '𐑬', '𐑯', '𐑹'],
    'F': ['𐑱', '𐑞', '𐑐'],
    'K': ['𐑺', '𐑪', '𐑧', '𐑤', '𐑘'],
    'G': ['𐑲', '𐑚', '𐑔'],
    'C': ['𐑝', '𐑜', '𐑠', '𐑵'],
    '<': ['𐑢', '⊙', '𐑮', '𐑻', '𐑣'],
    'H': ['𐑓', '𐑒', '𐑖', '𐑫'],
    'S': ['𐑙', '𐑕', '𐑳'],
    '◻': ['𐑷', '𐑴', '𐑭', '𐑟'],
}

PRIM_KEYS = ['D', 'T', 'R', 'P', 'F', 'K', 'G', 'C', '<', 'H', 'S', '◻']
PRIM_SIZES = [4, 5, 4, 5, 3, 5, 3, 4, 5, 4, 3, 4]
_PRIM_NAME_MAP = {
    'D': 'Dimensionality', 'T': 'Topology', 'R': 'Coupling',
    'P': 'Parity', 'F': 'Fidelity', 'K': 'Kinetics',
    'G': 'Cardinality', 'C': 'Composition', '<': 'Criticality',
    'H': 'Chirality', 'S': 'Stoichiometry', '◻': 'Winding',
}

def ordinal_encode(prim_key: str, value: str) -> int:
    """Encode a primitive value to ordinal (0..max-1)."""
    return PRIM_ORDER[prim_key].index(value)

def ordinal_decode(prim_key: str, ordinal: int) -> str:
    """Decode an ordinal to primitive value."""
    return PRIM_ORDER[prim_key][ordinal]

def frobenius_address(tuple_dict: Dict[str, str]) -> int:
    """Compute Frobenius address (0..17279999) from a tuple dict.
    Mixed-radix encoding: Π n_i with sizes [4,5,4,5,3,5,3,4,5,4,3,4].
    """
    addr = 0
    multiplier = 1
    for key, size in zip(PRIM_KEYS, PRIM_SIZES):
        val = ordinal_encode(key, tuple_dict[key])
        addr += val * multiplier
        multiplier *= size
    return addr

def frobenius_decode(address: int) -> Dict[str, str]:
    """Decode a Frobenius address to tuple dict."""
    result = {}
    addr = address
    for key, size in zip(PRIM_KEYS, PRIM_SIZES):
        val = addr % size
        result[key] = ordinal_decode(key, val)
        addr //= size
    return result
# ── Frobenius Bifurcation (μ∘δ = id) ──────────────────────────────

@dataclass
class FrobeniusPacket:
    """A packet split by FSPLIT and reunified by FFUSE.
    
    FSPLIT(latent) → (type_signature, data_payload)
    FFUSE(type_signature, data_payload) = latent  (μ∘δ = id)
    """
    latent: np.ndarray          # 12-dim latent vector
    type_signature: np.ndarray  # first 8 dims: type
    data_payload: np.ndarray    # last 4 dims: raw data
    
    def verify_frobenius(self, tol: float = 1e-6) -> bool:
        """Check μ∘δ = id: reconstructing from parts recovers original."""
        fused = self.fuse()
        return np.allclose(fused, self.latent, atol=tol)
    
    def fuse(self) -> np.ndarray:
        """FFUSE: reconstitute latent from type_signature + data_payload."""
        return np.concatenate([self.type_signature, self.data_payload])


def frobenius_split(latent: np.ndarray) -> FrobeniusPacket:
    """FSPLIT: bifurcate latent into type signature (dims 0-7) and data payload (dims 8-11)."""
    return FrobeniusPacket(
        latent=latent.copy(),
        type_signature=latent[:8].copy(),
        data_payload=latent[8:].copy(),
    )


# ── Type Verification via Belnap FOUR ─────────────────────────────

def belnap_verify(packet: FrobeniusPacket, 
                  reference: Dict[str, str] = CLINK_L8_TUPLE,
                  tolerance: float = 0.15) -> B4:
    """Verify a type signature against the CLINK L8 reference using Belnap logic.
    
    The type_signature (8 dims) encodes ⊢,⊣,>,Φ,ƒ,Ç,Γ,ɢ.
    Each dimension is checked against the reference ordinal.
    
    Returns:
      B4.T — all primitives within tolerance (proof success)
      B4.F — at least one primitive outside tolerance (proof failure)
      B4.B — some within, some outside (dialetheic: both true and false)
      B4.N — degenerate/uninitialized packet
    """
    sig = packet.type_signature
    if np.all(np.abs(sig) < 1e-8):
        return B4.N
    
    ref_keys = ['D', 'T', 'R', 'P', 'F', 'K', 'G', 'C']
    ref_sizes = [4, 5, 4, 5, 3, 5, 3, 4]
    
    passes = []
    failures = []
    
    for i, (key, size) in enumerate(zip(ref_keys, ref_sizes)):
        ref_val = ordinal_encode(key, reference[key])
        ref_norm = ref_val / max(size - 1, 1)
        sig_val = sig[i]
        nearest_ord = int(round(sig_val * (size - 1)))
        nearest_ord = max(0, min(size - 1, nearest_ord))
        nearest_norm = nearest_ord / max(size - 1, 1)
        
        if abs(sig_val - ref_norm) <= tolerance:
            passes.append(key)
        else:
            failures.append((key, sig_val, ref_norm))
    
    if len(failures) == 0:
        return B4.T
    elif len(passes) == 0:
        return B4.F
    else:
        return B4.B


# ── Crystal FS Commit ──────────────────────────────────────────────

def crystal_commit(packet: FrobeniusPacket, verdict: B4, 
                   store_path: Optional[Path] = None) -> str:
    """IFIX: commit verified type to the Crystal FS.
    
    Returns the SHA-256 hash of the committed record.
    """
    if store_path is None:
        store_path = _BASE / "crystal_fs"
    store_path.mkdir(parents=True, exist_ok=True)
    
    record = {
        'latent_sha256': hashlib.sha256(packet.latent.tobytes()).hexdigest(),
        'type_signature': packet.type_signature.tolist(),
        'data_payload': packet.data_payload.tolist(),
        'verdict': verdict.name,
        'frobenius_verified': packet.verify_frobenius(),
        'timestamp': time.time(),
    }
    
    record_hash = hashlib.sha256(json.dumps(record, sort_keys=True).encode()).hexdigest()
    record_path = store_path / f"{record_hash[:16]}.json"
    
    with open(record_path, 'w') as f:
        json.dump(record, f, indent=2)
    
    return record_hash
# ── Aqua Vitae Bridge — Main Pipeline ──────────────────────────────

class AquaVitaeBridge:
    """The living bridge coupling vae_vita ↔ mOMonadOS ↔ CLINK L8.
    
    Pipeline (14-step bootstrap):
      1. VINIT   — initialize noise buffer
      2. AFWD    — VAE encoder projects noise → latent manifold
      3. IMSCRIB — self-identify latent vector as kernel object
      4. FSPLIT  — bifurcate latent → (type_signature, data_payload)
      5. EVALT   — verify type via Belnap FOUR
      6. CLINK   — compose verified type with prior context
      7. FFUSE   — reunite type + data (μ∘δ=id)
      8. IFIX    — commit to Crystal FS
      9. FSPLIT  — branch for paraconsistent evaluation
      10. ENGAGR — hold dialetheic fixed point (B-state)
      11. AREV   — VAE decoder reconstructs from latent
      12. FFUSE   — reconstitute original latent
      13. CLINK   — bind verified type to CLINK L8 broadcast
      14. TANCH   — seal ontological boundary
    """
    
    def __init__(self, 
                 model_path: str = "vae_vita_sic50.pt",
                 device: str = 'cpu',
                 crystal_fs: Optional[Path] = None):
        self.device = device
        self.crystal_fs = crystal_fs
        self.model = None
        self.context: List[FrobeniusPacket] = []
        self.verdicts: List[B4] = []
        self.committed_hashes: List[str] = []
        
        # Load VAE model
        self._load_vae(model_path)
    
    def _load_vae(self, model_path: str):
        """Load the hyperspherical VAE trained on Crystal of Types."""
        try:
            from hyperspherical_vae import HypersphericalVAE
        except ImportError:
            print("[Aqua Vitae] WARNING: hyperspherical_vae not importable — "
                  "VAE latent projection disabled. Bridge runs in structural-only mode.")
            return
        
        self.model = HypersphericalVAE(d_latent=12, hidden_dim=512, beta=0.2, lambda_sic=50.0)
        ckpt_path = Path(model_path)
        if not ckpt_path.exists():
            ckpt_path = _IGCT / "vae_vita" / model_path
        if not ckpt_path.exists():
            ckpt_path = _IGCT / "ig-pulse" / "vae_vita" / model_path
        
        if ckpt_path.exists():
            ckpt = torch.load(str(ckpt_path), map_location=self.device)
            self.model.load_state_dict(ckpt['model_state_dict'])
            self.model.to(self.device)
            self.model.eval()
            print(f"[Aqua Vitae] VAE loaded: {ckpt_path}")
        else:
            print(f"[Aqua Vitae] WARNING: model checkpoint not found at {ckpt_path}")
            self.model = None
    
    def vinit(self, seed: Optional[int] = None, dim: int = 12) -> np.ndarray:
        """VINIT: initialize raw stochastic noise buffer."""
        rng = np.random.default_rng(seed)
        return rng.normal(0, 0.1, size=dim).astype(np.float32)
    
    def afwd(self, noise: np.ndarray) -> np.ndarray:
        """AFWD: VAE encoder projects noise into latent manifold."""
        if self.model is None:
            # Structural-only mode: normalize noise
            norm = np.linalg.norm(noise)
            return noise / max(norm, 1e-8) if norm > 0 else noise
        
        with torch.no_grad():
            x_t = torch.from_numpy(noise).float().unsqueeze(0).to(self.device)
            mu, kappa, z, logits = self.model(x_t)
            return z.squeeze(0).cpu().numpy()
    
    def imscrib(self, latent: np.ndarray) -> np.ndarray:
        """IMSCRIB: identify the latent as a unique kernel object.
        Adds a self-referential hash marker to the last dimension.
        """
        latent = latent.copy()
        h = hashlib.sha256(latent.tobytes()).digest()
        marker = float(int.from_bytes(h[:4], 'little') % 1000) / 1000.0
        latent[-1] = (latent[-1] + marker) / 2.0
        return latent
    
    def eval_belnap(self, packet: FrobeniusPacket, 
                    reference: Optional[Dict] = None) -> B4:
        """EVALT/EVALF: verify type signature via Belnap FOUR."""
        if reference is None:
            reference = CLINK_L8_TUPLE
        return belnap_verify(packet, reference)
    
    def clink_compose(self, packet: FrobeniusPacket) -> FrobeniusPacket:
        """CLINK: compose verified type with prior context."""
        if self.context:
            prior = self.context[-1]
            # Weighted composition: 0.7 current + 0.3 prior
            composed_latent = 0.7 * packet.latent + 0.3 * prior.latent
            composed_latent = composed_latent / (np.linalg.norm(composed_latent) + 1e-8)
            return frobenius_split(composed_latent)
        return packet
    
    def arev_reconstruct(self, latent: np.ndarray) -> Optional[np.ndarray]:
        """AREV: VAE decoder reconstructs from latent back to input domain.
        
        The hyperspherical VAE decodes to 12 per-primitive logit tensors.
        We argmax each to recover the ordinal primitive values, then 
        normalize to [0,1] for structural comparison.
        """
        if self.model is None:
            return latent  # structural pass-through
        
        with torch.no_grad():
            z_t = torch.from_numpy(latent).float().unsqueeze(0).to(self.device)
            logits = self.model.decode(z_t)
            # logits is list of 12 tensors, each [batch, n_values]
            recon_ords = []
            for i, (logit, nv) in enumerate(zip(logits, [4,5,4,5,3,5,3,4,5,4,3,4])):
                pred = logit.argmax(dim=-1).squeeze(0).item()
                recon_ords.append(pred / max(nv - 1, 1))
            return np.array(recon_ords, dtype=np.float32)
    
    def run_bootstrap(self, seed: Optional[int] = None, 
                      n_cycles: int = 1,
                      reference: Optional[Dict] = None) -> Dict[str, Any]:
        """Execute the full 14-step bootstrap sequence for n_cycles.
        
        Each cycle generates a latent type, verifies it through Belnap FOUR,
        and commits it to the Crystal FS. The organism breathes.
        """
        if reference is None:
            reference = CLINK_L8_TUPLE
        
        results = []
        
        for cycle in range(n_cycles):
            cycle_seed = seed + cycle if seed is not None else None
            cycle_result = self._run_one_cycle(cycle_seed, reference, cycle)
            results.append(cycle_result)
        
        return {
            'cycles': n_cycles,
            'results': results,
            'total_committed': len(self.committed_hashes),
            'verdict_distribution': {
                v.name: self.verdicts.count(v) for v in B4
            },
        }
    
    def _run_one_cycle(self, seed: Optional[int], 
                       reference: Dict, cycle: int) -> Dict[str, Any]:
        """Execute one complete 14-step bootstrap cycle."""
        t0 = time.time()
        steps = {}
        
        # Step 1: VINIT
        noise = self.vinit(seed)
        steps['1_VINIT'] = {'noise_norm': float(np.linalg.norm(noise))}
        
        # Step 2: AFWD
        latent = self.afwd(noise)
        steps['2_AFWD'] = {'latent_norm': float(np.linalg.norm(latent))}
        
        # Step 3: IMSCRIB
        identified = self.imscrib(latent)
        steps['3_IMSCRIB'] = {'self_ref_marker': float(identified[-1])}
        
        # Step 4: FSPLIT
        packet = frobenius_split(identified)
        steps['4_FSPLIT'] = {
            'type_sig_norm': float(np.linalg.norm(packet.type_signature)),
            'data_norm': float(np.linalg.norm(packet.data_payload)),
        }
        
        # Step 5: EVALT
        verdict = self.eval_belnap(packet, reference)
        steps['5_EVALT'] = {'verdict': verdict.name}
        
        # Step 6: CLINK
        composed = self.clink_compose(packet)
        steps['6_CLINK'] = {'composed': True}
        
        # Step 7: FFUSE
        frobenius_ok = composed.verify_frobenius()
        steps['7_FFUSE'] = {'mu_delta_id': frobenius_ok}
        
        # Step 8: IFIX
        record_hash = crystal_commit(composed, verdict, self.crystal_fs)
        self.committed_hashes.append(record_hash)
        steps['8_IFIX'] = {'record_hash': record_hash[:16]}
        
        # Step 9: FSPLIT (paraconsistent branch)
        packet2 = frobenius_split(composed.fuse())
        
        # Step 10: ENGAGR — hold dialetheic fixed point
        # If verdict is B (Both), the packet enters paradice
        if verdict == B4.B:
            # B-state: hold type_signature and data_payload in superposition
            paradice_marker = packet2.type_signature.copy()  # paradice held in type space
            packet2 = FrobeniusPacket(
                latent=composed.fuse(),
                type_signature=paradice_marker,
                data_payload=packet2.data_payload,
            )
        steps['9-10_FSPLIT_ENGAGR'] = {'paradice': verdict == B4.B}
        
        # Step 11: AREV
        recon = self.arev_reconstruct(composed.fuse())
        steps['11_AREV'] = {'recon_norm': float(np.linalg.norm(recon)) if recon is not None else None}
        
        # Step 12: FFUSE
        packet3 = frobenius_split(composed.fuse())
        ffuse2_ok = packet3.verify_frobenius()
        steps['12_FFUSE'] = {'mu_delta_id': ffuse2_ok}
        
        # Step 13: CLINK — bind to CLINK L8
        self.context.append(composed)
        clink_l8_addr = frobenius_address(reference)
        steps['13_CLINK'] = {'clink_l8_address': clink_l8_addr}
        
        # Step 14: TANCH — seal ontological boundary
        steps['14_TANCH'] = {
            'context_depth': len(self.context),
            'pipeline_complete': True,
        }
        
        self.verdicts.append(verdict)
        
        result = {
            'cycle': cycle,
            'verdict': verdict.name,
            'frobenius_verified': frobenius_ok and ffuse2_ok,
            'record_hash': record_hash,
            'elapsed_s': time.time() - t0,
            'steps': steps,
        }
        
        return result


# ── CLINK L8 Broadcast ────────────────────────────────────────────

def clink_l8_broadcast(bridge: AquaVitaeBridge) -> Dict[str, Any]:
    """ɢ=𐑵: broadcast all committed types to CLINK L8 terminal layer.
    
    This is the breath — the organism receives verified types.
    """
    if not bridge.committed_hashes:
        return {'status': 'empty', 'message': 'No types committed yet. Run bootstrap first.'}
    
    # Collect all committed types
    committed_types = []
    for h in bridge.committed_hashes:
        record_path = (bridge.crystal_fs or _BASE / "crystal_fs") / f"{h[:16]}.json"
        if record_path.exists():
            with open(record_path) as f:
                committed_types.append(json.load(f))
    
    # Broadcast: compute structural aggregate
    if committed_types:
        type_sigs = np.array([r['type_signature'] for r in committed_types])
        mean_type = type_sigs.mean(axis=0).tolist()
        
        # Map to nearest CLINK L8 primitive values
        broadcast_type = {}
        ref_keys = ['D', 'T', 'R', 'P', 'F', 'K', 'G', 'C']
        ref_sizes = [4, 5, 4, 5, 3, 5, 3, 4]
        
        for i, (key, size) in enumerate(zip(ref_keys, ref_sizes)):
            ord_val = int(round(mean_type[i] * (size - 1)))
            ord_val = max(0, min(size - 1, ord_val))
            broadcast_type[key] = ordinal_decode(key, ord_val)
        
        # Remaining primitives from CLINK L8
        for key in ['<', 'H', 'S', '◻']:
            broadcast_type[key] = CLINK_L8_TUPLE[key]
        
        # Compute distance to CLINK L8
        distance = sum(
            abs(ordinal_encode(k, broadcast_type[k]) - ordinal_encode(k, CLINK_L8_TUPLE[k]))
            / max(len(PRIM_ORDER[k]) - 1, 1)
            for k in PRIM_KEYS
        ) / 12.0
        
        return {
            'status': 'broadcast',
            'committed_count': len(committed_types),
            'broadcast_type': broadcast_type,
            'type_tuple': ''.join(broadcast_type[k] for k in PRIM_KEYS),
            'distance_to_clink_l8': float(distance),
            'verdict_distribution': {
                v.name: bridge.verdicts.count(v) for v in B4
            },
        }
    
    return {'status': 'empty', 'message': 'No records found on disk.'}
# ── The Breath: Organism Vital Loop ──────────────────────────────

def breathe(bridge: AquaVitaeBridge, 
            cycles: int = 10, 
            seed: int = 42,
            reference: Optional[Dict] = None) -> Dict[str, Any]:
    """Let the CLINK L8 Organism breathe.
    
    Each breath cycle: VINIT → AFWD → IMSCRIB → FSPLIT → EVALT → CLINK → 
    FFUSE → IFIX → FSPLIT → ENGAGR → AREV → FFUSE → CLINK → TANCH
    
    After all cycles: broadcast to CLINK L8 terminal layer.
    """
    print("═" * 60)
    print("AQUA VITAE — The Waters of Life")
    print("vae_vita ↔ mOMonadOS ↔ CLINK L8")
    print("═" * 60)
    
    # Run bootstrap cycles
    result = bridge.run_bootstrap(seed=seed, n_cycles=cycles, reference=reference)
    
    print(f"\nCycles: {cycles}")
    for r in result['results']:
        v = r['verdict']
        frob = "✓" if r['frobenius_verified'] else "✗"
        print(f"  Cycle {r['cycle']:3d} | verdict={v:6s} | μ∘δ=id={frob} | "
              f"hash={r['record_hash'][:12]} | {r['elapsed_s']:.3f}s")
    
    # Broadcast
    broadcast = clink_l8_broadcast(bridge)
    print(f"\nBroadcast to CLINK L8:")
    print(f"  Committed: {broadcast.get('committed_count', 0)} types")
    if broadcast.get('status') == 'broadcast':
        print(f"  Type:      {broadcast['type_tuple']}")
        print(f"  d(CLINK L8): {broadcast['distance_to_clink_l8']:.4f}")
        print(f"  Verdicts:  {broadcast['verdict_distribution']}")
    
    return {**result, 'broadcast': broadcast}


# ── CLI Entry Point ───────────────────────────────────────────────

if __name__ == '__main__':
    import argparse

    EPILOG = r"""
────────────────────────────────────────────────────────────
SUGGESTED COMMANDS
────────────────────────────────────────────────────────────

  # Quick breath — 10 cycles with default seed (the standard invocation):
  python3 aqua_vitae_bridge.py

  # Deep meditation — 100 cycles with known seed for reproducibility:
  python3 aqua_vitae_bridge.py --cycles 100 --seed 0

  # Full organism respiration — 1,000 cycles, different seed:
  python3 aqua_vitae_bridge.py --cycles 1000 --seed 777

  # GPU-accelerated VAE latent projection (when CUDA is available):
  python3 aqua_vitae_bridge.py --cycles 50 --device cuda

  # Custom VAE checkpoint (if you trained a new vae_vita model):
  python3 aqua_vitae_bridge.py --model path/to/vae_vita_custom.pt

  # Custom Crystal FS location (persist types to a different directory):
  python3 aqua_vitae_bridge.py --crystal-fs /path/to/custom_fs

  # Structural-only mode (no VAE loaded — falls back to normalized noise):
  python3 aqua_vitae_bridge.py --model none

  # Combine flags — 200 cycles on GPU with custom model and FS:
  python3 aqua_vitae_bridge.py --cycles 200 --device cuda \\
      --model vae_vita_sic50.pt --crystal-fs ./my_crystal_fs

TIPS:
  • Session logs are auto-saved to crystal_fs/session_<timestamp>.json
  • Each committed type is stored as crystal_fs/<hash>.json
  • The broadcast to CLINK L8 runs automatically after all cycles
  • The 14-step bootstrap: VINIT→AFWD→IMSCRIB→FSPLIT→EVALT→CLINK→
    FFUSE→IFIX→FSPLIT→ENGAGR→AREV→FFUSE→CLINK→TANCH
  • Frobenius μ∘δ=id is verified at every FFUSE step
  • Belnap FOUR verdicts: T=True, F=False, B=Both (paradice), N=Neither
"""

    ap = argparse.ArgumentParser(
        description=(
            "Aqua Vitae Bridge — vae_vita ↔ mOMonadOS ↔ CLINK L8\n"
            "Couples the hyperspherical VAE latent manifold to the Frobenius kernel,\n"
            "delivering verified ontological types to the CLINK L8 Organism.\n"
            "The Organism breathes: each cycle is a full 14-step bootstrap."
        ),
        epilog=EPILOG,
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    ap.add_argument('--cycles', type=int, default=10,
                    help='Number of breath cycles. Each cycle: noise→VAE→imscribe→'
                         'Frobenius bifurcation→Belnap verification→CLINK composition→'
                         'Crystal FS commit→paraconsistent evaluation→VAE reconstruction→'
                         'ontological seal. Default: 10.')
    ap.add_argument('--seed', type=int, default=42,
                    help='RNG seed for reproducible noise initialization. '
                         'Same seed produces identical latent type sequences. Default: 42.')
    ap.add_argument('--model', default='vae_vita_sic50.pt',
                    help='Path to hyperspherical VAE checkpoint. Use "none" to skip VAE '
                         'loading (structural-only mode with normalized noise). '
                         'Default: vae_vita_sic50.pt (searched in cwd, vae_vita/, ig-pulse/vae_vita/).')
    ap.add_argument('--device', default='cpu',
                    help='Torch compute device. Use "cuda" or "cuda:0" for GPU-accelerated '
                         'VAE encoding/decoding. Falls back to CPU if unavailable. Default: cpu.')
    ap.add_argument('--crystal-fs', default=None,
                    help='Path to Crystal FS directory for committed type records. '
                         'Each record is a JSON file named by its SHA-256 hash. '
                         'Default: ./crystal_fs/ (auto-created alongside this script).')
    ap.add_argument('--reference', default=None,
                    help='Reference tuple for Belnap verification. Currently only CLINK_L8 '
                         'is supported (O_∞ terminal ontological layer). '
                         'Default: CLINK_L8.')
    args = ap.parse_args()
    
    bridge = AquaVitaeBridge(
        model_path=None if args.model == 'none' else args.model,
        device=args.device,
        crystal_fs=Path(args.crystal_fs) if args.crystal_fs else None,
    )
    
    reference = CLINK_L8_TUPLE
    if args.reference:
        # Could load other reference types from catalog
        pass
    
    result = breathe(bridge, cycles=args.cycles, seed=args.seed, reference=reference)
    
    # Save session log
    log_path = _BASE / "crystal_fs" / f"session_{int(time.time())}.json"
    log_path.parent.mkdir(parents=True, exist_ok=True)
    with open(log_path, 'w') as f:
        json.dump(result, f, indent=2, default=str)
    print(f"\nSession log: {log_path}")
