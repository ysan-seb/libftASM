section .data
section .text
    global  _ft_memset

_ft_memset:
    mov     r8, rdi
    mov     rax, rsi
    mov     rcx, rdx
    rep     stosb
    mov     rax, r8
    ret