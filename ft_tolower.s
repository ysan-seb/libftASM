section .data
section .text
    global _ft_tolower

_ft_tolower:
    push    rbp
    mov     rbp, rsp
    mov     rax, rdi
    cmp     rdi, 65
    jl      .ret
    cmp     rdi, 90
    jg      .ret
    jmp     .ret_lower

.ret_lower:
    add     rax, 32
    leave
    ret

.ret:
    leave
    ret