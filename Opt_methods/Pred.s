	.arch armv4t
	.eabi_attribute 27, 3
	.fpu neon
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"Pred.c"
	.text
	.align	2
	.global	Predicate
	.type	Predicate, %function
Predicate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, r0, lsr #31
	bx	lr
	.size	Predicate, .-Predicate
	.align	2
	.global	cordic
	.type	cordic, %function
cordic:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8}
	cmp	r1, #16
	movlt	r6, r1
	movge	r6, #16
	cmp	r6, #0
	mov	r8, r2
	mov	r3, #0
	mov	r2, r0
	movle	r2, #650117120
	str	r3, [r8, #0]
	addle	r2, r2, #1900544
	ble	.L5
	mov	r0, #9920
	ldr	r7, .L12
	mov	ip, r3
	mov	r5, r2
	add	r0, r0, #29
	mov	r1, r3
	mov	r4, r3
.L8:
	cmp	r5, #0
	addge	r2, r1, r0, asr ip
	sublt	r2, r1, r0, asr ip
	ldrge	r3, [r7, r4]
	ldrlt	r3, [r7, r4]
	subge	r0, r0, r1, asr ip
	addlt	r0, r0, r1, asr ip
	add	ip, ip, #1
	rsbge	r5, r3, r5
	movge	r1, r2
	addlt	r5, r5, r3
	movlt	r1, r2
	cmp	r6, ip
	add	r4, r4, #4
	bgt	.L8
	orr	r2, r1, r0, asl #16
.L5:
	str	r2, [r8, #0]
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L13:
	.align	2
.L12:
	.word	.LANCHOR0
	.size	cordic, .-cordic
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	fstmfdd	sp!, {d8, d9, d10, d11, d12}
	sub	sp, sp, #16
	bl	clock
	mov	r3, #0
	str	r3, [sp, #12]
	mov	r2, #4980736
	add	r2, r2, #19200
	ldr	r3, [sp, #12]
	add	r2, r2, #63
	cmp	r3, r2
	mov	r6, r0
	bgt	.L15
	fldd	d9, .L51
	fldd	d10, .L51+8
	fldd	d12, .L51+16
	fldd	d11, .L51+24
	ldr	r4, .L51+32
	mov	r5, r2
	b	.L48
.L18:
	mov	r3, r1, asr #1
	ldr	r2, [r4, #4]
	rsb	r0, r3, #9920
	add	r1, r1, #4928
	rsb	r2, r2, ip
	add	r0, r0, #29
	add	r1, r1, #46
.L19:
	cmp	r2, #0
	ldrlt	r3, [r4, #8]
	ldrge	r3, [r4, #8]
	addlt	r2, r2, r3
	rsbge	r2, r3, r2
	sublt	lr, r1, r0, asr #2
	addge	lr, r1, r0, asr #2
	addlt	r1, r0, r1, asr #2
	subge	r1, r0, r1, asr #2
	cmp	r2, #0
	ldrlt	r3, [r4, #12]
	ldrge	r3, [r4, #12]
	addlt	r2, r2, r3
	rsbge	r2, r3, r2
	sublt	ip, lr, r1, asr #3
	addge	ip, lr, r1, asr #3
	addlt	r1, r1, lr, asr #3
	subge	r1, r1, lr, asr #3
	cmp	r2, #0
	ldrlt	r3, [r4, #16]
	ldrge	r3, [r4, #16]
	addlt	r2, r2, r3
	rsbge	r2, r3, r2
	sublt	r0, ip, r1, asr #4
	addge	r0, ip, r1, asr #4
	addlt	r1, r1, ip, asr #4
	subge	r1, r1, ip, asr #4
	cmp	r2, #0
	ldrlt	r3, [r4, #20]
	ldrge	r3, [r4, #20]
	addlt	r2, r2, r3
	rsbge	r2, r3, r2
	sublt	ip, r0, r1, asr #5
	addge	ip, r0, r1, asr #5
	addlt	r1, r1, r0, asr #5
	subge	r1, r1, r0, asr #5
	cmp	r2, #0
	ldrlt	r3, [r4, #24]
	ldrge	r3, [r4, #24]
	addlt	r2, r2, r3
	rsbge	r2, r3, r2
	sublt	r0, ip, r1, asr #6
	addge	r0, ip, r1, asr #6
	addlt	r1, r1, ip, asr #6
	subge	r1, r1, ip, asr #6
	cmp	r2, #0
	ldrlt	r3, [r4, #28]
	ldrge	r3, [r4, #28]
	addlt	r2, r2, r3
	rsbge	r2, r3, r2
	sublt	ip, r0, r1, asr #7
	addge	ip, r0, r1, asr #7
	addlt	r1, r1, r0, asr #7
	subge	r1, r1, r0, asr #7
	cmp	r2, #0
	ldrlt	r3, [r4, #32]
	ldrge	r3, [r4, #32]
	addlt	r2, r2, r3
	rsbge	r2, r3, r2
	sublt	r0, ip, r1, asr #8
	addge	r0, ip, r1, asr #8
	addlt	r1, r1, ip, asr #8
	subge	r1, r1, ip, asr #8
	cmp	r2, #0
	ldrlt	r3, [r4, #36]
	ldrge	r3, [r4, #36]
	addlt	r2, r2, r3
	rsbge	r2, r3, r2
	sublt	ip, r0, r1, asr #9
	addge	ip, r0, r1, asr #9
	addlt	r1, r1, r0, asr #9
	subge	r1, r1, r0, asr #9
	cmp	r2, #0
	ldrlt	r3, [r4, #40]
	ldrge	r3, [r4, #40]
	addlt	r2, r2, r3
	rsbge	r2, r3, r2
	sublt	r0, ip, r1, asr #10
	addge	r0, ip, r1, asr #10
	addlt	r1, r1, ip, asr #10
	subge	r1, r1, ip, asr #10
	cmp	r2, #0
	ldrlt	r3, [r4, #44]
	ldrge	r3, [r4, #44]
	addlt	r2, r2, r3
	rsbge	r2, r3, r2
	sublt	ip, r0, r1, asr #11
	addge	ip, r0, r1, asr #11
	addlt	r1, r1, r0, asr #11
	subge	r1, r1, r0, asr #11
	cmp	r2, #0
	ldrlt	r3, [r4, #48]
	ldrge	r3, [r4, #48]
	addlt	r2, r2, r3
	rsbge	r2, r3, r2
	sublt	r0, ip, r1, asr #12
	addge	r0, ip, r1, asr #12
	addlt	r1, r1, ip, asr #12
	subge	r1, r1, ip, asr #12
	cmp	r2, #0
	ldrlt	r3, [r4, #52]
	ldrge	r3, [r4, #52]
	addlt	r2, r2, r3
	rsbge	r2, r3, r2
	sublt	ip, r0, r1, asr #13
	addge	ip, r0, r1, asr #13
	addlt	r1, r1, r0, asr #13
	subge	r1, r1, r0, asr #13
	cmp	r2, #0
	ldrlt	r3, [r4, #56]
	ldrge	r3, [r4, #56]
	addlt	r2, r2, r3
	rsbge	r2, r3, r2
	addlt	r3, r1, ip, asr #14
	subge	r3, r1, ip, asr #14
	sublt	r0, ip, r1, asr #14
	addge	r0, ip, r1, asr #14
	cmp	r2, #0
	addge	r3, r0, r3, asr #15
	sublt	r3, r0, r3, asr #15
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	fmsr	s15, r3	@ int
	fsitod	d16, s15
	fmrrd	r0, r1, d17
	fmuld	d8, d16, d11
	bl	sin
	fmrrd	r2, r3, d8
	stmia	sp, {r0-r1}
	ldr	r0, .L51+36
	bl	printf
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	fmsr	s15, r3	@ int
	fsitod	d16, s15
	fmuld	d17, d16, d9
	fmuld	d16, d17, d10
	fmrrd	r0, r1, d16
	bl	sin
	fmrrd	r2, r3, d8
	stmia	sp, {r0-r1}
	ldr	r0, .L51+36
	bl	printf
	ldr	r3, [sp, #12]
	add	r3, r3, #2
	str	r3, [sp, #12]
	ldr	r2, [sp, #12]
	cmp	r2, r5
	bgt	.L15
.L48:
	ldr	r3, [sp, #12]
	fmsr	s15, r3	@ int
	fsitod	d16, s15
	fmuld	d17, d16, d9
	fmuld	d17, d17, d10
	fmuld	d16, d17, d12
	ftosizd	s15, d16
	fmrs	r2, s15	@ int
	cmp	r2, #0
	ldrlt	r3, [r4, #0]
	ldrge	r3, [r4, #0]
	mvnlt	r1, #9920
	movge	r1, #9920
	addlt	ip, r2, r3
	rsbge	ip, r3, r2
	sublt	r1, r1, #28
	addge	r1, r1, #29
	cmp	ip, #0
	bge	.L18
	mov	r3, r1, asr #1
	ldr	r2, [r4, #4]
	add	r0, r3, #9920
	sub	r1, r1, #4928
	add	r2, ip, r2
	add	r0, r0, #29
	sub	r1, r1, #46
	b	.L19
.L15:
	bl	clock
	rsb	r0, r6, r0
	fmsr	s15, r0	@ int
	fsitod	d16, s15
	ldr	r0, .L51+40
	fmrrd	r2, r3, d16
	bl	printf
	add	sp, sp, #16
	fldmfdd	sp!, {d8, d9, d10, d11, d12}
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L52:
	.align	3
.L51:
	.word	-1698910392
	.word	1049286642
	.word	1413754136
	.word	1073291771
	.word	0
	.word	1087373312
	.word	0
	.word	1058013184
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.size	main, .-main
	.global	cordic_ctab
	.data
	.align	3
.LANCHOR0 = . + 0
	.type	cordic_ctab, %object
	.size	cordic_ctab, 64
cordic_ctab:
	.word	12867
	.word	7596
	.word	4013
	.word	2037
	.word	1022
	.word	511
	.word	255
	.word	127
	.word	63
	.word	31
	.word	15
	.word	7
	.word	3
	.word	1
	.word	0
	.word	0
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%f : %f\012\000"
	.space	3
.LC1:
	.ascii	"we need %f to complete.\000"
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
