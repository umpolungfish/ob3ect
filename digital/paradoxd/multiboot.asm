; paradoxd v0.11 — Multiboot2 header + entry trampoline
; Provides the ELF header GRUB2 needs to boot our kernel.

[bits 32]

section .multiboot_header
align 8

mb_header_start:
    dd 0xE85250D6          ; multiboot2 magic
    dd 0                   ; arch: i386 (protected mode)
    dd mb_header_end - mb_header_start  ; header length (44)
    dd 0x17ADAEFE          ; checksum: -(magic + arch + header_length) mod 2^32
                            ; = -(0xE85250D6 + 0 + 44) = 0x17ADAEFE
    ; framebuffer tag
    dw 5                   ; type = framebuffer
    dw 1                   ; flags
    dd 20                  ; size
    dd 0                   ; width (don't care)
    dd 0                   ; height (don't care)
    dd 0                   ; depth (don't care)

    ; end tag
    dw 0
    dw 0
    dd 8
mb_header_end:

section .text
global _start32
extern _start

_start32:
    ; GRUB drops us in 32-bit protected mode.
    mov esp, stack_top
    cld
    call _start

.hang:
    hlt
    jmp .hang

section .bss
align 16
stack_bottom:
    resb 16384
stack_top:
