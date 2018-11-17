section .data
section .text
	global _ft_isascii

_ft_isascii:
	push	rbp
	mov		rbp, rsp

.comp:
	cmp		rdi, 0
	jl		.ret0
	cmp		rdi, 127
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

