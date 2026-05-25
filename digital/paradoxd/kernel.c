/*
 * paradoxd v0.11 — Bare-metal kernel with embedded tier-ladder boot init
 * Boots O_0 → O_1 → O_2 → O_inf with Frobenius existence proof μ∘δ=id
 *
 * Structural type: ⟨Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_S; Ω_z⟩
 * Crystal address:  14745600
 * Ouroboricity:      O_inf
 *
 * Output goes to serial (COM1 @ 0x3F8) for QEMU -nographic.
 */
#include <stdint.h>

/* ── Serial output (COM1) ──────────────────────────────────────────── */
#define COM1 0x3F8

static inline int serial_tx_empty(void) {
    return *(volatile uint8_t *)(COM1 + 5) & 0x20;
}

static void serial_putc(char c) {
    while (!serial_tx_empty()) {}
    *(volatile uint8_t *)COM1 = c;
    if (c == '\n') serial_putc('\r');
}

static void serial_print(const char *s) {
    for (; *s; s++) serial_putc(*s);
}

/* ── Crystal encoding ──────────────────────────────────────────────── */
static const int PRIM_CARD[12] = {4,5,4,5,3,5,3,4,5,4,3,4};
static const char *PRIM_NAMES[12] = {
    "Ð","Þ","Ř","Φ","ƒ","Ç","Γ","ɢ","⊙","Ħ","Σ","Ω"
};

/* O_inf tuple: Ð_ω=3, Þ_O=4, Ř_==3, Φ_}=4, ƒ_ż=2, Ç_@=2,
   Γ_ʔ=2, ɢ_ˌ=2, ⊙_ÿ=1, Ħ_A=2, Σ_S=0, Ω_z=2 */
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
    /* Ð */ {";","ß","C","ω"},
    /* Þ */ {"6","K","ò","¨","O"},
    /* Ř */ {"¯","ý","Ť","="},
    /* Φ */ {"ɐ","υ","F","˙","}"},
    /* ƒ */ {"ì","ð","ż"},
    /* Ç */ {"-","W","@","Ù","λ"},
    /* Γ */ {"β","γ","ʔ"},
    /* ɢ */ {"^","˝","ˌ","Ş"},
    /* ⊙ */ {"ž","ÿ","Æ","3","Ţ"},
    /* Ħ */ {"Ñ","£","A","!"},
    /* Σ */ {"S","ő","ï"},
    /* Ω */ {"Å","2","z","5"},
};

static void format_type(const int vals[12], char *buf) {
    char *p = buf;
    *p++ = '<';
    for (int i = 0; i < 12; i++) {
        if (i > 0) { *p++ = ';'; *p++ = ' '; }
        const char *name = PRIM_NAMES[i];
        while (*name) *p++ = *name++;
        *p++ = '_';
        const char *glyph = GLYPH_STR[i][vals[i]];
        while (*glyph) *p++ = *glyph++;
    }
    *p++ = '>';
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

/* ── String utilities ──────────────────────────────────────────────── */
static int str_eq(const char *a, const char *b) {
    while (*a && *b && *a == *b) { a++; b++; }
    return *a == *b;
}

/* ── Tier-ladder service types ──────────────────────────────────────── */
typedef struct {
    const char *name;
    int tier;
    int vals[12];
} ServiceDef;

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
    }
}

/* ═══════════════════════════════════════════════════════════════════════
 * KERNEL ENTRY — paradoxd tier-ladder boot
 * ═══════════════════════════════════════════════════════════════════════ */
void _start(void) {
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

    /* ── Halt — PID 1 is running ───────────────────────────────────── */
    serial_print("\nPID 1 running. System halted (paraconsistent wait).\n");
    while (1) { __asm__ volatile("hlt"); }
}
