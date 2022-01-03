<register_fini>:
    auipc x15 0xffff0
    addi x15 x15 -116
    beq x15 x0 16
    auipc x10 0x0
    addi x10 x10 420
    jal x0 340 <atexit>
<__start>
    auipc x3 0x2
	addi x10 x3 -972
	addi x12 x3 -944
	sub x12 x12 x10
	addi x11 x0 0
	jal x1 624 <memset>
	auipc x10 0x0
	addi x10 x10 376
	jal x1 296 <atexit>
	jal x1 460 <__libc_init_array>
	lw x10 0 x2
	addi x11 x2 4
	addi x12 x0 0
	jal x1 204 <main>
	jal x0 292 <exit>

<__do_global_dtors_aux>:
	lbu x15 -972 x3
	bne x15 x0 72
	auipc x15 0xffff0
	addi x15 x15 -216
	beq x15 x0 48
	addi x2 x2 -16
	auipc x10 0x1
	addi x10 x10 1300
	sw x1 12 x2
	auipc x1 0x0
	jalr x1 x0 0
	lw x1 12 x2
	addi x15 x0 1
	sb x15 -972 x3
	addi x2 x2 16
	jalr x0 x1 0
	addi x15 x0 1
	sb x15 -972 x3
	jalr x0 x1 0
	jalr x0 x1 0

<frame_dummy>:
	auipc x15 0xffff0
	addi x15 x15 -288
	beq x15 x0 24
	addi x11 x3 -968
	auipc x10 0x1
	addi x10 x10 1228
	auipc x6 0x0
	jalr x0 x0 0
	jalr x0 x1 0
	lui x2 0x100
	jal x1 76 <main>
	addi x11 x10 0
	addi x17 x0 10
	ecall

<max>:
	addi x2 x2 -32
	sw x8 28 x2
	addi x8 x2 32
	sw x10 -20 x8
	sw x11 -24 x8
	lw x14 -20 x8
	lw x15 -24 x8
	bge x15 x14 12
	lw x15 -20 x8
	jal x0 8
	lw x15 -24 x8
	addi x10 x15 0
	lw x8 28 x2
	addi x2 x2 32
	jalr x0 x1 0

<main>:
	addi x2 x2 -32
	sw x1 28 x2
	sw x8 24 x2
	addi x8 x2 32
	addi x15 x0 5
	sw x15 -20 x8
	addi x15 x0 10
	sw x15 -24 x8
	lw x11 -24 x8
	lw x10 -20 x8
	jal x1 -100 <max>
	sw x10 -28 x8
	addi x15 x0 0
	addi x10 x15 0
	lw x1 28 x2
	lw x8 24 x2
	addi x2 x2 32
	jalr x0 x1 0

<atexit>:
	addi x11 x10 0
	addi x13 x0 0
	addi x12 x0 0
	addi x10 x0 0
	jal x0 520 <__register_exitproc>

<exit>:
	addi x2 x2 -16
	addi x11 x0 0
	sw x8 8 x2
	sw x1 12 x2
	addi x8 x10 0
	jal x1 652 <__call_exitprocs>
	addi x15 x3 -984
	lw x10 0 x15
	lw x15 60 x10
	beq x15 x0 8
	jalr x1 x15 0
	addi x10 x8 0
	jal x1 908 <_exit>

<__libc_fini_array>:
	addi x2 x2 -16
	sw x8 8 x2
	auipc x15 0x1
	addi x15 x15 988
	auipc x8 0x1
	addi x8 x8 984
	sub x8 x8 x15
	sw x1 12 x2
	sw x9 4 x2
	srai x8 x8 2
	beq x8 x0 36
	slli x9 x8 2
	addi x9 x9 -4
	add x9 x9 x15
	lw x15 0 x9
	addi x8 x8 -1
	addi x9 x9 -4
	jalr x1 x15 0
	bne x8 x0 -16
	lw x1 12 x2
	lw x8 8 x2
	lw x9 4 x2
	addi x2 x2 16
	jalr x0 x1 0

<__libc_init_array>:
	addi x2 x2 -16
	sw x8 8 x2
	sw x18 0 x2
	auipc x8 0x1
	addi x8 x8 880
	auipc x18 0x1
	addi x18 x18 872
	sub x18 x18 x8
	sw x1 12 x2
	sw x9 4 x2
	srai x18 x18 2
	beq x18 x0 28
	addi x9 x0 0
	lw x15 0 x8
	addi x9 x9 1
	addi x8 x8 4
	jalr x1 x15 0
	bne x18 x9 -16
	auipc x8 0x1
	addi x8 x8 820
	auipc x18 0x1
	addi x18 x18 820
	sub x18 x18 x8
	srai x18 x18 2
	beq x18 x0 28
	addi x9 x0 0
	lw x15 0 x8
	addi x9 x9 1
	addi x8 x8 4
	jalr x1 x15 0
	bne x18 x9 -16
	lw x1 12 x2
	lw x8 8 x2
	lw x9 4 x2
	lw x18 0 x2
	addi x2 x2 16
	jalr x0 x1 0

