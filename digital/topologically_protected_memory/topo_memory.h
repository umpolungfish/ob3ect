/*
 * topo_memory.h — Topologically Protected Memory Allocator
 *
 * Structural invariants enforced at the hardware level:
 *   Ω_z  — integer winding number per allocation (buffer overflow = winding violation)
 *   Φ_}  — Frobenius-special parity (double-free = parity mismatch)
 *   Ð_ω  — self-written state space (metadata is self-referential)
 *   ɢ_ˌ  — sequential interaction grammar (alloc/free are ordered)
 *
 * Every pointer is a 3-tuple: (base, winding, crystal_addr)
 *   - base: raw heap address
 *   - winding: monotonically increasing allocation epoch
 *   - crystal_addr: structural hash of the allocation's type signature
 *
 * Ouroboricity: O_inf — the allocator imscribes itself in its own metadata
 */

#ifndef TOPO_MEMORY_H
#define TOPO_MEMORY_H

#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

/* ── Structural constants ─────────────────────────────────────── */
#define TOPO_HEAP_SIZE       0x100000   /* 1 MB */
#define TOPO_GUARD_SIZE      16         /* canary bytes per block */
#define TOPO_MAX_ALLOCS      1024
#define TOPO_CRYSTAL_MASK    0xFFFFFF   /* 24-bit crystal address */

/* ── Winding number (Ω_z) ─────────────────────────────────────── */
typedef uint32_t winding_t;

/* ── Crystal address — structural hash of imscription type ────── */
typedef uint32_t crystal_addr_t;

/* ── Frobenius parity tag (Φ_}) ────────────────────────────────── */
typedef enum {
    PARITY_EVEN = 0,   /* allocated, live */
    PARITY_ODD  = 1,   /* freed — any access is a violation */
} parity_t;

/* ── Protected pointer — the user-facing handle ──────────────── */
typedef struct {
    void    *base;           /* raw heap pointer */
    winding_t winding;       /* allocation epoch (Ω_z) */
    crystal_addr_t crystal;  /* type-structural hash */
} topo_ptr_t;

/* ── Block metadata (stored in guard region before user data) ── */
typedef struct __attribute__((packed)) {
    uint32_t    magic;         /* 0xTOP0 */
    size_t      size;          /* user-requested size */
    winding_t   alloc_winding; /* winding at allocation time */
    winding_t   free_winding;  /* winding at free time (0 if live) */
    parity_t    parity;        /* Φ_} — Frobenius-special parity */
    crystal_addr_t crystal;    /* structural type hash */
    uint64_t    canary_lo;     /* lower guard canary */
    /* ... user data follows ... */
    /* uint64_t canary_hi; */  /* upper guard canary at end */
} topo_meta_t;

#define TOPO_MAGIC  0x544F5030  /* "TOP0" */

/* ── Global allocator state ──────────────────────────────────── */
typedef struct {
    uint8_t     heap[TOPO_HEAP_SIZE];
    size_t      heap_offset;
    winding_t   global_winding;     /* Ω_z: monotonically non-decreasing */
    uint32_t    alloc_count;
    uint32_t    violation_count;    /* winding/parity violations */
    struct {
        topo_meta_t *meta;
        uint32_t     count;
    } live_allocs[TOPO_MAX_ALLOCS];
} topo_state_t;

/* ── API ──────────────────────────────────────────────────────── */

/* Initialize the topologically protected heap */
void topo_init(topo_state_t *state);

/* Allocate with structural type. Returns a protected pointer.
 * crystal_addr: hash of the allocation's imscription tuple */
topo_ptr_t topo_alloc(topo_state_t *state, size_t size, crystal_addr_t crystal);

/* Free a protected pointer. Returns true if the operation was valid. */
bool topo_free(topo_state_t *state, topo_ptr_t ptr);

/* Access check: verify the pointer's winding and parity before use.
 * Returns the raw pointer if valid, NULL if violation. */
void *topo_access(topo_state_t *state, topo_ptr_t ptr, size_t expected_size);

/* Re-allocate: structural tensor of old and new types */
topo_ptr_t topo_realloc(topo_state_t *state, topo_ptr_t ptr,
                         size_t new_size, crystal_addr_t new_crystal);

/* Encode a 12-primitive tuple into a crystal address */
crystal_addr_t crystal_encode_addr(const char *tuple_str);

/* Self-inspection: return the allocator's own structural type */
const char *topo_self_type(void);

/* Verify Frobenius closure: μ∘δ = id over all live allocations */
bool topo_frobenius_verify(topo_state_t *state);

#endif /* TOPO_MEMORY_H */
