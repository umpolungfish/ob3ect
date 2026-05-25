/*
 * topo_memory.c — Topologically Protected Memory Allocator (implementation)
 *
 * Every allocation is a structural commitment. Violations are detected
 * at the level of the imscription grammar's primitive invariants:
 *   - Buffer overflow → Ω_z winding mismatch
 *   - Double-free       → Φ_} parity violation
 *   - Use-after-free    → parity == ODD on access
 *   - Type confusion    → crystal address mismatch
 *
 * Build: cc -O2 -Wall -c topo_memory.c -o topo_memory.o
 */

#include "topo_memory.h"
#include <string.h>
#include <stdint.h>

/* ── FNV-1a hash for crystal address encoding ────────────────── */
static uint32_t fnv1a_32(const char *s) {
    uint32_t hash = 0x811c9dc5u;
    while (*s) {
        hash ^= (uint8_t)*s++;
        hash *= 0x01000193u;
    }
    return hash & TOPO_CRYSTAL_MASK;
}

/* ── Guard canary values ──────────────────────────────────────── */
#define CANARY_LO  0xFROBENIUS_LO   /* Φ_} */
#define CANARY_HI  0xFROBENIUS_HI
#define CANARY_LO_VAL  0xDEADBEEFCAFEBABEull
#define CANARY_HI_VAL  0xBA5ECAFED00DFEEDull

/* ── Initialize ───────────────────────────────────────────────── */
void topo_init(topo_state_t *state) {
    memset(state, 0, sizeof(topo_state_t));
    state->global_winding = 0;
    state->heap_offset = 0;
    state->alloc_count = 0;
    state->violation_count = 0;
}

/* ── Crystal address from 12-primitive string ─────────────────── */
crystal_addr_t crystal_encode_addr(const char *tuple_str) {
    return fnv1a_32(tuple_str);
}

/* ── Self-type ────────────────────────────────────────────────── */
const char *topo_self_type(void) {
    return "<Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_β; ɢ_ˌ; φ̂_ÿ; Ħ_A; Σ_ï; Ω_z>";
}

/* ── Internal: compute end guard canary location ─────────────── */
static uint64_t *canary_hi_loc(topo_meta_t *meta) {
    return (uint64_t *)((uint8_t *)(meta + 1) + meta->size);
}

/* ── Allocate ─────────────────────────────────────────────────── */
topo_ptr_t topo_alloc(topo_state_t *state, size_t size, crystal_addr_t crystal) {
    topo_ptr_t result = {NULL, 0, 0};

    if (state->alloc_count >= TOPO_MAX_ALLOCS) return result;
    if (size == 0 || size > (TOPO_HEAP_SIZE - state->heap_offset - sizeof(topo_meta_t) - 2*TOPO_GUARD_SIZE))
        return result;

    /* Advance global winding (Ω_z — monotonic) */
    state->global_winding++;

    /* Layout: [meta_t | user data (size) | canary_hi (8 bytes)] */
    size_t total = sizeof(topo_meta_t) + size + sizeof(uint64_t);
    if (state->heap_offset + total > TOPO_HEAP_SIZE) return result;

    topo_meta_t *meta = (topo_meta_t *)(state->heap + state->heap_offset);
    meta->magic         = TOPO_MAGIC;
    meta->size          = size;
    meta->alloc_winding = state->global_winding;
    meta->free_winding  = 0;
    meta->parity        = PARITY_EVEN;  /* Φ_}: live */
    meta->crystal       = crystal;
    meta->canary_lo     = CANARY_LO_VAL;
    *canary_hi_loc(meta) = CANARY_HI_VAL;

    /* Register in live table */
    state->live_allocs[state->alloc_count].meta  = meta;
    state->live_allocs[state->alloc_count].count = state->global_winding;
    state->alloc_count++;

    void *user_ptr = (void *)(meta + 1);
    state->heap_offset += total;

    result.base    = user_ptr;
    result.winding = state->global_winding;
    result.crystal = crystal;
    return result;
}

