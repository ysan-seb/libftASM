extern  _malloc
extern  _ft_strlen

section .data
section .text
    global  _ft_strdup

_ft_strdup:
	push	rbp
	mov		rbp, rsp
    push    rdi
    call    _ft_strlen
    inc     rax
    push    rax
    mov     rdi, rax
    call    _malloc
    mov     rdi, rax
    pop     rcx
    dec     rcx
    pop     rsi
    rep     movsb
    leave
    ret