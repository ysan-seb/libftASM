section .data
section .text
    global  _ft_islower

_ft_islower:
    push    rbp
    mov     rbp, rsp
    cmp     rdi, 97
    jl      .ret0
    cmp     rdi, 122
    jg      .ret0
    jmp     .ret1

.ret0:
    mov     rax, 0
    leave
    ret

.ret1:
    mov     rax, 1
    leave
    ret
