%define MACH_SYSCALL(nb)    0x2000000 | nb
section .data
section .text
    global _ft_cat

_ft_cat:
    push    rbp
    mov     rbp, rsp