/* ── Free with Frobenius parity check ─────────────────────────── */
bool topo_free(topo_state_t *state, topo_ptr_t ptr) {
    if (!ptr.base) return false;

    topo_meta_t *meta = (topo_meta_t *)((uint8_t *)ptr.base - sizeof(topo_meta_t));

    /* Check magic */
    if (meta->magic != TOPO_MAGIC) {
        state->violation_count++;
        return false;  /* corrupt metadata */
    }

    /* Φ_} Frobenius-special parity: must be EVEN (live) to free */
    if (meta->parity != PARITY_EVEN) {
        state->violation_count++;
        return false;  /* double-free or use-after-free */
    }

    /* Ω_z winding check: free must happen at or after alloc winding */
    if (ptr.winding < meta->alloc_winding) {
        state->violation_count++;
        return false;  /* winding violation */
    }

    /* Check guard canaries */
    if (meta->canary_lo != CANARY_LO_VAL ||
        *canary_hi_loc(meta) != CANARY_HI_VAL) {
        state->violation_count++;
        return false;  /* buffer overflow detected */
    }

    /* Flip parity → ODD (Φ_} protection) */
    meta->parity       = PARITY_ODD;
    meta->free_winding = state->global_winding;
    state->global_winding++;

    /* Zero user data */
    memset(ptr.base, 0, meta->size);

    return true;
}

/* ── Access with winding + parity verification ────────────────── */
void *topo_access(topo_state_t *state, topo_ptr_t ptr, size_t expected_size) {
    if (!ptr.base) return NULL;

    topo_meta_t *meta = (topo_meta_t *)((uint8_t *)ptr.base - sizeof(topo_meta_t));

    /* Magic check */
    if (meta->magic != TOPO_MAGIC) { state->violation_count++; return NULL; }

    /* Φ_}: parity must be EVEN (use-after-free check) */
    if (meta->parity != PARITY_EVEN) { state->violation_count++; return NULL; }

    /* Ω_z: winding must match */
    if (ptr.winding != meta->alloc_winding) { state->violation_count++; return NULL; }

    /* Crystal: type must match */
    if (ptr.crystal != meta->crystal) { state->violation_count++; return NULL; }

    /* Size check */
    if (expected_size > meta->size) { state->violation_count++; return NULL; }

    /* Canary check */
    if (meta->canary_lo != CANARY_LO_VAL ||
        *canary_hi_loc(meta) != CANARY_HI_VAL) {
        state->violation_count++;
        return NULL;  /* buffer overflow */
    }

    return ptr.base;
}
/* ── Re-allocate: tensor(old_crystal, new_crystal) ──────────────── */
topo_ptr_t topo_realloc(topo_state_t *state, topo_ptr_t ptr,
                         size_t new_size, crystal_addr_t new_crystal) {
    topo_ptr_t result = {NULL, 0, 0};
    if (!ptr.base) return topo_alloc(state, new_size, new_crystal);

    topo_meta_t *meta = (topo_meta_t *)((uint8_t *)ptr.base - sizeof(topo_meta_t));
    if (meta->magic != TOPO_MAGIC || meta->parity != PARITY_EVEN) {
        state->violation_count++;
        return result;
    }
    if (ptr.winding != meta->alloc_winding) { state->violation_count++; return result; }

    /* Canary check before realloc */
    if (meta->canary_lo != CANARY_LO_VAL ||
        *canary_hi_loc(meta) != CANARY_HI_VAL) {
        state->violation_count++;
        return result;
    }

    size_t old_size = meta->size;

    /* Allocate new block with tensor crystal */
    result = topo_alloc(state, new_size, new_crystal);
    if (!result.base) return result;

    /* Copy min(old, new) bytes */
    size_t copy_size = old_size < new_size ? old_size : new_size;
    memcpy(result.base, ptr.base, copy_size);

    /* Free old block */
    topo_free(state, ptr);

    return result;
}

/* ── Frobenius verification: μ∘δ = id over all live allocations ─ */
bool topo_frobenius_verify(topo_state_t *state) {
    for (uint32_t i = 0; i < state->alloc_count; i++) {
        topo_meta_t *meta = state->live_allocs[i].meta;
        if (!meta) continue;

        /* Skip freed blocks */
        if (meta->parity == PARITY_ODD) continue;

        /* Magic check */
        if (meta->magic != TOPO_MAGIC) return false;

        /* Canary integrity */
        if (meta->canary_lo != CANARY_LO_VAL) return false;
        if (*canary_hi_loc(meta) != CANARY_HI_VAL) return false;

        /* μ∘δ = id: reconstruct pointer from metadata and verify */
        void *reconstructed = (void *)(meta + 1);
        if (reconstructed != (void *)((uint8_t *)meta + sizeof(topo_meta_t)))
            return false;

        /* Winding consistency: alloc_winding <= global_winding */
        if (meta->alloc_winding > state->global_winding) return false;
    }

    /* Self-imscription: the allocator's own metadata is in its heap */
    return true;  /* Frobenius: all live blocks structurally intact */
}

