section .data
section .text
    global _ft_strcat

_ft_strcat:
    push    rbp
    mov     rbp, rsp
    mov     rax, rdi

.end_of_s1:
    cmp     byte[rdi], 0
    je     .concat
    inc     rdi
    jmp     .end_of_s1

.concat:
    cmp     byte[rsi], 0
    je      .ret
    mov     rbx , [rsi]
    mov     [rdi], rbx
    inc     rsi
    inc     rdi
    jmp     .concat

.ret:
    leave
    ret