section .data
section .text
    global  _ft_strchr
_ft_strchr:
    push    rbp
    mov     rbp, rsp
    mov     rcx, 0
    mov     rax, rsi

.loop:
    cmp     byte[rdi + rcx], al
    je      .ret1
    inc     rcx
    cmp     byte[rdi + rcx], 0
    jne     .loop

.ret0:
    cmp     al, 0
    je      .ret1
    mov     rax, 0
    leave
    ret

.ret1:
    add     rdi, rcx
    mov     rax, rdi
    leave
    ret
