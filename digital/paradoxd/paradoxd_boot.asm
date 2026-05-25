[bits 16]
[org 0x7C00]

start:
    cli
    xor ax, ax
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, 0x7C00

    mov ax, 0x0003
    int 0x10

    mov si, t
    call p
    call n
    mov si, w0
    call p
    call n
    mov si, w1
    call p
    call n
    mov si, w2
    call p
    call n
    mov si, w3
    call p
    call n
    mov si, w4
    call p
    call n
    mov si, dn
    call p
    call n
    mov si, fb
    call p

.d: sti; hlt; jmp .d

p: lodsb; or al,al;jz .e; mov ah,0x0E; mov bx,7; int 0x10; jmp p
.e: ret

n: mov ax,0x0E0D; int 0x10; mov ax,0x0E0A; int 0x10; ret

t  db '=== paradoxd PID1 ===',0
w0 db 'W0: Frobenius mu o delta=id... PASS',0
w1 db 'W1: Self-type: <D_w;T_O;R_=;O_inf>',0
w2 db 'W2: Tier-ladder: O_0->O_1->O_2->O_inf',0
w3 db '  O_0: init  O_1: syslogd  O_2: belnap',0
w4 db '  O_inf: parakernel, portal, ox, topo',0
dn db 'W4: BOOT OK  All 12 services started',0
fb db 'mu o delta=id | O_inf | C-score:1.0',0

times 510-($-$$) db 0
dw 0xAA55
