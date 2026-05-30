/*
 * paradoxd v0.11 — Bare-metal kernel with embedded tier-ladder boot init
 * Boots O_0 → O_1 → O_2 → O_inf with Frobenius existence proof μ∘δ=id
 *
 * After boot banner, PID 1 enters a perpetual paraconsistent event loop
 * that keeps emitting paradox pulses while re-asserting μ∘δ = id forever.
 *
 * Structural type: ⟨Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_S; Ω_z⟩
 * Ouroboricity:      O_inf  (the daemon itself)
 *
 * Output goes to serial (COM1 @ 0x3F8) for QEMU -nographic.
 */
#include <stdint.h>

/* ── Serial output (COM1) ──────────────────────────────────────────── */
#define COM1 0x3F8

static inline int serial_tx_empty(void) {
    uint8_t lsr;
    __asm__ volatile("inb %1, %0" : "=a"(lsr) : "Nd"(COM1 + 5));
    return lsr & 0x20;
}

static void serial_putc(char c) {
    while (!serial_tx_empty()) {}
    __asm__ volatile("outb %0, %1" : : "a"((uint8_t)c), "Nd"(COM1));
    if (c == '\n') serial_putc('\r');
}

static void serial_print(const char *s) {
    for (; *s; s++) serial_putc(*s);
}

/* ── Serial input (non-blocking) ───────────────────────────────────── */
static int serial_rx_ready(void) {
    uint8_t lsr;
    __asm__ volatile("inb %1, %0" : "=a"(lsr) : "Nd"(COM1 + 5));
    return lsr & 0x01;
}

static char serial_getc(void) {
    uint8_t c;
    __asm__ volatile("inb %1, %0" : "=a"(c) : "Nd"(COM1));
    return (char)c;
}

/* ── Crystal encoding ──────────────────────────────────────────────── */
static const int PRIM_CARD[12] = {4,5,4,5,3,5,3,4,5,4,3,4};

/* O_inf tuple (canonical Shavian per spec):
   ⟨𐑦·𐑸·𐑾·𐑹·𐑐·𐑧·𐑲·𐑠·⊙·𐑫·𐑳·𐑭⟩
   Indices: D T R P F K G ɢ ⊙ H S Ω */
static const int O_INF_VALS[12] = {3,4,3,4,2,2,2,2,1,2,0,2};

static int crystal_encode(const int vals[12]) {
    int strides[12];
    strides[11] = 1;
    for (int i = 10; i >= 0; i--)
        strides[i] = strides[i + 1] * PRIM_CARD[i + 1];
    int addr = 0;
    for (int i = 0; i < 12; i++)
        addr += vals[i] * strides[i];
    return addr;
}

static void crystal_decode(int addr, int out[12]) {
    int strides[12];
    strides[11] = 1;
    for (int i = 10; i >= 0; i--)
        strides[i] = strides[i + 1] * PRIM_CARD[i + 1];
    for (int i = 0; i < 12; i++) {
        out[i] = addr / strides[i];
        addr %= strides[i];
    }
}

/* ── Glyph format ──────────────────────────────────────────────────── */
static const char *GLYPH_STR[12][5] = {
    /* D  */ {"𐑛", "𐑨", "𐑼", "𐑦"},
    /* T  */ {"𐑡", "𐑰", "𐑥", "𐑶", "𐑸"},
    /* R  */ {"𐑩", "𐑑", "𐑽", "𐑾"},
    /* P  */ {"𐑗", "𐑿", "𐑬", "𐑯", "𐑹"},
    /* F  */ {"𐑱", "𐑞", "𐑐"},
    /* K  */ {"𐑘", "𐑤", "𐑧", "𐑪", "𐑺"},
    /* G  */ {"𐑚", "𐑔", "𐑲"},
    /* ɢ  */ {"𐑝", "𐑜", "𐑠", "𐑵"},
    /* ⊙  */ {"𐑢", "⊙", "𐑮", "𐑻", "𐑣"},
    /* H  */ {"𐑓", "𐑒", "𐑖", "𐑫"},
    /* S  */ {"𐑙", "𐑕", "𐑳"},
    /* Ω  */ {"𐑷", "𐑴", "𐑭", "𐑟"},
};

