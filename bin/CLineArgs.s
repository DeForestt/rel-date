.global	pub_CArgs_parse
.global	pub_CArgs_init
.global	pub_CArg_init


.text

pub_CArg_init:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rbx
	movq	%rbx, 0(%rdx)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rbx
	movq	%rbx, 8(%rdx)
	popq	%rbx
	movq	-8(%rbp), %rax
	leave
	ret
pub_CArgs_init:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -20(%rbp)
	pushq	%rdx
	lea	-8(%rbp), %rax
	pushq	%rdi
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%rsi
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	pushq	%rdx
	movq	-20(%rbp), %rax
	movq	%rax, %rdx
	call	pub_CArgs_parse
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%rdx
	movq	-8(%rbp), %rdx
	movq	%rax, %rbx
	movq	%rbx, 0(%rdx)
	movq	-8(%rbp), %r14
	movq	0(%r14), %rbx
	movq	%rbx, -28(%rbp)
	pushq	%rdx
	movq	-28(%rbp), %r14
	movq	0(%r14), %r15
	lea	-28(%rbp), %rax
	pushq	%rdi
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%rsi
	movq	$lambda_1648433963610_0, %rax
	movq	%rax, %rsi
	call	*%r15
	popq	%rsi
	popq	%rdi
	popq	%rdx
	popq	%rbx
	movq	-8(%rbp), %rax
	leave
	ret
pub_CArgs_parse:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -20(%rbp)
	pushq	%rdx
	pushq	%rdi
	movl	$24, %eax
	movl	%eax, %edi
	call	malloc
	popq	%rdi
	popq	%rdx
	pushq	%rdi
	movq	%rax, %rdi
	pushq	%rdx
	call	pub_LinkedList_init
	popq	%rdi
	popq	%rdx
	movq	%rax, %rbx
	movq	%rbx, -28(%rbp)
	movl	$1, %ebx
	movl	%ebx, -32(%rbp)
	jmp	.Lparse4
.Lparse3:
	pushq	%rdi
	pushq	%rdx
	pushq	%rdi
	pushq	%rdx
	movl	$8, %edx
	movl	-32(%rbp), %edi
	imul	%edx, %edi
	movl	%edi, %eax
	popq	%rdx
	popq	%rdi
	movl	%eax, %edx
	movq	-20(%rbp), %rdi
	add	%rdx, %rdi
	movq	%rdi, %rax
	popq	%rdx
	popq	%rdi
	movq	%rax, %rbx
	movq	%rbx, -40(%rbp)
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	pushq	%rsi
	movq	%rax, %rax
	movq	%rax, %rsi
	call	pub_String_init
	popq	%rsi
	popq	%rdi
	popq	%rdx
	movq	%rax, %rbx
	movq	%rbx, -48(%rbp)
	pushq	%rdi
	pushq	%rdx
	movb	$45, %dl
	pushq	%rdx
	lea	-48(%rbp), %rax
	pushq	%rdi
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%rsi
	movl	$0, %eax
	movl	%eax, %esi
	call	pub_String_at
	popq	%rsi
	popq	%rdi
	popq	%rdx
	movb	%al, %dil
	cmpb	%dl, %dil
	sete	%al
	popq	%rdx
	popq	%rdi
	movb	%al, %al
	cmpb	$0, %al
	je	.Lparse5
	add	$1, -32(%rbp)
	pushq	%rdi
	pushq	%rdx
	movl	-12(%rbp), %edx
	movl	-32(%rbp), %edi
	cmpl	%edx, %edi
	setl	%al
	popq	%rdx
	popq	%rdi
	movb	%al, %al
	cmpb	$0, %al
	je	.Lparse6
	pushq	%rdi
	pushq	%rdx
	pushq	%rdi
	pushq	%rdx
	movl	$8, %edx
	movl	-32(%rbp), %edi
	imul	%edx, %edi
	movl	%edi, %eax
	popq	%rdx
	popq	%rdi
	movl	%eax, %edx
	movq	-20(%rbp), %rdi
	add	%rdx, %rdi
	movq	%rdi, %rax
	popq	%rdx
	popq	%rdi
	movq	%rax, %rbx
	movq	%rbx, -40(%rbp)
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	pushq	%rsi
	movq	%rax, %rax
	movq	%rax, %rsi
	call	pub_String_init
	popq	%rsi
	popq	%rdi
	popq	%rdx
	movq	%rax, %rbx
	movq	%rbx, -56(%rbp)
	pushq	%rdi
	pushq	%rdx
	movb	$45, %dl
	pushq	%rdx
	lea	-56(%rbp), %rax
	pushq	%rdi
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%rsi
	movl	$0, %eax
	movl	%eax, %esi
	call	pub_String_at
	popq	%rsi
	popq	%rdi
	popq	%rdx
	movb	%al, %dil
	cmpb	%dl, %dil
	setne	%al
	popq	%rdx
	popq	%rdi
	movb	%al, %al
	cmpb	$0, %al
	je	.Lparse7
	pushq	%rdx
	pushq	%rdi
	movl	$16, %eax
	movl	%eax, %edi
	call	malloc
	popq	%rdi
	popq	%rdx
	pushq	%rdi
	movq	%rax, %rdi
	pushq	%rdx
	pushq	%rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	pushq	%rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	call	pub_CArg_init
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%rdx
	movq	%rax, %rbx
	movq	%rbx, -64(%rbp)
	pushq	%rdx
	lea	-28(%rbp), %rax
	pushq	%rdi
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	call	pub_LinkedList_append
	popq	%rsi
	popq	%rdi
	popq	%rdx
	jmp	.Lparse8
