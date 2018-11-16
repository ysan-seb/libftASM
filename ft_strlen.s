section .data
section .text
	global ft_strlen

ft_strlen:

	mov rcx, -1
    mov rsi, rdi ; backup rdi
	cmp rsi, 0
	je	.ret
    mov al, 0    ; look for \0
    repne scasb  ; actually do the search
    sub rdi, rsi ; save the string length
    dec rdi      ; don't count the \0 in the string length
    mov rax, rdi ; save the return value
    ret

.ret:
	mov rax, 0
	ret