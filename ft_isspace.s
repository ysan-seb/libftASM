section .data
section .text
    global  _ft_isspace

_ft_isspace:
    push    rbp
    mov     rbp, rsp

    cmp     rdi, 9
    je      .ret1
    cmp     rdi, 10
    je      .ret1    
    cmp     rdi, 11
    je      .ret1
    cmp     rdi, 12
    je      .ret1
    cmp     rdi, 13
    je      .ret1
    cmp     rdi, 32
    je      .ret1
    jmp     .ret0

.ret0:
    mov     rax, 0
    leave
    ret

.ret1:
    mov     rax, 1
    leave
    ret