.Lparse7:
	pushq	%rdx
	pushq	%rdi
	movl	$16, %eax
	movl	%eax, %edi
	call	malloc
	popq	%rdi
	popq	%rdx
	pushq	%rdi
	movq	%rax, %rdi
	pushq	%rdx
	pushq	%rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
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
	movq	$.strCArgs.lambda_1648433963610_09, %rax
	movq	%rax, %rsi
	call	pub_String_init
	popq	%rsi
	popq	%rdi
	popq	%rdx
	pushq	%rdx
	movq	%rax, %rax
	movq	%rax, %rdx
	call	pub_CArg_init
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%rdx
	movq	%rax, %rbx
	movq	%rbx, -64(%rbp)
	pushq	%rdi
	pushq	%rdx
	movl	$1, %edx
	movl	-32(%rbp), %edi
	sub	%edx, %edi
	movl	%edi, %eax
	popq	%rdx
	popq	%rdi
	movl	%eax, %ebx
	movl	%ebx, -32(%rbp)
	pushq	%rdx
	lea	-28(%rbp), %rax
	pushq	%rdi
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	call	pub_LinkedList_append
	popq	%rsi
	popq	%rdi
	popq	%rdx
.Lparse8:
	jmp	.Lparse10
.Lparse6:
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
	movq	$.strCArgs.lambda_1648433963610_011, %rax
	movq	%rax, %rsi
	call	pub_String_init
	popq	%rsi
	popq	%rdi
	popq	%rdx
	movq	%rax, %rbx
	movq	%rbx, -56(%rbp)
	pushq	%rdx
	pushq	%rdi
	movl	$16, %eax
	movl	%eax, %edi
	call	malloc
	popq	%rdi
	popq	%rdx
	pushq	%rdi
	movq	%rax, %rdi
	pushq	%rdx
	pushq	%rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	pushq	%rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	call	pub_CArg_init
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%rdx
	movq	%rax, %rbx
	movq	%rbx, -64(%rbp)
	pushq	%rdx
	lea	-28(%rbp), %rax
	pushq	%rdi
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	call	pub_LinkedList_append
	popq	%rsi
	popq	%rdi
	popq	%rdx
.Lparse10:
	jmp	.Lparse12
.Lparse5:
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
	movq	$.strCArgs.lambda_1648433963610_013, %rax
	movq	%rax, %rsi
	call	pub_String_init
	popq	%rsi
	popq	%rdi
	popq	%rdx
	movq	%rax, %rbx
	movq	%rbx, -56(%rbp)
	movq	-48(%rbp), %rbx
	movq	%rbx, -64(%rbp)
	pushq	%rdx
	pushq	%rdi
	movl	$16, %eax
	movl	%eax, %edi
	call	malloc
	popq	%rdi
	popq	%rdx
	pushq	%rdi
	movq	%rax, %rdi
	pushq	%rdx
	pushq	%rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	pushq	%rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	call	pub_CArg_init
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%rdx
	movq	%rax, %rbx
	movq	%rbx, -72(%rbp)
	pushq	%rdx
	lea	-28(%rbp), %rax
	pushq	%rdi
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	call	pub_LinkedList_append
	popq	%rsi
	popq	%rdi
	popq	%rdx
.Lparse12:
	add	$1, -32(%rbp)
.Lparse4:
	pushq	%rdi
	pushq	%rdx
	movl	-12(%rbp), %edx
	movl	-32(%rbp), %edi
	cmpl	%edx, %edi
	setl	%al
	popq	%rdx
	popq	%rdi
	movb	%al, %al
	cmpb	$1, %al
	je	.Lparse3
	movq	-28(%rbp), %rax
	leave
	ret
	leave
	ret
lambda_1648433963610_0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$48, %rsp
	movq	%rdi, -36(%rbp)
	pushq	%rdx
	movq	-36(%rbp), %r14
	pushq	%rdi
	movq	0(%r14), %rax
	movq	%rax, %rdi
	call	printString
	popq	%rdi
	popq	%rdx
	pushq	%rdx
	pushq	%rdi
	movq	$.strCArgs.lambda_1648433963610_01, %rax
	movq	%rax, %rdi
	call	print
	popq	%rdi
	popq	%rdx
	pushq	%rdx
	movq	-36(%rbp), %r14
	pushq	%rdi
	movq	8(%r14), %rax
	movq	%rax, %rdi
	call	printString
	popq	%rdi
	popq	%rdx
	pushq	%rdx
	pushq	%rdi
	movq	$.strCArgs.lambda_1648433963610_02, %rax
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

.strCArgs.lambda_1648433963610_02:
	.asciz	 "\n"
.strCArgs.lambda_1648433963610_01:
	.asciz	 " = "
.strCArgs.lambda_1648433963610_013:
	.asciz	 "EMPTY"
.strCArgs.lambda_1648433963610_011:
	.asciz	 "EMPTY"
.strCArgs.lambda_1648433963610_09:
	.asciz	 "EMPTY"


.bss