<memset>:
	addi x6 x0 15
	addi x14 x10 0
	bgeu x6 x12 60
	andi x15 x14 15
	bne x15 x0 160
	bne x11 x0 132
	andi x13 x12 -16
	andi x12 x12 15
	add x13 x13 x14
	sw x11 0 x14
	sw x11 4 x14
	sw x11 8 x14
	sw x11 12 x14
	addi x14 x14 16
	bltu x14 x13 -20
	bne x12 x0 8
	jalr x0 x1 0
	sub x13 x6 x12
	slli x13 x13 2
	auipc x5 0x0
	add x13 x13 x5
	jalr x0 x13 12
	sb x11 14 x14
	sb x11 13 x14
	sb x11 12 x14
	sb x11 11 x14
	sb x11 10 x14
	sb x11 9 x14
	sb x11 8 x14
	sb x11 7 x14
	sb x11 6 x14
	sb x11 5 x14
	sb x11 4 x14
	sb x11 3 x14
	sb x11 2 x14
	sb x11 1 x14
	sb x11 0 x14
	jalr x0 x1 0
	andi x11 x11 255
	slli x13 x11 8
	or x11 x11 x13
	slli x13 x11 16
	or x11 x11 x13
	jal x0 -148
	slli x13 x15 2
	auipc x5 0x0
	add x13 x13 x5
	addi x5 x1 0
	jalr x1 x13 -96
	addi x1 x5 0
	addi x15 x15 -16
	sub x14 x14 x15
	add x12 x12 x15
	bgeu x6 x12 -144
	jal x0 -196

<__register_exitproc>:
	addi x15 x3 -984
	lw x14 0 x15
	lw x15 328 x14
	beq x15 x0 88
	lw x14 4 x15
	addi x16 x0 31
	blt x16 x14 124
	slli x16 x14 2
	beq x10 x0 44
	add x6 x15 x16
	sw x12 136 x6
	lw x17 392 x15
	addi x12 x0 1
	sll x12 x12 x14
	or x17 x17 x12
	sw x17 392 x15
	sw x13 264 x6
	addi x13 x0 2
	beq x10 x13 40
	addi x14 x14 1
	sw x14 4 x15
	add x15 x15 x16
	sw x11 8 x15
	addi x10 x0 0
	jalr x0 x1 0
	addi x15 x14 332
	sw x15 328 x14
	jal x0 -92
	lw x13 396 x15
	addi x14 x14 1
	sw x14 4 x15
	or x12 x13 x12
	sw x12 396 x15
	add x15 x15 x16
	sw x11 8 x15
	addi x10 x0 0
	jalr x0 x1 0
	addi x10 x0 -1
	jalr x0 x1 0

<__call_exitprocs>:
	addi x2 x2 -48
	addi x15 x3 -984
	sw x24 8 x2
	lw x24 0 x15
	sw x19 28 x2
	sw x20 24 x2
	sw x21 20 x2
	sw x22 16 x2
	sw x1 44 x2
	sw x8 40 x2
	sw x9 36 x2
	sw x18 32 x2
	sw x23 12 x2
	addi x21 x10 0
	addi x22 x11 0
	addi x20 x0 1
	addi x19 x0 -1
	lw x18 328 x24
	beq x18 x0 48
	lw x9 4 x18
	addi x8 x9 -1
	blt x8 x0 36
	slli x9 x9 2
	add x9 x18 x9
	beq x22 x0 72
	lw x15 260 x9
	beq x15 x22 64
	addi x8 x8 -1
	addi x9 x9 -4
	bne x8 x19 -20
	lw x1 44 x2
	lw x8 40 x2
	lw x9 36 x2
	lw x18 32 x2
	lw x19 28 x2
	lw x20 24 x2
	lw x21 20 x2
	lw x22 16 x2
	lw x23 12 x2
	lw x24 8 x2
	addi x2 x2 48
	jalr x0 x1 0
	lw x15 4 x18
	lw x13 4 x9
	addi x15 x15 -1
	beq x15 x8 84
	sw x0 4 x9
	beq x13 x0 -80
	lw x15 392 x18
	sll x14 x20 x8
	lw x23 4 x18
	and x15 x14 x15
	bne x15 x0 28
	jalr x1 x13 0
	lw x15 4 x18
	bne x15 x23 -152
	lw x15 328 x24
	beq x15 x18 -120
	jal x0 -164
	lw x15 396 x18
	lw x11 132 x9
	and x14 x14 x15
	bne x14 x0 24
	addi x10 x21 0
	jalr x1 x13 0
	jal x0 -44
	sw x8 4 x18
	jal x0 -80
	addi x10 x11 0
	jalr x1 x13 0
	jal x0 -64

<_exit>:
    addi x11 x0 0
    addi x12 x0 0
    addi x13 x0 0
    addi x14 x0 0
    addi x15 x0 0
    addi x17 x0 93
    ecall
    blt x10 x0 8
    jal x0 0
    addi x2 x2 -16
    sw x8 8 x2
    addi x8 x10 0
    sw x1 12 x2
    sub x8 x0 x8
    jal x1 12 <__errno>
    sw x8 0 x10
    jal x0 0    
<__errno>:
	addi x15 x3 -976
	lw x10 0 x15
	jalr x0 x1 0