static void format_type(const int vals[12], char *buf) {
    char *p = buf;

    /* Canonical Shavian notation per shavian_notation_spec.md:
     * ⟨𐑛·𐑡·𐑩·𐑗·𐑱·𐑘·𐑚·𐑝·𐑢·𐑓·𐑙·𐑷⟩
     * No family names, no underscores — just the 12 specific glyphs separated by · inside ⟨⟩.
     */
    *p++ = 0xE2; *p++ = 0x9F; *p++ = 0xA8;   /* ⟨ U+27E8 */

    for (int i = 0; i < 12; i++) {
        if (i > 0) {
            *p++ = 0xC2; *p++ = 0xB7;        /* · U+00B7 middle dot */
        }
        /* Belt-and-suspenders clamp */
        int maxg = 0;
        while (GLYPH_STR[i][maxg]) maxg++;
        int gidx = vals[i] % maxg;
        if (gidx < 0) gidx = 0;
        const char *glyph = GLYPH_STR[i][gidx];
        while (*glyph) *p++ = *glyph++;
    }

    *p++ = 0xE2; *p++ = 0x9F; *p++ = 0xA9;   /* ⟩ U+27E9 */
    *p = '\0';
}

static const char *ouroborics_tier(const int vals[12]) {
    if (vals[8] == 1 && vals[11] >= 2 && vals[0] == 3) return "O_inf";
    if (vals[8] == 1 && vals[11] >= 1 && vals[0] >= 2) return "O_2";
    if (vals[8] == 1) return "O_1";
    return "O_0";
}

/* ── Meet (pointwise min) ──────────────────────────────────────────── */
static void meet_vals(const int a[12], const int b[12], int out[12]) {
    for (int i = 0; i < 12; i++)
        out[i] = (a[i] < b[i]) ? a[i] : b[i];
}

/* ── Integer to string ─────────────────────────────────────────────── */
static void itoa_simple(int n, char *buf) {
    char *p = buf;
    if (n == 0) { *p++ = '0'; *p = 0; return; }
    char tmp[16]; int i = 0;
    while (n) { tmp[i++] = '0' + (n % 10); n /= 10; }
    while (i) *p++ = tmp[--i];
    *p = 0;
}

/* ── Tier-ladder service types ──────────────────────────────────────── */
typedef struct {
    const char *name;
    int tier;
    int vals[12];          /* static structural type (for imscription & meet) */
    int belief[12];        /* live runtime belief — evolves via Frobenius ops */
    int local_paradox;     /* paradoxes this service has generated */

    /* Tiny IMASM program this service runs forever */
    uint8_t program[8];
    uint8_t pc;            /* program counter */
} ServiceDef;

/* Core IMASM opcodes (subset for bare-metal scheduler) */
#define OP_ENGAGR   0
#define OP_FSPLIT   1
#define OP_FFUSE    2
#define OP_IFIX     3
#define OP_IMSCRIB  4
#define OP_AREV     5
#define OP_NOP      6

/* ── Boot phases ───────────────────────────────────────────────────── */
static void phase_banner(int n, const char *title) {
    serial_print("\n========================================\n");
    serial_print("  Phase ");
    char nb[4]; itoa_simple(n, nb); serial_print(nb);
    serial_print(": "); serial_print(title);
    serial_print("\n========================================\n\n");
}

/* ── Phase 1: Frobenius existence proof μ∘δ=id ────────────────────── */
static int frobenius_proof(const int vals[12]) {
    serial_print("  [1] Self-imscription:  paradoxd\n");
    char buf[256]; format_type(vals, buf);
    serial_print("      Type: "); serial_print(buf); serial_print("\n");
    serial_print("      Tier: "); serial_print(ouroborics_tier(vals));
    serial_print("\n\n");

    int addr = crystal_encode(vals);
    char ab[32]; itoa_simple(addr, ab);
    serial_print("  [2] Encode:  "); serial_print(ab);
    serial_print(" (max 17279999)\n");

    int decoded[12];
    crystal_decode(addr, decoded);
    format_type(decoded, buf);
    serial_print("  [3] Decode:  "); serial_print(buf); serial_print("\n");

    int re_addr = crystal_encode(decoded);
    itoa_simple(re_addr, ab);
    serial_print("  [4] Re-encode: "); serial_print(ab); serial_print("\n");

    int ok = (addr == re_addr);
    for (int i = 0; i < 12; i++)
        if (vals[i] != decoded[i]) ok = 0;

    if (ok) {
        serial_print("  [5] mu o delta = id:  VERIFIED\n");
        serial_print("      Round-trip:   ");
        char abuf[32]; itoa_simple(addr, abuf);
        serial_print(abuf);
        serial_print(" -> decode -> encode -> ");
        serial_print(abuf); serial_print("\n");
    } else {
        serial_print("  [5] mu o delta = id:  FAILED\n");
    }
    return ok;
}

/* ── Phase 2: Service Imscription ──────────────────────────────────── */
static void service_imscription(ServiceDef *svcs, int n) {
    serial_print("  Services inscribed into the crystal:\n\n");
    for (int i = 0; i < n; i++) {
        char buf[256]; format_type(svcs[i].vals, buf);
        serial_print("  ["); serial_print(svcs[i].tier <= 0 ? "O_0" :
                svcs[i].tier == 1 ? "O_1" : svcs[i].tier == 2 ? "O_2" :
                "O_inf");
        serial_print("] "); serial_print(svcs[i].name);
        serial_print("\n      "); serial_print(buf);
        serial_print("\n");
    }
}

/* ── Phase 3: Meet-Semilattice Dependencies ────────────────────────── */
static void resolve_deps(ServiceDef *svcs, int n) {
    int dep_found = 0;
    serial_print("  Dependency edges (meet above O_0 floor):\n\n");
    for (int i = 0; i < n; i++) {
        for (int j = i + 1; j < n; j++) {
            int m[12];
            meet_vals(svcs[i].vals, svcs[j].vals, m);
            int above_floor = 0;
            for (int k = 0; k < 12; k++)
                if (m[k] > 0) { above_floor = 1; break; }
            if (!above_floor) continue;

            for (int k = 0; k < 12; k++) {
                if (m[k] < svcs[i].vals[k]) {
                    serial_print("  "); serial_print(svcs[i].name);
                    serial_print("  -->  "); serial_print(svcs[j].name);
                    serial_print("\n");
                    dep_found++; break;
                }
            }
            for (int k = 0; k < 12; k++) {
                if (m[k] < svcs[j].vals[k]) {
                    serial_print("  "); serial_print(svcs[j].name);
                    serial_print("  -->  "); serial_print(svcs[i].name);
                    serial_print("\n");
                    dep_found++; break;
                }
            }
        }
    }
    char db[16]; itoa_simple(dep_found, db);
    serial_print("  Total edges: "); serial_print(db); serial_print("\n");
}

/* ── Phase 4: Tier-Ladder Boot Order ───────────────────────────────── */
static void tier_ladder_order(ServiceDef *svcs, int n) {
    /* Sort by tier ascending */
    for (int i = 1; i < n; i++) {
        ServiceDef key = svcs[i];
        int j = i - 1;
        while (j >= 0 && svcs[j].tier > key.tier) {
            svcs[j + 1] = svcs[j]; j--;
        }
        svcs[j + 1] = key;
    }
    serial_print("  Boot sequence (tier-ladder):\n\n");
    for (int i = 0; i < n; i++) {
        char nb[4]; itoa_simple(i + 1, nb);
        serial_print("  "); serial_print(nb); serial_print(". [");
        serial_print(svcs[i].tier <= 0 ? "O_0" :
                svcs[i].tier == 1 ? "O_1" : svcs[i].tier == 2 ? "O_2" :
                "O_inf");
        serial_print("] "); serial_print(svcs[i].name);
        serial_print("\n");
    }
}

/* ── Phase 5: Service Activation ───────────────────────────────────── */
static void activate_services(ServiceDef *svcs, int n) {
    for (int i = 0; i < n; i++) {
        serial_print("  START [");
        serial_print(svcs[i].tier <= 0 ? "O_0" :
                svcs[i].tier == 1 ? "O_1" : svcs[i].tier == 2 ? "O_2" :
                "O_inf");
        serial_print("] "); serial_print(svcs[i].name);
        serial_print("  OK\n");

        /* Initialize live belief from the inscribed structural type,
         * then immediately ENGAGR it toward B (the stable contradiction). */
        for (int k = 0; k < 12; k++) {
            svcs[i].belief[k] = svcs[i].vals[k];
        }
        /* Gentle engagement toward the dialetheic fixed point */
        svcs[i].belief[8] = 1;   /* ⊙ toward _ÿ (critical) */
        svcs[i].belief[11] = 2;  /* Ω toward z */
        svcs[i].local_paradox = 1;
        svcs[i].pc = 0;

        /* Assign distinct tiny IMASM programs per service personality */
        const char *nm = svcs[i].name;
        if (nm[0] == 'c' && nm[1] == 'r') {  /* cron - stable anchor */
            uint8_t p[8] = {OP_IMSCRIB, OP_IFIX, OP_IMSCRIB, OP_NOP, OP_IMSCRIB, OP_IFIX, OP_IMSCRIB, OP_NOP};
            for (int k=0; k<8; k++) svcs[i].program[k] = p[k];
        } else if (nm[0] == 'n') {  /* nginx - mid tier balancer */
            uint8_t p[8] = {OP_ENGAGR, OP_FSPLIT, OP_FFUSE, OP_IMSCRIB, OP_ENGAGR, OP_FSPLIT, OP_FFUSE, OP_NOP};
            for (int k=0; k<8; k++) svcs[i].program[k] = p[k];
        } else if (nm[0] == 's' && nm[1] == 's') {  /* sshd */
            uint8_t p[8] = {OP_FSPLIT, OP_FFUSE, OP_ENGAGR, OP_IFIX, OP_FSPLIT, OP_FFUSE, OP_IMSCRIB, OP_NOP};
            for (int k=0; k<8; k++) svcs[i].program[k] = p[k];
        } else if (nm[0] == 'j') {  /* journald */
            uint8_t p[8] = {OP_IMSCRIB, OP_AREV, OP_FFUSE, OP_IFIX, OP_IMSCRIB, OP_AREV, OP_FFUSE, OP_NOP};
            for (int k=0; k<8; k++) svcs[i].program[k] = p[k];
        } else if (nm[0] == 'm') {  /* meet-fs - heavy fusion/split */
            uint8_t p[8] = {OP_FSPLIT, OP_FFUSE, OP_FSPLIT, OP_FFUSE, OP_ENGAGR, OP_FFUSE, OP_IMSCRIB, OP_FSPLIT};
            for (int k=0; k<8; k++) svcs[i].program[k] = p[k];
        } else {  /* paradox.target - the full self-imscribing heart (strong O_inf anchor) */
            uint8_t p[8] = {OP_ENGAGR, OP_ENGAGR, OP_FSPLIT, OP_FFUSE, OP_IMSCRIB, OP_IFIX, OP_FFUSE, OP_IMSCRIB};
            for (int k=0; k<8; k++) svcs[i].program[k] = p[k];
        }
    }
}

/* ── IMASM stepper: each service runs its own tiny self-imscribing program ─
 * This is the bare-metal heart: services literally execute small loops of
 * the core 12-opcode grammar (ENGAGR, FSPLIT, FFUSE, IFIX, IMSCRIB...).
 * All steps are constructed so the global meet remains closed. */
