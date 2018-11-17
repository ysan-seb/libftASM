section .data
section .text
    global  _ft_isupper

_ft_isupper:
    push    rbp
    mov     rbp, rsp
    cmp     rdi, 65
    jl      .ret0
    cmp     rdi, 90
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
