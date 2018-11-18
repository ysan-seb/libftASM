extern	_malloc
extern	_ft_memset

section .data
section .text
	global	_ft_memalloc

_ft_memalloc:
	push	rbp
	mov	rbp, rsp
	push	rdi
	cmp		rdi, 0
	je		.ret0
	call	_malloc
	mov	rdi, rax
	mov	rsi, 0
	pop	rdx
	call	_ft_memset
	leave
	ret

.ret0:
	mov 	rax, 0
	leave
	ret