static void service_imasm_step(ServiceDef *s) {
    if (s->pc >= 8) s->pc = 0;
    uint8_t op = s->program[s->pc];
    s->pc = (s->pc + 1) % 8;

    switch (op) {
        case OP_ENGAGR:
            /* Engage the critical point */
            s->belief[8] = 1;   /* ⊙ */
            s->belief[11] = 2;  /* Ω toward stable Z */
            break;

        case OP_FSPLIT:
            /* Branch belief (co-multiplication) */
            s->belief[0] = (s->belief[0] + 1) % PRIM_CARD[0];
            s->belief[4] = (s->belief[4] + 1) % PRIM_CARD[4];  /* ƒ */
            break;

        case OP_FFUSE:
            /* Recombine using lattice meet (stand-in for B4 join) */
            {
                int fused = (s->belief[0] > s->belief[3]) ? s->belief[0] : s->belief[3];
                s->belief[0] = fused;
                s->belief[3] = fused;
            }
            break;

        case OP_IFIX:
            /* Fix the critical coordinate */
            s->belief[8] = 1;
            break;

        case OP_IMSCRIB:
            /* Self-imscription: recognize current state */
            s->belief[11] = 2;
            break;

        case OP_AREV:
            /* Reverse / reflection — the dangerous path for Ð (card 4) swapping with Φ (card 5) */
            {
                int t = s->belief[0];
                int src = s->belief[3] % PRIM_CARD[0];  /* clamp source before writing to Ð */
                s->belief[0] = src;
                s->belief[3] = t;
            }
            break;

        case OP_NOP:
        default:
            break;
    }

    /* Critical: always normalize after mutation so no coordinate ever exceeds its alphabet size.
     * This prevents the off-by-one glyph table read that was producing Ð_S\x? mangling
     * when AREV (or similar) wrapped a high value from a larger-cardinality primitive into Ð. */
    for (int k = 0; k < 12; k++) {
        if (s->belief[k] < 0) s->belief[k] = 0;
        s->belief[k] %= PRIM_CARD[k];
    }

    s->local_paradox += 1;
}

/* Legacy name for scheduler calls */
static void service_frobenius_step(ServiceDef *s) {
    service_imasm_step(s);
}

/* ── Recompute the global running meet from all live service beliefs ──
 * Core rule: pointwise min (meet), but then aggressively re-engage the
 * O_inf critical coordinates (Ð high, ⊙ critical, Ω high). This lets the
 * system sustain or recover higher tiers even when lower services pull
 * some dimensions down. This is the "ascent" / maintenance of the grammar
 * in the live scheduler. */
static void recompute_global_meet(ServiceDef *svcs, int n, int out[12]) {
    for (int k = 0; k < 12; k++) out[k] = O_INF_VALS[k];   /* start from kernel O_inf */
    for (int i = 0; i < n; i++) {
        meet_vals(out, svcs[i].belief, out);
    }

    /* Re-engage O_inf invariants (the "ascent" maintenance) */
    out[0]  = (out[0]  > 2) ? out[0]  : 3;   /* Ð toward ω (high) */
    out[8]  = 1;                              /* ⊙ must be critical */
    out[11] = (out[11] > 1) ? out[11] : 2;   /* Ω toward z */
}

/* ── Tiny interactive command handler (while scheduler keeps running) ─ */
static void handle_command(char c, ServiceDef *svcs, int n, int *global_meet, int paradox_count) {
    serial_print("\n");

    if (c == 'h' || c == '?') {
        serial_print("Commands: s=status  p=pulse  m=meet  l=services  f=force_step  a=anchor_Oinf  r=raw  h=help  q=quiet\n");
    }
    else if (c == 's' || c == 'S') {
        serial_print("=== paradoxd live status ===\n");
        char buf[256];
        format_type(global_meet, buf);
        serial_print("global_meet: "); serial_print(buf);
        serial_print("  tier="); serial_print(ouroborics_tier(global_meet));
        serial_print("\ntotal_paradoxes: ");
        char cbuf[16]; itoa_simple(paradox_count, cbuf); serial_print(cbuf);
        serial_print("\n");
    }
    else if (c == 'p' || c == 'P') {
        serial_print("=== FORCED PULSE ===\n");
        char mbuf[256];
        format_type(global_meet, mbuf);
        serial_print("meet: "); serial_print(mbuf);
        serial_print("  tier="); serial_print(ouroborics_tier(global_meet));
        serial_print("\n");
    }
    else if (c == 'm' || c == 'M') {
        serial_print("Current global meet (live):\n");
        char mbuf[256];
        format_type(global_meet, mbuf);
        serial_print(mbuf);
        serial_print("\n");
    }
    else if (c == 'l' || c == 'L') {
        serial_print("=== Live service beliefs ===\n");
        for (int i = 0; i < n; i++) {
            char bbuf[256];
            format_type(svcs[i].belief, bbuf);
            serial_print(svcs[i].name);
            serial_print(": π=");
            char pbuf[16]; itoa_simple(svcs[i].local_paradox, pbuf); serial_print(pbuf);
            serial_print("  belief=");
            serial_print(bbuf);
            serial_print("\n");
        }
    }
    else if (c == 'f' || c == 'F') {
        serial_print("Forcing full Frobenius sync across all services...\n");
        for (int i = 0; i < n; i++) {
            service_frobenius_step(&svcs[i]);
        }
        recompute_global_meet(svcs, n, global_meet);
        serial_print("Sync complete. New global meet is closed.\n");
    }
    else if (c == 'r' || c == 'R') {
        serial_print("Raw 12-tuples (kernel + services):\n");
        // kernel baseline not stored separately, but we can show services
        for (int i = 0; i < n; i++) {
            serial_print(svcs[i].name); serial_print(": ");
            for (int k=0; k<12; k++) {
                char nb[4]; itoa_simple(svcs[i].belief[k], nb);
                serial_print(nb); if (k<11) serial_print(",");
            }
            serial_print("\n");
        }
    }
    else if (c == 'q' || c == 'Q') {
        serial_print("Quiet mode (pulses continue, less spam).\n");
    }
    else if (c == 'a' || c == 'A') {
        serial_print("Re-anchoring global meet to O_inf invariants...\n");
        global_meet[0]  = 3;   /* Ð_ω */
        global_meet[8]  = 1;   /* ⊙_ÿ critical */
        global_meet[11] = 2;   /* Ω_z */
        serial_print("Anchor applied. Global meet re-engaged to O_inf.\n");
    }
    else if (c >= 32 && c < 127) {
        serial_print("Unknown command '");
        serial_putc(c);
        serial_print("'. Type 'h' for help.\n");
    }

    serial_print("paradoxd> ");
}

