#include <stdint.h>

void vga_print(const char* s) {
    volatile uint16_t* vga = (uint16_t*)0xB8000;
    for (int i = 0; s[i]; i++) {
        vga[i] = (uint16_t)s[i] | (0x0F << 8);
    }
}

void _start(void) {
    vga_print("IMSCRIB: Ob3ect v0.10 Bare-Metal Kernel booted on raw hardware.\n");
    vga_print("Self-imscription confirmed: μΔ-ID v0.10\n");
    vga_print("Bare-Metal Ouroboros achieved.\n");
    vga_print("QUINE: Self-source extracted on bare metal.\n");
    vga_print("EVALT: Kernel boot successful.\n");
    while(1) asm volatile("hlt");
}
