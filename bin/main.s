.global	main


.text

main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$16, %rsp
	pushq	%rdx
	pushq	%rdi
	movq	$.strmain0, %rax
	movq	%rax, %rdi
	call	print
	popq	%rdi
	popq	%rdx
	movl	$0, %eax
	leave
	ret
	leave
	ret


.data

.strmain0:
	.asciz	 "Hello, World!\n"


.bss