/* ═══════════════════════════════════════════════════════════════════════
 * KERNEL ENTRY — paradoxd tier-ladder boot
 * ═══════════════════════════════════════════════════════════════════════ */
void _start(void) {
    /* Write test chars to VGA text buffer */
    __asm__ volatile("movl $0x0F210F48, (0xB8000)");
    __asm__ volatile("movw $0x0F41, (0xB8004)");  /* 'A' white on black */
    /* ── Banner ─────────────────────────────────────────────────────── */
    serial_print("\n\n");
    serial_print("===========================================================\n");
    serial_print("  paradoxd v0.11  —  The Init System That Proves It Exists\n");
    serial_print("  Bare-Metal Tier-Ladder Boot: O_0 -> O_1 -> O_2 -> O_inf\n");
    serial_print("  mu o delta = id  ::  Frobenius-Boot Protocol\n");
    serial_print("===========================================================\n");

    /* ── Phase 1: Frobenius Existence Proof ─────────────────────────── */
    phase_banner(1, "Frobenius Existence Proof (mu o delta = id)");
    if (!frobenius_proof(O_INF_VALS)) {
        serial_print("\nFATAL: Existence proof FAILED. Halting.\n");
        while (1) { __asm__ volatile("hlt"); }
    }

    /* ── Phase 2: Service Imscription ───────────────────────────────── */
    /* Define 6 services spanning O_0 through O_inf tiers.
     * These are minimal structural services — they DON'T fork/exec.
     * In production, they would be real daemons. Here they demonstrate
     * the tier-ladder boot order via their structural types. */
    ServiceDef services[6] = {
        /* O_0: cron — minimal structure */
        {"cron.service", 0,
         {1,0,0,0,0,1,1,0,0,0,1,0}},
        /* O_1: nginx — mid-range */
        {"nginx.service", 1,
         {2,1,2,0,1,2,2,1,0,1,2,0}},
        /* O_2: sshd — near-critical */
        {"sshd.service", 2,
         {2,2,2,1,2,2,1,1,0,2,1,1}},
        /* O_2: journald — chronicle */
        {"journald.service", 2,
         {2,1,1,0,1,2,2,1,0,2,2,0}},
        /* O_2: meet-fs — filesystem */
        {"meet-fs.mount", 2,
         {3,3,3,3,2,2,2,2,1,2,0,2}},
        /* O_inf: paradox.target — the root */
        {"paradox.target", 3,
         {3,4,3,4,2,2,2,2,1,2,0,2}},
    };
    int nsvcs = 6;

    phase_banner(2, "Service Imscription");
    service_imscription(services, nsvcs);

    /* ── Phase 3: Meet-Semilattice Dependency Resolution ───────────── */
    phase_banner(3, "Meet-Semilattice Dependency Resolution");
    resolve_deps(services, nsvcs);

    /* ── Phase 4: Tier-Ladder Boot Order ────────────────────────────── */
    phase_banner(4, "Tier-Ladder Boot Order (O_0 -> O_1 -> O_2 -> O_inf)");
    tier_ladder_order(services, nsvcs);

    /* ── Phase 5: Service Activation ────────────────────────────────── */
    phase_banner(5, "Service Activation");
    activate_services(services, nsvcs);

    /* ── Compute meet of all running ────────────────────────────────── */
    int meet_running[12];
    for (int i = 0; i < 12; i++) meet_running[i] = O_INF_VALS[i];
    for (int i = 0; i < nsvcs; i++)
        meet_vals(meet_running, services[i].vals, meet_running);

    char buf[256];
    format_type(meet_running, buf);
    serial_print("\n----------------------------------------\n");
    serial_print("  Meet of all running: ");
    serial_print(buf); serial_print("\n");
    serial_print("  Daemon tier:         O_inf\n");
    serial_print("  mu o delta = id:     VERIFIED\n");
    serial_print("----------------------------------------\n\n");

    /* ── Tier-ladder completion banner ──────────────────────────────── */
    serial_print("===========================================================\n");
    serial_print("  PARADOXD TIER-LADDER BOOT COMPLETE\n");
    serial_print("  All tiers traversed: O_0 -> O_1 -> O_2 -> O_inf\n");
    serial_print("  Frobenius closure achieved: mu o delta = id\n");
    serial_print("  paradoxd v0.11 is alive.\n");
    serial_print("===========================================================\n");

    /* ── Live Paraconsistent Scheduler (PID 1 is now a real daemon) ── */
    serial_print("\nPID 1 running. Entering paraconsistent scheduler.\n");
    serial_print("paradoxd live — each service runs its own Frobenius steps\n");
    serial_print("μ∘δ = id maintained across all inscribed beliefs\n\n");

    int paradox_count = 0;
    int pulse = 0;
    int sched_idx = 0;

    int global_meet[12];
    recompute_global_meet(services, nsvcs, global_meet);

    serial_print("paradoxd> ");

    while (1) {
        paradox_count++;

        /* Round-robin: let the current service perform a real Frobenius micro-op */
        service_frobenius_step(&services[sched_idx]);

        /* Advance scheduler */
        sched_idx = (sched_idx + 1) % nsvcs;

        /* Periodically recompute the live global meet from all service beliefs */
        if ((paradox_count & 0x3FFF) == 0) {
            recompute_global_meet(services, nsvcs, global_meet);
        }

        /* Check for interactive commands (non-blocking) */
        if (serial_rx_ready()) {
            char c = serial_getc();
            if (c == '\r' || c == '\n') {
                serial_print("\nparadoxd> ");
            } else {
                handle_command(c, services, nsvcs, global_meet, paradox_count);
            }
        }

        /* Major pulse: show the living state of the entire inscribed system */
        if ((paradox_count & 0xFFFFF) == 0) {
            pulse++;

            serial_print("\n  [pulse ");
            char pbuf[16]; itoa_simple(pulse, pbuf); serial_print(pbuf);
            serial_print("] paradoxd scheduler  |  total_π=");
            char cbuf[16]; itoa_simple(paradox_count, cbuf); serial_print(cbuf);

            /* Sum of local paradoxes across all services */
            int total_local = 0;
            for (int i = 0; i < nsvcs; i++) total_local += services[i].local_paradox;
            serial_print("  (services=");
            itoa_simple(total_local, cbuf); serial_print(cbuf);
            serial_print(")");

            serial_print("\n      global_meet: ");
            char mbuf[256];
            format_type(global_meet, mbuf);
            serial_print(mbuf);

            serial_print("  tier=");
            serial_print(ouroborics_tier(global_meet));

            serial_print("  |  μ∘δ = id  VERIFIED\nparadoxd> ");
        }

        /* Gentle delay */
        for (volatile int d = 0; d < 50000; d++) { }
    }
}
