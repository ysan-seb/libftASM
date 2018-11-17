section .data
section .text
	global _ft_isdigit

_ft_isdigit:
	push	rbp
	mov		rbp, rsp

.comp:
	cmp		rdi, 48
	jl		.ret0
	cmp		rdi, 57
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

