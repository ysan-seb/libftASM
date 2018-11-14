section .data
section .text
    global _ft_bzero

_ft_bzero:
	push    rbp
	mov	    rbp, rsp
    mov     rcx, 0

.loop:
    cmp     rsi, rcx
    je      .ret
    mov     byte[rdi + rcx], 0
    inc     rcx
    jmp     .loop
.ret:
    leave
    ret