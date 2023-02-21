	.arch armv8-a
	.file	"sixealx.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Size of an int: %lu byte(s)\n"
	.align	3
.LC1:
	.string	"Size of a char: %lu byte(s)\n"
	.align	3
.LC2:
	.string	"Size of a long: %lu byte(s)\n"
	.align	3
.LC3:
	.string	"Size of a float: %lu byte(s)\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	x1, 4
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	mov	x1, 1
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	x1, 8
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	x1, 4
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
