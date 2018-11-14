%define MACH_SYSCALL(nb)    0x2000000 | nb
section .data
EOL:
    .string db 10, 1
    .len equ $ - EOL.string

section .text
    global _ft_puts

_ft_puts:
    push    rbp
    mov     rbp, rsp
    mov     rbx, rdi

.loop:
    cmp     byte[rbx], 0
    je      .ret
    mov		rdi, 1
    lea		rsi, [rbx]
    mov		rdx, 1
    mov     rax, MACH_SYSCALL(4)
    inc     rbx
    syscall
    jmp     .loop

.ret:
    mov		rdi, 1
    lea		rsi, [rel EOL.string]
    mov		rdx, 1
    mov     rax, MACH_SYSCALL(4)
    syscall
    leave
    ret