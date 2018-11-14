section .data
section .text
    global _ft_toupper

_ft_toupper:
    push    rbp
    mov     rbp, rsp

    mov     rax, rdi

    cmp     rdi, 97
    jl      .ret
    cmp     rdi, 122
    jg      .ret
    jmp     .ret_lower

.ret_lower:
    sub     rax, 32
    leave
    ret

.ret:
    leave
    ret