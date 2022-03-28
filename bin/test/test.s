.global	main


.text

main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -12(%rbp)
	pushq	%rdx
	pushq	%rdi
	pushq	%rdx
	movl	$1, %edx
	movl	$1, %edi
	cmpl	%edx, %edi
	sete	%al
	popq	%rdx
	popq	%rdi
	pushq	%rdi
	movb	%al, %al
	movb	%al, %dil
	pushq	%rsi
	movq	$.strmain0, %rax
	movq	%rax, %rsi
	call	assert
	popq	%rsi
	popq	%rdi
	popq	%rdx
	pushq	%rdx
	pushq	%rdi
	movl	$8, %eax
	movl	%eax, %edi
	call	malloc
	popq	%rdi
	popq	%rdx
	pushq	%rdi
	movq	%rax, %rdi
	pushq	%rdx
	pushq	%rsi
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	pushq	%rdx
	movq	-12(%rbp), %rax
	movq	%rax, %rdx
	call	pub_CArgs_init
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%rdx
	movq	%rax, %rbx
	movq	%rbx, -20(%rbp)
	movl	$0, %eax
	leave
	ret
	leave
	ret


.data

.strmain0:
	.asciz	 "Failed 1 == 1 assert"


.bss

