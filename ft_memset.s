section .data
section .text
    global  ft_memset

ft_memset:
    mov     r8, rdi
    mov     rax, 0x41
    mov     rcx, rdx
    rep     stosb
    mov     rax, r8
    ret