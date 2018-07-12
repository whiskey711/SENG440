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
	.file	"cordic-test.c"
	.text
	.align	2
	.global	cordic
	.type	cordic, %function
cordic:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7}
	ldr	ip, .L9
	sub	sp, sp, #32
	mov	r4, #0
	str	ip, [sp, #8]
	str	r4, [sp, #4]
	str	r0, [sp, #0]
	str	r4, [sp, #28]
	ldr	r0, [sp, #28]
	cmp	r3, #32
	movlt	r4, r3
	movge	r4, #32
	cmp	r4, r0
	mov	r7, r1
	mov	r6, r2
	ble	.L2
	ldr	r5, .L9+4
.L5:
	ldr	r3, [sp, #0]
	cmp	r3, #0
	movge	r2, #0
	mvnlt	r2, #0
	str	r2, [sp, #24]
	ldr	ip, [sp, #24]
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #28]
	ldr	r2, [sp, #24]
	eor	r2, r2, r0, asr r1
	ldr	r3, [sp, #8]
	add	r3, r3, ip
	rsb	r3, r2, r3
	str	r3, [sp, #20]
	ldr	r0, [sp, #8]
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #24]
	eor	r2, r2, r0, asr r3
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #4]
	rsb	r3, r1, r3
	add	r3, r3, r2
	str	r3, [sp, #16]
	ldr	r0, [sp, #24]
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #24]
	ldr	r1, [r5, r3, asl #2]
	ldr	r3, [sp, #0]
	eor	r2, r2, r1
	add	r3, r3, r0
	rsb	r3, r2, r3
	str	r3, [sp, #12]
	ldr	r2, [sp, #20]
	str	r2, [sp, #8]
	ldr	r3, [sp, #16]
	str	r3, [sp, #4]
	ldr	r2, [sp, #12]
	str	r2, [sp, #0]
	ldr	r3, [sp, #28]
	add	r3, r3, #1
	str	r3, [sp, #28]
	ldr	r2, [sp, #28]
	cmp	r4, r2
	bgt	.L5
.L2:
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #4]
	str	r3, [r6, #0]
	str	r2, [r7, #0]
	add	sp, sp, #32
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L10:
	.align	2
.L9:
	.word	652032874
	.word	.LANCHOR0
	.size	cordic, .-cordic
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	fstmfdd	sp!, {d8, d9, d10, d11, d12}
	sub	sp, sp, #68
	bl	clock
	mov	r1, #0
	str	r1, [sp, #52]
	mov	r2, #4980736
	add	r2, r2, #19200
	ldr	r3, [sp, #52]
	add	r2, r2, #63
	cmp	r3, r2
	mov	sl, r0
	bgt	.L12
	fconstd	d10, #96
	fldd	d8, .L22
	fldd	d9, .L22+8
	fldd	d11, .L22+16
	fldd	d12, .L22+24
	ldr	r7, .L22+32
	ldr	r5, .L22+36
	mov	r6, r1
	mov	r8, r2
.L19:
	ldr	r3, [sp, #52]
	fmsr	s15, r3	@ int
	fsitod	d16, s15
	fdivd	d17, d16, d8
	fmuld	d18, d17, d9
	fmuld	d16, d18, d10
	fstd	d16, [sp, #8]
	fldd	d17, [sp, #8]
	fmuld	d16, d17, d11
	ftosizd	s15, d16
	str	r7, [sp, #28]
	str	r6, [sp, #24]
	fsts	s15, [sp, #20]	@ int
	str	r6, [sp, #48]
	ldr	r3, [sp, #48]
	cmp	r3, #31
	bgt	.L13
.L16:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	movge	r2, #0
	mvnlt	r2, #0
	str	r2, [sp, #44]
	ldr	ip, [sp, #44]
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #48]
	ldr	r2, [sp, #44]
	eor	r2, r2, r0, asr r1
	ldr	r3, [sp, #28]
	add	r3, r3, ip
	rsb	r3, r2, r3
	str	r3, [sp, #40]
	ldr	r0, [sp, #28]
	ldr	r3, [sp, #48]
	ldr	r2, [sp, #44]
	eor	r2, r2, r0, asr r3
	ldr	r1, [sp, #44]
	ldr	r3, [sp, #24]
	rsb	r3, r1, r3
	add	r3, r3, r2
	str	r3, [sp, #36]
	ldr	r0, [sp, #44]
	ldr	r3, [sp, #48]
	ldr	r2, [sp, #44]
	ldr	r1, [r5, r3, asl #2]
	ldr	r3, [sp, #20]
	eor	r2, r2, r1
	add	r3, r3, r0
	rsb	r3, r2, r3
	str	r3, [sp, #32]
	ldr	r2, [sp, #40]
	str	r2, [sp, #28]
	ldr	r3, [sp, #36]
	str	r3, [sp, #24]
	ldr	r2, [sp, #32]
	str	r2, [sp, #20]
	ldr	r3, [sp, #48]
	add	r3, r3, #1
	str	r3, [sp, #48]
	ldr	r2, [sp, #48]
	cmp	r2, #31
	ble	.L16
.L13:
	ldr	r3, [sp, #28]
	str	r3, [sp, #56]
	ldr	r2, [sp, #24]
	str	r2, [sp, #60]
	ldr	r4, [sp, #60]
	add	r1, sp, #8
	ldmia	r1, {r0-r1}
	bl	sin
	fmsr	s15, r4	@ int
	fsitod	d16, s15
	fmuld	d17, d16, d12
	stmia	sp, {r0-r1}
	fmrrd	r2, r3, d17
	ldr	r0, .L22+40
	bl	printf
	ldr	r3, [sp, #52]
	add	r3, r3, #1
	str	r3, [sp, #52]
	ldr	r2, [sp, #52]
	cmp	r2, r8
	ble	.L19
.L12:
	bl	clock
	rsb	r0, sl, r0
	fmsr	s15, r0	@ int
	fsitod	d16, s15
	ldr	r0, .L22+44
	fmrrd	r2, r3, d16
	bl	printf
	add	sp, sp, #68
	fldmfdd	sp!, {d8, d9, d10, d11, d12}
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	bx	lr
.L23:
	.align	3
.L22:
	.word	0
	.word	1095963344
	.word	1413754136
	.word	1074340347
	.word	0
	.word	1104150528
	.word	0
	.word	1041235968
	.word	652032874
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.size	main, .-main
	.global	cordic_ctab
	.data
	.align	3
.LANCHOR0 = . + 0
	.type	cordic_ctab, %object
	.size	cordic_ctab, 128
cordic_ctab:
	.word	843314856
	.word	497837829
	.word	263043836
	.word	133525158
	.word	67021686
	.word	33543515
	.word	16775850
	.word	8388437
	.word	4194282
	.word	2097149
	.word	1048575
	.word	524287
	.word	262143
	.word	131071
	.word	65535
	.word	32767
	.word	16383
	.word	8191
	.word	4095
	.word	2047
	.word	1023
	.word	511
	.word	255
	.word	127
	.word	63
	.word	31
	.word	15
	.word	8
	.word	4
	.word	2
	.word	1
	.word	0
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%f : %f\012\000"
	.space	3
.LC1:
	.ascii	"time is %f\000"
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
