section .data
section .text
	global _ft_isprint

_ft_isprint:
	push	rbp
	mov		rbp, rsp

.comp:
	cmp		rdi, 32
	jl		.ret0
	cmp		rdi, 126
	jg		.ret0
	jmp		.ret1

.ret0:
	mov rax, 0
	leave
	ret

.ret1:
	mov rax, 1
	leave
	ret