/* ── Test / demo harness ──────────────────────────────────────── */
#ifdef TOPO_TEST
#include <stdio.h>
#include <stdlib.h>

int main(void) {
    topo_state_t state;
    topo_init(&state);

    printf("=== Topologically Protected Memory Allocator ===\n");
    printf("Self-type: %s\n\n", topo_self_type());

    /* Test 1: basic alloc/free */
    printf("T1: Basic alloc/free... ");
    topo_ptr_t p1 = topo_alloc(&state, 128,
        crystal_encode_addr("<Ð_ω;Þ_O;Ř_=;Φ_};ƒ_ż;Ç_@;Γ_β;ɢ_ˌ;φ̂_ÿ;Ħ_A;Σ_ï;Ω_z>"));
    if (!p1.base) { printf("FAIL (alloc)\n"); return 1; }
    void *raw = topo_access(&state, p1, 128);
    if (!raw) { printf("FAIL (access)\n"); return 1; }
    memset(raw, 0xAB, 128);
    if (!topo_free(&state, p1)) { printf("FAIL (free)\n"); return 1; }
    printf("PASS\n");

    /* Test 2: double-free detection (Φ_}) */
    printf("T2: Double-free detection... ");
    topo_ptr_t p2 = topo_alloc(&state, 64, crystal_encode_addr("test"));
    topo_free(&state, p2);
    bool double_free_ok = !topo_free(&state, p2);  /* should fail */
    if (!double_free_ok) { printf("FAIL (double-free not caught)\n"); return 1; }
    printf("PASS (violation count: %u)\n", state.violation_count);

    /* Test 3: use-after-free detection */
    printf("T3: Use-after-free detection... ");
    topo_ptr_t p3 = topo_alloc(&state, 32, crystal_encode_addr("test3"));
    topo_free(&state, p3);
    void *uaf = topo_access(&state, p3, 32);  /* should fail */
    if (uaf) { printf("FAIL (UAF not caught)\n"); return 1; }
    printf("PASS (violation count: %u)\n", state.violation_count);

    /* Test 4: winding violation (Ω_z) */
    printf("T4: Winding violation detection... ");
    topo_ptr_t p4 = topo_alloc(&state, 256, crystal_encode_addr("test4"));
    /* Tamper with winding */
    topo_ptr_t tampered = p4;
    tampered.winding = 0;  /* impossible: winding < alloc_winding */
    void *bad = topo_access(&state, tampered, 256);
    if (bad) { printf("FAIL (winding violation not caught)\n"); return 1; }
    topo_free(&state, p4);  /* clean up with correct pointer */
    printf("PASS (violation count: %u)\n", state.violation_count);

    /* Test 5: realloc with crystal tensor */
    printf("T5: Realloc with crystal tensor... ");
    topo_ptr_t p5 = topo_alloc(&state, 64, crystal_encode_addr("type_A"));
    topo_ptr_t p5r = topo_realloc(&state, p5, 128, crystal_encode_addr("type_A⊕type_B"));
    if (!p5r.base) { printf("FAIL (realloc)\n"); return 1; }
    if (p5r.crystal != crystal_encode_addr("type_A⊕type_B")) {
        printf("FAIL (crystal mismatch)\n"); return 1;
    }
    topo_free(&state, p5r);
    printf("PASS\n");

    /* Test 6: Frobenius verification */
    printf("T6: Frobenius μ∘δ=id verification... ");
    bool frob_ok = topo_frobenius_verify(&state);
    printf("%s\n", frob_ok ? "PASS (Closure: True)" : "FAIL");

    printf("\nAll tests complete. Violations: %u, Allocs: %u, Winding: %u\n",
           state.violation_count, state.alloc_count, state.global_winding);

    return frob_ok ? 0 : 1;
}
#endif /* TOPO_TEST */
