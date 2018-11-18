%define MACH_SYSCALL(nb)    0x2000000 | nb
extern  _ft_bzero
section .data
section .bss
buffer  resb    4096
section .text
    global _ft_cat

_ft_cat:
    push    rbp
    mov     rbp, rsp
    mov     r8, rdi

    cmp     r8, 0
    jl      .ret0
.cat:
    

    lea     rdi, [rel buffer]
    mov     rsi, 4096
    call    _ft_bzero

    mov     rdi, r8
    lea     rsi, [rel buffer]
    mov     rdx, 4096
    mov     rax, MACH_SYSCALL(3)
    syscall

    jc      .ret0

    cmp     rax, 0
    je      .ret0

    mov     rdi, 1
    lea     rsi, [rel buffer]
    mov     rdx, 4096
    mov     rax, MACH_SYSCALL(4)
    syscall

    jmp     .cat

.ret0:
    leave
    ret
