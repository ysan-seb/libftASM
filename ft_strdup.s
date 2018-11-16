extern  malloc

section .data
section .text
    global  ft_strdup


ft_strdup:
    cmp     rdi, 0
    je      .ret0

    mov rcx, -1
    mov rsi, rdi
    mov al, 0
    repne scasb
    sub rdi, rsi
    dec rdi

    call malloc

    mov     rcx, rdx
    rep     movsb
    mov rax, rdi
    jmp .ret1

.ret0:
    mov rax, 0
    ret

.ret1:
    ret