section .data
section .text
    global  _ft_strequ

_ft_strequ:
    push    rbp
    mov     rbp, rsp
    mov     rbx, rdi
    mov     rdx, rsi
    mov     rcx, 0

.first_check:
    cmp     rbx, 0
    je      .and
    cmp     byte[rbx], 0
    je      .and
    cmp     rdx, 0
    je      .ret0
    jmp     .loop

.and:
    cmp     rdx, 0
    je      .ret1
    cmp     byte[rdx], 0
    je      .ret1

.loop:
    cmp     byte[rbx], 0
    je      .check_diff
    cmp     bl, dl
    jne     .ret0
    inc     rbx
    inc     rdx
    jmp     .loop

.check_diff:
    cmp     bl, dl
    jne     .ret0
    jmp     .ret1

.ret0:
    mov     rax, 0
    leave
    ret

.ret1:
    mov     rax, 1
    leave
    ret