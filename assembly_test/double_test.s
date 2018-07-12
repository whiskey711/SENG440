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
	.file	"double_test.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r2, #0
	mov	r3, #0
	ldr	r0, .L3
	bl	printf
	ldmfd	sp!, {r4, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LC0
	.size	main, .-main
	.comm	x,8,8
	.comm	y,8,8
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"z = %f\012\000"
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
