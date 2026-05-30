; paradoxd v0.11 — Multiboot (v1) header + entry trampoline
; Uses classic Multiboot v1. No VBE video request — QEMU doesn't support it.

[bits 32]

section .multiboot_header
align 4

mb_header_start:
    dd 0x1BADB002          ; multiboot v1 magic
    dd 0x00000003          ; flags: bit0=align_modules, bit1=meminfo
                           ; bit2 (video) NOT set — QEMU can't handle VBE
    dd 0xE4524FFB          ; checksum: -(0x1BADB002 + 0x00000003) = 0xE4524FFB
    ; A.out kludge fields (all zero for ELF format)
    dd 0                   ; header_addr (unused for ELF)
    dd 0                   ; load_addr (unused for ELF)
    dd 0                   ; load_end_addr (unused for ELF)
    dd 0                   ; bss_end_addr (unused for ELF)
    dd _start32            ; entry_addr
    ; NOTE: No video mode fields — bit 2 is clear
mb_header_end:

section .text
global _start32
extern _start

_start32:
    ; GRUB drops us in 32-bit protected mode with interrupts disabled.
    ; EAX = 0x2BADB002 (Multiboot magic), EBX = multiboot_info_t pointer.
    ; First, write a test character to VGA text buffer to confirm we got here
    mov dword [0xB8000], 0x0F210F48  ; "HI!" in white on black at top-left
    
    mov esp, stack_top
    cld
    ; Align stack to 16 bytes (required by System V ABI)
    and esp, 0xFFFFFFF0
    ; Push multiboot info pointer as arg to _start
    push ebx
    call _start
    add esp, 4

.hang:
    hlt
    jmp .hang

section .bss
align 16
stack_bottom:
    resb 16384
stack_top:
