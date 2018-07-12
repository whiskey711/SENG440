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
	.file	"gentable.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r1, #16
	ldr	r0, .L3
	bl	printf
	ldr	r0, .L3+4
	bl	puts
	ldr	r0, .L3+8
	bl	puts
	ldr	r0, .L3+12
	bl	puts
	mov	r1, #16384
	ldr	r0, .L3+16
	bl	printf
	ldr	r0, .L3+20
	bl	puts
	ldr	r0, .L3+24
	bl	puts
	ldr	r0, .L3+28
	bl	puts
	mov	r1, #9920
	add	r1, r1, #29
	ldr	r0, .L3+32
	bl	printf
	mov	r1, #25600
	add	r1, r1, #135
	ldr	r0, .L3+36
	bl	printf
	mov	r3, #1073741824
	mov	r2, #0
	add	r3, r3, #13631488
	ldr	r0, .L3+40
	bl	printf
	mov	r1, #16
	ldr	r0, .L3+44
	ldr	r4, .L3+48
	bl	printf
	ldr	r0, .L3+52
	bl	printf
	mov	r1, #12864
	add	r1, r1, #3
	mov	r0, r4
	bl	printf
	mov	r1, #7552
	add	r1, r1, #44
	mov	r0, r4
	bl	printf
	mov	r1, #4000
	add	r1, r1, #13
	mov	r0, r4
	bl	printf
	mov	r1, #2032
	add	r1, r1, #5
	mov	r0, r4
	bl	printf
	mov	r1, #1020
	add	r1, r1, #2
	mov	r0, r4
	bl	printf
	mov	r1, #508
	add	r1, r1, #3
	mov	r0, r4
	bl	printf
	mov	r0, r4
	mov	r1, #255
	bl	printf
	mov	r0, r4
	mov	r1, #127
	bl	printf
	mov	r0, r4
	mov	r1, #63
	bl	printf
	mov	r0, r4
	mov	r1, #31
	bl	printf
	mov	r0, r4
	mov	r1, #15
	bl	printf
	mov	r0, r4
	mov	r1, #7
	bl	printf
	mov	r0, r4
	mov	r1, #3
	bl	printf
	mov	r0, r4
	mov	r1, #1
	bl	printf
	mov	r0, r4
	mov	r1, #0
	bl	printf
	mov	r1, #0
	mov	r0, r4
	bl	printf
	ldr	r0, .L3+56
	bl	puts
	ldr	r0, .L3+60
	bl	puts
	ldr	r0, .L3+64
	bl	puts
	mov	r1, #15
	ldr	r0, .L3+68
	bl	printf
	ldr	r0, .L3+72
	bl	puts
	ldr	r0, .L3+76
	bl	puts
	ldr	r0, .L3+80
	bl	puts
	ldmfd	sp!, {r4, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC13
	.word	.LC12
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"//Cordic in %d bit signed fixed point math\012\000"
.LC1:
	.ascii	"//Function is valid for arguments in range -pi/2 --"
	.ascii	" pi/2\000"
	.space	3
.LC2:
	.ascii	"//for values pi/2--pi: value = half_pi-(theta-half_"
	.ascii	"pi) and similarly for values -pi---pi/2\000"
	.space	1
.LC3:
	.ascii	"//\000"
	.space	1
.LC4:
	.ascii	"// 1.0 = %d\012\000"
	.space	3
.LC5:
	.ascii	"// 1/k = 0.6072529350088812561694\000"
	.space	2
.LC6:
	.ascii	"// pi = 3.1415926536897932384626\000"
	.space	3
.LC7:
	.ascii	"//Constants\000"
.LC8:
	.ascii	"#define cordic_1K 0x%08X\012\000"
	.space	2
.LC9:
	.ascii	"#define half_pi 0x%08X\012\000"
.LC10:
	.ascii	"#define MUL %f\012\000"
.LC11:
	.ascii	"#define CORDIC_NTAB %d\012\000"
.LC12:
	.ascii	"int cordic_ctab [] = {\000"
	.space	1
.LC13:
	.ascii	"0x%08X, \000"
	.space	3
.LC14:
	.ascii	"};\012\000"
.LC15:
	.ascii	"void cordic(int theta, int *s, int *c, int n)\012{\012"
	.ascii	"  int k, d, tx, ty, tz;\000"
.LC16:
	.ascii	"  int x=cordic_1K,y=0,z=theta;\012  n = (n>CORDIC_N"
	.ascii	"TAB) ? CORDIC_NTAB : n;\000"
.LC17:
	.ascii	"  for (k=0; k<n; ++k)\012  {\012    d = z>>%d;\012\000"
	.space	2
.LC18:
	.ascii	"    //get sign. for other architectures, you might "
	.ascii	"want to use the more portable version\000"
	.space	3
.LC19:
	.ascii	"    //d = z>=0 ? 0 : -1;\012    tx = x - (((y>>k) ^"
	.ascii	" d) - d);\012    ty = y + (((x>>k) ^ d) - d);\000"
	.space	1
.LC20:
	.ascii	"    tz = z - ((cordic_ctab[k] ^ d) - d);\012    x ="
	.ascii	" tx; y = ty; z = tz;\012  }  \012 *c = x; *s = y;\012"
	.ascii	"}\000"
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
