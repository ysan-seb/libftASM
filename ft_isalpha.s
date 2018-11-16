section .data
section .text
	global _ft_isalpha

_ft_isalpha:
	push	rbp
	mov		rbp, rsp

.comp:
	cmp		rdi, 65
	jl		.ret0
	cmp		rdi, 90
	jg		.next_comp
	jmp		.ret1

.next_comp:
	cmp		rdi, 97
	jl		.ret0
	cmp		rdi, 122
	jg		.ret0
	jmp		.ret1

.ret0:
	mov 	rax, 0
	leave
	ret

.ret1:
	mov 	rax, 1
	leave
	ret

