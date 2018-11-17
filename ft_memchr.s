section .data
section .text
    global  _ft_memchr
_ft_memchr:
    push    rbp
    mov     rbp, rsp
    mov     rcx, 0
    mov     rax, rsi
    cmp     rdx, 0
    jle     .retN

.loop:
    cmp     byte[rdi + rcx], al
    je      .ret1
    inc     rcx
    cmp     rcx, rdx
    jl     .loop

.retN:
    mov     rax, 0
    leave
    ret

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
