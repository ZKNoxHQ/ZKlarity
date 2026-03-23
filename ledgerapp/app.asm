
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f007 ff6b 	bl	c0de7ee0 <os_boot>
c0de000a:	b90c      	cbnz	r4, c0de0010 <main+0x10>
c0de000c:	f007 fd80 	bl	c0de7b10 <standalone_app_main>
c0de0010:	2000      	movs	r0, #0
c0de0012:	bd10      	pop	{r4, pc}

c0de0014 <address_from_pubkey>:
c0de0014:	b570      	push	{r4, r5, r6, lr}
c0de0016:	b08a      	sub	sp, #40	@ 0x28
c0de0018:	460c      	mov	r4, r1
c0de001a:	4605      	mov	r5, r0
c0de001c:	4668      	mov	r0, sp
c0de001e:	2120      	movs	r1, #32
c0de0020:	4616      	mov	r6, r2
c0de0022:	f008 fc75 	bl	c0de8910 <__aeabi_memclr>
c0de0026:	b914      	cbnz	r4, c0de002e <address_from_pubkey+0x1a>
c0de0028:	2001      	movs	r0, #1
c0de002a:	f007 feef 	bl	c0de7e0c <assert_exit>
c0de002e:	2e14      	cmp	r6, #20
c0de0030:	d30a      	bcc.n	c0de0048 <address_from_pubkey+0x34>
c0de0032:	2040      	movs	r0, #64	@ 0x40
c0de0034:	2101      	movs	r1, #1
c0de0036:	9009      	str	r0, [sp, #36]	@ 0x24
c0de0038:	1c68      	adds	r0, r5, #1
c0de003a:	466d      	mov	r5, sp
c0de003c:	9008      	str	r0, [sp, #32]
c0de003e:	a808      	add	r0, sp, #32
c0de0040:	462a      	mov	r2, r5
c0de0042:	f007 feaf 	bl	c0de7da4 <cx_keccak_256_hash_iovec>
c0de0046:	b108      	cbz	r0, c0de004c <address_from_pubkey+0x38>
c0de0048:	2000      	movs	r0, #0
c0de004a:	e006      	b.n	c0de005a <address_from_pubkey+0x46>
c0de004c:	f105 010c 	add.w	r1, r5, #12
c0de0050:	4620      	mov	r0, r4
c0de0052:	2214      	movs	r2, #20
c0de0054:	f008 fc52 	bl	c0de88fc <__aeabi_memcpy>
c0de0058:	2001      	movs	r0, #1
c0de005a:	b00a      	add	sp, #40	@ 0x28
c0de005c:	bd70      	pop	{r4, r5, r6, pc}

c0de005e <apdu_dispatcher>:
c0de005e:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0060:	4604      	mov	r4, r0
c0de0062:	b910      	cbnz	r0, c0de006a <apdu_dispatcher+0xc>
c0de0064:	2001      	movs	r0, #1
c0de0066:	f007 fed1 	bl	c0de7e0c <assert_exit>
c0de006a:	7820      	ldrb	r0, [r4, #0]
c0de006c:	28e0      	cmp	r0, #224	@ 0xe0
c0de006e:	d127      	bne.n	c0de00c0 <apdu_dispatcher+0x62>
c0de0070:	2000      	movs	r0, #0
c0de0072:	9003      	str	r0, [sp, #12]
c0de0074:	e9cd 0001 	strd	r0, r0, [sp, #4]
c0de0078:	7860      	ldrb	r0, [r4, #1]
c0de007a:	2840      	cmp	r0, #64	@ 0x40
c0de007c:	d023      	beq.n	c0de00c6 <apdu_dispatcher+0x68>
c0de007e:	2804      	cmp	r0, #4
c0de0080:	d031      	beq.n	c0de00e6 <apdu_dispatcher+0x88>
c0de0082:	2805      	cmp	r0, #5
c0de0084:	d039      	beq.n	c0de00fa <apdu_dispatcher+0x9c>
c0de0086:	2806      	cmp	r0, #6
c0de0088:	d04a      	beq.n	c0de0120 <apdu_dispatcher+0xc2>
c0de008a:	2820      	cmp	r0, #32
c0de008c:	d053      	beq.n	c0de0136 <apdu_dispatcher+0xd8>
c0de008e:	2821      	cmp	r0, #33	@ 0x21
c0de0090:	d05f      	beq.n	c0de0152 <apdu_dispatcher+0xf4>
c0de0092:	2822      	cmp	r0, #34	@ 0x22
c0de0094:	d066      	beq.n	c0de0164 <apdu_dispatcher+0x106>
c0de0096:	2823      	cmp	r0, #35	@ 0x23
c0de0098:	d06c      	beq.n	c0de0174 <apdu_dispatcher+0x116>
c0de009a:	2830      	cmp	r0, #48	@ 0x30
c0de009c:	d073      	beq.n	c0de0186 <apdu_dispatcher+0x128>
c0de009e:	2831      	cmp	r0, #49	@ 0x31
c0de00a0:	d07e      	beq.n	c0de01a0 <apdu_dispatcher+0x142>
c0de00a2:	2803      	cmp	r0, #3
c0de00a4:	f040 8089 	bne.w	c0de01ba <apdu_dispatcher+0x15c>
c0de00a8:	78a0      	ldrb	r0, [r4, #2]
c0de00aa:	2800      	cmp	r0, #0
c0de00ac:	f040 8097 	bne.w	c0de01de <apdu_dispatcher+0x180>
c0de00b0:	78e0      	ldrb	r0, [r4, #3]
c0de00b2:	2800      	cmp	r0, #0
c0de00b4:	f040 8093 	bne.w	c0de01de <apdu_dispatcher+0x180>
c0de00b8:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de00bc:	f000 b953 	b.w	c0de0366 <handler_get_version>
c0de00c0:	f44f 40dc 	mov.w	r0, #28160	@ 0x6e00
c0de00c4:	e08d      	b.n	c0de01e2 <apdu_dispatcher+0x184>
c0de00c6:	78e0      	ldrb	r0, [r4, #3]
c0de00c8:	f040 0180 	orr.w	r1, r0, #128	@ 0x80
c0de00cc:	2980      	cmp	r1, #128	@ 0x80
c0de00ce:	f040 8086 	bne.w	c0de01de <apdu_dispatcher+0x180>
c0de00d2:	68a1      	ldr	r1, [r4, #8]
c0de00d4:	2900      	cmp	r1, #0
c0de00d6:	f000 8089 	beq.w	c0de01ec <apdu_dispatcher+0x18e>
c0de00da:	f000 f891 	bl	c0de0200 <OUTLINED_FUNCTION_0>
c0de00de:	a801      	add	r0, sp, #4
c0de00e0:	f000 f958 	bl	c0de0394 <handler_groth16_verify>
c0de00e4:	e079      	b.n	c0de01da <apdu_dispatcher+0x17c>
c0de00e6:	78a0      	ldrb	r0, [r4, #2]
c0de00e8:	2800      	cmp	r0, #0
c0de00ea:	d178      	bne.n	c0de01de <apdu_dispatcher+0x180>
c0de00ec:	78e0      	ldrb	r0, [r4, #3]
c0de00ee:	2800      	cmp	r0, #0
c0de00f0:	d175      	bne.n	c0de01de <apdu_dispatcher+0x180>
c0de00f2:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de00f6:	f000 b8cf 	b.w	c0de0298 <handler_get_app_name>
c0de00fa:	78a1      	ldrb	r1, [r4, #2]
c0de00fc:	2901      	cmp	r1, #1
c0de00fe:	d86e      	bhi.n	c0de01de <apdu_dispatcher+0x180>
c0de0100:	78e0      	ldrb	r0, [r4, #3]
c0de0102:	2800      	cmp	r0, #0
c0de0104:	d16b      	bne.n	c0de01de <apdu_dispatcher+0x180>
c0de0106:	68a0      	ldr	r0, [r4, #8]
c0de0108:	2800      	cmp	r0, #0
c0de010a:	d06f      	beq.n	c0de01ec <apdu_dispatcher+0x18e>
c0de010c:	9001      	str	r0, [sp, #4]
c0de010e:	7920      	ldrb	r0, [r4, #4]
c0de0110:	2900      	cmp	r1, #0
c0de0112:	9002      	str	r0, [sp, #8]
c0de0114:	bf18      	it	ne
c0de0116:	2101      	movne	r1, #1
c0de0118:	a801      	add	r0, sp, #4
c0de011a:	f000 f8d1 	bl	c0de02c0 <handler_get_public_key>
c0de011e:	e05c      	b.n	c0de01da <apdu_dispatcher+0x17c>
c0de0120:	78a1      	ldrb	r1, [r4, #2]
c0de0122:	2900      	cmp	r1, #0
c0de0124:	d04c      	beq.n	c0de01c0 <apdu_dispatcher+0x162>
c0de0126:	2903      	cmp	r1, #3
c0de0128:	d859      	bhi.n	c0de01de <apdu_dispatcher+0x180>
c0de012a:	78e0      	ldrb	r0, [r4, #3]
c0de012c:	f040 0280 	orr.w	r2, r0, #128	@ 0x80
c0de0130:	2a80      	cmp	r2, #128	@ 0x80
c0de0132:	d049      	beq.n	c0de01c8 <apdu_dispatcher+0x16a>
c0de0134:	e053      	b.n	c0de01de <apdu_dispatcher+0x180>
c0de0136:	78e0      	ldrb	r0, [r4, #3]
c0de0138:	f040 0180 	orr.w	r1, r0, #128	@ 0x80
c0de013c:	2980      	cmp	r1, #128	@ 0x80
c0de013e:	d14e      	bne.n	c0de01de <apdu_dispatcher+0x180>
c0de0140:	68a1      	ldr	r1, [r4, #8]
c0de0142:	2900      	cmp	r1, #0
c0de0144:	d052      	beq.n	c0de01ec <apdu_dispatcher+0x18e>
c0de0146:	f000 f85b 	bl	c0de0200 <OUTLINED_FUNCTION_0>
c0de014a:	a801      	add	r0, sp, #4
c0de014c:	f000 fa0c 	bl	c0de0568 <handler_pairing_compute>
c0de0150:	e043      	b.n	c0de01da <apdu_dispatcher+0x17c>
c0de0152:	78e0      	ldrb	r0, [r4, #3]
c0de0154:	2800      	cmp	r0, #0
c0de0156:	d142      	bne.n	c0de01de <apdu_dispatcher+0x180>
c0de0158:	78a0      	ldrb	r0, [r4, #2]
c0de015a:	b004      	add	sp, #16
c0de015c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de0160:	f000 bb20 	b.w	c0de07a4 <handler_pairing_getresult>
c0de0164:	78a0      	ldrb	r0, [r4, #2]
c0de0166:	bbd0      	cbnz	r0, c0de01de <apdu_dispatcher+0x180>
c0de0168:	78e0      	ldrb	r0, [r4, #3]
c0de016a:	bbc0      	cbnz	r0, c0de01de <apdu_dispatcher+0x180>
c0de016c:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0170:	f000 bc7c 	b.w	c0de0a6c <handler_pairing_test>
c0de0174:	68a0      	ldr	r0, [r4, #8]
c0de0176:	b3c8      	cbz	r0, c0de01ec <apdu_dispatcher+0x18e>
c0de0178:	9001      	str	r0, [sp, #4]
c0de017a:	7920      	ldrb	r0, [r4, #4]
c0de017c:	9002      	str	r0, [sp, #8]
c0de017e:	a801      	add	r0, sp, #4
c0de0180:	f000 fb48 	bl	c0de0814 <handler_pairing_scalarmul>
c0de0184:	e029      	b.n	c0de01da <apdu_dispatcher+0x17c>
c0de0186:	78a0      	ldrb	r0, [r4, #2]
c0de0188:	bb48      	cbnz	r0, c0de01de <apdu_dispatcher+0x180>
c0de018a:	78e0      	ldrb	r0, [r4, #3]
c0de018c:	bb38      	cbnz	r0, c0de01de <apdu_dispatcher+0x180>
c0de018e:	68a0      	ldr	r0, [r4, #8]
c0de0190:	b360      	cbz	r0, c0de01ec <apdu_dispatcher+0x18e>
c0de0192:	9001      	str	r0, [sp, #4]
c0de0194:	7920      	ldrb	r0, [r4, #4]
c0de0196:	9002      	str	r0, [sp, #8]
c0de0198:	a801      	add	r0, sp, #4
c0de019a:	f000 f95a 	bl	c0de0452 <handler_g1_on_curve>
c0de019e:	e01c      	b.n	c0de01da <apdu_dispatcher+0x17c>
c0de01a0:	78a0      	ldrb	r0, [r4, #2]
c0de01a2:	b9e0      	cbnz	r0, c0de01de <apdu_dispatcher+0x180>
c0de01a4:	78e0      	ldrb	r0, [r4, #3]
c0de01a6:	b9d0      	cbnz	r0, c0de01de <apdu_dispatcher+0x180>
c0de01a8:	68a0      	ldr	r0, [r4, #8]
c0de01aa:	b1f8      	cbz	r0, c0de01ec <apdu_dispatcher+0x18e>
c0de01ac:	9001      	str	r0, [sp, #4]
c0de01ae:	7920      	ldrb	r0, [r4, #4]
c0de01b0:	9002      	str	r0, [sp, #8]
c0de01b2:	a801      	add	r0, sp, #4
c0de01b4:	f000 f996 	bl	c0de04e4 <handler_g2_on_curve>
c0de01b8:	e00f      	b.n	c0de01da <apdu_dispatcher+0x17c>
c0de01ba:	f44f 40da 	mov.w	r0, #27904	@ 0x6d00
c0de01be:	e010      	b.n	c0de01e2 <apdu_dispatcher+0x184>
c0de01c0:	78e0      	ldrb	r0, [r4, #3]
c0de01c2:	2880      	cmp	r0, #128	@ 0x80
c0de01c4:	d10b      	bne.n	c0de01de <apdu_dispatcher+0x180>
c0de01c6:	2080      	movs	r0, #128	@ 0x80
c0de01c8:	68a2      	ldr	r2, [r4, #8]
c0de01ca:	b17a      	cbz	r2, c0de01ec <apdu_dispatcher+0x18e>
c0de01cc:	9201      	str	r2, [sp, #4]
c0de01ce:	7922      	ldrb	r2, [r4, #4]
c0de01d0:	9202      	str	r2, [sp, #8]
c0de01d2:	09c2      	lsrs	r2, r0, #7
c0de01d4:	a801      	add	r0, sp, #4
c0de01d6:	f000 fbad 	bl	c0de0934 <handler_sign_tx>
c0de01da:	b004      	add	sp, #16
c0de01dc:	bd10      	pop	{r4, pc}
c0de01de:	f646 2086 	movw	r0, #27270	@ 0x6a86
c0de01e2:	b004      	add	sp, #16
c0de01e4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de01e8:	f000 b803 	b.w	c0de01f2 <io_send_sw>
c0de01ec:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de01f0:	e7f7      	b.n	c0de01e2 <apdu_dispatcher+0x184>

c0de01f2 <io_send_sw>:
c0de01f2:	b580      	push	{r7, lr}
c0de01f4:	4602      	mov	r2, r0
c0de01f6:	2000      	movs	r0, #0
c0de01f8:	2100      	movs	r1, #0
c0de01fa:	f007 fc49 	bl	c0de7a90 <io_send_response_buffers>
c0de01fe:	bd80      	pop	{r7, pc}

c0de0200 <OUTLINED_FUNCTION_0>:
c0de0200:	b240      	sxtb	r0, r0
c0de0202:	7922      	ldrb	r2, [r4, #4]
c0de0204:	9101      	str	r1, [sp, #4]
c0de0206:	78a1      	ldrb	r1, [r4, #2]
c0de0208:	b2c0      	uxtb	r0, r0
c0de020a:	9202      	str	r2, [sp, #8]
c0de020c:	09c2      	lsrs	r2, r0, #7
c0de020e:	4770      	bx	lr

c0de0210 <app_main>:
c0de0210:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de0212:	f007 fc1f 	bl	c0de7a54 <io_init>
c0de0216:	f000 fdc9 	bl	c0de0dac <ui_menu_main>
c0de021a:	481b      	ldr	r0, [pc, #108]	@ (c0de0288 <app_main+0x78>)
c0de021c:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de0220:	4448      	add	r0, r9
c0de0222:	f008 fb83 	bl	c0de892c <explicit_bzero>
c0de0226:	481a      	ldr	r0, [pc, #104]	@ (c0de0290 <app_main+0x80>)
c0de0228:	4478      	add	r0, pc
c0de022a:	f008 f981 	bl	c0de8530 <pic>
c0de022e:	7880      	ldrb	r0, [r0, #2]
c0de0230:	2801      	cmp	r0, #1
c0de0232:	d00d      	beq.n	c0de0250 <app_main+0x40>
c0de0234:	2001      	movs	r0, #1
c0de0236:	f88d 0002 	strb.w	r0, [sp, #2]
c0de023a:	2000      	movs	r0, #0
c0de023c:	f8ad 0000 	strh.w	r0, [sp]
c0de0240:	4814      	ldr	r0, [pc, #80]	@ (c0de0294 <app_main+0x84>)
c0de0242:	4478      	add	r0, pc
c0de0244:	f008 f974 	bl	c0de8530 <pic>
c0de0248:	4669      	mov	r1, sp
c0de024a:	2203      	movs	r2, #3
c0de024c:	f008 f9a0 	bl	c0de8590 <nvm_write>
c0de0250:	4d0e      	ldr	r5, [pc, #56]	@ (c0de028c <app_main+0x7c>)
c0de0252:	ac01      	add	r4, sp, #4
c0de0254:	f007 fc06 	bl	c0de7a64 <io_recv_command>
c0de0258:	2800      	cmp	r0, #0
c0de025a:	d414      	bmi.n	c0de0286 <app_main+0x76>
c0de025c:	4602      	mov	r2, r0
c0de025e:	eb09 0105 	add.w	r1, r9, r5
c0de0262:	4620      	mov	r0, r4
c0de0264:	f007 fc7b 	bl	c0de7b5e <apdu_parser>
c0de0268:	b130      	cbz	r0, c0de0278 <app_main+0x68>
c0de026a:	4620      	mov	r0, r4
c0de026c:	f7ff fef7 	bl	c0de005e <apdu_dispatcher>
c0de0270:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de0274:	dcee      	bgt.n	c0de0254 <app_main+0x44>
c0de0276:	e006      	b.n	c0de0286 <app_main+0x76>
c0de0278:	2000      	movs	r0, #0
c0de027a:	2100      	movs	r1, #0
c0de027c:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de0280:	f007 fc06 	bl	c0de7a90 <io_send_response_buffers>
c0de0284:	e7e6      	b.n	c0de0254 <app_main+0x44>
c0de0286:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de0288:	00000000 	.word	0x00000000
c0de028c:	00000f01 	.word	0x00000f01
c0de0290:	000093d4 	.word	0x000093d4
c0de0294:	000093ba 	.word	0x000093ba

c0de0298 <handler_get_app_name>:
c0de0298:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de029a:	4808      	ldr	r0, [pc, #32]	@ (c0de02bc <handler_get_app_name+0x24>)
c0de029c:	4478      	add	r0, pc
c0de029e:	f008 f947 	bl	c0de8530 <pic>
c0de02a2:	2100      	movs	r1, #0
c0de02a4:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de02a8:	9103      	str	r1, [sp, #12]
c0de02aa:	2103      	movs	r1, #3
c0de02ac:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de02b0:	a801      	add	r0, sp, #4
c0de02b2:	2101      	movs	r1, #1
c0de02b4:	f007 fbec 	bl	c0de7a90 <io_send_response_buffers>
c0de02b8:	b004      	add	sp, #16
c0de02ba:	bd80      	pop	{r7, pc}
c0de02bc:	00008c0b 	.word	0x00008c0b

c0de02c0 <handler_get_public_key>:
c0de02c0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de02c2:	b085      	sub	sp, #20
c0de02c4:	4f23      	ldr	r7, [pc, #140]	@ (c0de0354 <handler_get_public_key+0x94>)
c0de02c6:	460c      	mov	r4, r1
c0de02c8:	4605      	mov	r5, r0
c0de02ca:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de02ce:	eb09 0607 	add.w	r6, r9, r7
c0de02d2:	4630      	mov	r0, r6
c0de02d4:	f008 fb2a 	bl	c0de892c <explicit_bzero>
c0de02d8:	2000      	movs	r0, #0
c0de02da:	f506 7135 	add.w	r1, r6, #724	@ 0x2d4
c0de02de:	f809 0007 	strb.w	r0, [r9, r7]
c0de02e2:	f886 02a8 	strb.w	r0, [r6, #680]	@ 0x2a8
c0de02e6:	4628      	mov	r0, r5
c0de02e8:	f007 f980 	bl	c0de75ec <buffer_read_u8>
c0de02ec:	b308      	cbz	r0, c0de0332 <handler_get_public_key+0x72>
c0de02ee:	eb09 0007 	add.w	r0, r9, r7
c0de02f2:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de02f6:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de02fa:	4628      	mov	r0, r5
c0de02fc:	f007 f9c9 	bl	c0de7692 <buffer_read_bip32_path>
c0de0300:	b1b8      	cbz	r0, c0de0332 <handler_get_public_key+0x72>
c0de0302:	eb09 0007 	add.w	r0, r9, r7
c0de0306:	2100      	movs	r1, #0
c0de0308:	2205      	movs	r2, #5
c0de030a:	f890 32d4 	ldrb.w	r3, [r0, #724]	@ 0x2d4
c0de030e:	e9cd 2102 	strd	r2, r1, [sp, #8]
c0de0312:	9104      	str	r1, [sp, #16]
c0de0314:	f100 0549 	add.w	r5, r0, #73	@ 0x49
c0de0318:	f100 0608 	add.w	r6, r0, #8
c0de031c:	f500 722b 	add.w	r2, r0, #684	@ 0x2ac
c0de0320:	2000      	movs	r0, #0
c0de0322:	2121      	movs	r1, #33	@ 0x21
c0de0324:	e9cd 6500 	strd	r6, r5, [sp]
c0de0328:	f007 fa74 	bl	c0de7814 <bip32_derive_with_seed_get_pubkey_256>
c0de032c:	b140      	cbz	r0, c0de0340 <handler_get_public_key+0x80>
c0de032e:	b280      	uxth	r0, r0
c0de0330:	e001      	b.n	c0de0336 <handler_get_public_key+0x76>
c0de0332:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0336:	b005      	add	sp, #20
c0de0338:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de033c:	f000 b80c 	b.w	c0de0358 <io_send_sw>
c0de0340:	2c00      	cmp	r4, #0
c0de0342:	b005      	add	sp, #20
c0de0344:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de0348:	bf08      	it	eq
c0de034a:	f000 bbff 	beq.w	c0de0b4c <helper_send_response_pubkey>
c0de034e:	f000 be11 	b.w	c0de0f74 <ui_display_address>
c0de0352:	bf00      	nop
c0de0354:	00000000 	.word	0x00000000

c0de0358 <io_send_sw>:
c0de0358:	b580      	push	{r7, lr}
c0de035a:	4602      	mov	r2, r0
c0de035c:	2000      	movs	r0, #0
c0de035e:	2100      	movs	r1, #0
c0de0360:	f007 fb96 	bl	c0de7a90 <io_send_response_buffers>
c0de0364:	bd80      	pop	{r7, pc}

c0de0366 <handler_get_version>:
c0de0366:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de0368:	2000      	movs	r0, #0
c0de036a:	2101      	movs	r1, #1
c0de036c:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0370:	f88d 0002 	strb.w	r0, [sp, #2]
c0de0374:	f88d 0001 	strb.w	r0, [sp, #1]
c0de0378:	9003      	str	r0, [sp, #12]
c0de037a:	2003      	movs	r0, #3
c0de037c:	f88d 1003 	strb.w	r1, [sp, #3]
c0de0380:	2101      	movs	r1, #1
c0de0382:	9002      	str	r0, [sp, #8]
c0de0384:	f10d 0001 	add.w	r0, sp, #1
c0de0388:	9001      	str	r0, [sp, #4]
c0de038a:	a801      	add	r0, sp, #4
c0de038c:	f007 fb80 	bl	c0de7a90 <io_send_response_buffers>
c0de0390:	b004      	add	sp, #16
c0de0392:	bd80      	pop	{r7, pc}

c0de0394 <handler_groth16_verify>:
c0de0394:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0396:	b085      	sub	sp, #20
c0de0398:	2900      	cmp	r1, #0
c0de039a:	4928      	ldr	r1, [pc, #160]	@ (c0de043c <handler_groth16_verify+0xa8>)
c0de039c:	bf06      	itte	eq
c0de039e:	2500      	moveq	r5, #0
c0de03a0:	f829 5001 	strheq.w	r5, [r9, r1]
c0de03a4:	f839 5001 	ldrhne.w	r5, [r9, r1]
c0de03a8:	4614      	mov	r4, r2
c0de03aa:	e9d0 2101 	ldrd	r2, r1, [r0, #4]
c0de03ae:	1a56      	subs	r6, r2, r1
c0de03b0:	b2b2      	uxth	r2, r6
c0de03b2:	1953      	adds	r3, r2, r5
c0de03b4:	f5b3 7fe0 	cmp.w	r3, #448	@ 0x1c0
c0de03b8:	d839      	bhi.n	c0de042e <handler_groth16_verify+0x9a>
c0de03ba:	4f21      	ldr	r7, [pc, #132]	@ (c0de0440 <handler_groth16_verify+0xac>)
c0de03bc:	6800      	ldr	r0, [r0, #0]
c0de03be:	eb09 0307 	add.w	r3, r9, r7
c0de03c2:	4401      	add	r1, r0
c0de03c4:	442b      	add	r3, r5
c0de03c6:	4618      	mov	r0, r3
c0de03c8:	f008 fa98 	bl	c0de88fc <__aeabi_memcpy>
c0de03cc:	19a8      	adds	r0, r5, r6
c0de03ce:	4e1b      	ldr	r6, [pc, #108]	@ (c0de043c <handler_groth16_verify+0xa8>)
c0de03d0:	f829 0006 	strh.w	r0, [r9, r6]
c0de03d4:	b114      	cbz	r4, c0de03dc <handler_groth16_verify+0x48>
c0de03d6:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de03da:	e02a      	b.n	c0de0432 <handler_groth16_verify+0x9e>
c0de03dc:	b280      	uxth	r0, r0
c0de03de:	f5b0 7fe0 	cmp.w	r0, #448	@ 0x1c0
c0de03e2:	d124      	bne.n	c0de042e <handler_groth16_verify+0x9a>
c0de03e4:	eb09 0407 	add.w	r4, r9, r7
c0de03e8:	f003 fc7c 	bl	c0de3ce4 <zkn_bls12381_ctx>
c0de03ec:	4601      	mov	r1, r0
c0de03ee:	4620      	mov	r0, r4
c0de03f0:	f002 fdfe 	bl	c0de2ff0 <zkn_groth16_verify>
c0de03f4:	4605      	mov	r5, r0
c0de03f6:	4620      	mov	r0, r4
c0de03f8:	f44f 71e0 	mov.w	r1, #448	@ 0x1c0
c0de03fc:	f008 fa96 	bl	c0de892c <explicit_bzero>
c0de0400:	2000      	movs	r0, #0
c0de0402:	1e69      	subs	r1, r5, #1
c0de0404:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0408:	fab1 f181 	clz	r1, r1
c0de040c:	f829 0006 	strh.w	r0, [r9, r6]
c0de0410:	9004      	str	r0, [sp, #16]
c0de0412:	f10d 0007 	add.w	r0, sp, #7
c0de0416:	0949      	lsrs	r1, r1, #5
c0de0418:	9002      	str	r0, [sp, #8]
c0de041a:	2001      	movs	r0, #1
c0de041c:	f88d 1007 	strb.w	r1, [sp, #7]
c0de0420:	9003      	str	r0, [sp, #12]
c0de0422:	a802      	add	r0, sp, #8
c0de0424:	2101      	movs	r1, #1
c0de0426:	f007 fb33 	bl	c0de7a90 <io_send_response_buffers>
c0de042a:	b005      	add	sp, #20
c0de042c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de042e:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0432:	b005      	add	sp, #20
c0de0434:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de0438:	f000 b804 	b.w	c0de0444 <io_send_sw>
c0de043c:	0000063e 	.word	0x0000063e
c0de0440:	00000640 	.word	0x00000640

c0de0444 <io_send_sw>:
c0de0444:	b580      	push	{r7, lr}
c0de0446:	4602      	mov	r2, r0
c0de0448:	2000      	movs	r0, #0
c0de044a:	2100      	movs	r1, #0
c0de044c:	f007 fb20 	bl	c0de7a90 <io_send_response_buffers>
c0de0450:	bd80      	pop	{r7, pc}

c0de0452 <handler_g1_on_curve>:
c0de0452:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0454:	b0bd      	sub	sp, #244	@ 0xf4
c0de0456:	e9d0 2101 	ldrd	r2, r1, [r0, #4]
c0de045a:	1a52      	subs	r2, r2, r1
c0de045c:	2a60      	cmp	r2, #96	@ 0x60
c0de045e:	d125      	bne.n	c0de04ac <handler_g1_on_curve+0x5a>
c0de0460:	6800      	ldr	r0, [r0, #0]
c0de0462:	1844      	adds	r4, r0, r1
c0de0464:	f003 fc3e 	bl	c0de3ce4 <zkn_bls12381_ctx>
c0de0468:	ae31      	add	r6, sp, #196	@ 0xc4
c0de046a:	4605      	mov	r5, r0
c0de046c:	4621      	mov	r1, r4
c0de046e:	4630      	mov	r0, r6
c0de0470:	f003 fb6f 	bl	c0de3b52 <zkn_fe384_from_be>
c0de0474:	f104 0130 	add.w	r1, r4, #48	@ 0x30
c0de0478:	ac25      	add	r4, sp, #148	@ 0x94
c0de047a:	4620      	mov	r0, r4
c0de047c:	f003 fb69 	bl	c0de3b52 <zkn_fe384_from_be>
c0de0480:	af01      	add	r7, sp, #4
c0de0482:	4631      	mov	r1, r6
c0de0484:	4622      	mov	r2, r4
c0de0486:	462b      	mov	r3, r5
c0de0488:	4638      	mov	r0, r7
c0de048a:	f002 f86d 	bl	c0de2568 <zkn_g1_384_from_affine>
c0de048e:	4638      	mov	r0, r7
c0de0490:	4629      	mov	r1, r5
c0de0492:	f002 f8c1 	bl	c0de2618 <zkn_g1_384_on_curve>
c0de0496:	2800      	cmp	r0, #0
c0de0498:	bf18      	it	ne
c0de049a:	2001      	movne	r0, #1
c0de049c:	f88d 0003 	strb.w	r0, [sp, #3]
c0de04a0:	f10d 0003 	add.w	r0, sp, #3
c0de04a4:	f000 f80f 	bl	c0de04c6 <io_send_response_pointer>
c0de04a8:	b03d      	add	sp, #244	@ 0xf4
c0de04aa:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de04ac:	b03d      	add	sp, #244	@ 0xf4
c0de04ae:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de04b2:	f000 b800 	b.w	c0de04b6 <io_send_sw>

c0de04b6 <io_send_sw>:
c0de04b6:	b580      	push	{r7, lr}
c0de04b8:	2000      	movs	r0, #0
c0de04ba:	2100      	movs	r1, #0
c0de04bc:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de04c0:	f007 fae6 	bl	c0de7a90 <io_send_response_buffers>
c0de04c4:	bd80      	pop	{r7, pc}

c0de04c6 <io_send_response_pointer>:
c0de04c6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de04c8:	2100      	movs	r1, #0
c0de04ca:	9001      	str	r0, [sp, #4]
c0de04cc:	2001      	movs	r0, #1
c0de04ce:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de04d2:	9103      	str	r1, [sp, #12]
c0de04d4:	9002      	str	r0, [sp, #8]
c0de04d6:	a801      	add	r0, sp, #4
c0de04d8:	2101      	movs	r1, #1
c0de04da:	f007 fad9 	bl	c0de7a90 <io_send_response_buffers>
c0de04de:	b004      	add	sp, #16
c0de04e0:	bd80      	pop	{r7, pc}
	...

c0de04e4 <handler_g2_on_curve>:
c0de04e4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de04e8:	b0fa      	sub	sp, #488	@ 0x1e8
c0de04ea:	e9d0 2101 	ldrd	r2, r1, [r0, #4]
c0de04ee:	1a52      	subs	r2, r2, r1
c0de04f0:	2ac0      	cmp	r2, #192	@ 0xc0
c0de04f2:	d131      	bne.n	c0de0558 <handler_g2_on_curve+0x74>
c0de04f4:	6800      	ldr	r0, [r0, #0]
c0de04f6:	1846      	adds	r6, r0, r1
c0de04f8:	f003 fbf4 	bl	c0de3ce4 <zkn_bls12381_ctx>
c0de04fc:	4d19      	ldr	r5, [pc, #100]	@ (c0de0564 <handler_g2_on_curve+0x80>)
c0de04fe:	f50d 78c4 	add.w	r8, sp, #392	@ 0x188
c0de0502:	4604      	mov	r4, r0
c0de0504:	4631      	mov	r1, r6
c0de0506:	4640      	mov	r0, r8
c0de0508:	447d      	add	r5, pc
c0de050a:	47a8      	blx	r5
c0de050c:	f106 0130 	add.w	r1, r6, #48	@ 0x30
c0de0510:	f108 0030 	add.w	r0, r8, #48	@ 0x30
c0de0514:	47a8      	blx	r5
c0de0516:	af4a      	add	r7, sp, #296	@ 0x128
c0de0518:	f106 0160 	add.w	r1, r6, #96	@ 0x60
c0de051c:	4638      	mov	r0, r7
c0de051e:	47a8      	blx	r5
c0de0520:	f106 0190 	add.w	r1, r6, #144	@ 0x90
c0de0524:	f107 0030 	add.w	r0, r7, #48	@ 0x30
c0de0528:	47a8      	blx	r5
c0de052a:	ae02      	add	r6, sp, #8
c0de052c:	4641      	mov	r1, r8
c0de052e:	463a      	mov	r2, r7
c0de0530:	4623      	mov	r3, r4
c0de0532:	4630      	mov	r0, r6
c0de0534:	f002 fb0e 	bl	c0de2b54 <zkn_g2_384_from_affine>
c0de0538:	4630      	mov	r0, r6
c0de053a:	4621      	mov	r1, r4
c0de053c:	f002 fb5c 	bl	c0de2bf8 <zkn_g2_384_on_curve>
c0de0540:	2800      	cmp	r0, #0
c0de0542:	bf18      	it	ne
c0de0544:	2001      	movne	r0, #1
c0de0546:	f88d 0007 	strb.w	r0, [sp, #7]
c0de054a:	f10d 0007 	add.w	r0, sp, #7
c0de054e:	f7ff ffba 	bl	c0de04c6 <io_send_response_pointer>
c0de0552:	b07a      	add	sp, #488	@ 0x1e8
c0de0554:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de0558:	b07a      	add	sp, #488	@ 0x1e8
c0de055a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de055e:	f7ff bfaa 	b.w	c0de04b6 <io_send_sw>
c0de0562:	bf00      	nop
c0de0564:	00003647 	.word	0x00003647

c0de0568 <handler_pairing_compute>:
c0de0568:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de056c:	f5ad 6d8b 	sub.w	sp, sp, #1112	@ 0x458
c0de0570:	4605      	mov	r5, r0
c0de0572:	487d      	ldr	r0, [pc, #500]	@ (c0de0768 <handler_pairing_compute+0x200>)
c0de0574:	4614      	mov	r4, r2
c0de0576:	4448      	add	r0, r9
c0de0578:	b111      	cbz	r1, c0de0580 <handler_pairing_compute+0x18>
c0de057a:	f8b0 0360 	ldrh.w	r0, [r0, #864]	@ 0x360
c0de057e:	e004      	b.n	c0de058a <handler_pairing_compute+0x22>
c0de0580:	f240 3166 	movw	r1, #870	@ 0x366
c0de0584:	f008 f9c4 	bl	c0de8910 <__aeabi_memclr>
c0de0588:	2000      	movs	r0, #0
c0de058a:	686a      	ldr	r2, [r5, #4]
c0de058c:	1811      	adds	r1, r2, r0
c0de058e:	f5b1 7f90 	cmp.w	r1, #288	@ 0x120
c0de0592:	f200 80e0 	bhi.w	c0de0756 <handler_pairing_compute+0x1ee>
c0de0596:	4e74      	ldr	r6, [pc, #464]	@ (c0de0768 <handler_pairing_compute+0x200>)
c0de0598:	6829      	ldr	r1, [r5, #0]
c0de059a:	68ab      	ldr	r3, [r5, #8]
c0de059c:	eb09 0706 	add.w	r7, r9, r6
c0de05a0:	4419      	add	r1, r3
c0de05a2:	4438      	add	r0, r7
c0de05a4:	f008 f9aa 	bl	c0de88fc <__aeabi_memcpy>
c0de05a8:	f8b7 0360 	ldrh.w	r0, [r7, #864]	@ 0x360
c0de05ac:	88a9      	ldrh	r1, [r5, #4]
c0de05ae:	4408      	add	r0, r1
c0de05b0:	f8a7 0360 	strh.w	r0, [r7, #864]	@ 0x360
c0de05b4:	b114      	cbz	r4, c0de05bc <handler_pairing_compute+0x54>
c0de05b6:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de05ba:	e0ce      	b.n	c0de075a <handler_pairing_compute+0x1f2>
c0de05bc:	b280      	uxth	r0, r0
c0de05be:	f5b0 7f90 	cmp.w	r0, #288	@ 0x120
c0de05c2:	f040 80c8 	bne.w	c0de0756 <handler_pairing_compute+0x1ee>
c0de05c6:	eb09 0406 	add.w	r4, r9, r6
c0de05ca:	f003 fb8b 	bl	c0de3ce4 <zkn_bls12381_ctx>
c0de05ce:	4d67      	ldr	r5, [pc, #412]	@ (c0de076c <handler_pairing_compute+0x204>)
c0de05d0:	f10d 0a08 	add.w	sl, sp, #8
c0de05d4:	4607      	mov	r7, r0
c0de05d6:	4621      	mov	r1, r4
c0de05d8:	4650      	mov	r0, sl
c0de05da:	447d      	add	r5, pc
c0de05dc:	47a8      	blx	r5
c0de05de:	ae92      	add	r6, sp, #584	@ 0x248
c0de05e0:	f104 0130 	add.w	r1, r4, #48	@ 0x30
c0de05e4:	4630      	mov	r0, r6
c0de05e6:	47a8      	blx	r5
c0de05e8:	f50d 7b5a 	add.w	fp, sp, #872	@ 0x368
c0de05ec:	4651      	mov	r1, sl
c0de05ee:	4632      	mov	r2, r6
c0de05f0:	463b      	mov	r3, r7
c0de05f2:	4658      	mov	r0, fp
c0de05f4:	f001 ffb8 	bl	c0de2568 <zkn_g1_384_from_affine>
c0de05f8:	f104 0160 	add.w	r1, r4, #96	@ 0x60
c0de05fc:	4650      	mov	r0, sl
c0de05fe:	47a8      	blx	r5
c0de0600:	f10a 0830 	add.w	r8, sl, #48	@ 0x30
c0de0604:	f104 0190 	add.w	r1, r4, #144	@ 0x90
c0de0608:	4640      	mov	r0, r8
c0de060a:	47a8      	blx	r5
c0de060c:	aefe      	add	r6, sp, #1016	@ 0x3f8
c0de060e:	f104 01c0 	add.w	r1, r4, #192	@ 0xc0
c0de0612:	4630      	mov	r0, r6
c0de0614:	47a8      	blx	r5
c0de0616:	f104 01f0 	add.w	r1, r4, #240	@ 0xf0
c0de061a:	f106 0030 	add.w	r0, r6, #48	@ 0x30
c0de061e:	47a8      	blx	r5
c0de0620:	ad92      	add	r5, sp, #584	@ 0x248
c0de0622:	4651      	mov	r1, sl
c0de0624:	4632      	mov	r2, r6
c0de0626:	463b      	mov	r3, r7
c0de0628:	4628      	mov	r0, r5
c0de062a:	f002 fa93 	bl	c0de2b54 <zkn_g2_384_from_affine>
c0de062e:	4650      	mov	r0, sl
c0de0630:	4659      	mov	r1, fp
c0de0632:	462a      	mov	r2, r5
c0de0634:	463b      	mov	r3, r7
c0de0636:	f000 fe65 	bl	c0de1304 <zkn_pairing>
c0de063a:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
c0de063c:	4d4c      	ldr	r5, [pc, #304]	@ (c0de0770 <handler_pairing_compute+0x208>)
c0de063e:	f50d 7b7e 	add.w	fp, sp, #1016	@ 0x3f8
c0de0642:	4651      	mov	r1, sl
c0de0644:	463a      	mov	r2, r7
c0de0646:	4658      	mov	r0, fp
c0de0648:	447d      	add	r5, pc
c0de064a:	47a8      	blx	r5
c0de064c:	f504 7090 	add.w	r0, r4, #288	@ 0x120
c0de0650:	4659      	mov	r1, fp
c0de0652:	9001      	str	r0, [sp, #4]
c0de0654:	4e47      	ldr	r6, [pc, #284]	@ (c0de0774 <handler_pairing_compute+0x20c>)
c0de0656:	447e      	add	r6, pc
c0de0658:	47b0      	blx	r6
c0de065a:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
c0de065c:	4658      	mov	r0, fp
c0de065e:	4641      	mov	r1, r8
c0de0660:	463a      	mov	r2, r7
c0de0662:	47a8      	blx	r5
c0de0664:	f504 70a8 	add.w	r0, r4, #336	@ 0x150
c0de0668:	4659      	mov	r1, fp
c0de066a:	47b0      	blx	r6
c0de066c:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
c0de066e:	f10a 0160 	add.w	r1, sl, #96	@ 0x60
c0de0672:	f000 f8cb 	bl	c0de080c <OUTLINED_FUNCTION_0>
c0de0676:	f504 70c0 	add.w	r0, r4, #384	@ 0x180
c0de067a:	4659      	mov	r1, fp
c0de067c:	47b0      	blx	r6
c0de067e:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
c0de0680:	f10a 0190 	add.w	r1, sl, #144	@ 0x90
c0de0684:	f000 f8c2 	bl	c0de080c <OUTLINED_FUNCTION_0>
c0de0688:	f504 70d8 	add.w	r0, r4, #432	@ 0x1b0
c0de068c:	4659      	mov	r1, fp
c0de068e:	47b0      	blx	r6
c0de0690:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
c0de0692:	f10a 01c0 	add.w	r1, sl, #192	@ 0xc0
c0de0696:	f000 f8b9 	bl	c0de080c <OUTLINED_FUNCTION_0>
c0de069a:	f504 70f0 	add.w	r0, r4, #480	@ 0x1e0
c0de069e:	4659      	mov	r1, fp
c0de06a0:	47b0      	blx	r6
c0de06a2:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
c0de06a4:	f10a 01f0 	add.w	r1, sl, #240	@ 0xf0
c0de06a8:	f000 f8b0 	bl	c0de080c <OUTLINED_FUNCTION_0>
c0de06ac:	f504 7004 	add.w	r0, r4, #528	@ 0x210
c0de06b0:	4659      	mov	r1, fp
c0de06b2:	47b0      	blx	r6
c0de06b4:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
c0de06b6:	f50a 7190 	add.w	r1, sl, #288	@ 0x120
c0de06ba:	f000 f8a7 	bl	c0de080c <OUTLINED_FUNCTION_0>
c0de06be:	f504 7010 	add.w	r0, r4, #576	@ 0x240
c0de06c2:	4659      	mov	r1, fp
c0de06c4:	47b0      	blx	r6
c0de06c6:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
c0de06c8:	f50a 71a8 	add.w	r1, sl, #336	@ 0x150
c0de06cc:	f000 f89e 	bl	c0de080c <OUTLINED_FUNCTION_0>
c0de06d0:	f504 701c 	add.w	r0, r4, #624	@ 0x270
c0de06d4:	4659      	mov	r1, fp
c0de06d6:	47b0      	blx	r6
c0de06d8:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
c0de06da:	f50a 71c0 	add.w	r1, sl, #384	@ 0x180
c0de06de:	f000 f895 	bl	c0de080c <OUTLINED_FUNCTION_0>
c0de06e2:	f504 7028 	add.w	r0, r4, #672	@ 0x2a0
c0de06e6:	4659      	mov	r1, fp
c0de06e8:	47b0      	blx	r6
c0de06ea:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
c0de06ec:	f50a 71d8 	add.w	r1, sl, #432	@ 0x1b0
c0de06f0:	f000 f88c 	bl	c0de080c <OUTLINED_FUNCTION_0>
c0de06f4:	f504 7034 	add.w	r0, r4, #720	@ 0x2d0
c0de06f8:	4659      	mov	r1, fp
c0de06fa:	47b0      	blx	r6
c0de06fc:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
c0de06fe:	f50a 71f0 	add.w	r1, sl, #480	@ 0x1e0
c0de0702:	f000 f883 	bl	c0de080c <OUTLINED_FUNCTION_0>
c0de0706:	f504 7040 	add.w	r0, r4, #768	@ 0x300
c0de070a:	4659      	mov	r1, fp
c0de070c:	47b0      	blx	r6
c0de070e:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
c0de0710:	f50a 7104 	add.w	r1, sl, #528	@ 0x210
c0de0714:	f000 f87a 	bl	c0de080c <OUTLINED_FUNCTION_0>
c0de0718:	f504 704c 	add.w	r0, r4, #816	@ 0x330
c0de071c:	4659      	mov	r1, fp
c0de071e:	47b0      	blx	r6
c0de0720:	4d15      	ldr	r5, [pc, #84]	@ (c0de0778 <handler_pairing_compute+0x210>)
c0de0722:	4650      	mov	r0, sl
c0de0724:	f44f 7110 	mov.w	r1, #576	@ 0x240
c0de0728:	447d      	add	r5, pc
c0de072a:	47a8      	blx	r5
c0de072c:	a8da      	add	r0, sp, #872	@ 0x368
c0de072e:	2190      	movs	r1, #144	@ 0x90
c0de0730:	47a8      	blx	r5
c0de0732:	a892      	add	r0, sp, #584	@ 0x248
c0de0734:	f44f 7190 	mov.w	r1, #288	@ 0x120
c0de0738:	47a8      	blx	r5
c0de073a:	2001      	movs	r0, #1
c0de073c:	21fa      	movs	r1, #250	@ 0xfa
c0de073e:	25fa      	movs	r5, #250	@ 0xfa
c0de0740:	f884 0364 	strb.w	r0, [r4, #868]	@ 0x364
c0de0744:	9801      	ldr	r0, [sp, #4]
c0de0746:	f000 f820 	bl	c0de078a <io_send_response_pointer>
c0de074a:	f8a4 5362 	strh.w	r5, [r4, #866]	@ 0x362
c0de074e:	f50d 6d8b 	add.w	sp, sp, #1112	@ 0x458
c0de0752:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0756:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de075a:	f50d 6d8b 	add.w	sp, sp, #1112	@ 0x458
c0de075e:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0762:	f000 b80b 	b.w	c0de077c <io_send_sw>
c0de0766:	bf00      	nop
c0de0768:	000002d8 	.word	0x000002d8
c0de076c:	00003575 	.word	0x00003575
c0de0770:	00003c09 	.word	0x00003c09
c0de0774:	00003529 	.word	0x00003529
c0de0778:	00008201 	.word	0x00008201

c0de077c <io_send_sw>:
c0de077c:	b580      	push	{r7, lr}
c0de077e:	4602      	mov	r2, r0
c0de0780:	2000      	movs	r0, #0
c0de0782:	2100      	movs	r1, #0
c0de0784:	f007 f984 	bl	c0de7a90 <io_send_response_buffers>
c0de0788:	bd80      	pop	{r7, pc}

c0de078a <io_send_response_pointer>:
c0de078a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de078c:	2200      	movs	r2, #0
c0de078e:	ab01      	add	r3, sp, #4
c0de0790:	c307      	stmia	r3!, {r0, r1, r2}
c0de0792:	a801      	add	r0, sp, #4
c0de0794:	2101      	movs	r1, #1
c0de0796:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de079a:	f007 f979 	bl	c0de7a90 <io_send_response_buffers>
c0de079e:	b004      	add	sp, #16
c0de07a0:	bd80      	pop	{r7, pc}
	...

c0de07a4 <handler_pairing_getresult>:
c0de07a4:	b5b0      	push	{r4, r5, r7, lr}
c0de07a6:	4a18      	ldr	r2, [pc, #96]	@ (c0de0808 <handler_pairing_getresult+0x64>)
c0de07a8:	eb09 0102 	add.w	r1, r9, r2
c0de07ac:	f891 1364 	ldrb.w	r1, [r1, #868]	@ 0x364
c0de07b0:	b151      	cbz	r1, c0de07c8 <handler_pairing_getresult+0x24>
c0de07b2:	b178      	cbz	r0, c0de07d4 <handler_pairing_getresult+0x30>
c0de07b4:	eb09 0002 	add.w	r0, r9, r2
c0de07b8:	f8b0 0362 	ldrh.w	r0, [r0, #866]	@ 0x362
c0de07bc:	f5b0 7f10 	cmp.w	r0, #576	@ 0x240
c0de07c0:	d30d      	bcc.n	c0de07de <handler_pairing_getresult+0x3a>
c0de07c2:	f646 2086 	movw	r0, #27270	@ 0x6a86
c0de07c6:	e001      	b.n	c0de07cc <handler_pairing_getresult+0x28>
c0de07c8:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de07cc:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de07d0:	f7ff bfd4 	b.w	c0de077c <io_send_sw>
c0de07d4:	eb09 0102 	add.w	r1, r9, r2
c0de07d8:	2000      	movs	r0, #0
c0de07da:	f8a1 0362 	strh.w	r0, [r1, #866]	@ 0x362
c0de07de:	f5c0 7410 	rsb	r4, r0, #576	@ 0x240
c0de07e2:	eb09 0502 	add.w	r5, r9, r2
c0de07e6:	4428      	add	r0, r5
c0de07e8:	b2a1      	uxth	r1, r4
c0de07ea:	29fa      	cmp	r1, #250	@ 0xfa
c0de07ec:	bf28      	it	cs
c0de07ee:	24fa      	movcs	r4, #250	@ 0xfa
c0de07f0:	b2a1      	uxth	r1, r4
c0de07f2:	f500 7090 	add.w	r0, r0, #288	@ 0x120
c0de07f6:	f7ff ffc8 	bl	c0de078a <io_send_response_pointer>
c0de07fa:	f8b5 1362 	ldrh.w	r1, [r5, #866]	@ 0x362
c0de07fe:	4421      	add	r1, r4
c0de0800:	f8a5 1362 	strh.w	r1, [r5, #866]	@ 0x362
c0de0804:	bdb0      	pop	{r4, r5, r7, pc}
c0de0806:	bf00      	nop
c0de0808:	000002d8 	.word	0x000002d8

c0de080c <OUTLINED_FUNCTION_0>:
c0de080c:	4658      	mov	r0, fp
c0de080e:	463a      	mov	r2, r7
c0de0810:	4728      	bx	r5
	...

c0de0814 <handler_pairing_scalarmul>:
c0de0814:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0818:	f5ad 6dbe 	sub.w	sp, sp, #1520	@ 0x5f0
c0de081c:	6841      	ldr	r1, [r0, #4]
c0de081e:	2940      	cmp	r1, #64	@ 0x40
c0de0820:	d165      	bne.n	c0de08ee <handler_pairing_scalarmul+0xda>
c0de0822:	6805      	ldr	r5, [r0, #0]
c0de0824:	f003 fa5e 	bl	c0de3ce4 <zkn_bls12381_ctx>
c0de0828:	4604      	mov	r4, r0
c0de082a:	f50d 66a3 	add.w	r6, sp, #1304	@ 0x518
c0de082e:	4630      	mov	r0, r6
c0de0830:	4621      	mov	r1, r4
c0de0832:	f001 fe7d 	bl	c0de2530 <zkn_g1_384_generator>
c0de0836:	affe      	add	r7, sp, #1016	@ 0x3f8
c0de0838:	4621      	mov	r1, r4
c0de083a:	4638      	mov	r0, r7
c0de083c:	f002 f95c 	bl	c0de2af8 <zkn_g2_384_generator>
c0de0840:	f50d 785a 	add.w	r8, sp, #872	@ 0x368
c0de0844:	4631      	mov	r1, r6
c0de0846:	462a      	mov	r2, r5
c0de0848:	2320      	movs	r3, #32
c0de084a:	9400      	str	r4, [sp, #0]
c0de084c:	4640      	mov	r0, r8
c0de084e:	f002 f8cf 	bl	c0de29f0 <zkn_g1_384_mul>
c0de0852:	9400      	str	r4, [sp, #0]
c0de0854:	f105 0220 	add.w	r2, r5, #32
c0de0858:	ad92      	add	r5, sp, #584	@ 0x248
c0de085a:	4639      	mov	r1, r7
c0de085c:	2320      	movs	r3, #32
c0de085e:	4628      	mov	r0, r5
c0de0860:	f002 fb74 	bl	c0de2f4c <zkn_g2_384_mul>
c0de0864:	ae02      	add	r6, sp, #8
c0de0866:	4641      	mov	r1, r8
c0de0868:	462a      	mov	r2, r5
c0de086a:	4623      	mov	r3, r4
c0de086c:	4630      	mov	r0, r6
c0de086e:	f000 fd49 	bl	c0de1304 <zkn_pairing>
c0de0872:	f506 70f0 	add.w	r0, r6, #480	@ 0x1e0
c0de0876:	f8df 80b8 	ldr.w	r8, [pc, #184]	@ c0de0930 <handler_pairing_scalarmul+0x11c>
c0de087a:	f8cd 65a8 	str.w	r6, [sp, #1448]	@ 0x5a8
c0de087e:	f50d 6bb5 	add.w	fp, sp, #1448	@ 0x5a8
c0de0882:	f50d 6ab8 	add.w	sl, sp, #1472	@ 0x5c0
c0de0886:	f8cd 05bc 	str.w	r0, [sp, #1468]	@ 0x5bc
c0de088a:	f506 70c0 	add.w	r0, r6, #384	@ 0x180
c0de088e:	f8cd 05b8 	str.w	r0, [sp, #1464]	@ 0x5b8
c0de0892:	f506 7090 	add.w	r0, r6, #288	@ 0x120
c0de0896:	f8cd 05b4 	str.w	r0, [sp, #1460]	@ 0x5b4
c0de089a:	f106 00c0 	add.w	r0, r6, #192	@ 0xc0
c0de089e:	f8cd 05b0 	str.w	r0, [sp, #1456]	@ 0x5b0
c0de08a2:	f106 0060 	add.w	r0, r6, #96	@ 0x60
c0de08a6:	2600      	movs	r6, #0
c0de08a8:	f8cd 05ac 	str.w	r0, [sp, #1452]	@ 0x5ac
c0de08ac:	eb09 0008 	add.w	r0, r9, r8
c0de08b0:	f500 7590 	add.w	r5, r0, #288	@ 0x120
c0de08b4:	2e06      	cmp	r6, #6
c0de08b6:	d01f      	beq.n	c0de08f8 <handler_pairing_scalarmul+0xe4>
c0de08b8:	f85b 7026 	ldr.w	r7, [fp, r6, lsl #2]
c0de08bc:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de08be:	4650      	mov	r0, sl
c0de08c0:	4622      	mov	r2, r4
c0de08c2:	4639      	mov	r1, r7
c0de08c4:	f003 fcc6 	bl	c0de4254 <zkn_from_mont_384>
c0de08c8:	4628      	mov	r0, r5
c0de08ca:	4651      	mov	r1, sl
c0de08cc:	f003 f959 	bl	c0de3b82 <zkn_fe384_to_be>
c0de08d0:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de08d2:	f107 0130 	add.w	r1, r7, #48	@ 0x30
c0de08d6:	4650      	mov	r0, sl
c0de08d8:	4622      	mov	r2, r4
c0de08da:	f003 fcbb 	bl	c0de4254 <zkn_from_mont_384>
c0de08de:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de08e2:	4651      	mov	r1, sl
c0de08e4:	f003 f94d 	bl	c0de3b82 <zkn_fe384_to_be>
c0de08e8:	3560      	adds	r5, #96	@ 0x60
c0de08ea:	3601      	adds	r6, #1
c0de08ec:	e7e2      	b.n	c0de08b4 <handler_pairing_scalarmul+0xa0>
c0de08ee:	2000      	movs	r0, #0
c0de08f0:	2100      	movs	r1, #0
c0de08f2:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de08f6:	e015      	b.n	c0de0924 <handler_pairing_scalarmul+0x110>
c0de08f8:	eb09 0008 	add.w	r0, r9, r8
c0de08fc:	2101      	movs	r1, #1
c0de08fe:	2200      	movs	r2, #0
c0de0900:	f880 1364 	strb.w	r1, [r0, #868]	@ 0x364
c0de0904:	21fa      	movs	r1, #250	@ 0xfa
c0de0906:	f8cd 25c8 	str.w	r2, [sp, #1480]	@ 0x5c8
c0de090a:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de090e:	f8a0 1362 	strh.w	r1, [r0, #866]	@ 0x362
c0de0912:	f500 7090 	add.w	r0, r0, #288	@ 0x120
c0de0916:	f8cd 15c4 	str.w	r1, [sp, #1476]	@ 0x5c4
c0de091a:	2101      	movs	r1, #1
c0de091c:	f8cd 05c0 	str.w	r0, [sp, #1472]	@ 0x5c0
c0de0920:	f50d 60b8 	add.w	r0, sp, #1472	@ 0x5c0
c0de0924:	f007 f8b4 	bl	c0de7a90 <io_send_response_buffers>
c0de0928:	f50d 6dbe 	add.w	sp, sp, #1520	@ 0x5f0
c0de092c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0930:	000002d8 	.word	0x000002d8

c0de0934 <handler_sign_tx>:
c0de0934:	b570      	push	{r4, r5, r6, lr}
c0de0936:	b086      	sub	sp, #24
c0de0938:	4e46      	ldr	r6, [pc, #280]	@ (c0de0a54 <handler_sign_tx+0x120>)
c0de093a:	4604      	mov	r4, r0
c0de093c:	b191      	cbz	r1, c0de0964 <handler_sign_tx+0x30>
c0de093e:	eb09 0006 	add.w	r0, r9, r6
c0de0942:	f890 02a8 	ldrb.w	r0, [r0, #680]	@ 0x2a8
c0de0946:	2801      	cmp	r0, #1
c0de0948:	d12c      	bne.n	c0de09a4 <handler_sign_tx+0x70>
c0de094a:	eb09 0006 	add.w	r0, r9, r6
c0de094e:	4615      	mov	r5, r2
c0de0950:	6862      	ldr	r2, [r4, #4]
c0de0952:	f8d0 0208 	ldr.w	r0, [r0, #520]	@ 0x208
c0de0956:	1811      	adds	r1, r2, r0
c0de0958:	f5b1 7fff 	cmp.w	r1, #510	@ 0x1fe
c0de095c:	d925      	bls.n	c0de09aa <handler_sign_tx+0x76>
c0de095e:	f24b 0004 	movw	r0, #45060	@ 0xb004
c0de0962:	e039      	b.n	c0de09d8 <handler_sign_tx+0xa4>
c0de0964:	eb09 0506 	add.w	r5, r9, r6
c0de0968:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de096c:	4628      	mov	r0, r5
c0de096e:	f007 ffdd 	bl	c0de892c <explicit_bzero>
c0de0972:	2000      	movs	r0, #0
c0de0974:	f505 7135 	add.w	r1, r5, #724	@ 0x2d4
c0de0978:	f809 0006 	strb.w	r0, [r9, r6]
c0de097c:	2001      	movs	r0, #1
c0de097e:	f885 02a8 	strb.w	r0, [r5, #680]	@ 0x2a8
c0de0982:	4620      	mov	r0, r4
c0de0984:	f006 fe32 	bl	c0de75ec <buffer_read_u8>
c0de0988:	b148      	cbz	r0, c0de099e <handler_sign_tx+0x6a>
c0de098a:	eb09 0006 	add.w	r0, r9, r6
c0de098e:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de0992:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de0996:	4620      	mov	r0, r4
c0de0998:	f006 fe7b 	bl	c0de7692 <buffer_read_bip32_path>
c0de099c:	b9b8      	cbnz	r0, c0de09ce <handler_sign_tx+0x9a>
c0de099e:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de09a2:	e019      	b.n	c0de09d8 <handler_sign_tx+0xa4>
c0de09a4:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de09a8:	e016      	b.n	c0de09d8 <handler_sign_tx+0xa4>
c0de09aa:	eb09 0106 	add.w	r1, r9, r6
c0de09ae:	4408      	add	r0, r1
c0de09b0:	f100 0108 	add.w	r1, r0, #8
c0de09b4:	4620      	mov	r0, r4
c0de09b6:	f006 fe96 	bl	c0de76e6 <buffer_move>
c0de09ba:	b158      	cbz	r0, c0de09d4 <handler_sign_tx+0xa0>
c0de09bc:	eb09 0106 	add.w	r1, r9, r6
c0de09c0:	6862      	ldr	r2, [r4, #4]
c0de09c2:	f8d1 0208 	ldr.w	r0, [r1, #520]	@ 0x208
c0de09c6:	4410      	add	r0, r2
c0de09c8:	f8c1 0208 	str.w	r0, [r1, #520]	@ 0x208
c0de09cc:	b14d      	cbz	r5, c0de09e2 <handler_sign_tx+0xae>
c0de09ce:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de09d2:	e001      	b.n	c0de09d8 <handler_sign_tx+0xa4>
c0de09d4:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de09d8:	b006      	add	sp, #24
c0de09da:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de09de:	f000 b83d 	b.w	c0de0a5c <io_send_sw>
c0de09e2:	2100      	movs	r1, #0
c0de09e4:	e9cd 0102 	strd	r0, r1, [sp, #8]
c0de09e8:	eb09 0006 	add.w	r0, r9, r6
c0de09ec:	f100 0108 	add.w	r1, r0, #8
c0de09f0:	9101      	str	r1, [sp, #4]
c0de09f2:	f500 7104 	add.w	r1, r0, #528	@ 0x210
c0de09f6:	a801      	add	r0, sp, #4
c0de09f8:	f000 f8f8 	bl	c0de0bec <transaction_deserialize>
c0de09fc:	2801      	cmp	r0, #1
c0de09fe:	d114      	bne.n	c0de0a2a <handler_sign_tx+0xf6>
c0de0a00:	2001      	movs	r0, #1
c0de0a02:	f809 0006 	strb.w	r0, [r9, r6]
c0de0a06:	eb09 0006 	add.w	r0, r9, r6
c0de0a0a:	f8d0 1208 	ldr.w	r1, [r0, #520]	@ 0x208
c0de0a0e:	f500 720e 	add.w	r2, r0, #568	@ 0x238
c0de0a12:	9105      	str	r1, [sp, #20]
c0de0a14:	f100 0108 	add.w	r1, r0, #8
c0de0a18:	9104      	str	r1, [sp, #16]
c0de0a1a:	a804      	add	r0, sp, #16
c0de0a1c:	2101      	movs	r1, #1
c0de0a1e:	f007 f9c1 	bl	c0de7da4 <cx_keccak_256_hash_iovec>
c0de0a22:	b140      	cbz	r0, c0de0a36 <handler_sign_tx+0x102>
c0de0a24:	f24b 0006 	movw	r0, #45062	@ 0xb006
c0de0a28:	e001      	b.n	c0de0a2e <handler_sign_tx+0xfa>
c0de0a2a:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de0a2e:	f000 f815 	bl	c0de0a5c <io_send_sw>
c0de0a32:	b006      	add	sp, #24
c0de0a34:	bd70      	pop	{r4, r5, r6, pc}
c0de0a36:	eb09 0006 	add.w	r0, r9, r6
c0de0a3a:	f8d0 022c 	ldr.w	r0, [r0, #556]	@ 0x22c
c0de0a3e:	4906      	ldr	r1, [pc, #24]	@ (c0de0a58 <handler_sign_tx+0x124>)
c0de0a40:	4479      	add	r1, pc
c0de0a42:	f007 ffb7 	bl	c0de89b4 <strcmp>
c0de0a46:	b110      	cbz	r0, c0de0a4e <handler_sign_tx+0x11a>
c0de0a48:	f000 fbb5 	bl	c0de11b6 <ui_display_transaction>
c0de0a4c:	e7f1      	b.n	c0de0a32 <handler_sign_tx+0xfe>
c0de0a4e:	f000 fbaf 	bl	c0de11b0 <ui_display_blind_signed_transaction>
c0de0a52:	e7ee      	b.n	c0de0a32 <handler_sign_tx+0xfe>
c0de0a54:	00000000 	.word	0x00000000
c0de0a58:	0000819a 	.word	0x0000819a

c0de0a5c <io_send_sw>:
c0de0a5c:	b580      	push	{r7, lr}
c0de0a5e:	4602      	mov	r2, r0
c0de0a60:	2000      	movs	r0, #0
c0de0a62:	2100      	movs	r1, #0
c0de0a64:	f007 f814 	bl	c0de7a90 <io_send_response_buffers>
c0de0a68:	bd80      	pop	{r7, pc}
	...

c0de0a6c <handler_pairing_test>:
c0de0a6c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0a70:	f5ad 6d87 	sub.w	sp, sp, #1080	@ 0x438
c0de0a74:	f003 f936 	bl	c0de3ce4 <zkn_bls12381_ctx>
c0de0a78:	4604      	mov	r4, r0
c0de0a7a:	add8      	add	r5, sp, #864	@ 0x360
c0de0a7c:	4628      	mov	r0, r5
c0de0a7e:	4621      	mov	r1, r4
c0de0a80:	f001 fd56 	bl	c0de2530 <zkn_g1_384_generator>
c0de0a84:	ae90      	add	r6, sp, #576	@ 0x240
c0de0a86:	4621      	mov	r1, r4
c0de0a88:	4630      	mov	r0, r6
c0de0a8a:	f002 f835 	bl	c0de2af8 <zkn_g2_384_generator>
c0de0a8e:	466f      	mov	r7, sp
c0de0a90:	4629      	mov	r1, r5
c0de0a92:	4632      	mov	r2, r6
c0de0a94:	4623      	mov	r3, r4
c0de0a96:	4638      	mov	r0, r7
c0de0a98:	f000 fc34 	bl	c0de1304 <zkn_pairing>
c0de0a9c:	f507 70f0 	add.w	r0, r7, #480	@ 0x1e0
c0de0aa0:	f8df 80a4 	ldr.w	r8, [pc, #164]	@ c0de0b48 <handler_pairing_test+0xdc>
c0de0aa4:	2600      	movs	r6, #0
c0de0aa6:	f50d 7b7c 	add.w	fp, sp, #1008	@ 0x3f0
c0de0aaa:	f50d 6a81 	add.w	sl, sp, #1032	@ 0x408
c0de0aae:	f8cd 0404 	str.w	r0, [sp, #1028]	@ 0x404
c0de0ab2:	f507 70c0 	add.w	r0, r7, #384	@ 0x180
c0de0ab6:	f8cd 0400 	str.w	r0, [sp, #1024]	@ 0x400
c0de0aba:	f507 7090 	add.w	r0, r7, #288	@ 0x120
c0de0abe:	90ff      	str	r0, [sp, #1020]	@ 0x3fc
c0de0ac0:	f107 00c0 	add.w	r0, r7, #192	@ 0xc0
c0de0ac4:	90fe      	str	r0, [sp, #1016]	@ 0x3f8
c0de0ac6:	f107 0060 	add.w	r0, r7, #96	@ 0x60
c0de0aca:	e9cd 70fc 	strd	r7, r0, [sp, #1008]	@ 0x3f0
c0de0ace:	eb09 0008 	add.w	r0, r9, r8
c0de0ad2:	f500 7590 	add.w	r5, r0, #288	@ 0x120
c0de0ad6:	2e06      	cmp	r6, #6
c0de0ad8:	d01a      	beq.n	c0de0b10 <handler_pairing_test+0xa4>
c0de0ada:	f85b 7026 	ldr.w	r7, [fp, r6, lsl #2]
c0de0ade:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de0ae0:	4650      	mov	r0, sl
c0de0ae2:	4622      	mov	r2, r4
c0de0ae4:	4639      	mov	r1, r7
c0de0ae6:	f003 fbb5 	bl	c0de4254 <zkn_from_mont_384>
c0de0aea:	4628      	mov	r0, r5
c0de0aec:	4651      	mov	r1, sl
c0de0aee:	f003 f848 	bl	c0de3b82 <zkn_fe384_to_be>
c0de0af2:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de0af4:	f107 0130 	add.w	r1, r7, #48	@ 0x30
c0de0af8:	4650      	mov	r0, sl
c0de0afa:	4622      	mov	r2, r4
c0de0afc:	f003 fbaa 	bl	c0de4254 <zkn_from_mont_384>
c0de0b00:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de0b04:	4651      	mov	r1, sl
c0de0b06:	f003 f83c 	bl	c0de3b82 <zkn_fe384_to_be>
c0de0b0a:	3560      	adds	r5, #96	@ 0x60
c0de0b0c:	3601      	adds	r6, #1
c0de0b0e:	e7e2      	b.n	c0de0ad6 <handler_pairing_test+0x6a>
c0de0b10:	eb09 0008 	add.w	r0, r9, r8
c0de0b14:	2101      	movs	r1, #1
c0de0b16:	2200      	movs	r2, #0
c0de0b18:	f880 1364 	strb.w	r1, [r0, #868]	@ 0x364
c0de0b1c:	21fa      	movs	r1, #250	@ 0xfa
c0de0b1e:	f8cd 2410 	str.w	r2, [sp, #1040]	@ 0x410
c0de0b22:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0b26:	f8a0 1362 	strh.w	r1, [r0, #866]	@ 0x362
c0de0b2a:	f500 7090 	add.w	r0, r0, #288	@ 0x120
c0de0b2e:	f8cd 140c 	str.w	r1, [sp, #1036]	@ 0x40c
c0de0b32:	2101      	movs	r1, #1
c0de0b34:	f8cd 0408 	str.w	r0, [sp, #1032]	@ 0x408
c0de0b38:	f50d 6081 	add.w	r0, sp, #1032	@ 0x408
c0de0b3c:	f006 ffa8 	bl	c0de7a90 <io_send_response_buffers>
c0de0b40:	f50d 6d87 	add.w	sp, sp, #1080	@ 0x438
c0de0b44:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0b48:	000002d8 	.word	0x000002d8

c0de0b4c <helper_send_response_pubkey>:
c0de0b4c:	b5b0      	push	{r4, r5, r7, lr}
c0de0b4e:	b09a      	sub	sp, #104	@ 0x68
c0de0b50:	2041      	movs	r0, #65	@ 0x41
c0de0b52:	f10d 0405 	add.w	r4, sp, #5
c0de0b56:	2241      	movs	r2, #65	@ 0x41
c0de0b58:	f88d 0005 	strb.w	r0, [sp, #5]
c0de0b5c:	480b      	ldr	r0, [pc, #44]	@ (c0de0b8c <helper_send_response_pubkey+0x40>)
c0de0b5e:	eb09 0500 	add.w	r5, r9, r0
c0de0b62:	1c60      	adds	r0, r4, #1
c0de0b64:	f105 0108 	add.w	r1, r5, #8
c0de0b68:	f007 fec8 	bl	c0de88fc <__aeabi_memcpy>
c0de0b6c:	2020      	movs	r0, #32
c0de0b6e:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de0b72:	2220      	movs	r2, #32
c0de0b74:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de0b78:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de0b7c:	f007 febe 	bl	c0de88fc <__aeabi_memcpy>
c0de0b80:	4620      	mov	r0, r4
c0de0b82:	2163      	movs	r1, #99	@ 0x63
c0de0b84:	f000 f804 	bl	c0de0b90 <io_send_response_pointer>
c0de0b88:	b01a      	add	sp, #104	@ 0x68
c0de0b8a:	bdb0      	pop	{r4, r5, r7, pc}
c0de0b8c:	00000000 	.word	0x00000000

c0de0b90 <io_send_response_pointer>:
c0de0b90:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de0b92:	2200      	movs	r2, #0
c0de0b94:	ab01      	add	r3, sp, #4
c0de0b96:	c307      	stmia	r3!, {r0, r1, r2}
c0de0b98:	a801      	add	r0, sp, #4
c0de0b9a:	2101      	movs	r1, #1
c0de0b9c:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0ba0:	f006 ff76 	bl	c0de7a90 <io_send_response_buffers>
c0de0ba4:	b004      	add	sp, #16
c0de0ba6:	bd80      	pop	{r7, pc}

c0de0ba8 <helper_send_response_sig>:
c0de0ba8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0baa:	b093      	sub	sp, #76	@ 0x4c
c0de0bac:	f10d 0402 	add.w	r4, sp, #2
c0de0bb0:	2149      	movs	r1, #73	@ 0x49
c0de0bb2:	1c65      	adds	r5, r4, #1
c0de0bb4:	4628      	mov	r0, r5
c0de0bb6:	f007 feab 	bl	c0de8910 <__aeabi_memclr>
c0de0bba:	480b      	ldr	r0, [pc, #44]	@ (c0de0be8 <helper_send_response_sig+0x40>)
c0de0bbc:	eb09 0700 	add.w	r7, r9, r0
c0de0bc0:	4628      	mov	r0, r5
c0de0bc2:	f897 62a0 	ldrb.w	r6, [r7, #672]	@ 0x2a0
c0de0bc6:	f507 7116 	add.w	r1, r7, #600	@ 0x258
c0de0bca:	4632      	mov	r2, r6
c0de0bcc:	f88d 6002 	strb.w	r6, [sp, #2]
c0de0bd0:	f007 fe94 	bl	c0de88fc <__aeabi_memcpy>
c0de0bd4:	f897 12a1 	ldrb.w	r1, [r7, #673]	@ 0x2a1
c0de0bd8:	1930      	adds	r0, r6, r4
c0de0bda:	7041      	strb	r1, [r0, #1]
c0de0bdc:	1cb1      	adds	r1, r6, #2
c0de0bde:	4620      	mov	r0, r4
c0de0be0:	f7ff ffd6 	bl	c0de0b90 <io_send_response_pointer>
c0de0be4:	b013      	add	sp, #76	@ 0x4c
c0de0be6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0be8:	00000000 	.word	0x00000000

c0de0bec <transaction_deserialize>:
c0de0bec:	b570      	push	{r4, r5, r6, lr}
c0de0bee:	460d      	mov	r5, r1
c0de0bf0:	4604      	mov	r4, r0
c0de0bf2:	b910      	cbnz	r0, c0de0bfa <transaction_deserialize+0xe>
c0de0bf4:	2001      	movs	r0, #1
c0de0bf6:	f007 f909 	bl	c0de7e0c <assert_exit>
c0de0bfa:	b915      	cbnz	r5, c0de0c02 <transaction_deserialize+0x16>
c0de0bfc:	2001      	movs	r0, #1
c0de0bfe:	f007 f905 	bl	c0de7e0c <assert_exit>
c0de0c02:	6860      	ldr	r0, [r4, #4]
c0de0c04:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de0c08:	d901      	bls.n	c0de0c0e <transaction_deserialize+0x22>
c0de0c0a:	20f9      	movs	r0, #249	@ 0xf9
c0de0c0c:	e04b      	b.n	c0de0ca6 <transaction_deserialize+0xba>
c0de0c0e:	4620      	mov	r0, r4
c0de0c10:	4629      	mov	r1, r5
c0de0c12:	2200      	movs	r2, #0
c0de0c14:	f006 fd00 	bl	c0de7618 <buffer_read_u64>
c0de0c18:	b330      	cbz	r0, c0de0c68 <transaction_deserialize+0x7c>
c0de0c1a:	6820      	ldr	r0, [r4, #0]
c0de0c1c:	68a1      	ldr	r1, [r4, #8]
c0de0c1e:	4408      	add	r0, r1
c0de0c20:	2114      	movs	r1, #20
c0de0c22:	61a8      	str	r0, [r5, #24]
c0de0c24:	4620      	mov	r0, r4
c0de0c26:	f006 fcd6 	bl	c0de75d6 <buffer_seek_cur>
c0de0c2a:	b1f8      	cbz	r0, c0de0c6c <transaction_deserialize+0x80>
c0de0c2c:	f105 0108 	add.w	r1, r5, #8
c0de0c30:	4620      	mov	r0, r4
c0de0c32:	2200      	movs	r2, #0
c0de0c34:	2600      	movs	r6, #0
c0de0c36:	f006 fcef 	bl	c0de7618 <buffer_read_u64>
c0de0c3a:	b1c8      	cbz	r0, c0de0c70 <transaction_deserialize+0x84>
c0de0c3c:	f105 0120 	add.w	r1, r5, #32
c0de0c40:	4620      	mov	r0, r4
c0de0c42:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de0c46:	f006 fd07 	bl	c0de7658 <buffer_read_varint>
c0de0c4a:	6a29      	ldr	r1, [r5, #32]
c0de0c4c:	b990      	cbnz	r0, c0de0c74 <transaction_deserialize+0x88>
c0de0c4e:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de0c50:	ea5f 0050 	movs.w	r0, r0, lsr #1
c0de0c54:	ea4f 0231 	mov.w	r2, r1, rrx
c0de0c58:	2300      	movs	r3, #0
c0de0c5a:	f1d2 02e8 	rsbs	r2, r2, #232	@ 0xe8
c0de0c5e:	eb73 0000 	sbcs.w	r0, r3, r0
c0de0c62:	d207      	bcs.n	c0de0c74 <transaction_deserialize+0x88>
c0de0c64:	20fc      	movs	r0, #252	@ 0xfc
c0de0c66:	e01e      	b.n	c0de0ca6 <transaction_deserialize+0xba>
c0de0c68:	20ff      	movs	r0, #255	@ 0xff
c0de0c6a:	e01c      	b.n	c0de0ca6 <transaction_deserialize+0xba>
c0de0c6c:	20fe      	movs	r0, #254	@ 0xfe
c0de0c6e:	e01a      	b.n	c0de0ca6 <transaction_deserialize+0xba>
c0de0c70:	20fd      	movs	r0, #253	@ 0xfd
c0de0c72:	e018      	b.n	c0de0ca6 <transaction_deserialize+0xba>
c0de0c74:	6820      	ldr	r0, [r4, #0]
c0de0c76:	68a2      	ldr	r2, [r4, #8]
c0de0c78:	4410      	add	r0, r2
c0de0c7a:	61e8      	str	r0, [r5, #28]
c0de0c7c:	4620      	mov	r0, r4
c0de0c7e:	f006 fcaa 	bl	c0de75d6 <buffer_seek_cur>
c0de0c82:	b168      	cbz	r0, c0de0ca0 <transaction_deserialize+0xb4>
c0de0c84:	f105 031c 	add.w	r3, r5, #28
c0de0c88:	cb0d      	ldmia	r3, {r0, r2, r3}
c0de0c8a:	f000 f80e 	bl	c0de0caa <transaction_utils_check_encoding>
c0de0c8e:	b148      	cbz	r0, c0de0ca4 <transaction_deserialize+0xb8>
c0de0c90:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de0c94:	f06f 0006 	mvn.w	r0, #6
c0de0c98:	428a      	cmp	r2, r1
c0de0c9a:	bf08      	it	eq
c0de0c9c:	2001      	moveq	r0, #1
c0de0c9e:	e002      	b.n	c0de0ca6 <transaction_deserialize+0xba>
c0de0ca0:	20fb      	movs	r0, #251	@ 0xfb
c0de0ca2:	e000      	b.n	c0de0ca6 <transaction_deserialize+0xba>
c0de0ca4:	20fa      	movs	r0, #250	@ 0xfa
c0de0ca6:	b240      	sxtb	r0, r0
c0de0ca8:	bd70      	pop	{r4, r5, r6, pc}

c0de0caa <transaction_utils_check_encoding>:
c0de0caa:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de0cac:	461c      	mov	r4, r3
c0de0cae:	4615      	mov	r5, r2
c0de0cb0:	4606      	mov	r6, r0
c0de0cb2:	b910      	cbnz	r0, c0de0cba <transaction_utils_check_encoding+0x10>
c0de0cb4:	2001      	movs	r0, #1
c0de0cb6:	f007 f8a9 	bl	c0de7e0c <assert_exit>
c0de0cba:	2000      	movs	r0, #0
c0de0cbc:	2300      	movs	r3, #0
c0de0cbe:	4602      	mov	r2, r0
c0de0cc0:	1b40      	subs	r0, r0, r5
c0de0cc2:	4619      	mov	r1, r3
c0de0cc4:	eb73 0004 	sbcs.w	r0, r3, r4
c0de0cc8:	d206      	bcs.n	c0de0cd8 <transaction_utils_check_encoding+0x2e>
c0de0cca:	56b7      	ldrsb	r7, [r6, r2]
c0de0ccc:	1c50      	adds	r0, r2, #1
c0de0cce:	f141 0300 	adc.w	r3, r1, #0
c0de0cd2:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0de0cd6:	dcf2      	bgt.n	c0de0cbe <transaction_utils_check_encoding+0x14>
c0de0cd8:	2000      	movs	r0, #0
c0de0cda:	1b52      	subs	r2, r2, r5
c0de0cdc:	41a1      	sbcs	r1, r4
c0de0cde:	bf28      	it	cs
c0de0ce0:	2001      	movcs	r0, #1
c0de0ce2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de0ce4 <validate_pubkey>:
c0de0ce4:	b108      	cbz	r0, c0de0cea <validate_pubkey+0x6>
c0de0ce6:	f7ff bf31 	b.w	c0de0b4c <helper_send_response_pubkey>
c0de0cea:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de0cee:	f000 b800 	b.w	c0de0cf2 <io_send_sw>

c0de0cf2 <io_send_sw>:
c0de0cf2:	b580      	push	{r7, lr}
c0de0cf4:	4602      	mov	r2, r0
c0de0cf6:	2000      	movs	r0, #0
c0de0cf8:	2100      	movs	r1, #0
c0de0cfa:	f006 fec9 	bl	c0de7a90 <io_send_response_buffers>
c0de0cfe:	bd80      	pop	{r7, pc}

c0de0d00 <validate_transaction>:
c0de0d00:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de0d04:	b08c      	sub	sp, #48	@ 0x30
c0de0d06:	b378      	cbz	r0, c0de0d68 <validate_transaction+0x68>
c0de0d08:	f8df 8094 	ldr.w	r8, [pc, #148]	@ c0de0da0 <validate_transaction+0xa0>
c0de0d0c:	2002      	movs	r0, #2
c0de0d0e:	2500      	movs	r5, #0
c0de0d10:	2720      	movs	r7, #32
c0de0d12:	2203      	movs	r2, #3
c0de0d14:	f240 6401 	movw	r4, #1537	@ 0x601
c0de0d18:	f10d 0c2c 	add.w	ip, sp, #44	@ 0x2c
c0de0d1c:	f10d 0e28 	add.w	lr, sp, #40	@ 0x28
c0de0d20:	950b      	str	r5, [sp, #44]	@ 0x2c
c0de0d22:	f809 0008 	strb.w	r0, [r9, r8]
c0de0d26:	2048      	movs	r0, #72	@ 0x48
c0de0d28:	900a      	str	r0, [sp, #40]	@ 0x28
c0de0d2a:	eb09 0008 	add.w	r0, r9, r8
c0de0d2e:	f890 32d4 	ldrb.w	r3, [r0, #724]	@ 0x2d4
c0de0d32:	f500 710e 	add.w	r1, r0, #568	@ 0x238
c0de0d36:	f500 7616 	add.w	r6, r0, #600	@ 0x258
c0de0d3a:	e9cd 4200 	strd	r4, r2, [sp]
c0de0d3e:	f500 722b 	add.w	r2, r0, #684	@ 0x2ac
c0de0d42:	2000      	movs	r0, #0
c0de0d44:	9508      	str	r5, [sp, #32]
c0de0d46:	e9cd c506 	strd	ip, r5, [sp, #24]
c0de0d4a:	e9cd 1702 	strd	r1, r7, [sp, #8]
c0de0d4e:	2121      	movs	r1, #33	@ 0x21
c0de0d50:	e9cd 6e04 	strd	r6, lr, [sp, #16]
c0de0d54:	f006 fd92 	bl	c0de787c <bip32_derive_with_seed_ecdsa_sign_hash_256>
c0de0d58:	b188      	cbz	r0, c0de0d7e <validate_transaction+0x7e>
c0de0d5a:	f24b 0008 	movw	r0, #45064	@ 0xb008
c0de0d5e:	f809 5008 	strb.w	r5, [r9, r8]
c0de0d62:	f7ff ffc6 	bl	c0de0cf2 <io_send_sw>
c0de0d66:	e017      	b.n	c0de0d98 <validate_transaction+0x98>
c0de0d68:	480d      	ldr	r0, [pc, #52]	@ (c0de0da0 <validate_transaction+0xa0>)
c0de0d6a:	2100      	movs	r1, #0
c0de0d6c:	f809 1000 	strb.w	r1, [r9, r0]
c0de0d70:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de0d74:	b00c      	add	sp, #48	@ 0x30
c0de0d76:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de0d7a:	f7ff bfba 	b.w	c0de0cf2 <io_send_sw>
c0de0d7e:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0d80:	eb09 0008 	add.w	r0, r9, r8
c0de0d84:	f880 12a0 	strb.w	r1, [r0, #672]	@ 0x2a0
c0de0d88:	f89d 102c 	ldrb.w	r1, [sp, #44]	@ 0x2c
c0de0d8c:	f001 0101 	and.w	r1, r1, #1
c0de0d90:	f880 12a1 	strb.w	r1, [r0, #673]	@ 0x2a1
c0de0d94:	f7ff ff08 	bl	c0de0ba8 <helper_send_response_sig>
c0de0d98:	b00c      	add	sp, #48	@ 0x30
c0de0d9a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de0d9e:	bf00      	nop
c0de0da0:	00000000 	.word	0x00000000

c0de0da4 <app_quit>:
c0de0da4:	20ff      	movs	r0, #255	@ 0xff
c0de0da6:	f007 fc5b 	bl	c0de8660 <os_sched_exit>
	...

c0de0dac <ui_menu_main>:
c0de0dac:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de0dae:	4c19      	ldr	r4, [pc, #100]	@ (c0de0e14 <ui_menu_main+0x68>)
c0de0db0:	4817      	ldr	r0, [pc, #92]	@ (c0de0e10 <ui_menu_main+0x64>)
c0de0db2:	447c      	add	r4, pc
c0de0db4:	eb09 0500 	add.w	r5, r9, r0
c0de0db8:	f000 f8d8 	bl	c0de0f6c <OUTLINED_FUNCTION_0>
c0de0dbc:	2114      	movs	r1, #20
c0de0dbe:	7369      	strb	r1, [r5, #13]
c0de0dc0:	4915      	ldr	r1, [pc, #84]	@ (c0de0e18 <ui_menu_main+0x6c>)
c0de0dc2:	4a16      	ldr	r2, [pc, #88]	@ (c0de0e1c <ui_menu_main+0x70>)
c0de0dc4:	4479      	add	r1, pc
c0de0dc6:	447a      	add	r2, pc
c0de0dc8:	e9c5 2101 	strd	r2, r1, [r5, #4]
c0de0dcc:	7800      	ldrb	r0, [r0, #0]
c0de0dce:	7328      	strb	r0, [r5, #12]
c0de0dd0:	f000 f8cc 	bl	c0de0f6c <OUTLINED_FUNCTION_0>
c0de0dd4:	2115      	movs	r1, #21
c0de0dd6:	7669      	strb	r1, [r5, #25]
c0de0dd8:	4911      	ldr	r1, [pc, #68]	@ (c0de0e20 <ui_menu_main+0x74>)
c0de0dda:	4a12      	ldr	r2, [pc, #72]	@ (c0de0e24 <ui_menu_main+0x78>)
c0de0ddc:	4479      	add	r1, pc
c0de0dde:	447a      	add	r2, pc
c0de0de0:	e9c5 2104 	strd	r2, r1, [r5, #16]
c0de0de4:	2100      	movs	r1, #0
c0de0de6:	7840      	ldrb	r0, [r0, #1]
c0de0de8:	7628      	strb	r0, [r5, #24]
c0de0dea:	480f      	ldr	r0, [pc, #60]	@ (c0de0e28 <ui_menu_main+0x7c>)
c0de0dec:	4a0f      	ldr	r2, [pc, #60]	@ (c0de0e2c <ui_menu_main+0x80>)
c0de0dee:	4b10      	ldr	r3, [pc, #64]	@ (c0de0e30 <ui_menu_main+0x84>)
c0de0df0:	4478      	add	r0, pc
c0de0df2:	447a      	add	r2, pc
c0de0df4:	447b      	add	r3, pc
c0de0df6:	e9cd 3200 	strd	r3, r2, [sp]
c0de0dfa:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de0dfe:	2200      	movs	r2, #0
c0de0e00:	23ff      	movs	r3, #255	@ 0xff
c0de0e02:	480c      	ldr	r0, [pc, #48]	@ (c0de0e34 <ui_menu_main+0x88>)
c0de0e04:	490c      	ldr	r1, [pc, #48]	@ (c0de0e38 <ui_menu_main+0x8c>)
c0de0e06:	4478      	add	r0, pc
c0de0e08:	4479      	add	r1, pc
c0de0e0a:	f004 fe7d 	bl	c0de5b08 <nbgl_useCaseHomeAndSettings>
c0de0e0e:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de0e10:	00000800 	.word	0x00000800
c0de0e14:	0000884a 	.word	0x0000884a
c0de0e18:	00007f08 	.word	0x00007f08
c0de0e1c:	00008076 	.word	0x00008076
c0de0e20:	00007f72 	.word	0x00007f72
c0de0e24:	00007db9 	.word	0x00007db9
c0de0e28:	ffffffb1 	.word	0xffffffb1
c0de0e2c:	000080f6 	.word	0x000080f6
c0de0e30:	000080e8 	.word	0x000080e8
c0de0e34:	000080a1 	.word	0x000080a1
c0de0e38:	00007c0b 	.word	0x00007c0b

c0de0e3c <controls_callback>:
c0de0e3c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de0e3e:	4c22      	ldr	r4, [pc, #136]	@ (c0de0ec8 <controls_callback+0x8c>)
c0de0e40:	2815      	cmp	r0, #21
c0de0e42:	f809 2004 	strb.w	r2, [r9, r4]
c0de0e46:	d011      	beq.n	c0de0e6c <controls_callback+0x30>
c0de0e48:	2814      	cmp	r0, #20
c0de0e4a:	d12a      	bne.n	c0de0ea2 <controls_callback+0x66>
c0de0e4c:	eb09 0504 	add.w	r5, r9, r4
c0de0e50:	4c1e      	ldr	r4, [pc, #120]	@ (c0de0ecc <controls_callback+0x90>)
c0de0e52:	447c      	add	r4, pc
c0de0e54:	f000 f88a 	bl	c0de0f6c <OUTLINED_FUNCTION_0>
c0de0e58:	7800      	ldrb	r0, [r0, #0]
c0de0e5a:	fab0 f080 	clz	r0, r0
c0de0e5e:	0940      	lsrs	r0, r0, #5
c0de0e60:	7328      	strb	r0, [r5, #12]
c0de0e62:	f88d 000f 	strb.w	r0, [sp, #15]
c0de0e66:	f000 f881 	bl	c0de0f6c <OUTLINED_FUNCTION_0>
c0de0e6a:	e015      	b.n	c0de0e98 <controls_callback+0x5c>
c0de0e6c:	4818      	ldr	r0, [pc, #96]	@ (c0de0ed0 <controls_callback+0x94>)
c0de0e6e:	4478      	add	r0, pc
c0de0e70:	f007 fb5e 	bl	c0de8530 <pic>
c0de0e74:	7840      	ldrb	r0, [r0, #1]
c0de0e76:	b1a8      	cbz	r0, c0de0ea4 <controls_callback+0x68>
c0de0e78:	eb09 0504 	add.w	r5, r9, r4
c0de0e7c:	4c15      	ldr	r4, [pc, #84]	@ (c0de0ed4 <controls_callback+0x98>)
c0de0e7e:	447c      	add	r4, pc
c0de0e80:	f000 f874 	bl	c0de0f6c <OUTLINED_FUNCTION_0>
c0de0e84:	7840      	ldrb	r0, [r0, #1]
c0de0e86:	fab0 f080 	clz	r0, r0
c0de0e8a:	0940      	lsrs	r0, r0, #5
c0de0e8c:	7628      	strb	r0, [r5, #24]
c0de0e8e:	f88d 000f 	strb.w	r0, [sp, #15]
c0de0e92:	f000 f86b 	bl	c0de0f6c <OUTLINED_FUNCTION_0>
c0de0e96:	3001      	adds	r0, #1
c0de0e98:	f10d 010f 	add.w	r1, sp, #15
c0de0e9c:	2201      	movs	r2, #1
c0de0e9e:	f007 fb77 	bl	c0de8590 <nvm_write>
c0de0ea2:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de0ea4:	480c      	ldr	r0, [pc, #48]	@ (c0de0ed8 <controls_callback+0x9c>)
c0de0ea6:	490d      	ldr	r1, [pc, #52]	@ (c0de0edc <controls_callback+0xa0>)
c0de0ea8:	4478      	add	r0, pc
c0de0eaa:	4479      	add	r1, pc
c0de0eac:	e9cd 1000 	strd	r1, r0, [sp]
c0de0eb0:	480b      	ldr	r0, [pc, #44]	@ (c0de0ee0 <controls_callback+0xa4>)
c0de0eb2:	490c      	ldr	r1, [pc, #48]	@ (c0de0ee4 <controls_callback+0xa8>)
c0de0eb4:	4a0c      	ldr	r2, [pc, #48]	@ (c0de0ee8 <controls_callback+0xac>)
c0de0eb6:	4b0d      	ldr	r3, [pc, #52]	@ (c0de0eec <controls_callback+0xb0>)
c0de0eb8:	4478      	add	r0, pc
c0de0eba:	4479      	add	r1, pc
c0de0ebc:	447a      	add	r2, pc
c0de0ebe:	447b      	add	r3, pc
c0de0ec0:	f005 fa9a 	bl	c0de63f8 <nbgl_useCaseChoice>
c0de0ec4:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de0ec6:	bf00      	nop
c0de0ec8:	00000800 	.word	0x00000800
c0de0ecc:	000087aa 	.word	0x000087aa
c0de0ed0:	0000878e 	.word	0x0000878e
c0de0ed4:	0000877e 	.word	0x0000877e
c0de0ed8:	00000045 	.word	0x00000045
c0de0edc:	00007eca 	.word	0x00007eca
c0de0ee0:	00007cb2 	.word	0x00007cb2
c0de0ee4:	00007cdd 	.word	0x00007cdd
c0de0ee8:	00007d99 	.word	0x00007d99
c0de0eec:	00007f86 	.word	0x00007f86

c0de0ef0 <review_warning_choice>:
c0de0ef0:	b5b0      	push	{r4, r5, r7, lr}
c0de0ef2:	b086      	sub	sp, #24
c0de0ef4:	b1a8      	cbz	r0, c0de0f22 <review_warning_choice+0x32>
c0de0ef6:	4c17      	ldr	r4, [pc, #92]	@ (c0de0f54 <review_warning_choice+0x64>)
c0de0ef8:	4815      	ldr	r0, [pc, #84]	@ (c0de0f50 <review_warning_choice+0x60>)
c0de0efa:	447c      	add	r4, pc
c0de0efc:	eb09 0500 	add.w	r5, r9, r0
c0de0f00:	f000 f834 	bl	c0de0f6c <OUTLINED_FUNCTION_0>
c0de0f04:	7840      	ldrb	r0, [r0, #1]
c0de0f06:	fab0 f080 	clz	r0, r0
c0de0f0a:	0940      	lsrs	r0, r0, #5
c0de0f0c:	7628      	strb	r0, [r5, #24]
c0de0f0e:	f88d 0017 	strb.w	r0, [sp, #23]
c0de0f12:	f000 f82b 	bl	c0de0f6c <OUTLINED_FUNCTION_0>
c0de0f16:	3001      	adds	r0, #1
c0de0f18:	f10d 0117 	add.w	r1, sp, #23
c0de0f1c:	2201      	movs	r2, #1
c0de0f1e:	f007 fb37 	bl	c0de8590 <nvm_write>
c0de0f22:	480b      	ldr	r0, [pc, #44]	@ (c0de0f50 <review_warning_choice+0x60>)
c0de0f24:	2100      	movs	r1, #0
c0de0f26:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de0f2a:	480b      	ldr	r0, [pc, #44]	@ (c0de0f58 <review_warning_choice+0x68>)
c0de0f2c:	4a0b      	ldr	r2, [pc, #44]	@ (c0de0f5c <review_warning_choice+0x6c>)
c0de0f2e:	4c0c      	ldr	r4, [pc, #48]	@ (c0de0f60 <review_warning_choice+0x70>)
c0de0f30:	4478      	add	r0, pc
c0de0f32:	447a      	add	r2, pc
c0de0f34:	447c      	add	r4, pc
c0de0f36:	e9cd 4200 	strd	r4, r2, [sp]
c0de0f3a:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de0f3e:	2200      	movs	r2, #0
c0de0f40:	4808      	ldr	r0, [pc, #32]	@ (c0de0f64 <review_warning_choice+0x74>)
c0de0f42:	4909      	ldr	r1, [pc, #36]	@ (c0de0f68 <review_warning_choice+0x78>)
c0de0f44:	4478      	add	r0, pc
c0de0f46:	4479      	add	r1, pc
c0de0f48:	f004 fdde 	bl	c0de5b08 <nbgl_useCaseHomeAndSettings>
c0de0f4c:	b006      	add	sp, #24
c0de0f4e:	bdb0      	pop	{r4, r5, r7, pc}
c0de0f50:	00000800 	.word	0x00000800
c0de0f54:	00008702 	.word	0x00008702
c0de0f58:	fffffe71 	.word	0xfffffe71
c0de0f5c:	00007fb6 	.word	0x00007fb6
c0de0f60:	00007fa8 	.word	0x00007fa8
c0de0f64:	00007f63 	.word	0x00007f63
c0de0f68:	00007acd 	.word	0x00007acd

c0de0f6c <OUTLINED_FUNCTION_0>:
c0de0f6c:	4620      	mov	r0, r4
c0de0f6e:	f007 badf 	b.w	c0de8530 <pic>
	...

c0de0f74 <ui_display_address>:
c0de0f74:	b570      	push	{r4, r5, r6, lr}
c0de0f76:	b088      	sub	sp, #32
c0de0f78:	4e22      	ldr	r6, [pc, #136]	@ (c0de1004 <ui_display_address+0x90>)
c0de0f7a:	eb09 0106 	add.w	r1, r9, r6
c0de0f7e:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de0f82:	f891 12a8 	ldrb.w	r1, [r1, #680]	@ 0x2a8
c0de0f86:	4308      	orrs	r0, r1
c0de0f88:	d12a      	bne.n	c0de0fe0 <ui_display_address+0x6c>
c0de0f8a:	4d1f      	ldr	r5, [pc, #124]	@ (c0de1008 <ui_display_address+0x94>)
c0de0f8c:	212b      	movs	r1, #43	@ 0x2b
c0de0f8e:	eb09 0005 	add.w	r0, r9, r5
c0de0f92:	f007 fcbd 	bl	c0de8910 <__aeabi_memclr>
c0de0f96:	ac03      	add	r4, sp, #12
c0de0f98:	2114      	movs	r1, #20
c0de0f9a:	4620      	mov	r0, r4
c0de0f9c:	f007 fcb8 	bl	c0de8910 <__aeabi_memclr>
c0de0fa0:	eb09 0006 	add.w	r0, r9, r6
c0de0fa4:	4621      	mov	r1, r4
c0de0fa6:	2214      	movs	r2, #20
c0de0fa8:	3008      	adds	r0, #8
c0de0faa:	f7ff f833 	bl	c0de0014 <address_from_pubkey>
c0de0fae:	b308      	cbz	r0, c0de0ff4 <ui_display_address+0x80>
c0de0fb0:	eb09 0205 	add.w	r2, r9, r5
c0de0fb4:	a803      	add	r0, sp, #12
c0de0fb6:	2114      	movs	r1, #20
c0de0fb8:	232b      	movs	r3, #43	@ 0x2b
c0de0fba:	f006 fd09 	bl	c0de79d0 <format_hex>
c0de0fbe:	3001      	adds	r0, #1
c0de0fc0:	d018      	beq.n	c0de0ff4 <ui_display_address+0x80>
c0de0fc2:	4812      	ldr	r0, [pc, #72]	@ (c0de100c <ui_display_address+0x98>)
c0de0fc4:	2400      	movs	r4, #0
c0de0fc6:	2100      	movs	r1, #0
c0de0fc8:	4478      	add	r0, pc
c0de0fca:	e9cd 4000 	strd	r4, r0, [sp]
c0de0fce:	eb09 0005 	add.w	r0, r9, r5
c0de0fd2:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1010 <ui_display_address+0x9c>)
c0de0fd4:	4b0f      	ldr	r3, [pc, #60]	@ (c0de1014 <ui_display_address+0xa0>)
c0de0fd6:	447a      	add	r2, pc
c0de0fd8:	447b      	add	r3, pc
c0de0fda:	f004 ff0f 	bl	c0de5dfc <nbgl_useCaseAddressReview>
c0de0fde:	e00e      	b.n	c0de0ffe <ui_display_address+0x8a>
c0de0fe0:	2000      	movs	r0, #0
c0de0fe2:	f809 0006 	strb.w	r0, [r9, r6]
c0de0fe6:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de0fea:	b008      	add	sp, #32
c0de0fec:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de0ff0:	f000 b812 	b.w	c0de1018 <io_send_sw>
c0de0ff4:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de0ff8:	f000 f80e 	bl	c0de1018 <io_send_sw>
c0de0ffc:	4604      	mov	r4, r0
c0de0ffe:	4620      	mov	r0, r4
c0de1000:	b008      	add	sp, #32
c0de1002:	bd70      	pop	{r4, r5, r6, pc}
c0de1004:	00000000 	.word	0x00000000
c0de1008:	0000081c 	.word	0x0000081c
c0de100c:	0000005d 	.word	0x0000005d
c0de1010:	00007bb7 	.word	0x00007bb7
c0de1014:	00007ed3 	.word	0x00007ed3

c0de1018 <io_send_sw>:
c0de1018:	b580      	push	{r7, lr}
c0de101a:	4602      	mov	r2, r0
c0de101c:	2000      	movs	r0, #0
c0de101e:	2100      	movs	r1, #0
c0de1020:	f006 fd36 	bl	c0de7a90 <io_send_response_buffers>
c0de1024:	bd80      	pop	{r7, pc}
	...

c0de1028 <review_choice>:
c0de1028:	b510      	push	{r4, lr}
c0de102a:	4604      	mov	r4, r0
c0de102c:	f7ff fe5a 	bl	c0de0ce4 <validate_pubkey>
c0de1030:	2007      	movs	r0, #7
c0de1032:	2c00      	cmp	r4, #0
c0de1034:	bf18      	it	ne
c0de1036:	2006      	movne	r0, #6
c0de1038:	4902      	ldr	r1, [pc, #8]	@ (c0de1044 <review_choice+0x1c>)
c0de103a:	4479      	add	r1, pc
c0de103c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1040:	f005 b8ce 	b.w	c0de61e0 <nbgl_useCaseReviewStatus>
c0de1044:	fffffd6f 	.word	0xfffffd6f

c0de1048 <ui_display_transaction_bs_choice>:
c0de1048:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de104a:	b08d      	sub	sp, #52	@ 0x34
c0de104c:	4f43      	ldr	r7, [pc, #268]	@ (c0de115c <ui_display_transaction_bs_choice+0x114>)
c0de104e:	4604      	mov	r4, r0
c0de1050:	eb09 0007 	add.w	r0, r9, r7
c0de1054:	f890 02a8 	ldrb.w	r0, [r0, #680]	@ 0x2a8
c0de1058:	2801      	cmp	r0, #1
c0de105a:	d15d      	bne.n	c0de1118 <ui_display_transaction_bs_choice+0xd0>
c0de105c:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de1060:	2801      	cmp	r0, #1
c0de1062:	d159      	bne.n	c0de1118 <ui_display_transaction_bs_choice+0xd0>
c0de1064:	4e3e      	ldr	r6, [pc, #248]	@ (c0de1160 <ui_display_transaction_bs_choice+0x118>)
c0de1066:	211e      	movs	r1, #30
c0de1068:	eb09 0006 	add.w	r0, r9, r6
c0de106c:	3014      	adds	r0, #20
c0de106e:	f007 fc4f 	bl	c0de8910 <__aeabi_memclr>
c0de1072:	ad05      	add	r5, sp, #20
c0de1074:	211e      	movs	r1, #30
c0de1076:	4628      	mov	r0, r5
c0de1078:	f007 fc4a 	bl	c0de8910 <__aeabi_memclr>
c0de107c:	eb09 0007 	add.w	r0, r9, r7
c0de1080:	211e      	movs	r1, #30
c0de1082:	e9d0 2386 	ldrd	r2, r3, [r0, #536]	@ 0x218
c0de1086:	2003      	movs	r0, #3
c0de1088:	9000      	str	r0, [sp, #0]
c0de108a:	4628      	mov	r0, r5
c0de108c:	f006 fc59 	bl	c0de7942 <format_fpu64>
c0de1090:	2800      	cmp	r0, #0
c0de1092:	d04b      	beq.n	c0de112c <ui_display_transaction_bs_choice+0xe4>
c0de1094:	9500      	str	r5, [sp, #0]
c0de1096:	eb09 0506 	add.w	r5, r9, r6
c0de109a:	211e      	movs	r1, #30
c0de109c:	231e      	movs	r3, #30
c0de109e:	4a31      	ldr	r2, [pc, #196]	@ (c0de1164 <ui_display_transaction_bs_choice+0x11c>)
c0de10a0:	f105 0014 	add.w	r0, r5, #20
c0de10a4:	447a      	add	r2, pc
c0de10a6:	f006 ff25 	bl	c0de7ef4 <snprintf>
c0de10aa:	3554      	adds	r5, #84	@ 0x54
c0de10ac:	212b      	movs	r1, #43	@ 0x2b
c0de10ae:	4628      	mov	r0, r5
c0de10b0:	f007 fc2e 	bl	c0de8910 <__aeabi_memclr>
c0de10b4:	eb09 0007 	add.w	r0, r9, r7
c0de10b8:	2114      	movs	r1, #20
c0de10ba:	462a      	mov	r2, r5
c0de10bc:	232b      	movs	r3, #43	@ 0x2b
c0de10be:	f8d0 0228 	ldr.w	r0, [r0, #552]	@ 0x228
c0de10c2:	f006 fc85 	bl	c0de79d0 <format_hex>
c0de10c6:	3001      	adds	r0, #1
c0de10c8:	d033      	beq.n	c0de1132 <ui_display_transaction_bs_choice+0xea>
c0de10ca:	4927      	ldr	r1, [pc, #156]	@ (c0de1168 <ui_display_transaction_bs_choice+0x120>)
c0de10cc:	eb09 0006 	add.w	r0, r9, r6
c0de10d0:	2500      	movs	r5, #0
c0de10d2:	4602      	mov	r2, r0
c0de10d4:	4479      	add	r1, pc
c0de10d6:	f842 1f34 	str.w	r1, [r2, #52]!
c0de10da:	f849 2006 	str.w	r2, [r9, r6]
c0de10de:	2202      	movs	r2, #2
c0de10e0:	4922      	ldr	r1, [pc, #136]	@ (c0de116c <ui_display_transaction_bs_choice+0x124>)
c0de10e2:	7202      	strb	r2, [r0, #8]
c0de10e4:	f100 0254 	add.w	r2, r0, #84	@ 0x54
c0de10e8:	72c5      	strb	r5, [r0, #11]
c0de10ea:	4479      	add	r1, pc
c0de10ec:	e9c0 1211 	strd	r1, r2, [r0, #68]	@ 0x44
c0de10f0:	f100 0114 	add.w	r1, r0, #20
c0de10f4:	6381      	str	r1, [r0, #56]	@ 0x38
c0de10f6:	481e      	ldr	r0, [pc, #120]	@ (c0de1170 <ui_display_transaction_bs_choice+0x128>)
c0de10f8:	4478      	add	r0, pc
c0de10fa:	b314      	cbz	r4, c0de1142 <ui_display_transaction_bs_choice+0xfa>
c0de10fc:	e9cd 5002 	strd	r5, r0, [sp, #8]
c0de1100:	e9cd 5500 	strd	r5, r5, [sp]
c0de1104:	eb09 0106 	add.w	r1, r9, r6
c0de1108:	2000      	movs	r0, #0
c0de110a:	4a1a      	ldr	r2, [pc, #104]	@ (c0de1174 <ui_display_transaction_bs_choice+0x12c>)
c0de110c:	4b1a      	ldr	r3, [pc, #104]	@ (c0de1178 <ui_display_transaction_bs_choice+0x130>)
c0de110e:	447a      	add	r2, pc
c0de1110:	447b      	add	r3, pc
c0de1112:	f004 fe61 	bl	c0de5dd8 <nbgl_useCaseReviewBlindSigning>
c0de1116:	e011      	b.n	c0de113c <ui_display_transaction_bs_choice+0xf4>
c0de1118:	2000      	movs	r0, #0
c0de111a:	f809 0007 	strb.w	r0, [r9, r7]
c0de111e:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1122:	b00d      	add	sp, #52	@ 0x34
c0de1124:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de1128:	f000 b82c 	b.w	c0de1184 <io_send_sw>
c0de112c:	f24b 0003 	movw	r0, #45059	@ 0xb003
c0de1130:	e001      	b.n	c0de1136 <ui_display_transaction_bs_choice+0xee>
c0de1132:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1136:	f000 f825 	bl	c0de1184 <io_send_sw>
c0de113a:	4605      	mov	r5, r0
c0de113c:	4628      	mov	r0, r5
c0de113e:	b00d      	add	sp, #52	@ 0x34
c0de1140:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1142:	9002      	str	r0, [sp, #8]
c0de1144:	e9cd 5500 	strd	r5, r5, [sp]
c0de1148:	eb09 0106 	add.w	r1, r9, r6
c0de114c:	2000      	movs	r0, #0
c0de114e:	4a0b      	ldr	r2, [pc, #44]	@ (c0de117c <ui_display_transaction_bs_choice+0x134>)
c0de1150:	4b0b      	ldr	r3, [pc, #44]	@ (c0de1180 <ui_display_transaction_bs_choice+0x138>)
c0de1152:	447a      	add	r2, pc
c0de1154:	447b      	add	r3, pc
c0de1156:	f004 fd7f 	bl	c0de5c58 <nbgl_useCaseReview>
c0de115a:	e7ef      	b.n	c0de113c <ui_display_transaction_bs_choice+0xf4>
c0de115c:	00000000 	.word	0x00000000
c0de1160:	00000848 	.word	0x00000848
c0de1164:	00007d82 	.word	0x00007d82
c0de1168:	00007b69 	.word	0x00007b69
c0de116c:	00007d45 	.word	0x00007d45
c0de1170:	00000099 	.word	0x00000099
c0de1174:	00007a7f 	.word	0x00007a7f
c0de1178:	00007a8f 	.word	0x00007a8f
c0de117c:	00007a3b 	.word	0x00007a3b
c0de1180:	00007a4b 	.word	0x00007a4b

c0de1184 <io_send_sw>:
c0de1184:	b580      	push	{r7, lr}
c0de1186:	4602      	mov	r2, r0
c0de1188:	2000      	movs	r0, #0
c0de118a:	2100      	movs	r1, #0
c0de118c:	f006 fc80 	bl	c0de7a90 <io_send_response_buffers>
c0de1190:	bd80      	pop	{r7, pc}
	...

c0de1194 <review_choice>:
c0de1194:	b510      	push	{r4, lr}
c0de1196:	4604      	mov	r4, r0
c0de1198:	f7ff fdb2 	bl	c0de0d00 <validate_transaction>
c0de119c:	4903      	ldr	r1, [pc, #12]	@ (c0de11ac <review_choice+0x18>)
c0de119e:	f084 0001 	eor.w	r0, r4, #1
c0de11a2:	4479      	add	r1, pc
c0de11a4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de11a8:	f005 b81a 	b.w	c0de61e0 <nbgl_useCaseReviewStatus>
c0de11ac:	fffffc07 	.word	0xfffffc07

c0de11b0 <ui_display_blind_signed_transaction>:
c0de11b0:	2001      	movs	r0, #1
c0de11b2:	f7ff bf49 	b.w	c0de1048 <ui_display_transaction_bs_choice>

c0de11b6 <ui_display_transaction>:
c0de11b6:	2000      	movs	r0, #0
c0de11b8:	f7ff bf46 	b.w	c0de1048 <ui_display_transaction_bs_choice>

c0de11bc <zkn_final_exp>:
c0de11bc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de11c0:	f5ad 6d35 	sub.w	sp, sp, #2896	@ 0xb50
c0de11c4:	f50d 6711 	add.w	r7, sp, #2320	@ 0x910
c0de11c8:	9003      	str	r0, [sp, #12]
c0de11ca:	4614      	mov	r4, r2
c0de11cc:	460e      	mov	r6, r1
c0de11ce:	4638      	mov	r0, r7
c0de11d0:	f000 f8fd 	bl	c0de13ce <zkn_fp12_384_copy>
c0de11d4:	4d47      	ldr	r5, [pc, #284]	@ (c0de12f4 <zkn_final_exp+0x138>)
c0de11d6:	4638      	mov	r0, r7
c0de11d8:	4639      	mov	r1, r7
c0de11da:	4622      	mov	r2, r4
c0de11dc:	447d      	add	r5, pc
c0de11de:	47a8      	blx	r5
c0de11e0:	46aa      	mov	sl, r5
c0de11e2:	f50d 65da 	add.w	r5, sp, #1744	@ 0x6d0
c0de11e6:	4631      	mov	r1, r6
c0de11e8:	4622      	mov	r2, r4
c0de11ea:	4628      	mov	r0, r5
c0de11ec:	f000 fa01 	bl	c0de15f2 <zkn_fp12_384_inv>
c0de11f0:	4e41      	ldr	r6, [pc, #260]	@ (c0de12f8 <zkn_final_exp+0x13c>)
c0de11f2:	f10d 0810 	add.w	r8, sp, #16
c0de11f6:	4639      	mov	r1, r7
c0de11f8:	462a      	mov	r2, r5
c0de11fa:	4623      	mov	r3, r4
c0de11fc:	4640      	mov	r0, r8
c0de11fe:	447e      	add	r6, pc
c0de1200:	47b0      	blx	r6
c0de1202:	4f3e      	ldr	r7, [pc, #248]	@ (c0de12fc <zkn_final_exp+0x140>)
c0de1204:	4628      	mov	r0, r5
c0de1206:	4641      	mov	r1, r8
c0de1208:	2202      	movs	r2, #2
c0de120a:	4623      	mov	r3, r4
c0de120c:	447f      	add	r7, pc
c0de120e:	9702      	str	r7, [sp, #8]
c0de1210:	47b8      	blx	r7
c0de1212:	4640      	mov	r0, r8
c0de1214:	4641      	mov	r1, r8
c0de1216:	462a      	mov	r2, r5
c0de1218:	4623      	mov	r3, r4
c0de121a:	47b0      	blx	r6
c0de121c:	f50d 6511 	add.w	r5, sp, #2320	@ 0x910
c0de1220:	4641      	mov	r1, r8
c0de1222:	4622      	mov	r2, r4
c0de1224:	4628      	mov	r0, r5
c0de1226:	f000 fbd1 	bl	c0de19cc <zkn_fp12_384_cyclotomic_sqr>
c0de122a:	4b35      	ldr	r3, [pc, #212]	@ (c0de1300 <zkn_final_exp+0x144>)
c0de122c:	f50d 67da 	add.w	r7, sp, #1744	@ 0x6d0
c0de1230:	4629      	mov	r1, r5
c0de1232:	4622      	mov	r2, r4
c0de1234:	4638      	mov	r0, r7
c0de1236:	447b      	add	r3, pc
c0de1238:	9301      	str	r3, [sp, #4]
c0de123a:	4798      	blx	r3
c0de123c:	f50d 6592 	add.w	r5, sp, #1168	@ 0x490
c0de1240:	4639      	mov	r1, r7
c0de1242:	4622      	mov	r2, r4
c0de1244:	4628      	mov	r0, r5
c0de1246:	f000 f875 	bl	c0de1334 <raise_to_z_div_by_2>
c0de124a:	f50d 7814 	add.w	r8, sp, #592	@ 0x250
c0de124e:	a904      	add	r1, sp, #16
c0de1250:	4640      	mov	r0, r8
c0de1252:	f000 f8bc 	bl	c0de13ce <zkn_fp12_384_copy>
c0de1256:	4640      	mov	r0, r8
c0de1258:	4641      	mov	r1, r8
c0de125a:	4622      	mov	r2, r4
c0de125c:	47d0      	blx	sl
c0de125e:	4638      	mov	r0, r7
c0de1260:	4639      	mov	r1, r7
c0de1262:	4642      	mov	r2, r8
c0de1264:	4623      	mov	r3, r4
c0de1266:	47b0      	blx	r6
c0de1268:	f000 f8a3 	bl	c0de13b2 <OUTLINED_FUNCTION_1>
c0de126c:	4638      	mov	r0, r7
c0de126e:	f000 f89c 	bl	c0de13aa <OUTLINED_FUNCTION_0>
c0de1272:	f8dd b004 	ldr.w	fp, [sp, #4]
c0de1276:	4628      	mov	r0, r5
c0de1278:	4639      	mov	r1, r7
c0de127a:	4622      	mov	r2, r4
c0de127c:	47d8      	blx	fp
c0de127e:	4640      	mov	r0, r8
c0de1280:	4629      	mov	r1, r5
c0de1282:	4622      	mov	r2, r4
c0de1284:	47d8      	blx	fp
c0de1286:	f000 f894 	bl	c0de13b2 <OUTLINED_FUNCTION_1>
c0de128a:	4640      	mov	r0, r8
c0de128c:	4641      	mov	r1, r8
c0de128e:	463a      	mov	r2, r7
c0de1290:	4623      	mov	r3, r4
c0de1292:	47b0      	blx	r6
c0de1294:	f000 f88d 	bl	c0de13b2 <OUTLINED_FUNCTION_1>
c0de1298:	f8dd a008 	ldr.w	sl, [sp, #8]
c0de129c:	4638      	mov	r0, r7
c0de129e:	4639      	mov	r1, r7
c0de12a0:	2203      	movs	r2, #3
c0de12a2:	4623      	mov	r3, r4
c0de12a4:	47d0      	blx	sl
c0de12a6:	4628      	mov	r0, r5
c0de12a8:	4629      	mov	r1, r5
c0de12aa:	2202      	movs	r2, #2
c0de12ac:	4623      	mov	r3, r4
c0de12ae:	47d0      	blx	sl
c0de12b0:	4638      	mov	r0, r7
c0de12b2:	f000 f87a 	bl	c0de13aa <OUTLINED_FUNCTION_0>
c0de12b6:	4628      	mov	r0, r5
c0de12b8:	4641      	mov	r1, r8
c0de12ba:	4622      	mov	r2, r4
c0de12bc:	47d8      	blx	fp
c0de12be:	4628      	mov	r0, r5
c0de12c0:	4629      	mov	r1, r5
c0de12c2:	f50d 6211 	add.w	r2, sp, #2320	@ 0x910
c0de12c6:	4623      	mov	r3, r4
c0de12c8:	47b0      	blx	r6
c0de12ca:	4628      	mov	r0, r5
c0de12cc:	4629      	mov	r1, r5
c0de12ce:	aa04      	add	r2, sp, #16
c0de12d0:	4623      	mov	r3, r4
c0de12d2:	47b0      	blx	r6
c0de12d4:	4638      	mov	r0, r7
c0de12d6:	f000 f868 	bl	c0de13aa <OUTLINED_FUNCTION_0>
c0de12da:	4628      	mov	r0, r5
c0de12dc:	4641      	mov	r1, r8
c0de12de:	2201      	movs	r2, #1
c0de12e0:	4623      	mov	r3, r4
c0de12e2:	47d0      	blx	sl
c0de12e4:	9803      	ldr	r0, [sp, #12]
c0de12e6:	f000 f860 	bl	c0de13aa <OUTLINED_FUNCTION_0>
c0de12ea:	f50d 6d35 	add.w	sp, sp, #2896	@ 0xb50
c0de12ee:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de12f2:	bf00      	nop
c0de12f4:	00000213 	.word	0x00000213
c0de12f8:	0000020f 	.word	0x0000020f
c0de12fc:	00000455 	.word	0x00000455
c0de1300:	000000e3 	.word	0x000000e3

c0de1304 <zkn_pairing>:
c0de1304:	b5b0      	push	{r4, r5, r7, lr}
c0de1306:	461c      	mov	r4, r3
c0de1308:	4605      	mov	r5, r0
c0de130a:	f001 ffe9 	bl	c0de32e0 <zkn_miller_loop>
c0de130e:	4628      	mov	r0, r5
c0de1310:	4629      	mov	r1, r5
c0de1312:	4622      	mov	r2, r4
c0de1314:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de1318:	f7ff bf50 	b.w	c0de11bc <zkn_final_exp>

c0de131c <raise_to_z>:
c0de131c:	b5b0      	push	{r4, r5, r7, lr}
c0de131e:	4614      	mov	r4, r2
c0de1320:	4605      	mov	r5, r0
c0de1322:	f000 f807 	bl	c0de1334 <raise_to_z_div_by_2>
c0de1326:	4628      	mov	r0, r5
c0de1328:	4629      	mov	r1, r5
c0de132a:	4622      	mov	r2, r4
c0de132c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de1330:	f000 bb4c 	b.w	c0de19cc <zkn_fp12_384_cyclotomic_sqr>

c0de1334 <raise_to_z_div_by_2>:
c0de1334:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1336:	4614      	mov	r4, r2
c0de1338:	460e      	mov	r6, r1
c0de133a:	4605      	mov	r5, r0
c0de133c:	f000 fb46 	bl	c0de19cc <zkn_fp12_384_cyclotomic_sqr>
c0de1340:	4f10      	ldr	r7, [pc, #64]	@ (c0de1384 <raise_to_z_div_by_2+0x50>)
c0de1342:	4628      	mov	r0, r5
c0de1344:	4631      	mov	r1, r6
c0de1346:	2202      	movs	r2, #2
c0de1348:	4623      	mov	r3, r4
c0de134a:	447f      	add	r7, pc
c0de134c:	47b8      	blx	r7
c0de134e:	4628      	mov	r0, r5
c0de1350:	4631      	mov	r1, r6
c0de1352:	2203      	movs	r2, #3
c0de1354:	4623      	mov	r3, r4
c0de1356:	47b8      	blx	r7
c0de1358:	4628      	mov	r0, r5
c0de135a:	4631      	mov	r1, r6
c0de135c:	2209      	movs	r2, #9
c0de135e:	4623      	mov	r3, r4
c0de1360:	47b8      	blx	r7
c0de1362:	4628      	mov	r0, r5
c0de1364:	4631      	mov	r1, r6
c0de1366:	2220      	movs	r2, #32
c0de1368:	4623      	mov	r3, r4
c0de136a:	47b8      	blx	r7
c0de136c:	4628      	mov	r0, r5
c0de136e:	4631      	mov	r1, r6
c0de1370:	220f      	movs	r2, #15
c0de1372:	4623      	mov	r3, r4
c0de1374:	47b8      	blx	r7
c0de1376:	4628      	mov	r0, r5
c0de1378:	4629      	mov	r1, r5
c0de137a:	4622      	mov	r2, r4
c0de137c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de1380:	f000 b837 	b.w	c0de13f2 <zkn_fp12_384_conjugate>
c0de1384:	0000003b 	.word	0x0000003b

c0de1388 <mul_n_sqr>:
c0de1388:	b570      	push	{r4, r5, r6, lr}
c0de138a:	4615      	mov	r5, r2
c0de138c:	460a      	mov	r2, r1
c0de138e:	4601      	mov	r1, r0
c0de1390:	461c      	mov	r4, r3
c0de1392:	4606      	mov	r6, r0
c0de1394:	f000 f83c 	bl	c0de1410 <zkn_fp12_384_mul>
c0de1398:	b135      	cbz	r5, c0de13a8 <mul_n_sqr+0x20>
c0de139a:	4630      	mov	r0, r6
c0de139c:	4631      	mov	r1, r6
c0de139e:	4622      	mov	r2, r4
c0de13a0:	f000 fb14 	bl	c0de19cc <zkn_fp12_384_cyclotomic_sqr>
c0de13a4:	3d01      	subs	r5, #1
c0de13a6:	e7f7      	b.n	c0de1398 <mul_n_sqr+0x10>
c0de13a8:	bd70      	pop	{r4, r5, r6, pc}

c0de13aa <OUTLINED_FUNCTION_0>:
c0de13aa:	4639      	mov	r1, r7
c0de13ac:	462a      	mov	r2, r5
c0de13ae:	4623      	mov	r3, r4
c0de13b0:	4730      	bx	r6

c0de13b2 <OUTLINED_FUNCTION_1>:
c0de13b2:	4638      	mov	r0, r7
c0de13b4:	4639      	mov	r1, r7
c0de13b6:	4622      	mov	r2, r4
c0de13b8:	4750      	bx	sl

c0de13ba <zkn_fp12_384_one>:
c0de13ba:	b510      	push	{r4, lr}
c0de13bc:	4604      	mov	r4, r0
c0de13be:	f000 fd8d 	bl	c0de1edc <zkn_fp6_384_one>
c0de13c2:	f504 7090 	add.w	r0, r4, #288	@ 0x120
c0de13c6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de13ca:	f000 bd77 	b.w	c0de1ebc <zkn_fp6_384_zero>

c0de13ce <zkn_fp12_384_copy>:
c0de13ce:	b580      	push	{r7, lr}
c0de13d0:	f000 fbc3 	bl	c0de1b5a <OUTLINED_FUNCTION_3>
c0de13d4:	bd80      	pop	{r7, pc}

c0de13d6 <zkn_fp12_384_eq>:
c0de13d6:	b570      	push	{r4, r5, r6, lr}
c0de13d8:	460c      	mov	r4, r1
c0de13da:	4605      	mov	r5, r0
c0de13dc:	f000 fd92 	bl	c0de1f04 <zkn_fp6_384_eq>
c0de13e0:	4606      	mov	r6, r0
c0de13e2:	f505 7090 	add.w	r0, r5, #288	@ 0x120
c0de13e6:	f504 7190 	add.w	r1, r4, #288	@ 0x120
c0de13ea:	f000 fd8b 	bl	c0de1f04 <zkn_fp6_384_eq>
c0de13ee:	4030      	ands	r0, r6
c0de13f0:	bd70      	pop	{r4, r5, r6, pc}

c0de13f2 <zkn_fp12_384_conjugate>:
c0de13f2:	b570      	push	{r4, r5, r6, lr}
c0de13f4:	4614      	mov	r4, r2
c0de13f6:	460d      	mov	r5, r1
c0de13f8:	4606      	mov	r6, r0
c0de13fa:	f000 fd7d 	bl	c0de1ef8 <zkn_fp6_384_copy>
c0de13fe:	f506 7090 	add.w	r0, r6, #288	@ 0x120
c0de1402:	f505 7190 	add.w	r1, r5, #288	@ 0x120
c0de1406:	4622      	mov	r2, r4
c0de1408:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de140c:	f000 bdb0 	b.w	c0de1f70 <zkn_fp6_384_neg>

c0de1410 <zkn_fp12_384_mul>:
c0de1410:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1414:	f5ad 6dd9 	sub.w	sp, sp, #1736	@ 0x6c8
c0de1418:	9001      	str	r0, [sp, #4]
c0de141a:	f50d 60b5 	add.w	r0, sp, #1448	@ 0x5a8
c0de141e:	461d      	mov	r5, r3
c0de1420:	4616      	mov	r6, r2
c0de1422:	468b      	mov	fp, r1
c0de1424:	4f23      	ldr	r7, [pc, #140]	@ (c0de14b4 <zkn_fp12_384_mul+0xa4>)
c0de1426:	447f      	add	r7, pc
c0de1428:	47b8      	blx	r7
c0de142a:	f50b 7490 	add.w	r4, fp, #288	@ 0x120
c0de142e:	f506 7890 	add.w	r8, r6, #288	@ 0x120
c0de1432:	f50d 6091 	add.w	r0, sp, #1160	@ 0x488
c0de1436:	462b      	mov	r3, r5
c0de1438:	4621      	mov	r1, r4
c0de143a:	4642      	mov	r2, r8
c0de143c:	47b8      	blx	r7
c0de143e:	46ba      	mov	sl, r7
c0de1440:	a8da      	add	r0, sp, #872	@ 0x368
c0de1442:	4f1d      	ldr	r7, [pc, #116]	@ (c0de14b8 <zkn_fp12_384_mul+0xa8>)
c0de1444:	4659      	mov	r1, fp
c0de1446:	4622      	mov	r2, r4
c0de1448:	462b      	mov	r3, r5
c0de144a:	447f      	add	r7, pc
c0de144c:	47b8      	blx	r7
c0de144e:	ac92      	add	r4, sp, #584	@ 0x248
c0de1450:	4631      	mov	r1, r6
c0de1452:	4642      	mov	r2, r8
c0de1454:	462b      	mov	r3, r5
c0de1456:	4620      	mov	r0, r4
c0de1458:	47b8      	blx	r7
c0de145a:	ae4a      	add	r6, sp, #296	@ 0x128
c0de145c:	a9da      	add	r1, sp, #872	@ 0x368
c0de145e:	4622      	mov	r2, r4
c0de1460:	462b      	mov	r3, r5
c0de1462:	4630      	mov	r0, r6
c0de1464:	47d0      	blx	sl
c0de1466:	f50d 68b5 	add.w	r8, sp, #1448	@ 0x5a8
c0de146a:	4630      	mov	r0, r6
c0de146c:	4631      	mov	r1, r6
c0de146e:	462b      	mov	r3, r5
c0de1470:	4642      	mov	r2, r8
c0de1472:	f000 fd6d 	bl	c0de1f50 <zkn_fp6_384_sub>
c0de1476:	f50d 6491 	add.w	r4, sp, #1160	@ 0x488
c0de147a:	4630      	mov	r0, r6
c0de147c:	4631      	mov	r1, r6
c0de147e:	462b      	mov	r3, r5
c0de1480:	4622      	mov	r2, r4
c0de1482:	f000 fd65 	bl	c0de1f50 <zkn_fp6_384_sub>
c0de1486:	f10d 0a08 	add.w	sl, sp, #8
c0de148a:	4621      	mov	r1, r4
c0de148c:	462a      	mov	r2, r5
c0de148e:	4650      	mov	r0, sl
c0de1490:	f000 ff5e 	bl	c0de2350 <zkn_fp6_384_mul_by_v>
c0de1494:	9c01      	ldr	r4, [sp, #4]
c0de1496:	4641      	mov	r1, r8
c0de1498:	4652      	mov	r2, sl
c0de149a:	462b      	mov	r3, r5
c0de149c:	4620      	mov	r0, r4
c0de149e:	47b8      	blx	r7
c0de14a0:	f504 7090 	add.w	r0, r4, #288	@ 0x120
c0de14a4:	4631      	mov	r1, r6
c0de14a6:	f000 fd27 	bl	c0de1ef8 <zkn_fp6_384_copy>
c0de14aa:	f50d 6dd9 	add.w	sp, sp, #1736	@ 0x6c8
c0de14ae:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de14b2:	bf00      	nop
c0de14b4:	00000b7b 	.word	0x00000b7b
c0de14b8:	00000ae3 	.word	0x00000ae3

c0de14bc <zkn_fp12_384_sqr>:
c0de14bc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de14c0:	f5ad 6db4 	sub.w	sp, sp, #1440	@ 0x5a0
c0de14c4:	4c1f      	ldr	r4, [pc, #124]	@ (c0de1544 <zkn_fp12_384_sqr+0x88>)
c0de14c6:	4683      	mov	fp, r0
c0de14c8:	f50d 6090 	add.w	r0, sp, #1152	@ 0x480
c0de14cc:	4615      	mov	r5, r2
c0de14ce:	460e      	mov	r6, r1
c0de14d0:	447c      	add	r4, pc
c0de14d2:	47a0      	blx	r4
c0de14d4:	f506 7790 	add.w	r7, r6, #288	@ 0x120
c0de14d8:	f50d 7a58 	add.w	sl, sp, #864	@ 0x360
c0de14dc:	462a      	mov	r2, r5
c0de14de:	4650      	mov	r0, sl
c0de14e0:	4639      	mov	r1, r7
c0de14e2:	47a0      	blx	r4
c0de14e4:	f50d 7810 	add.w	r8, sp, #576	@ 0x240
c0de14e8:	4631      	mov	r1, r6
c0de14ea:	463a      	mov	r2, r7
c0de14ec:	462b      	mov	r3, r5
c0de14ee:	4640      	mov	r0, r8
c0de14f0:	f000 fd1e 	bl	c0de1f30 <zkn_fp6_384_add>
c0de14f4:	ae48      	add	r6, sp, #288	@ 0x120
c0de14f6:	4641      	mov	r1, r8
c0de14f8:	462a      	mov	r2, r5
c0de14fa:	4630      	mov	r0, r6
c0de14fc:	47a0      	blx	r4
c0de14fe:	f50d 6790 	add.w	r7, sp, #1152	@ 0x480
c0de1502:	4630      	mov	r0, r6
c0de1504:	4631      	mov	r1, r6
c0de1506:	462b      	mov	r3, r5
c0de1508:	463a      	mov	r2, r7
c0de150a:	f000 fd21 	bl	c0de1f50 <zkn_fp6_384_sub>
c0de150e:	4630      	mov	r0, r6
c0de1510:	4631      	mov	r1, r6
c0de1512:	4652      	mov	r2, sl
c0de1514:	462b      	mov	r3, r5
c0de1516:	f000 fd1b 	bl	c0de1f50 <zkn_fp6_384_sub>
c0de151a:	466c      	mov	r4, sp
c0de151c:	4651      	mov	r1, sl
c0de151e:	462a      	mov	r2, r5
c0de1520:	4620      	mov	r0, r4
c0de1522:	f000 ff15 	bl	c0de2350 <zkn_fp6_384_mul_by_v>
c0de1526:	4658      	mov	r0, fp
c0de1528:	4639      	mov	r1, r7
c0de152a:	4622      	mov	r2, r4
c0de152c:	462b      	mov	r3, r5
c0de152e:	f000 fcff 	bl	c0de1f30 <zkn_fp6_384_add>
c0de1532:	f50b 7090 	add.w	r0, fp, #288	@ 0x120
c0de1536:	4631      	mov	r1, r6
c0de1538:	f000 fcde 	bl	c0de1ef8 <zkn_fp6_384_copy>
c0de153c:	f50d 6db4 	add.w	sp, sp, #1440	@ 0x5a0
c0de1540:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1544:	00000c3d 	.word	0x00000c3d

c0de1548 <zkn_fp12_384_mul_by_014>:
c0de1548:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de154c:	f5ad 6dc1 	sub.w	sp, sp, #1544	@ 0x608
c0de1550:	f8dd 562c 	ldr.w	r5, [sp, #1580]	@ 0x62c
c0de1554:	9001      	str	r0, [sp, #4]
c0de1556:	f50d 609d 	add.w	r0, sp, #1256	@ 0x4e8
c0de155a:	461f      	mov	r7, r3
c0de155c:	4616      	mov	r6, r2
c0de155e:	460c      	mov	r4, r1
c0de1560:	9500      	str	r5, [sp, #0]
c0de1562:	f000 fe59 	bl	c0de2218 <zkn_fp6_384_mul_by_01>
c0de1566:	f8dd a628 	ldr.w	sl, [sp, #1576]	@ 0x628
c0de156a:	f504 7890 	add.w	r8, r4, #288	@ 0x120
c0de156e:	a8f2      	add	r0, sp, #968	@ 0x3c8
c0de1570:	462b      	mov	r3, r5
c0de1572:	4641      	mov	r1, r8
c0de1574:	4652      	mov	r2, sl
c0de1576:	f000 febd 	bl	c0de22f4 <zkn_fp6_384_mul_by_1>
c0de157a:	f50d 7b2a 	add.w	fp, sp, #680	@ 0x2a8
c0de157e:	4621      	mov	r1, r4
c0de1580:	4642      	mov	r2, r8
c0de1582:	462b      	mov	r3, r5
c0de1584:	4658      	mov	r0, fp
c0de1586:	f000 fcd3 	bl	c0de1f30 <zkn_fp6_384_add>
c0de158a:	ac92      	add	r4, sp, #584	@ 0x248
c0de158c:	4639      	mov	r1, r7
c0de158e:	4652      	mov	r2, sl
c0de1590:	462b      	mov	r3, r5
c0de1592:	4620      	mov	r0, r4
c0de1594:	f000 fb13 	bl	c0de1bbe <zkn_fp2_384_add>
c0de1598:	9500      	str	r5, [sp, #0]
c0de159a:	af4a      	add	r7, sp, #296	@ 0x128
c0de159c:	4659      	mov	r1, fp
c0de159e:	4632      	mov	r2, r6
c0de15a0:	4623      	mov	r3, r4
c0de15a2:	4638      	mov	r0, r7
c0de15a4:	f000 fe38 	bl	c0de2218 <zkn_fp6_384_mul_by_01>
c0de15a8:	f50d 689d 	add.w	r8, sp, #1256	@ 0x4e8
c0de15ac:	4638      	mov	r0, r7
c0de15ae:	4639      	mov	r1, r7
c0de15b0:	462b      	mov	r3, r5
c0de15b2:	4642      	mov	r2, r8
c0de15b4:	f000 fccc 	bl	c0de1f50 <zkn_fp6_384_sub>
c0de15b8:	aef2      	add	r6, sp, #968	@ 0x3c8
c0de15ba:	4638      	mov	r0, r7
c0de15bc:	4639      	mov	r1, r7
c0de15be:	462b      	mov	r3, r5
c0de15c0:	4632      	mov	r2, r6
c0de15c2:	f000 fcc5 	bl	c0de1f50 <zkn_fp6_384_sub>
c0de15c6:	ac02      	add	r4, sp, #8
c0de15c8:	4631      	mov	r1, r6
c0de15ca:	462a      	mov	r2, r5
c0de15cc:	4620      	mov	r0, r4
c0de15ce:	f000 febf 	bl	c0de2350 <zkn_fp6_384_mul_by_v>
c0de15d2:	9e01      	ldr	r6, [sp, #4]
c0de15d4:	4641      	mov	r1, r8
c0de15d6:	4622      	mov	r2, r4
c0de15d8:	462b      	mov	r3, r5
c0de15da:	4630      	mov	r0, r6
c0de15dc:	f000 fca8 	bl	c0de1f30 <zkn_fp6_384_add>
c0de15e0:	f506 7090 	add.w	r0, r6, #288	@ 0x120
c0de15e4:	4639      	mov	r1, r7
c0de15e6:	f000 fc87 	bl	c0de1ef8 <zkn_fp6_384_copy>
c0de15ea:	f50d 6dc1 	add.w	sp, sp, #1544	@ 0x608
c0de15ee:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de15f2 <zkn_fp12_384_inv>:
c0de15f2:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de15f6:	f5ad 6db4 	sub.w	sp, sp, #1440	@ 0x5a0
c0de15fa:	f50d 6890 	add.w	r8, sp, #1152	@ 0x480
c0de15fe:	4682      	mov	sl, r0
c0de1600:	4614      	mov	r4, r2
c0de1602:	460e      	mov	r6, r1
c0de1604:	4640      	mov	r0, r8
c0de1606:	f000 fd83 	bl	c0de2110 <zkn_fp6_384_sqr>
c0de160a:	f506 7790 	add.w	r7, r6, #288	@ 0x120
c0de160e:	add8      	add	r5, sp, #864	@ 0x360
c0de1610:	4622      	mov	r2, r4
c0de1612:	4628      	mov	r0, r5
c0de1614:	4639      	mov	r1, r7
c0de1616:	f000 fd7b 	bl	c0de2110 <zkn_fp6_384_sqr>
c0de161a:	4628      	mov	r0, r5
c0de161c:	4629      	mov	r1, r5
c0de161e:	4622      	mov	r2, r4
c0de1620:	f000 fe96 	bl	c0de2350 <zkn_fp6_384_mul_by_v>
c0de1624:	f50d 7b10 	add.w	fp, sp, #576	@ 0x240
c0de1628:	4641      	mov	r1, r8
c0de162a:	462a      	mov	r2, r5
c0de162c:	4623      	mov	r3, r4
c0de162e:	4658      	mov	r0, fp
c0de1630:	f000 fc8e 	bl	c0de1f50 <zkn_fp6_384_sub>
c0de1634:	ad48      	add	r5, sp, #288	@ 0x120
c0de1636:	4659      	mov	r1, fp
c0de1638:	4622      	mov	r2, r4
c0de163a:	4628      	mov	r0, r5
c0de163c:	f000 fea4 	bl	c0de2388 <zkn_fp6_384_inv>
c0de1640:	4650      	mov	r0, sl
c0de1642:	f000 fa8e 	bl	c0de1b62 <OUTLINED_FUNCTION_4>
c0de1646:	466e      	mov	r6, sp
c0de1648:	4639      	mov	r1, r7
c0de164a:	4622      	mov	r2, r4
c0de164c:	4630      	mov	r0, r6
c0de164e:	f000 fc8f 	bl	c0de1f70 <zkn_fp6_384_neg>
c0de1652:	f50a 7090 	add.w	r0, sl, #288	@ 0x120
c0de1656:	f000 fa84 	bl	c0de1b62 <OUTLINED_FUNCTION_4>
c0de165a:	f50d 6db4 	add.w	sp, sp, #1440	@ 0x5a0
c0de165e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
	...

c0de1664 <zkn_fp12_384_frobenius_map>:
c0de1664:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1668:	f5ad 6d90 	sub.w	sp, sp, #1152	@ 0x480
c0de166c:	460f      	mov	r7, r1
c0de166e:	4605      	mov	r5, r0
c0de1670:	2a01      	cmp	r2, #1
c0de1672:	db01      	blt.n	c0de1678 <zkn_fp12_384_frobenius_map+0x14>
c0de1674:	2a04      	cmp	r2, #4
c0de1676:	d304      	bcc.n	c0de1682 <zkn_fp12_384_frobenius_map+0x1e>
c0de1678:	4628      	mov	r0, r5
c0de167a:	4639      	mov	r1, r7
c0de167c:	f000 fa6d 	bl	c0de1b5a <OUTLINED_FUNCTION_3>
c0de1680:	e196      	b.n	c0de19b0 <zkn_fp12_384_frobenius_map+0x34c>
c0de1682:	48cd      	ldr	r0, [pc, #820]	@ (c0de19b8 <zkn_fp12_384_frobenius_map+0x354>)
c0de1684:	461e      	mov	r6, r3
c0de1686:	9307      	str	r3, [sp, #28]
c0de1688:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de168c:	2800      	cmp	r0, #0
c0de168e:	f040 8129 	bne.w	c0de18e4 <zkn_fp12_384_frobenius_map+0x280>
c0de1692:	f50d 787c 	add.w	r8, sp, #1008	@ 0x3f0
c0de1696:	e9cd 2700 	strd	r2, r7, [sp]
c0de169a:	4631      	mov	r1, r6
c0de169c:	220c      	movs	r2, #12
c0de169e:	9502      	str	r5, [sp, #8]
c0de16a0:	4640      	mov	r0, r8
c0de16a2:	f000 fa31 	bl	c0de1b08 <mp_copy>
c0de16a6:	acd8      	add	r4, sp, #864	@ 0x360
c0de16a8:	4620      	mov	r0, r4
c0de16aa:	f002 fa91 	bl	c0de3bd0 <zkn_fe384_zero>
c0de16ae:	2001      	movs	r0, #1
c0de16b0:	4621      	mov	r1, r4
c0de16b2:	4632      	mov	r2, r6
c0de16b4:	90d8      	str	r0, [sp, #864]	@ 0x360
c0de16b6:	ade4      	add	r5, sp, #912	@ 0x390
c0de16b8:	4628      	mov	r0, r5
c0de16ba:	f002 fa41 	bl	c0de3b40 <zkn_to_mont_384>
c0de16be:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de16c2:	4621      	mov	r1, r4
c0de16c4:	4632      	mov	r2, r6
c0de16c6:	f002 fa3b 	bl	c0de3b40 <zkn_to_mont_384>
c0de16ca:	49bc      	ldr	r1, [pc, #752]	@ (c0de19bc <zkn_fp12_384_frobenius_map+0x358>)
c0de16cc:	2001      	movs	r0, #1
c0de16ce:	f50d 6a84 	add.w	sl, sp, #1056	@ 0x420
c0de16d2:	4449      	add	r1, r9
c0de16d4:	9103      	str	r1, [sp, #12]
c0de16d6:	a908      	add	r1, sp, #32
c0de16d8:	2804      	cmp	r0, #4
c0de16da:	f000 80fc 	beq.w	c0de18d6 <zkn_fp12_384_frobenius_map+0x272>
c0de16de:	9004      	str	r0, [sp, #16]
c0de16e0:	4608      	mov	r0, r1
c0de16e2:	2128      	movs	r1, #40	@ 0x28
c0de16e4:	f000 fa1b 	bl	c0de1b1e <mp_zero>
c0de16e8:	aa08      	add	r2, sp, #32
c0de16ea:	9804      	ldr	r0, [sp, #16]
c0de16ec:	f04f 0b01 	mov.w	fp, #1
c0de16f0:	2100      	movs	r1, #0
c0de16f2:	f8cd b020 	str.w	fp, [sp, #32]
c0de16f6:	4281      	cmp	r1, r0
c0de16f8:	d040      	beq.n	c0de177c <zkn_fp12_384_frobenius_map+0x118>
c0de16fa:	9106      	str	r1, [sp, #24]
c0de16fc:	acb0      	add	r4, sp, #704	@ 0x2c0
c0de16fe:	2128      	movs	r1, #40	@ 0x28
c0de1700:	4620      	mov	r0, r4
c0de1702:	f000 fa0c 	bl	c0de1b1e <mp_zero>
c0de1706:	f10b 010c 	add.w	r1, fp, #12
c0de170a:	4620      	mov	r0, r4
c0de170c:	9105      	str	r1, [sp, #20]
c0de170e:	f000 fa06 	bl	c0de1b1e <mp_zero>
c0de1712:	f10d 0c20 	add.w	ip, sp, #32
c0de1716:	2000      	movs	r0, #0
c0de1718:	4621      	mov	r1, r4
c0de171a:	4558      	cmp	r0, fp
c0de171c:	da1e      	bge.n	c0de175c <zkn_fp12_384_frobenius_map+0xf8>
c0de171e:	f85c 3020 	ldr.w	r3, [ip, r0, lsl #2]
c0de1722:	2200      	movs	r2, #0
c0de1724:	2500      	movs	r5, #0
c0de1726:	2700      	movs	r7, #0
c0de1728:	2f0c      	cmp	r7, #12
c0de172a:	d00d      	beq.n	c0de1748 <zkn_fp12_384_frobenius_map+0xe4>
c0de172c:	f851 6027 	ldr.w	r6, [r1, r7, lsl #2]
c0de1730:	f858 4027 	ldr.w	r4, [r8, r7, lsl #2]
c0de1734:	18b6      	adds	r6, r6, r2
c0de1736:	f145 0200 	adc.w	r2, r5, #0
c0de173a:	2500      	movs	r5, #0
c0de173c:	fbe4 6203 	umlal	r6, r2, r4, r3
c0de1740:	f841 6027 	str.w	r6, [r1, r7, lsl #2]
c0de1744:	3701      	adds	r7, #1
c0de1746:	e7ef      	b.n	c0de1728 <zkn_fp12_384_frobenius_map+0xc4>
c0de1748:	abb0      	add	r3, sp, #704	@ 0x2c0
c0de174a:	9e07      	ldr	r6, [sp, #28]
c0de174c:	3104      	adds	r1, #4
c0de174e:	eb03 0380 	add.w	r3, r3, r0, lsl #2
c0de1752:	3001      	adds	r0, #1
c0de1754:	6b1d      	ldr	r5, [r3, #48]	@ 0x30
c0de1756:	442a      	add	r2, r5
c0de1758:	631a      	str	r2, [r3, #48]	@ 0x30
c0de175a:	e7de      	b.n	c0de171a <zkn_fp12_384_frobenius_map+0xb6>
c0de175c:	acb0      	add	r4, sp, #704	@ 0x2c0
c0de175e:	9905      	ldr	r1, [sp, #20]
c0de1760:	4620      	mov	r0, r4
c0de1762:	f000 f9e5 	bl	c0de1b30 <mp_len>
c0de1766:	4683      	mov	fp, r0
c0de1768:	a808      	add	r0, sp, #32
c0de176a:	4621      	mov	r1, r4
c0de176c:	2228      	movs	r2, #40	@ 0x28
c0de176e:	f000 f9cb 	bl	c0de1b08 <mp_copy>
c0de1772:	aa08      	add	r2, sp, #32
c0de1774:	9906      	ldr	r1, [sp, #24]
c0de1776:	9804      	ldr	r0, [sp, #16]
c0de1778:	3101      	adds	r1, #1
c0de177a:	e7bc      	b.n	c0de16f6 <zkn_fp12_384_frobenius_map+0x92>
c0de177c:	2000      	movs	r0, #0
c0de177e:	2828      	cmp	r0, #40	@ 0x28
c0de1780:	d00b      	beq.n	c0de179a <zkn_fp12_384_frobenius_map+0x136>
c0de1782:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
c0de1786:	b929      	cbnz	r1, c0de1794 <zkn_fp12_384_frobenius_map+0x130>
c0de1788:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de178c:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
c0de1790:	3001      	adds	r0, #1
c0de1792:	e7f4      	b.n	c0de177e <zkn_fp12_384_frobenius_map+0x11a>
c0de1794:	3901      	subs	r1, #1
c0de1796:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
c0de179a:	2100      	movs	r1, #0
c0de179c:	2727      	movs	r7, #39	@ 0x27
c0de179e:	2f00      	cmp	r7, #0
c0de17a0:	d40f      	bmi.n	c0de17c2 <zkn_fp12_384_frobenius_map+0x15e>
c0de17a2:	f852 4027 	ldr.w	r4, [r2, r7, lsl #2]
c0de17a6:	2206      	movs	r2, #6
c0de17a8:	2300      	movs	r3, #0
c0de17aa:	4620      	mov	r0, r4
c0de17ac:	f007 f8b4 	bl	c0de8918 <__aeabi_uldivmod>
c0de17b0:	aa08      	add	r2, sp, #32
c0de17b2:	2106      	movs	r1, #6
c0de17b4:	f842 0027 	str.w	r0, [r2, r7, lsl #2]
c0de17b8:	fba0 0101 	umull	r0, r1, r0, r1
c0de17bc:	3f01      	subs	r7, #1
c0de17be:	1a21      	subs	r1, r4, r0
c0de17c0:	e7ed      	b.n	c0de179e <zkn_fp12_384_frobenius_map+0x13a>
c0de17c2:	4610      	mov	r0, r2
c0de17c4:	2128      	movs	r1, #40	@ 0x28
c0de17c6:	f000 f9b3 	bl	c0de1b30 <mp_len>
c0de17ca:	4683      	mov	fp, r0
c0de17cc:	0081      	lsls	r1, r0, #2
c0de17ce:	a8b0      	add	r0, sp, #704	@ 0x2c0
c0de17d0:	9106      	str	r1, [sp, #24]
c0de17d2:	f007 f89d 	bl	c0de8910 <__aeabi_memclr>
c0de17d6:	f06f 0001 	mvn.w	r0, #1
c0de17da:	f10d 0c20 	add.w	ip, sp, #32
c0de17de:	2100      	movs	r1, #0
c0de17e0:	2200      	movs	r2, #0
c0de17e2:	eb00 008b 	add.w	r0, r0, fp, lsl #2
c0de17e6:	455a      	cmp	r2, fp
c0de17e8:	da15      	bge.n	c0de1816 <zkn_fp12_384_frobenius_map+0x1b2>
c0de17ea:	9b06      	ldr	r3, [sp, #24]
c0de17ec:	4299      	cmp	r1, r3
c0de17ee:	da12      	bge.n	c0de1816 <zkn_fp12_384_frobenius_map+0x1b2>
c0de17f0:	1c43      	adds	r3, r0, #1
c0de17f2:	d40c      	bmi.n	c0de180e <zkn_fp12_384_frobenius_map+0x1aa>
c0de17f4:	f85c 3001 	ldr.w	r3, [ip, r1]
c0de17f8:	afb0      	add	r7, sp, #704	@ 0x2c0
c0de17fa:	0a1d      	lsrs	r5, r3, #8
c0de17fc:	543d      	strb	r5, [r7, r0]
c0de17fe:	183d      	adds	r5, r7, r0
c0de1800:	0c1f      	lsrs	r7, r3, #16
c0de1802:	706b      	strb	r3, [r5, #1]
c0de1804:	0e1b      	lsrs	r3, r3, #24
c0de1806:	f805 7c01 	strb.w	r7, [r5, #-1]
c0de180a:	f805 3c02 	strb.w	r3, [r5, #-2]
c0de180e:	3804      	subs	r0, #4
c0de1810:	3104      	adds	r1, #4
c0de1812:	3201      	adds	r2, #1
c0de1814:	e7e7      	b.n	c0de17e6 <zkn_fp12_384_frobenius_map+0x182>
c0de1816:	4650      	mov	r0, sl
c0de1818:	4631      	mov	r1, r6
c0de181a:	f000 f9b1 	bl	c0de1b80 <zkn_fp2_384_one>
c0de181e:	2100      	movs	r1, #0
c0de1820:	2700      	movs	r7, #0
c0de1822:	9806      	ldr	r0, [sp, #24]
c0de1824:	4281      	cmp	r1, r0
c0de1826:	da28      	bge.n	c0de187a <zkn_fp12_384_frobenius_map+0x216>
c0de1828:	a8b0      	add	r0, sp, #704	@ 0x2c0
c0de182a:	460d      	mov	r5, r1
c0de182c:	2407      	movs	r4, #7
c0de182e:	f810 b001 	ldrb.w	fp, [r0, r1]
c0de1832:	f1b4 3fff 	cmp.w	r4, #4294967295	@ 0xffffffff
c0de1836:	dd1d      	ble.n	c0de1874 <zkn_fp12_384_frobenius_map+0x210>
c0de1838:	b17f      	cbz	r7, c0de185a <zkn_fp12_384_frobenius_map+0x1f6>
c0de183a:	4650      	mov	r0, sl
c0de183c:	4651      	mov	r1, sl
c0de183e:	4632      	mov	r2, r6
c0de1840:	f000 fa42 	bl	c0de1cc8 <zkn_fp2_384_sqr>
c0de1844:	fa2b f004 	lsr.w	r0, fp, r4
c0de1848:	07c0      	lsls	r0, r0, #31
c0de184a:	d00f      	beq.n	c0de186c <zkn_fp12_384_frobenius_map+0x208>
c0de184c:	4650      	mov	r0, sl
c0de184e:	4651      	mov	r1, sl
c0de1850:	aae4      	add	r2, sp, #912	@ 0x390
c0de1852:	4633      	mov	r3, r6
c0de1854:	f000 f9ee 	bl	c0de1c34 <zkn_fp2_384_mul>
c0de1858:	e007      	b.n	c0de186a <zkn_fp12_384_frobenius_map+0x206>
c0de185a:	fa2b f004 	lsr.w	r0, fp, r4
c0de185e:	07c0      	lsls	r0, r0, #31
c0de1860:	d006      	beq.n	c0de1870 <zkn_fp12_384_frobenius_map+0x20c>
c0de1862:	4650      	mov	r0, sl
c0de1864:	a9e4      	add	r1, sp, #912	@ 0x390
c0de1866:	f000 f997 	bl	c0de1b98 <zkn_fp2_384_copy>
c0de186a:	2701      	movs	r7, #1
c0de186c:	3c01      	subs	r4, #1
c0de186e:	e7e0      	b.n	c0de1832 <zkn_fp12_384_frobenius_map+0x1ce>
c0de1870:	2700      	movs	r7, #0
c0de1872:	e7fb      	b.n	c0de186c <zkn_fp12_384_frobenius_map+0x208>
c0de1874:	4629      	mov	r1, r5
c0de1876:	1c69      	adds	r1, r5, #1
c0de1878:	e7d3      	b.n	c0de1822 <zkn_fp12_384_frobenius_map+0x1be>
c0de187a:	4c52      	ldr	r4, [pc, #328]	@ (c0de19c4 <zkn_fp12_384_frobenius_map+0x360>)
c0de187c:	ad98      	add	r5, sp, #608	@ 0x260
c0de187e:	4651      	mov	r1, sl
c0de1880:	4628      	mov	r0, r5
c0de1882:	447c      	add	r4, pc
c0de1884:	47a0      	blx	r4
c0de1886:	484d      	ldr	r0, [pc, #308]	@ (c0de19bc <zkn_fp12_384_frobenius_map+0x358>)
c0de1888:	9904      	ldr	r1, [sp, #16]
c0de188a:	4448      	add	r0, r9
c0de188c:	ebc1 1101 	rsb	r1, r1, r1, lsl #4
c0de1890:	eb00 1041 	add.w	r0, r0, r1, lsl #5
c0de1894:	4629      	mov	r1, r5
c0de1896:	f5a0 70f0 	sub.w	r0, r0, #480	@ 0x1e0
c0de189a:	47a0      	blx	r4
c0de189c:	4650      	mov	r0, sl
c0de189e:	4629      	mov	r1, r5
c0de18a0:	47a0      	blx	r4
c0de18a2:	2460      	movs	r4, #96	@ 0x60
c0de18a4:	a908      	add	r1, sp, #32
c0de18a6:	f5b4 7ff0 	cmp.w	r4, #480	@ 0x1e0
c0de18aa:	d00d      	beq.n	c0de18c8 <zkn_fp12_384_frobenius_map+0x264>
c0de18ac:	4650      	mov	r0, sl
c0de18ae:	4651      	mov	r1, sl
c0de18b0:	aa98      	add	r2, sp, #608	@ 0x260
c0de18b2:	4633      	mov	r3, r6
c0de18b4:	f000 f9be 	bl	c0de1c34 <zkn_fp2_384_mul>
c0de18b8:	9803      	ldr	r0, [sp, #12]
c0de18ba:	4651      	mov	r1, sl
c0de18bc:	4420      	add	r0, r4
c0de18be:	f000 f96b 	bl	c0de1b98 <zkn_fp2_384_copy>
c0de18c2:	a908      	add	r1, sp, #32
c0de18c4:	3460      	adds	r4, #96	@ 0x60
c0de18c6:	e7ee      	b.n	c0de18a6 <zkn_fp12_384_frobenius_map+0x242>
c0de18c8:	9803      	ldr	r0, [sp, #12]
c0de18ca:	f500 70f0 	add.w	r0, r0, #480	@ 0x1e0
c0de18ce:	9003      	str	r0, [sp, #12]
c0de18d0:	9804      	ldr	r0, [sp, #16]
c0de18d2:	3001      	adds	r0, #1
c0de18d4:	e700      	b.n	c0de16d8 <zkn_fp12_384_frobenius_map+0x74>
c0de18d6:	4938      	ldr	r1, [pc, #224]	@ (c0de19b8 <zkn_fp12_384_frobenius_map+0x354>)
c0de18d8:	9d02      	ldr	r5, [sp, #8]
c0de18da:	e9dd 2700 	ldrd	r2, r7, [sp]
c0de18de:	2001      	movs	r0, #1
c0de18e0:	f809 0001 	strb.w	r0, [r9, r1]
c0de18e4:	f1a2 0801 	sub.w	r8, r2, #1
c0de18e8:	07d0      	lsls	r0, r2, #31
c0de18ea:	d105      	bne.n	c0de18f8 <zkn_fp12_384_frobenius_map+0x294>
c0de18ec:	a808      	add	r0, sp, #32
c0de18ee:	4639      	mov	r1, r7
c0de18f0:	f000 f933 	bl	c0de1b5a <OUTLINED_FUNCTION_3>
c0de18f4:	9c07      	ldr	r4, [sp, #28]
c0de18f6:	e026      	b.n	c0de1946 <zkn_fp12_384_frobenius_map+0x2e2>
c0de18f8:	4e31      	ldr	r6, [pc, #196]	@ (c0de19c0 <zkn_fp12_384_frobenius_map+0x35c>)
c0de18fa:	9c07      	ldr	r4, [sp, #28]
c0de18fc:	f10d 0a20 	add.w	sl, sp, #32
c0de1900:	4639      	mov	r1, r7
c0de1902:	4650      	mov	r0, sl
c0de1904:	447e      	add	r6, pc
c0de1906:	4622      	mov	r2, r4
c0de1908:	47b0      	blx	r6
c0de190a:	f10a 0060 	add.w	r0, sl, #96	@ 0x60
c0de190e:	f107 0160 	add.w	r1, r7, #96	@ 0x60
c0de1912:	4622      	mov	r2, r4
c0de1914:	47b0      	blx	r6
c0de1916:	f10a 00c0 	add.w	r0, sl, #192	@ 0xc0
c0de191a:	f107 01c0 	add.w	r1, r7, #192	@ 0xc0
c0de191e:	4622      	mov	r2, r4
c0de1920:	47b0      	blx	r6
c0de1922:	f50a 7090 	add.w	r0, sl, #288	@ 0x120
c0de1926:	f507 7190 	add.w	r1, r7, #288	@ 0x120
c0de192a:	4622      	mov	r2, r4
c0de192c:	47b0      	blx	r6
c0de192e:	f50a 70c0 	add.w	r0, sl, #384	@ 0x180
c0de1932:	f507 71c0 	add.w	r1, r7, #384	@ 0x180
c0de1936:	4622      	mov	r2, r4
c0de1938:	47b0      	blx	r6
c0de193a:	f50a 70f0 	add.w	r0, sl, #480	@ 0x1e0
c0de193e:	f507 71f0 	add.w	r1, r7, #480	@ 0x1e0
c0de1942:	4622      	mov	r2, r4
c0de1944:	47b0      	blx	r6
c0de1946:	481d      	ldr	r0, [pc, #116]	@ (c0de19bc <zkn_fp12_384_frobenius_map+0x358>)
c0de1948:	4f1f      	ldr	r7, [pc, #124]	@ (c0de19c8 <zkn_fp12_384_frobenius_map+0x364>)
c0de194a:	ebc8 1108 	rsb	r1, r8, r8, lsl #4
c0de194e:	f10d 0820 	add.w	r8, sp, #32
c0de1952:	4623      	mov	r3, r4
c0de1954:	4448      	add	r0, r9
c0de1956:	447f      	add	r7, pc
c0de1958:	eb00 1641 	add.w	r6, r0, r1, lsl #5
c0de195c:	f105 0060 	add.w	r0, r5, #96	@ 0x60
c0de1960:	f108 0160 	add.w	r1, r8, #96	@ 0x60
c0de1964:	f106 0260 	add.w	r2, r6, #96	@ 0x60
c0de1968:	47b8      	blx	r7
c0de196a:	f506 7290 	add.w	r2, r6, #288	@ 0x120
c0de196e:	f105 00c0 	add.w	r0, r5, #192	@ 0xc0
c0de1972:	f108 01c0 	add.w	r1, r8, #192	@ 0xc0
c0de1976:	4623      	mov	r3, r4
c0de1978:	47b8      	blx	r7
c0de197a:	f505 7090 	add.w	r0, r5, #288	@ 0x120
c0de197e:	f508 7190 	add.w	r1, r8, #288	@ 0x120
c0de1982:	4632      	mov	r2, r6
c0de1984:	4623      	mov	r3, r4
c0de1986:	47b8      	blx	r7
c0de1988:	f106 02c0 	add.w	r2, r6, #192	@ 0xc0
c0de198c:	f505 70c0 	add.w	r0, r5, #384	@ 0x180
c0de1990:	f508 71c0 	add.w	r1, r8, #384	@ 0x180
c0de1994:	4623      	mov	r3, r4
c0de1996:	47b8      	blx	r7
c0de1998:	f506 72c0 	add.w	r2, r6, #384	@ 0x180
c0de199c:	f505 70f0 	add.w	r0, r5, #480	@ 0x1e0
c0de19a0:	f508 71f0 	add.w	r1, r8, #480	@ 0x1e0
c0de19a4:	4623      	mov	r3, r4
c0de19a6:	47b8      	blx	r7
c0de19a8:	4628      	mov	r0, r5
c0de19aa:	4641      	mov	r1, r8
c0de19ac:	f000 f8f4 	bl	c0de1b98 <zkn_fp2_384_copy>
c0de19b0:	f50d 6d90 	add.w	sp, sp, #1152	@ 0x480
c0de19b4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de19b8:	00000e68 	.word	0x00000e68
c0de19bc:	000008c8 	.word	0x000008c8
c0de19c0:	0000030d 	.word	0x0000030d
c0de19c4:	00000313 	.word	0x00000313
c0de19c8:	000002db 	.word	0x000002db

c0de19cc <zkn_fp12_384_cyclotomic_sqr>:
c0de19cc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de19d0:	f5ad 6daa 	sub.w	sp, sp, #1360	@ 0x550
c0de19d4:	4d48      	ldr	r5, [pc, #288]	@ (c0de1af8 <zkn_fp12_384_cyclotomic_sqr+0x12c>)
c0de19d6:	f50d 6792 	add.w	r7, sp, #1168	@ 0x490
c0de19da:	4680      	mov	r8, r0
c0de19dc:	4614      	mov	r4, r2
c0de19de:	460e      	mov	r6, r1
c0de19e0:	4638      	mov	r0, r7
c0de19e2:	447d      	add	r5, pc
c0de19e4:	47a8      	blx	r5
c0de19e6:	f107 0060 	add.w	r0, r7, #96	@ 0x60
c0de19ea:	f506 71c0 	add.w	r1, r6, #384	@ 0x180
c0de19ee:	9001      	str	r0, [sp, #4]
c0de19f0:	47a8      	blx	r5
c0de19f2:	f50d 7b74 	add.w	fp, sp, #976	@ 0x3d0
c0de19f6:	f506 7190 	add.w	r1, r6, #288	@ 0x120
c0de19fa:	4658      	mov	r0, fp
c0de19fc:	47a8      	blx	r5
c0de19fe:	f10b 0060 	add.w	r0, fp, #96	@ 0x60
c0de1a02:	f106 01c0 	add.w	r1, r6, #192	@ 0xc0
c0de1a06:	9003      	str	r0, [sp, #12]
c0de1a08:	47a8      	blx	r5
c0de1a0a:	f50d 7a44 	add.w	sl, sp, #784	@ 0x310
c0de1a0e:	f106 0160 	add.w	r1, r6, #96	@ 0x60
c0de1a12:	4650      	mov	r0, sl
c0de1a14:	47a8      	blx	r5
c0de1a16:	f10a 0060 	add.w	r0, sl, #96	@ 0x60
c0de1a1a:	f506 71f0 	add.w	r1, r6, #480	@ 0x1e0
c0de1a1e:	9002      	str	r0, [sp, #8]
c0de1a20:	47a8      	blx	r5
c0de1a22:	af94      	add	r7, sp, #592	@ 0x250
c0de1a24:	4d35      	ldr	r5, [pc, #212]	@ (c0de1afc <zkn_fp12_384_cyclotomic_sqr+0x130>)
c0de1a26:	f50d 6192 	add.w	r1, sp, #1168	@ 0x490
c0de1a2a:	4622      	mov	r2, r4
c0de1a2c:	4638      	mov	r0, r7
c0de1a2e:	447d      	add	r5, pc
c0de1a30:	47a8      	blx	r5
c0de1a32:	a864      	add	r0, sp, #400	@ 0x190
c0de1a34:	4659      	mov	r1, fp
c0de1a36:	4622      	mov	r2, r4
c0de1a38:	47a8      	blx	r5
c0de1a3a:	ae34      	add	r6, sp, #208	@ 0xd0
c0de1a3c:	4651      	mov	r1, sl
c0de1a3e:	4622      	mov	r2, r4
c0de1a40:	4630      	mov	r0, r6
c0de1a42:	47a8      	blx	r5
c0de1a44:	f106 0160 	add.w	r1, r6, #96	@ 0x60
c0de1a48:	a804      	add	r0, sp, #16
c0de1a4a:	4622      	mov	r2, r4
c0de1a4c:	f000 f9ac 	bl	c0de1da8 <zkn_fp2_384_mul_by_xi>
c0de1a50:	ae1c      	add	r6, sp, #112	@ 0x70
c0de1a52:	4d2b      	ldr	r5, [pc, #172]	@ (c0de1b00 <zkn_fp12_384_cyclotomic_sqr+0x134>)
c0de1a54:	4639      	mov	r1, r7
c0de1a56:	f50d 6292 	add.w	r2, sp, #1168	@ 0x490
c0de1a5a:	4623      	mov	r3, r4
c0de1a5c:	4630      	mov	r0, r6
c0de1a5e:	447d      	add	r5, pc
c0de1a60:	47a8      	blx	r5
c0de1a62:	46ab      	mov	fp, r5
c0de1a64:	4d27      	ldr	r5, [pc, #156]	@ (c0de1b04 <zkn_fp12_384_cyclotomic_sqr+0x138>)
c0de1a66:	4630      	mov	r0, r6
c0de1a68:	4631      	mov	r1, r6
c0de1a6a:	4632      	mov	r2, r6
c0de1a6c:	4623      	mov	r3, r4
c0de1a6e:	447d      	add	r5, pc
c0de1a70:	47a8      	blx	r5
c0de1a72:	4640      	mov	r0, r8
c0de1a74:	f000 f86d 	bl	c0de1b52 <OUTLINED_FUNCTION_1>
c0de1a78:	3760      	adds	r7, #96	@ 0x60
c0de1a7a:	9a01      	ldr	r2, [sp, #4]
c0de1a7c:	4630      	mov	r0, r6
c0de1a7e:	4623      	mov	r3, r4
c0de1a80:	4639      	mov	r1, r7
c0de1a82:	47a8      	blx	r5
c0de1a84:	f000 f860 	bl	c0de1b48 <OUTLINED_FUNCTION_0>
c0de1a88:	f508 70c0 	add.w	r0, r8, #384	@ 0x180
c0de1a8c:	f000 f861 	bl	c0de1b52 <OUTLINED_FUNCTION_1>
c0de1a90:	af64      	add	r7, sp, #400	@ 0x190
c0de1a92:	4630      	mov	r0, r6
c0de1a94:	4652      	mov	r2, sl
c0de1a96:	4623      	mov	r3, r4
c0de1a98:	4639      	mov	r1, r7
c0de1a9a:	47d8      	blx	fp
c0de1a9c:	f000 f854 	bl	c0de1b48 <OUTLINED_FUNCTION_0>
c0de1aa0:	f108 0060 	add.w	r0, r8, #96	@ 0x60
c0de1aa4:	f000 f855 	bl	c0de1b52 <OUTLINED_FUNCTION_1>
c0de1aa8:	3760      	adds	r7, #96	@ 0x60
c0de1aaa:	9a02      	ldr	r2, [sp, #8]
c0de1aac:	4630      	mov	r0, r6
c0de1aae:	4623      	mov	r3, r4
c0de1ab0:	4639      	mov	r1, r7
c0de1ab2:	47a8      	blx	r5
c0de1ab4:	f000 f848 	bl	c0de1b48 <OUTLINED_FUNCTION_0>
c0de1ab8:	f508 70f0 	add.w	r0, r8, #480	@ 0x1e0
c0de1abc:	f000 f849 	bl	c0de1b52 <OUTLINED_FUNCTION_1>
c0de1ac0:	af34      	add	r7, sp, #208	@ 0xd0
c0de1ac2:	9a03      	ldr	r2, [sp, #12]
c0de1ac4:	4630      	mov	r0, r6
c0de1ac6:	4623      	mov	r3, r4
c0de1ac8:	4639      	mov	r1, r7
c0de1aca:	47d8      	blx	fp
c0de1acc:	f000 f83c 	bl	c0de1b48 <OUTLINED_FUNCTION_0>
c0de1ad0:	f108 00c0 	add.w	r0, r8, #192	@ 0xc0
c0de1ad4:	f000 f83d 	bl	c0de1b52 <OUTLINED_FUNCTION_1>
c0de1ad8:	af04      	add	r7, sp, #16
c0de1ada:	4630      	mov	r0, r6
c0de1adc:	aaf4      	add	r2, sp, #976	@ 0x3d0
c0de1ade:	4623      	mov	r3, r4
c0de1ae0:	4639      	mov	r1, r7
c0de1ae2:	47a8      	blx	r5
c0de1ae4:	f000 f830 	bl	c0de1b48 <OUTLINED_FUNCTION_0>
c0de1ae8:	f508 7090 	add.w	r0, r8, #288	@ 0x120
c0de1aec:	f000 f831 	bl	c0de1b52 <OUTLINED_FUNCTION_1>
c0de1af0:	f50d 6daa 	add.w	sp, sp, #1360	@ 0x550
c0de1af4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1af8:	000001b3 	.word	0x000001b3
c0de1afc:	0000040f 	.word	0x0000040f
c0de1b00:	00000179 	.word	0x00000179
c0de1b04:	0000014d 	.word	0x0000014d

c0de1b08 <mp_copy>:
c0de1b08:	b510      	push	{r4, lr}
c0de1b0a:	2300      	movs	r3, #0
c0de1b0c:	4293      	cmp	r3, r2
c0de1b0e:	bfa8      	it	ge
c0de1b10:	bd10      	popge	{r4, pc}
c0de1b12:	f851 4023 	ldr.w	r4, [r1, r3, lsl #2]
c0de1b16:	f840 4023 	str.w	r4, [r0, r3, lsl #2]
c0de1b1a:	3301      	adds	r3, #1
c0de1b1c:	e7f6      	b.n	c0de1b0c <mp_copy+0x4>

c0de1b1e <mp_zero>:
c0de1b1e:	2200      	movs	r2, #0
c0de1b20:	2300      	movs	r3, #0
c0de1b22:	428b      	cmp	r3, r1
c0de1b24:	bfa8      	it	ge
c0de1b26:	4770      	bxge	lr
c0de1b28:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
c0de1b2c:	3301      	adds	r3, #1
c0de1b2e:	e7f8      	b.n	c0de1b22 <mp_zero+0x4>

c0de1b30 <mp_len>:
c0de1b30:	3804      	subs	r0, #4
c0de1b32:	2901      	cmp	r1, #1
c0de1b34:	bfbc      	itt	lt
c0de1b36:	2001      	movlt	r0, #1
c0de1b38:	4770      	bxlt	lr
c0de1b3a:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de1b3e:	3901      	subs	r1, #1
c0de1b40:	2a00      	cmp	r2, #0
c0de1b42:	d0f6      	beq.n	c0de1b32 <mp_len+0x2>
c0de1b44:	1c48      	adds	r0, r1, #1
c0de1b46:	4770      	bx	lr

c0de1b48 <OUTLINED_FUNCTION_0>:
c0de1b48:	4630      	mov	r0, r6
c0de1b4a:	4631      	mov	r1, r6
c0de1b4c:	4632      	mov	r2, r6
c0de1b4e:	4623      	mov	r3, r4
c0de1b50:	4728      	bx	r5

c0de1b52 <OUTLINED_FUNCTION_1>:
c0de1b52:	4631      	mov	r1, r6
c0de1b54:	463a      	mov	r2, r7
c0de1b56:	4623      	mov	r3, r4
c0de1b58:	4728      	bx	r5

c0de1b5a <OUTLINED_FUNCTION_3>:
c0de1b5a:	f44f 7210 	mov.w	r2, #576	@ 0x240
c0de1b5e:	f006 becd 	b.w	c0de88fc <__aeabi_memcpy>

c0de1b62 <OUTLINED_FUNCTION_4>:
c0de1b62:	4631      	mov	r1, r6
c0de1b64:	462a      	mov	r2, r5
c0de1b66:	4623      	mov	r3, r4
c0de1b68:	f000 ba1c 	b.w	c0de1fa4 <zkn_fp6_384_mul>

c0de1b6c <zkn_fp2_384_zero>:
c0de1b6c:	b510      	push	{r4, lr}
c0de1b6e:	4604      	mov	r4, r0
c0de1b70:	f002 f82e 	bl	c0de3bd0 <zkn_fe384_zero>
c0de1b74:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de1b78:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1b7c:	f002 b828 	b.w	c0de3bd0 <zkn_fe384_zero>

c0de1b80 <zkn_fp2_384_one>:
c0de1b80:	b510      	push	{r4, lr}
c0de1b82:	3164      	adds	r1, #100	@ 0x64
c0de1b84:	2230      	movs	r2, #48	@ 0x30
c0de1b86:	4604      	mov	r4, r0
c0de1b88:	f006 feb8 	bl	c0de88fc <__aeabi_memcpy>
c0de1b8c:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de1b90:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1b94:	f002 b81c 	b.w	c0de3bd0 <zkn_fe384_zero>

c0de1b98 <zkn_fp2_384_copy>:
c0de1b98:	b580      	push	{r7, lr}
c0de1b9a:	2260      	movs	r2, #96	@ 0x60
c0de1b9c:	f006 feae 	bl	c0de88fc <__aeabi_memcpy>
c0de1ba0:	bd80      	pop	{r7, pc}

c0de1ba2 <zkn_fp2_384_eq>:
c0de1ba2:	b570      	push	{r4, r5, r6, lr}
c0de1ba4:	460c      	mov	r4, r1
c0de1ba6:	4605      	mov	r5, r0
c0de1ba8:	f002 f801 	bl	c0de3bae <zkn_fe384_eq>
c0de1bac:	4606      	mov	r6, r0
c0de1bae:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de1bb2:	f104 0130 	add.w	r1, r4, #48	@ 0x30
c0de1bb6:	f001 fffa 	bl	c0de3bae <zkn_fe384_eq>
c0de1bba:	4030      	ands	r0, r6
c0de1bbc:	bd70      	pop	{r4, r5, r6, pc}

c0de1bbe <zkn_fp2_384_add>:
c0de1bbe:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1bc0:	461c      	mov	r4, r3
c0de1bc2:	4615      	mov	r5, r2
c0de1bc4:	460e      	mov	r6, r1
c0de1bc6:	4607      	mov	r7, r0
c0de1bc8:	f002 fa4c 	bl	c0de4064 <zkn_add_mod_384>
c0de1bcc:	f000 f911 	bl	c0de1df2 <OUTLINED_FUNCTION_0>
c0de1bd0:	b001      	add	sp, #4
c0de1bd2:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de1bd6:	f002 ba45 	b.w	c0de4064 <zkn_add_mod_384>

c0de1bda <zkn_fp2_384_sub>:
c0de1bda:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1bdc:	461c      	mov	r4, r3
c0de1bde:	4615      	mov	r5, r2
c0de1be0:	460e      	mov	r6, r1
c0de1be2:	4607      	mov	r7, r0
c0de1be4:	f002 fab8 	bl	c0de4158 <zkn_sub_mod_384>
c0de1be8:	f000 f903 	bl	c0de1df2 <OUTLINED_FUNCTION_0>
c0de1bec:	b001      	add	sp, #4
c0de1bee:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de1bf2:	f002 bab1 	b.w	c0de4158 <zkn_sub_mod_384>

c0de1bf6 <zkn_fp2_384_neg>:
c0de1bf6:	b570      	push	{r4, r5, r6, lr}
c0de1bf8:	4614      	mov	r4, r2
c0de1bfa:	460d      	mov	r5, r1
c0de1bfc:	4606      	mov	r6, r0
c0de1bfe:	f001 ffec 	bl	c0de3bda <zkn_neg_mod_384>
c0de1c02:	f106 0030 	add.w	r0, r6, #48	@ 0x30
c0de1c06:	f105 0130 	add.w	r1, r5, #48	@ 0x30
c0de1c0a:	4622      	mov	r2, r4
c0de1c0c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de1c10:	f001 bfe3 	b.w	c0de3bda <zkn_neg_mod_384>

c0de1c14 <zkn_fp2_384_conjugate>:
c0de1c14:	b570      	push	{r4, r5, r6, lr}
c0de1c16:	4614      	mov	r4, r2
c0de1c18:	2230      	movs	r2, #48	@ 0x30
c0de1c1a:	460d      	mov	r5, r1
c0de1c1c:	4606      	mov	r6, r0
c0de1c1e:	f006 fe6d 	bl	c0de88fc <__aeabi_memcpy>
c0de1c22:	f106 0030 	add.w	r0, r6, #48	@ 0x30
c0de1c26:	f105 0130 	add.w	r1, r5, #48	@ 0x30
c0de1c2a:	4622      	mov	r2, r4
c0de1c2c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de1c30:	f001 bfd3 	b.w	c0de3bda <zkn_neg_mod_384>

c0de1c34 <zkn_fp2_384_mul>:
c0de1c34:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1c38:	b0be      	sub	sp, #248	@ 0xf8
c0de1c3a:	9001      	str	r0, [sp, #4]
c0de1c3c:	6b18      	ldr	r0, [r3, #48]	@ 0x30
c0de1c3e:	461c      	mov	r4, r3
c0de1c40:	4616      	mov	r6, r2
c0de1c42:	460f      	mov	r7, r1
c0de1c44:	9000      	str	r0, [sp, #0]
c0de1c46:	a832      	add	r0, sp, #200	@ 0xc8
c0de1c48:	4d1d      	ldr	r5, [pc, #116]	@ (c0de1cc0 <zkn_fp2_384_mul+0x8c>)
c0de1c4a:	447d      	add	r5, pc
c0de1c4c:	47a8      	blx	r5
c0de1c4e:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de1c50:	46ab      	mov	fp, r5
c0de1c52:	f107 0530 	add.w	r5, r7, #48	@ 0x30
c0de1c56:	f106 0830 	add.w	r8, r6, #48	@ 0x30
c0de1c5a:	4623      	mov	r3, r4
c0de1c5c:	4629      	mov	r1, r5
c0de1c5e:	4642      	mov	r2, r8
c0de1c60:	9000      	str	r0, [sp, #0]
c0de1c62:	a826      	add	r0, sp, #152	@ 0x98
c0de1c64:	47d8      	blx	fp
c0de1c66:	a81a      	add	r0, sp, #104	@ 0x68
c0de1c68:	f000 f8cb 	bl	c0de1e02 <OUTLINED_FUNCTION_1>
c0de1c6c:	ad0e      	add	r5, sp, #56	@ 0x38
c0de1c6e:	4631      	mov	r1, r6
c0de1c70:	4642      	mov	r2, r8
c0de1c72:	4623      	mov	r3, r4
c0de1c74:	4628      	mov	r0, r5
c0de1c76:	f002 f9f5 	bl	c0de4064 <zkn_add_mod_384>
c0de1c7a:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de1c7c:	f10d 0a08 	add.w	sl, sp, #8
c0de1c80:	462a      	mov	r2, r5
c0de1c82:	4623      	mov	r3, r4
c0de1c84:	9000      	str	r0, [sp, #0]
c0de1c86:	4650      	mov	r0, sl
c0de1c88:	a91a      	add	r1, sp, #104	@ 0x68
c0de1c8a:	47d8      	blx	fp
c0de1c8c:	4d0d      	ldr	r5, [pc, #52]	@ (c0de1cc4 <zkn_fp2_384_mul+0x90>)
c0de1c8e:	9e01      	ldr	r6, [sp, #4]
c0de1c90:	af32      	add	r7, sp, #200	@ 0xc8
c0de1c92:	f10d 0898 	add.w	r8, sp, #152	@ 0x98
c0de1c96:	4623      	mov	r3, r4
c0de1c98:	4639      	mov	r1, r7
c0de1c9a:	4642      	mov	r2, r8
c0de1c9c:	447d      	add	r5, pc
c0de1c9e:	4630      	mov	r0, r6
c0de1ca0:	47a8      	blx	r5
c0de1ca2:	4650      	mov	r0, sl
c0de1ca4:	4651      	mov	r1, sl
c0de1ca6:	463a      	mov	r2, r7
c0de1ca8:	4623      	mov	r3, r4
c0de1caa:	47a8      	blx	r5
c0de1cac:	f106 0030 	add.w	r0, r6, #48	@ 0x30
c0de1cb0:	4651      	mov	r1, sl
c0de1cb2:	4642      	mov	r2, r8
c0de1cb4:	4623      	mov	r3, r4
c0de1cb6:	47a8      	blx	r5
c0de1cb8:	b03e      	add	sp, #248	@ 0xf8
c0de1cba:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1cbe:	bf00      	nop
c0de1cc0:	000020c7 	.word	0x000020c7
c0de1cc4:	000024b9 	.word	0x000024b9

c0de1cc8 <zkn_fp2_384_sqr>:
c0de1cc8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1ccc:	b0a6      	sub	sp, #152	@ 0x98
c0de1cce:	4614      	mov	r4, r2
c0de1cd0:	f101 0630 	add.w	r6, r1, #48	@ 0x30
c0de1cd4:	f10d 0868 	add.w	r8, sp, #104	@ 0x68
c0de1cd8:	4605      	mov	r5, r0
c0de1cda:	460f      	mov	r7, r1
c0de1cdc:	4640      	mov	r0, r8
c0de1cde:	4632      	mov	r2, r6
c0de1ce0:	4623      	mov	r3, r4
c0de1ce2:	f002 f9bf 	bl	c0de4064 <zkn_add_mod_384>
c0de1ce6:	f10d 0a38 	add.w	sl, sp, #56	@ 0x38
c0de1cea:	4639      	mov	r1, r7
c0de1cec:	4632      	mov	r2, r6
c0de1cee:	4623      	mov	r3, r4
c0de1cf0:	4650      	mov	r0, sl
c0de1cf2:	f002 fa31 	bl	c0de4158 <zkn_sub_mod_384>
c0de1cf6:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de1cf8:	f10d 0b08 	add.w	fp, sp, #8
c0de1cfc:	4639      	mov	r1, r7
c0de1cfe:	4632      	mov	r2, r6
c0de1d00:	4623      	mov	r3, r4
c0de1d02:	9000      	str	r0, [sp, #0]
c0de1d04:	4658      	mov	r0, fp
c0de1d06:	f002 f805 	bl	c0de3d14 <zkn_mul_mont_384>
c0de1d0a:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de1d0c:	4641      	mov	r1, r8
c0de1d0e:	4652      	mov	r2, sl
c0de1d10:	f000 f87c 	bl	c0de1e0c <OUTLINED_FUNCTION_2>
c0de1d14:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de1d18:	4659      	mov	r1, fp
c0de1d1a:	465a      	mov	r2, fp
c0de1d1c:	4623      	mov	r3, r4
c0de1d1e:	f002 f9a1 	bl	c0de4064 <zkn_add_mod_384>
c0de1d22:	b026      	add	sp, #152	@ 0x98
c0de1d24:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de1d28 <zkn_fp2_384_norm>:
c0de1d28:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1d2a:	b099      	sub	sp, #100	@ 0x64
c0de1d2c:	6b13      	ldr	r3, [r2, #48]	@ 0x30
c0de1d2e:	af0d      	add	r7, sp, #52	@ 0x34
c0de1d30:	4606      	mov	r6, r0
c0de1d32:	4614      	mov	r4, r2
c0de1d34:	460d      	mov	r5, r1
c0de1d36:	4638      	mov	r0, r7
c0de1d38:	f002 f98c 	bl	c0de4054 <zkn_sqr_mont_384>
c0de1d3c:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de1d3e:	f105 0130 	add.w	r1, r5, #48	@ 0x30
c0de1d42:	ad01      	add	r5, sp, #4
c0de1d44:	4622      	mov	r2, r4
c0de1d46:	4628      	mov	r0, r5
c0de1d48:	f002 f984 	bl	c0de4054 <zkn_sqr_mont_384>
c0de1d4c:	4630      	mov	r0, r6
c0de1d4e:	f000 f858 	bl	c0de1e02 <OUTLINED_FUNCTION_1>
c0de1d52:	b019      	add	sp, #100	@ 0x64
c0de1d54:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de1d56 <zkn_fp2_384_inv>:
c0de1d56:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1d5a:	b0a6      	sub	sp, #152	@ 0x98
c0de1d5c:	ae1a      	add	r6, sp, #104	@ 0x68
c0de1d5e:	4605      	mov	r5, r0
c0de1d60:	4614      	mov	r4, r2
c0de1d62:	460f      	mov	r7, r1
c0de1d64:	4630      	mov	r0, r6
c0de1d66:	f7ff ffdf 	bl	c0de1d28 <zkn_fp2_384_norm>
c0de1d6a:	f10d 0838 	add.w	r8, sp, #56	@ 0x38
c0de1d6e:	4631      	mov	r1, r6
c0de1d70:	4622      	mov	r2, r4
c0de1d72:	4640      	mov	r0, r8
c0de1d74:	f001 ff8a 	bl	c0de3c8c <zkn_inv_mont_384>
c0de1d78:	ae02      	add	r6, sp, #8
c0de1d7a:	f107 0130 	add.w	r1, r7, #48	@ 0x30
c0de1d7e:	4622      	mov	r2, r4
c0de1d80:	4630      	mov	r0, r6
c0de1d82:	f001 ff2a 	bl	c0de3bda <zkn_neg_mod_384>
c0de1d86:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de1d88:	4639      	mov	r1, r7
c0de1d8a:	4642      	mov	r2, r8
c0de1d8c:	f000 f83e 	bl	c0de1e0c <OUTLINED_FUNCTION_2>
c0de1d90:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de1d92:	4631      	mov	r1, r6
c0de1d94:	4642      	mov	r2, r8
c0de1d96:	4623      	mov	r3, r4
c0de1d98:	9000      	str	r0, [sp, #0]
c0de1d9a:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de1d9e:	f001 ffb9 	bl	c0de3d14 <zkn_mul_mont_384>
c0de1da2:	b026      	add	sp, #152	@ 0x98
c0de1da4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de1da8 <zkn_fp2_384_mul_by_xi>:
c0de1da8:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1dac:	b099      	sub	sp, #100	@ 0x64
c0de1dae:	4614      	mov	r4, r2
c0de1db0:	f101 0730 	add.w	r7, r1, #48	@ 0x30
c0de1db4:	f10d 0834 	add.w	r8, sp, #52	@ 0x34
c0de1db8:	4606      	mov	r6, r0
c0de1dba:	460d      	mov	r5, r1
c0de1dbc:	4640      	mov	r0, r8
c0de1dbe:	463a      	mov	r2, r7
c0de1dc0:	4623      	mov	r3, r4
c0de1dc2:	f002 f9c9 	bl	c0de4158 <zkn_sub_mod_384>
c0de1dc6:	f10d 0a04 	add.w	sl, sp, #4
c0de1dca:	4629      	mov	r1, r5
c0de1dcc:	463a      	mov	r2, r7
c0de1dce:	4623      	mov	r3, r4
c0de1dd0:	4650      	mov	r0, sl
c0de1dd2:	f002 f947 	bl	c0de4064 <zkn_add_mod_384>
c0de1dd6:	4630      	mov	r0, r6
c0de1dd8:	4641      	mov	r1, r8
c0de1dda:	2230      	movs	r2, #48	@ 0x30
c0de1ddc:	f006 fd8e 	bl	c0de88fc <__aeabi_memcpy>
c0de1de0:	f106 0030 	add.w	r0, r6, #48	@ 0x30
c0de1de4:	4651      	mov	r1, sl
c0de1de6:	2230      	movs	r2, #48	@ 0x30
c0de1de8:	f006 fd88 	bl	c0de88fc <__aeabi_memcpy>
c0de1dec:	b019      	add	sp, #100	@ 0x64
c0de1dee:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de1df2 <OUTLINED_FUNCTION_0>:
c0de1df2:	f107 0030 	add.w	r0, r7, #48	@ 0x30
c0de1df6:	f106 0130 	add.w	r1, r6, #48	@ 0x30
c0de1dfa:	f105 0230 	add.w	r2, r5, #48	@ 0x30
c0de1dfe:	4623      	mov	r3, r4
c0de1e00:	4770      	bx	lr

c0de1e02 <OUTLINED_FUNCTION_1>:
c0de1e02:	4639      	mov	r1, r7
c0de1e04:	462a      	mov	r2, r5
c0de1e06:	4623      	mov	r3, r4
c0de1e08:	f002 b92c 	b.w	c0de4064 <zkn_add_mod_384>

c0de1e0c <OUTLINED_FUNCTION_2>:
c0de1e0c:	4623      	mov	r3, r4
c0de1e0e:	9000      	str	r0, [sp, #0]
c0de1e10:	4628      	mov	r0, r5
c0de1e12:	f001 bf7f 	b.w	c0de3d14 <zkn_mul_mont_384>

c0de1e16 <zkn_fp2_384_mul_by_fp>:
c0de1e16:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1e18:	4607      	mov	r7, r0
c0de1e1a:	6b18      	ldr	r0, [r3, #48]	@ 0x30
c0de1e1c:	461c      	mov	r4, r3
c0de1e1e:	4615      	mov	r5, r2
c0de1e20:	460e      	mov	r6, r1
c0de1e22:	9000      	str	r0, [sp, #0]
c0de1e24:	4638      	mov	r0, r7
c0de1e26:	f001 ff75 	bl	c0de3d14 <zkn_mul_mont_384>
c0de1e2a:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de1e2c:	f106 0130 	add.w	r1, r6, #48	@ 0x30
c0de1e30:	462a      	mov	r2, r5
c0de1e32:	4623      	mov	r3, r4
c0de1e34:	9000      	str	r0, [sp, #0]
c0de1e36:	f107 0030 	add.w	r0, r7, #48	@ 0x30
c0de1e3a:	f001 ff6b 	bl	c0de3d14 <zkn_mul_mont_384>
c0de1e3e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de1e40 <zkn_fp4_384_sqr>:
c0de1e40:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1e44:	b0e0      	sub	sp, #384	@ 0x180
c0de1e46:	4683      	mov	fp, r0
c0de1e48:	a848      	add	r0, sp, #288	@ 0x120
c0de1e4a:	4d1b      	ldr	r5, [pc, #108]	@ (c0de1eb8 <zkn_fp4_384_sqr+0x78>)
c0de1e4c:	4614      	mov	r4, r2
c0de1e4e:	460e      	mov	r6, r1
c0de1e50:	447d      	add	r5, pc
c0de1e52:	47a8      	blx	r5
c0de1e54:	f106 0760 	add.w	r7, r6, #96	@ 0x60
c0de1e58:	f10d 0ac0 	add.w	sl, sp, #192	@ 0xc0
c0de1e5c:	4622      	mov	r2, r4
c0de1e5e:	4650      	mov	r0, sl
c0de1e60:	4639      	mov	r1, r7
c0de1e62:	47a8      	blx	r5
c0de1e64:	f10d 0860 	add.w	r8, sp, #96	@ 0x60
c0de1e68:	4631      	mov	r1, r6
c0de1e6a:	463a      	mov	r2, r7
c0de1e6c:	4623      	mov	r3, r4
c0de1e6e:	4640      	mov	r0, r8
c0de1e70:	f7ff fea5 	bl	c0de1bbe <zkn_fp2_384_add>
c0de1e74:	4640      	mov	r0, r8
c0de1e76:	4641      	mov	r1, r8
c0de1e78:	4622      	mov	r2, r4
c0de1e7a:	47a8      	blx	r5
c0de1e7c:	f10b 0660 	add.w	r6, fp, #96	@ 0x60
c0de1e80:	af48      	add	r7, sp, #288	@ 0x120
c0de1e82:	4641      	mov	r1, r8
c0de1e84:	4623      	mov	r3, r4
c0de1e86:	4630      	mov	r0, r6
c0de1e88:	463a      	mov	r2, r7
c0de1e8a:	f7ff fea6 	bl	c0de1bda <zkn_fp2_384_sub>
c0de1e8e:	4630      	mov	r0, r6
c0de1e90:	4631      	mov	r1, r6
c0de1e92:	4652      	mov	r2, sl
c0de1e94:	4623      	mov	r3, r4
c0de1e96:	f7ff fea0 	bl	c0de1bda <zkn_fp2_384_sub>
c0de1e9a:	466d      	mov	r5, sp
c0de1e9c:	4651      	mov	r1, sl
c0de1e9e:	4622      	mov	r2, r4
c0de1ea0:	4628      	mov	r0, r5
c0de1ea2:	f7ff ff81 	bl	c0de1da8 <zkn_fp2_384_mul_by_xi>
c0de1ea6:	4658      	mov	r0, fp
c0de1ea8:	4639      	mov	r1, r7
c0de1eaa:	462a      	mov	r2, r5
c0de1eac:	4623      	mov	r3, r4
c0de1eae:	f7ff fe86 	bl	c0de1bbe <zkn_fp2_384_add>
c0de1eb2:	b060      	add	sp, #384	@ 0x180
c0de1eb4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1eb8:	fffffe75 	.word	0xfffffe75

c0de1ebc <zkn_fp6_384_zero>:
c0de1ebc:	b5b0      	push	{r4, r5, r7, lr}
c0de1ebe:	4d06      	ldr	r5, [pc, #24]	@ (c0de1ed8 <zkn_fp6_384_zero+0x1c>)
c0de1ec0:	4604      	mov	r4, r0
c0de1ec2:	447d      	add	r5, pc
c0de1ec4:	47a8      	blx	r5
c0de1ec6:	f104 0060 	add.w	r0, r4, #96	@ 0x60
c0de1eca:	47a8      	blx	r5
c0de1ecc:	f104 00c0 	add.w	r0, r4, #192	@ 0xc0
c0de1ed0:	4629      	mov	r1, r5
c0de1ed2:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de1ed6:	4708      	bx	r1
c0de1ed8:	fffffca7 	.word	0xfffffca7

c0de1edc <zkn_fp6_384_one>:
c0de1edc:	b510      	push	{r4, lr}
c0de1ede:	4604      	mov	r4, r0
c0de1ee0:	f7ff fe4e 	bl	c0de1b80 <zkn_fp2_384_one>
c0de1ee4:	f104 0060 	add.w	r0, r4, #96	@ 0x60
c0de1ee8:	f7ff fe40 	bl	c0de1b6c <zkn_fp2_384_zero>
c0de1eec:	f104 00c0 	add.w	r0, r4, #192	@ 0xc0
c0de1ef0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1ef4:	f7ff be3a 	b.w	c0de1b6c <zkn_fp2_384_zero>

c0de1ef8 <zkn_fp6_384_copy>:
c0de1ef8:	b580      	push	{r7, lr}
c0de1efa:	f44f 7290 	mov.w	r2, #288	@ 0x120
c0de1efe:	f006 fcfd 	bl	c0de88fc <__aeabi_memcpy>
c0de1f02:	bd80      	pop	{r7, pc}

c0de1f04 <zkn_fp6_384_eq>:
c0de1f04:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1f06:	4f09      	ldr	r7, [pc, #36]	@ (c0de1f2c <zkn_fp6_384_eq+0x28>)
c0de1f08:	460c      	mov	r4, r1
c0de1f0a:	4605      	mov	r5, r0
c0de1f0c:	447f      	add	r7, pc
c0de1f0e:	47b8      	blx	r7
c0de1f10:	4606      	mov	r6, r0
c0de1f12:	f105 0060 	add.w	r0, r5, #96	@ 0x60
c0de1f16:	f104 0160 	add.w	r1, r4, #96	@ 0x60
c0de1f1a:	47b8      	blx	r7
c0de1f1c:	4006      	ands	r6, r0
c0de1f1e:	f105 00c0 	add.w	r0, r5, #192	@ 0xc0
c0de1f22:	f104 01c0 	add.w	r1, r4, #192	@ 0xc0
c0de1f26:	47b8      	blx	r7
c0de1f28:	4030      	ands	r0, r6
c0de1f2a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de1f2c:	fffffc93 	.word	0xfffffc93

c0de1f30 <zkn_fp6_384_add>:
c0de1f30:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1f34:	4c05      	ldr	r4, [pc, #20]	@ (c0de1f4c <zkn_fp6_384_add+0x1c>)
c0de1f36:	f000 fad4 	bl	c0de24e2 <OUTLINED_FUNCTION_2>
c0de1f3a:	447c      	add	r4, pc
c0de1f3c:	47a0      	blx	r4
c0de1f3e:	f000 fabf 	bl	c0de24c0 <OUTLINED_FUNCTION_0>
c0de1f42:	f000 fac5 	bl	c0de24d0 <OUTLINED_FUNCTION_1>
c0de1f46:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de1f4a:	4760      	bx	ip
c0de1f4c:	fffffc81 	.word	0xfffffc81

c0de1f50 <zkn_fp6_384_sub>:
c0de1f50:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1f54:	4c05      	ldr	r4, [pc, #20]	@ (c0de1f6c <zkn_fp6_384_sub+0x1c>)
c0de1f56:	f000 fac4 	bl	c0de24e2 <OUTLINED_FUNCTION_2>
c0de1f5a:	447c      	add	r4, pc
c0de1f5c:	47a0      	blx	r4
c0de1f5e:	f000 faaf 	bl	c0de24c0 <OUTLINED_FUNCTION_0>
c0de1f62:	f000 fab5 	bl	c0de24d0 <OUTLINED_FUNCTION_1>
c0de1f66:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de1f6a:	4760      	bx	ip
c0de1f6c:	fffffc7d 	.word	0xfffffc7d

c0de1f70 <zkn_fp6_384_neg>:
c0de1f70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1f72:	4f0b      	ldr	r7, [pc, #44]	@ (c0de1fa0 <zkn_fp6_384_neg+0x30>)
c0de1f74:	4614      	mov	r4, r2
c0de1f76:	460d      	mov	r5, r1
c0de1f78:	4606      	mov	r6, r0
c0de1f7a:	447f      	add	r7, pc
c0de1f7c:	47b8      	blx	r7
c0de1f7e:	f106 0060 	add.w	r0, r6, #96	@ 0x60
c0de1f82:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de1f86:	4622      	mov	r2, r4
c0de1f88:	47b8      	blx	r7
c0de1f8a:	f106 00c0 	add.w	r0, r6, #192	@ 0xc0
c0de1f8e:	f105 01c0 	add.w	r1, r5, #192	@ 0xc0
c0de1f92:	4622      	mov	r2, r4
c0de1f94:	463b      	mov	r3, r7
c0de1f96:	b001      	add	sp, #4
c0de1f98:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de1f9c:	4718      	bx	r3
c0de1f9e:	bf00      	nop
c0de1fa0:	fffffc79 	.word	0xfffffc79

c0de1fa4 <zkn_fp6_384_mul>:
c0de1fa4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1fa8:	f5ad 7d4a 	sub.w	sp, sp, #808	@ 0x328
c0de1fac:	9204      	str	r2, [sp, #16]
c0de1fae:	9007      	str	r0, [sp, #28]
c0de1fb0:	a8b2      	add	r0, sp, #712	@ 0x2c8
c0de1fb2:	4f54      	ldr	r7, [pc, #336]	@ (c0de2104 <zkn_fp6_384_mul+0x160>)
c0de1fb4:	461d      	mov	r5, r3
c0de1fb6:	4616      	mov	r6, r2
c0de1fb8:	460c      	mov	r4, r1
c0de1fba:	447f      	add	r7, pc
c0de1fbc:	47b8      	blx	r7
c0de1fbe:	f104 0b60 	add.w	fp, r4, #96	@ 0x60
c0de1fc2:	f106 0860 	add.w	r8, r6, #96	@ 0x60
c0de1fc6:	9409      	str	r4, [sp, #36]	@ 0x24
c0de1fc8:	a89a      	add	r0, sp, #616	@ 0x268
c0de1fca:	462b      	mov	r3, r5
c0de1fcc:	4659      	mov	r1, fp
c0de1fce:	4642      	mov	r2, r8
c0de1fd0:	f8cd b00c 	str.w	fp, [sp, #12]
c0de1fd4:	f8cd 8008 	str.w	r8, [sp, #8]
c0de1fd8:	47b8      	blx	r7
c0de1fda:	34c0      	adds	r4, #192	@ 0xc0
c0de1fdc:	f106 0ac0 	add.w	sl, r6, #192	@ 0xc0
c0de1fe0:	462b      	mov	r3, r5
c0de1fe2:	9406      	str	r4, [sp, #24]
c0de1fe4:	a882      	add	r0, sp, #520	@ 0x208
c0de1fe6:	4621      	mov	r1, r4
c0de1fe8:	4652      	mov	r2, sl
c0de1fea:	f8cd a014 	str.w	sl, [sp, #20]
c0de1fee:	47b8      	blx	r7
c0de1ff0:	9708      	str	r7, [sp, #32]
c0de1ff2:	a86a      	add	r0, sp, #424	@ 0x1a8
c0de1ff4:	4e44      	ldr	r6, [pc, #272]	@ (c0de2108 <zkn_fp6_384_mul+0x164>)
c0de1ff6:	4659      	mov	r1, fp
c0de1ff8:	4622      	mov	r2, r4
c0de1ffa:	462b      	mov	r3, r5
c0de1ffc:	447e      	add	r6, pc
c0de1ffe:	47b0      	blx	r6
c0de2000:	f50d 7ba4 	add.w	fp, sp, #328	@ 0x148
c0de2004:	4641      	mov	r1, r8
c0de2006:	4652      	mov	r2, sl
c0de2008:	462b      	mov	r3, r5
c0de200a:	4658      	mov	r0, fp
c0de200c:	47b0      	blx	r6
c0de200e:	ac3a      	add	r4, sp, #232	@ 0xe8
c0de2010:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de2012:	465a      	mov	r2, fp
c0de2014:	462b      	mov	r3, r5
c0de2016:	46b2      	mov	sl, r6
c0de2018:	46d8      	mov	r8, fp
c0de201a:	4620      	mov	r0, r4
c0de201c:	460e      	mov	r6, r1
c0de201e:	47b8      	blx	r7
c0de2020:	4f3a      	ldr	r7, [pc, #232]	@ (c0de210c <zkn_fp6_384_mul+0x168>)
c0de2022:	4620      	mov	r0, r4
c0de2024:	4621      	mov	r1, r4
c0de2026:	aa9a      	add	r2, sp, #616	@ 0x268
c0de2028:	462b      	mov	r3, r5
c0de202a:	447f      	add	r7, pc
c0de202c:	47b8      	blx	r7
c0de202e:	4620      	mov	r0, r4
c0de2030:	4621      	mov	r1, r4
c0de2032:	aa82      	add	r2, sp, #520	@ 0x208
c0de2034:	462b      	mov	r3, r5
c0de2036:	47b8      	blx	r7
c0de2038:	4620      	mov	r0, r4
c0de203a:	4621      	mov	r1, r4
c0de203c:	462a      	mov	r2, r5
c0de203e:	46bb      	mov	fp, r7
c0de2040:	f7ff feb2 	bl	c0de1da8 <zkn_fp2_384_mul_by_xi>
c0de2044:	4620      	mov	r0, r4
c0de2046:	4621      	mov	r1, r4
c0de2048:	aab2      	add	r2, sp, #712	@ 0x2c8
c0de204a:	462b      	mov	r3, r5
c0de204c:	47d0      	blx	sl
c0de204e:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de2050:	9a03      	ldr	r2, [sp, #12]
c0de2052:	4630      	mov	r0, r6
c0de2054:	462b      	mov	r3, r5
c0de2056:	4634      	mov	r4, r6
c0de2058:	47d0      	blx	sl
c0de205a:	9e04      	ldr	r6, [sp, #16]
c0de205c:	9a02      	ldr	r2, [sp, #8]
c0de205e:	4640      	mov	r0, r8
c0de2060:	462b      	mov	r3, r5
c0de2062:	4631      	mov	r1, r6
c0de2064:	47d0      	blx	sl
c0de2066:	af22      	add	r7, sp, #136	@ 0x88
c0de2068:	4621      	mov	r1, r4
c0de206a:	9c08      	ldr	r4, [sp, #32]
c0de206c:	4642      	mov	r2, r8
c0de206e:	462b      	mov	r3, r5
c0de2070:	4638      	mov	r0, r7
c0de2072:	47a0      	blx	r4
c0de2074:	aab2      	add	r2, sp, #712	@ 0x2c8
c0de2076:	4638      	mov	r0, r7
c0de2078:	4639      	mov	r1, r7
c0de207a:	462b      	mov	r3, r5
c0de207c:	f8cd b004 	str.w	fp, [sp, #4]
c0de2080:	47d8      	blx	fp
c0de2082:	4638      	mov	r0, r7
c0de2084:	4639      	mov	r1, r7
c0de2086:	aa9a      	add	r2, sp, #616	@ 0x268
c0de2088:	462b      	mov	r3, r5
c0de208a:	47d8      	blx	fp
c0de208c:	ac0a      	add	r4, sp, #40	@ 0x28
c0de208e:	a982      	add	r1, sp, #520	@ 0x208
c0de2090:	462a      	mov	r2, r5
c0de2092:	4620      	mov	r0, r4
c0de2094:	f7ff fe88 	bl	c0de1da8 <zkn_fp2_384_mul_by_xi>
c0de2098:	4638      	mov	r0, r7
c0de209a:	4639      	mov	r1, r7
c0de209c:	4622      	mov	r2, r4
c0de209e:	462b      	mov	r3, r5
c0de20a0:	47d0      	blx	sl
c0de20a2:	a86a      	add	r0, sp, #424	@ 0x1a8
c0de20a4:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de20a6:	9a06      	ldr	r2, [sp, #24]
c0de20a8:	462b      	mov	r3, r5
c0de20aa:	47d0      	blx	sl
c0de20ac:	9a05      	ldr	r2, [sp, #20]
c0de20ae:	4640      	mov	r0, r8
c0de20b0:	4631      	mov	r1, r6
c0de20b2:	462b      	mov	r3, r5
c0de20b4:	47d0      	blx	sl
c0de20b6:	f8dd b01c 	ldr.w	fp, [sp, #28]
c0de20ba:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de20bc:	9e08      	ldr	r6, [sp, #32]
c0de20be:	4642      	mov	r2, r8
c0de20c0:	462b      	mov	r3, r5
c0de20c2:	f10b 04c0 	add.w	r4, fp, #192	@ 0xc0
c0de20c6:	4620      	mov	r0, r4
c0de20c8:	47b0      	blx	r6
c0de20ca:	aab2      	add	r2, sp, #712	@ 0x2c8
c0de20cc:	9e01      	ldr	r6, [sp, #4]
c0de20ce:	4620      	mov	r0, r4
c0de20d0:	4621      	mov	r1, r4
c0de20d2:	462b      	mov	r3, r5
c0de20d4:	47b0      	blx	r6
c0de20d6:	4620      	mov	r0, r4
c0de20d8:	4621      	mov	r1, r4
c0de20da:	aa82      	add	r2, sp, #520	@ 0x208
c0de20dc:	462b      	mov	r3, r5
c0de20de:	47b0      	blx	r6
c0de20e0:	4620      	mov	r0, r4
c0de20e2:	4621      	mov	r1, r4
c0de20e4:	aa9a      	add	r2, sp, #616	@ 0x268
c0de20e6:	462b      	mov	r3, r5
c0de20e8:	47d0      	blx	sl
c0de20ea:	4658      	mov	r0, fp
c0de20ec:	a93a      	add	r1, sp, #232	@ 0xe8
c0de20ee:	f7ff fd53 	bl	c0de1b98 <zkn_fp2_384_copy>
c0de20f2:	f10b 0060 	add.w	r0, fp, #96	@ 0x60
c0de20f6:	4639      	mov	r1, r7
c0de20f8:	f7ff fd4e 	bl	c0de1b98 <zkn_fp2_384_copy>
c0de20fc:	f50d 7d4a 	add.w	sp, sp, #808	@ 0x328
c0de2100:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2104:	fffffc77 	.word	0xfffffc77
c0de2108:	fffffbbf 	.word	0xfffffbbf
c0de210c:	fffffbad 	.word	0xfffffbad

c0de2110 <zkn_fp6_384_sqr>:
c0de2110:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2114:	f5ad 7d74 	sub.w	sp, sp, #976	@ 0x3d0
c0de2118:	9002      	str	r0, [sp, #8]
c0de211a:	a8dc      	add	r0, sp, #880	@ 0x370
c0de211c:	4b3b      	ldr	r3, [pc, #236]	@ (c0de220c <zkn_fp6_384_sqr+0xfc>)
c0de211e:	4614      	mov	r4, r2
c0de2120:	460f      	mov	r7, r1
c0de2122:	447b      	add	r3, pc
c0de2124:	9301      	str	r3, [sp, #4]
c0de2126:	4798      	blx	r3
c0de2128:	f107 0a60 	add.w	sl, r7, #96	@ 0x60
c0de212c:	f50d 78c8 	add.w	r8, sp, #400	@ 0x190
c0de2130:	4639      	mov	r1, r7
c0de2132:	4623      	mov	r3, r4
c0de2134:	4640      	mov	r0, r8
c0de2136:	4652      	mov	r2, sl
c0de2138:	f7ff fd7c 	bl	c0de1c34 <zkn_fp2_384_mul>
c0de213c:	a8c4      	add	r0, sp, #784	@ 0x310
c0de213e:	4d34      	ldr	r5, [pc, #208]	@ (c0de2210 <zkn_fp6_384_sqr+0x100>)
c0de2140:	4641      	mov	r1, r8
c0de2142:	4642      	mov	r2, r8
c0de2144:	4623      	mov	r3, r4
c0de2146:	447d      	add	r5, pc
c0de2148:	47a8      	blx	r5
c0de214a:	4e32      	ldr	r6, [pc, #200]	@ (c0de2214 <zkn_fp6_384_sqr+0x104>)
c0de214c:	f10d 0bd0 	add.w	fp, sp, #208	@ 0xd0
c0de2150:	4639      	mov	r1, r7
c0de2152:	4652      	mov	r2, sl
c0de2154:	4623      	mov	r3, r4
c0de2156:	4658      	mov	r0, fp
c0de2158:	447e      	add	r6, pc
c0de215a:	9603      	str	r6, [sp, #12]
c0de215c:	47b0      	blx	r6
c0de215e:	f107 08c0 	add.w	r8, r7, #192	@ 0xc0
c0de2162:	4658      	mov	r0, fp
c0de2164:	4659      	mov	r1, fp
c0de2166:	4623      	mov	r3, r4
c0de2168:	4642      	mov	r2, r8
c0de216a:	47a8      	blx	r5
c0de216c:	a8ac      	add	r0, sp, #688	@ 0x2b0
c0de216e:	9e01      	ldr	r6, [sp, #4]
c0de2170:	4659      	mov	r1, fp
c0de2172:	4622      	mov	r2, r4
c0de2174:	47b0      	blx	r6
c0de2176:	af4c      	add	r7, sp, #304	@ 0x130
c0de2178:	4651      	mov	r1, sl
c0de217a:	4642      	mov	r2, r8
c0de217c:	4623      	mov	r3, r4
c0de217e:	4638      	mov	r0, r7
c0de2180:	f7ff fd58 	bl	c0de1c34 <zkn_fp2_384_mul>
c0de2184:	f50d 7a14 	add.w	sl, sp, #592	@ 0x250
c0de2188:	4639      	mov	r1, r7
c0de218a:	463a      	mov	r2, r7
c0de218c:	4623      	mov	r3, r4
c0de218e:	4650      	mov	r0, sl
c0de2190:	47a8      	blx	r5
c0de2192:	f50d 7bf8 	add.w	fp, sp, #496	@ 0x1f0
c0de2196:	4641      	mov	r1, r8
c0de2198:	4622      	mov	r2, r4
c0de219a:	4658      	mov	r0, fp
c0de219c:	47b0      	blx	r6
c0de219e:	ae1c      	add	r6, sp, #112	@ 0x70
c0de21a0:	4651      	mov	r1, sl
c0de21a2:	4622      	mov	r2, r4
c0de21a4:	4630      	mov	r0, r6
c0de21a6:	f7ff fdff 	bl	c0de1da8 <zkn_fp2_384_mul_by_xi>
c0de21aa:	9f02      	ldr	r7, [sp, #8]
c0de21ac:	f50d 785c 	add.w	r8, sp, #880	@ 0x370
c0de21b0:	4632      	mov	r2, r6
c0de21b2:	4623      	mov	r3, r4
c0de21b4:	4641      	mov	r1, r8
c0de21b6:	4638      	mov	r0, r7
c0de21b8:	47a8      	blx	r5
c0de21ba:	ae04      	add	r6, sp, #16
c0de21bc:	4659      	mov	r1, fp
c0de21be:	4622      	mov	r2, r4
c0de21c0:	4630      	mov	r0, r6
c0de21c2:	f7ff fdf1 	bl	c0de1da8 <zkn_fp2_384_mul_by_xi>
c0de21c6:	f50d 7a44 	add.w	sl, sp, #784	@ 0x310
c0de21ca:	f107 0060 	add.w	r0, r7, #96	@ 0x60
c0de21ce:	4632      	mov	r2, r6
c0de21d0:	4623      	mov	r3, r4
c0de21d2:	4651      	mov	r1, sl
c0de21d4:	47a8      	blx	r5
c0de21d6:	f107 06c0 	add.w	r6, r7, #192	@ 0xc0
c0de21da:	4651      	mov	r1, sl
c0de21dc:	aaac      	add	r2, sp, #688	@ 0x2b0
c0de21de:	4623      	mov	r3, r4
c0de21e0:	4630      	mov	r0, r6
c0de21e2:	47a8      	blx	r5
c0de21e4:	4630      	mov	r0, r6
c0de21e6:	4631      	mov	r1, r6
c0de21e8:	aa94      	add	r2, sp, #592	@ 0x250
c0de21ea:	4623      	mov	r3, r4
c0de21ec:	47a8      	blx	r5
c0de21ee:	9d03      	ldr	r5, [sp, #12]
c0de21f0:	4630      	mov	r0, r6
c0de21f2:	4631      	mov	r1, r6
c0de21f4:	4642      	mov	r2, r8
c0de21f6:	4623      	mov	r3, r4
c0de21f8:	47a8      	blx	r5
c0de21fa:	4630      	mov	r0, r6
c0de21fc:	4631      	mov	r1, r6
c0de21fe:	465a      	mov	r2, fp
c0de2200:	4623      	mov	r3, r4
c0de2202:	47a8      	blx	r5
c0de2204:	f50d 7d74 	add.w	sp, sp, #976	@ 0x3d0
c0de2208:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de220c:	fffffba3 	.word	0xfffffba3
c0de2210:	fffffa75 	.word	0xfffffa75
c0de2214:	fffffa7f 	.word	0xfffffa7f

c0de2218 <zkn_fp6_384_mul_by_01>:
c0de2218:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de221c:	f5ad 7d2c 	sub.w	sp, sp, #688	@ 0x2b0
c0de2220:	9003      	str	r0, [sp, #12]
c0de2222:	a894      	add	r0, sp, #592	@ 0x250
c0de2224:	4c31      	ldr	r4, [pc, #196]	@ (c0de22ec <zkn_fp6_384_mul_by_01+0xd4>)
c0de2226:	9db4      	ldr	r5, [sp, #720]	@ 0x2d0
c0de2228:	469b      	mov	fp, r3
c0de222a:	4688      	mov	r8, r1
c0de222c:	4616      	mov	r6, r2
c0de222e:	9200      	str	r2, [sp, #0]
c0de2230:	447c      	add	r4, pc
c0de2232:	462b      	mov	r3, r5
c0de2234:	9401      	str	r4, [sp, #4]
c0de2236:	47a0      	blx	r4
c0de2238:	f108 0760 	add.w	r7, r8, #96	@ 0x60
c0de223c:	a87c      	add	r0, sp, #496	@ 0x1f0
c0de223e:	465a      	mov	r2, fp
c0de2240:	462b      	mov	r3, r5
c0de2242:	4639      	mov	r1, r7
c0de2244:	47a0      	blx	r4
c0de2246:	f50d 7ac8 	add.w	sl, sp, #400	@ 0x190
c0de224a:	f108 01c0 	add.w	r1, r8, #192	@ 0xc0
c0de224e:	465a      	mov	r2, fp
c0de2250:	462b      	mov	r3, r5
c0de2252:	4650      	mov	r0, sl
c0de2254:	9102      	str	r1, [sp, #8]
c0de2256:	47a0      	blx	r4
c0de2258:	4650      	mov	r0, sl
c0de225a:	4651      	mov	r1, sl
c0de225c:	462a      	mov	r2, r5
c0de225e:	f7ff fda3 	bl	c0de1da8 <zkn_fp2_384_mul_by_xi>
c0de2262:	a84c      	add	r0, sp, #304	@ 0x130
c0de2264:	4c22      	ldr	r4, [pc, #136]	@ (c0de22f0 <zkn_fp6_384_mul_by_01+0xd8>)
c0de2266:	a994      	add	r1, sp, #592	@ 0x250
c0de2268:	4652      	mov	r2, sl
c0de226a:	462b      	mov	r3, r5
c0de226c:	447c      	add	r4, pc
c0de226e:	47a0      	blx	r4
c0de2270:	f10d 0ad0 	add.w	sl, sp, #208	@ 0xd0
c0de2274:	4641      	mov	r1, r8
c0de2276:	463a      	mov	r2, r7
c0de2278:	462b      	mov	r3, r5
c0de227a:	4650      	mov	r0, sl
c0de227c:	47a0      	blx	r4
c0de227e:	af1c      	add	r7, sp, #112	@ 0x70
c0de2280:	4631      	mov	r1, r6
c0de2282:	465a      	mov	r2, fp
c0de2284:	462b      	mov	r3, r5
c0de2286:	4638      	mov	r0, r7
c0de2288:	47a0      	blx	r4
c0de228a:	f10d 0810 	add.w	r8, sp, #16
c0de228e:	4651      	mov	r1, sl
c0de2290:	f8dd a004 	ldr.w	sl, [sp, #4]
c0de2294:	463a      	mov	r2, r7
c0de2296:	462b      	mov	r3, r5
c0de2298:	4640      	mov	r0, r8
c0de229a:	47d0      	blx	sl
c0de229c:	4640      	mov	r0, r8
c0de229e:	4641      	mov	r1, r8
c0de22a0:	aa94      	add	r2, sp, #592	@ 0x250
c0de22a2:	462b      	mov	r3, r5
c0de22a4:	f7ff fc99 	bl	c0de1bda <zkn_fp2_384_sub>
c0de22a8:	f50d 7bf8 	add.w	fp, sp, #496	@ 0x1f0
c0de22ac:	4640      	mov	r0, r8
c0de22ae:	4641      	mov	r1, r8
c0de22b0:	462b      	mov	r3, r5
c0de22b2:	465a      	mov	r2, fp
c0de22b4:	f7ff fc91 	bl	c0de1bda <zkn_fp2_384_sub>
c0de22b8:	9e03      	ldr	r6, [sp, #12]
c0de22ba:	9902      	ldr	r1, [sp, #8]
c0de22bc:	9a00      	ldr	r2, [sp, #0]
c0de22be:	462b      	mov	r3, r5
c0de22c0:	f106 07c0 	add.w	r7, r6, #192	@ 0xc0
c0de22c4:	4638      	mov	r0, r7
c0de22c6:	47d0      	blx	sl
c0de22c8:	4638      	mov	r0, r7
c0de22ca:	4639      	mov	r1, r7
c0de22cc:	465a      	mov	r2, fp
c0de22ce:	462b      	mov	r3, r5
c0de22d0:	47a0      	blx	r4
c0de22d2:	4630      	mov	r0, r6
c0de22d4:	a94c      	add	r1, sp, #304	@ 0x130
c0de22d6:	f7ff fc5f 	bl	c0de1b98 <zkn_fp2_384_copy>
c0de22da:	f106 0060 	add.w	r0, r6, #96	@ 0x60
c0de22de:	4641      	mov	r1, r8
c0de22e0:	f7ff fc5a 	bl	c0de1b98 <zkn_fp2_384_copy>
c0de22e4:	f50d 7d2c 	add.w	sp, sp, #688	@ 0x2b0
c0de22e8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de22ec:	fffffa01 	.word	0xfffffa01
c0de22f0:	fffff94f 	.word	0xfffff94f

c0de22f4 <zkn_fp6_384_mul_by_1>:
c0de22f4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de22f8:	b0b0      	sub	sp, #192	@ 0xc0
c0de22fa:	4c14      	ldr	r4, [pc, #80]	@ (c0de234c <zkn_fp6_384_mul_by_1+0x58>)
c0de22fc:	f10d 0860 	add.w	r8, sp, #96	@ 0x60
c0de2300:	460e      	mov	r6, r1
c0de2302:	4683      	mov	fp, r0
c0de2304:	31c0      	adds	r1, #192	@ 0xc0
c0de2306:	461d      	mov	r5, r3
c0de2308:	4617      	mov	r7, r2
c0de230a:	4640      	mov	r0, r8
c0de230c:	447c      	add	r4, pc
c0de230e:	47a0      	blx	r4
c0de2310:	4640      	mov	r0, r8
c0de2312:	4641      	mov	r1, r8
c0de2314:	462a      	mov	r2, r5
c0de2316:	f7ff fd47 	bl	c0de1da8 <zkn_fp2_384_mul_by_xi>
c0de231a:	46ea      	mov	sl, sp
c0de231c:	4631      	mov	r1, r6
c0de231e:	463a      	mov	r2, r7
c0de2320:	462b      	mov	r3, r5
c0de2322:	4650      	mov	r0, sl
c0de2324:	47a0      	blx	r4
c0de2326:	f10b 00c0 	add.w	r0, fp, #192	@ 0xc0
c0de232a:	f106 0160 	add.w	r1, r6, #96	@ 0x60
c0de232e:	463a      	mov	r2, r7
c0de2330:	462b      	mov	r3, r5
c0de2332:	47a0      	blx	r4
c0de2334:	4658      	mov	r0, fp
c0de2336:	4641      	mov	r1, r8
c0de2338:	f7ff fc2e 	bl	c0de1b98 <zkn_fp2_384_copy>
c0de233c:	f10b 0060 	add.w	r0, fp, #96	@ 0x60
c0de2340:	4651      	mov	r1, sl
c0de2342:	f7ff fc29 	bl	c0de1b98 <zkn_fp2_384_copy>
c0de2346:	b030      	add	sp, #192	@ 0xc0
c0de2348:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de234c:	fffff925 	.word	0xfffff925

c0de2350 <zkn_fp6_384_mul_by_v>:
c0de2350:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de2352:	b099      	sub	sp, #100	@ 0x64
c0de2354:	ae01      	add	r6, sp, #4
c0de2356:	460c      	mov	r4, r1
c0de2358:	4605      	mov	r5, r0
c0de235a:	31c0      	adds	r1, #192	@ 0xc0
c0de235c:	4630      	mov	r0, r6
c0de235e:	f7ff fd23 	bl	c0de1da8 <zkn_fp2_384_mul_by_xi>
c0de2362:	4f08      	ldr	r7, [pc, #32]	@ (c0de2384 <zkn_fp6_384_mul_by_v+0x34>)
c0de2364:	f105 00c0 	add.w	r0, r5, #192	@ 0xc0
c0de2368:	f104 0160 	add.w	r1, r4, #96	@ 0x60
c0de236c:	447f      	add	r7, pc
c0de236e:	47b8      	blx	r7
c0de2370:	f105 0060 	add.w	r0, r5, #96	@ 0x60
c0de2374:	4621      	mov	r1, r4
c0de2376:	47b8      	blx	r7
c0de2378:	4628      	mov	r0, r5
c0de237a:	4631      	mov	r1, r6
c0de237c:	47b8      	blx	r7
c0de237e:	b019      	add	sp, #100	@ 0x64
c0de2380:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de2382:	bf00      	nop
c0de2384:	fffff829 	.word	0xfffff829

c0de2388 <zkn_fp6_384_inv>:
c0de2388:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de238c:	f5ad 6d9e 	sub.w	sp, sp, #1264	@ 0x4f0
c0de2390:	9003      	str	r0, [sp, #12]
c0de2392:	f50d 6092 	add.w	r0, sp, #1168	@ 0x490
c0de2396:	4614      	mov	r4, r2
c0de2398:	468a      	mov	sl, r1
c0de239a:	4d45      	ldr	r5, [pc, #276]	@ (c0de24b0 <zkn_fp6_384_inv+0x128>)
c0de239c:	447d      	add	r5, pc
c0de239e:	47a8      	blx	r5
c0de23a0:	f10a 0160 	add.w	r1, sl, #96	@ 0x60
c0de23a4:	f50d 6086 	add.w	r0, sp, #1072	@ 0x430
c0de23a8:	4622      	mov	r2, r4
c0de23aa:	4688      	mov	r8, r1
c0de23ac:	47a8      	blx	r5
c0de23ae:	f10a 0bc0 	add.w	fp, sl, #192	@ 0xc0
c0de23b2:	a8f4      	add	r0, sp, #976	@ 0x3d0
c0de23b4:	4622      	mov	r2, r4
c0de23b6:	4659      	mov	r1, fp
c0de23b8:	47a8      	blx	r5
c0de23ba:	a8dc      	add	r0, sp, #880	@ 0x370
c0de23bc:	4e3d      	ldr	r6, [pc, #244]	@ (c0de24b4 <zkn_fp6_384_inv+0x12c>)
c0de23be:	4651      	mov	r1, sl
c0de23c0:	4642      	mov	r2, r8
c0de23c2:	4623      	mov	r3, r4
c0de23c4:	4645      	mov	r5, r8
c0de23c6:	f8cd 8008 	str.w	r8, [sp, #8]
c0de23ca:	447e      	add	r6, pc
c0de23cc:	9601      	str	r6, [sp, #4]
c0de23ce:	47b0      	blx	r6
c0de23d0:	a8c4      	add	r0, sp, #784	@ 0x310
c0de23d2:	4651      	mov	r1, sl
c0de23d4:	465a      	mov	r2, fp
c0de23d6:	4623      	mov	r3, r4
c0de23d8:	47b0      	blx	r6
c0de23da:	f50d 782c 	add.w	r8, sp, #688	@ 0x2b0
c0de23de:	4629      	mov	r1, r5
c0de23e0:	465a      	mov	r2, fp
c0de23e2:	4623      	mov	r3, r4
c0de23e4:	4640      	mov	r0, r8
c0de23e6:	47b0      	blx	r6
c0de23e8:	af94      	add	r7, sp, #592	@ 0x250
c0de23ea:	4d33      	ldr	r5, [pc, #204]	@ (c0de24b8 <zkn_fp6_384_inv+0x130>)
c0de23ec:	4641      	mov	r1, r8
c0de23ee:	4622      	mov	r2, r4
c0de23f0:	4638      	mov	r0, r7
c0de23f2:	447d      	add	r5, pc
c0de23f4:	47a8      	blx	r5
c0de23f6:	462e      	mov	r6, r5
c0de23f8:	4d30      	ldr	r5, [pc, #192]	@ (c0de24bc <zkn_fp6_384_inv+0x134>)
c0de23fa:	4638      	mov	r0, r7
c0de23fc:	f50d 6192 	add.w	r1, sp, #1168	@ 0x490
c0de2400:	463a      	mov	r2, r7
c0de2402:	4623      	mov	r3, r4
c0de2404:	447d      	add	r5, pc
c0de2406:	47a8      	blx	r5
c0de2408:	af7c      	add	r7, sp, #496	@ 0x1f0
c0de240a:	a9f4      	add	r1, sp, #976	@ 0x3d0
c0de240c:	4622      	mov	r2, r4
c0de240e:	4638      	mov	r0, r7
c0de2410:	47b0      	blx	r6
c0de2412:	4638      	mov	r0, r7
c0de2414:	4639      	mov	r1, r7
c0de2416:	aadc      	add	r2, sp, #880	@ 0x370
c0de2418:	4623      	mov	r3, r4
c0de241a:	47a8      	blx	r5
c0de241c:	a864      	add	r0, sp, #400	@ 0x190
c0de241e:	f50d 6186 	add.w	r1, sp, #1072	@ 0x430
c0de2422:	aac4      	add	r2, sp, #784	@ 0x310
c0de2424:	4623      	mov	r3, r4
c0de2426:	47a8      	blx	r5
c0de2428:	f50d 7898 	add.w	r8, sp, #304	@ 0x130
c0de242c:	aa94      	add	r2, sp, #592	@ 0x250
c0de242e:	9d01      	ldr	r5, [sp, #4]
c0de2430:	4651      	mov	r1, sl
c0de2432:	4623      	mov	r3, r4
c0de2434:	4640      	mov	r0, r8
c0de2436:	47a8      	blx	r5
c0de2438:	af34      	add	r7, sp, #208	@ 0xd0
c0de243a:	f50d 7af8 	add.w	sl, sp, #496	@ 0x1f0
c0de243e:	4659      	mov	r1, fp
c0de2440:	4623      	mov	r3, r4
c0de2442:	4638      	mov	r0, r7
c0de2444:	4652      	mov	r2, sl
c0de2446:	47a8      	blx	r5
c0de2448:	f10d 0b70 	add.w	fp, sp, #112	@ 0x70
c0de244c:	9902      	ldr	r1, [sp, #8]
c0de244e:	aa64      	add	r2, sp, #400	@ 0x190
c0de2450:	4623      	mov	r3, r4
c0de2452:	4658      	mov	r0, fp
c0de2454:	47a8      	blx	r5
c0de2456:	4638      	mov	r0, r7
c0de2458:	4639      	mov	r1, r7
c0de245a:	465a      	mov	r2, fp
c0de245c:	4623      	mov	r3, r4
c0de245e:	f7ff fbae 	bl	c0de1bbe <zkn_fp2_384_add>
c0de2462:	4638      	mov	r0, r7
c0de2464:	4639      	mov	r1, r7
c0de2466:	4622      	mov	r2, r4
c0de2468:	47b0      	blx	r6
c0de246a:	4640      	mov	r0, r8
c0de246c:	4641      	mov	r1, r8
c0de246e:	463a      	mov	r2, r7
c0de2470:	4623      	mov	r3, r4
c0de2472:	f7ff fba4 	bl	c0de1bbe <zkn_fp2_384_add>
c0de2476:	ae04      	add	r6, sp, #16
c0de2478:	4641      	mov	r1, r8
c0de247a:	4622      	mov	r2, r4
c0de247c:	4630      	mov	r0, r6
c0de247e:	f7ff fc6a 	bl	c0de1d56 <zkn_fp2_384_inv>
c0de2482:	9f03      	ldr	r7, [sp, #12]
c0de2484:	a994      	add	r1, sp, #592	@ 0x250
c0de2486:	4632      	mov	r2, r6
c0de2488:	4623      	mov	r3, r4
c0de248a:	4638      	mov	r0, r7
c0de248c:	47a8      	blx	r5
c0de248e:	f107 0060 	add.w	r0, r7, #96	@ 0x60
c0de2492:	4651      	mov	r1, sl
c0de2494:	4632      	mov	r2, r6
c0de2496:	4623      	mov	r3, r4
c0de2498:	47a8      	blx	r5
c0de249a:	f107 00c0 	add.w	r0, r7, #192	@ 0xc0
c0de249e:	a964      	add	r1, sp, #400	@ 0x190
c0de24a0:	4632      	mov	r2, r6
c0de24a2:	4623      	mov	r3, r4
c0de24a4:	47a8      	blx	r5
c0de24a6:	f50d 6d9e 	add.w	sp, sp, #1264	@ 0x4f0
c0de24aa:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de24ae:	bf00      	nop
c0de24b0:	fffff929 	.word	0xfffff929
c0de24b4:	fffff867 	.word	0xfffff867
c0de24b8:	fffff9b3 	.word	0xfffff9b3
c0de24bc:	fffff7d3 	.word	0xfffff7d3

c0de24c0 <OUTLINED_FUNCTION_0>:
c0de24c0:	f107 0060 	add.w	r0, r7, #96	@ 0x60
c0de24c4:	f106 0160 	add.w	r1, r6, #96	@ 0x60
c0de24c8:	f105 0260 	add.w	r2, r5, #96	@ 0x60
c0de24cc:	4643      	mov	r3, r8
c0de24ce:	4720      	bx	r4

c0de24d0 <OUTLINED_FUNCTION_1>:
c0de24d0:	f107 00c0 	add.w	r0, r7, #192	@ 0xc0
c0de24d4:	f106 01c0 	add.w	r1, r6, #192	@ 0xc0
c0de24d8:	f105 02c0 	add.w	r2, r5, #192	@ 0xc0
c0de24dc:	4643      	mov	r3, r8
c0de24de:	46a4      	mov	ip, r4
c0de24e0:	4770      	bx	lr

c0de24e2 <OUTLINED_FUNCTION_2>:
c0de24e2:	4698      	mov	r8, r3
c0de24e4:	4615      	mov	r5, r2
c0de24e6:	460e      	mov	r6, r1
c0de24e8:	4607      	mov	r7, r0
c0de24ea:	4770      	bx	lr

c0de24ec <zkn_g1_384_zero>:
c0de24ec:	b5b0      	push	{r4, r5, r7, lr}
c0de24ee:	4d07      	ldr	r5, [pc, #28]	@ (c0de250c <zkn_g1_384_zero+0x20>)
c0de24f0:	4604      	mov	r4, r0
c0de24f2:	447d      	add	r5, pc
c0de24f4:	47a8      	blx	r5
c0de24f6:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de24fa:	47a8      	blx	r5
c0de24fc:	2001      	movs	r0, #1
c0de24fe:	4629      	mov	r1, r5
c0de2500:	6320      	str	r0, [r4, #48]	@ 0x30
c0de2502:	f104 0060 	add.w	r0, r4, #96	@ 0x60
c0de2506:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de250a:	4708      	bx	r1
c0de250c:	000016db 	.word	0x000016db

c0de2510 <zkn_g1_384_is_zero>:
c0de2510:	b5b0      	push	{r4, r5, r7, lr}
c0de2512:	b08c      	sub	sp, #48	@ 0x30
c0de2514:	466d      	mov	r5, sp
c0de2516:	4604      	mov	r4, r0
c0de2518:	2130      	movs	r1, #48	@ 0x30
c0de251a:	4628      	mov	r0, r5
c0de251c:	f006 f9f8 	bl	c0de8910 <__aeabi_memclr>
c0de2520:	f104 0060 	add.w	r0, r4, #96	@ 0x60
c0de2524:	4629      	mov	r1, r5
c0de2526:	f001 fb42 	bl	c0de3bae <zkn_fe384_eq>
c0de252a:	b00c      	add	sp, #48	@ 0x30
c0de252c:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de2530 <zkn_g1_384_generator>:
c0de2530:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de2532:	b099      	sub	sp, #100	@ 0x64
c0de2534:	460c      	mov	r4, r1
c0de2536:	ae0d      	add	r6, sp, #52	@ 0x34
c0de2538:	4909      	ldr	r1, [pc, #36]	@ (c0de2560 <zkn_g1_384_generator+0x30>)
c0de253a:	4605      	mov	r5, r0
c0de253c:	4630      	mov	r0, r6
c0de253e:	4479      	add	r1, pc
c0de2540:	f001 fb07 	bl	c0de3b52 <zkn_fe384_from_be>
c0de2544:	af01      	add	r7, sp, #4
c0de2546:	4907      	ldr	r1, [pc, #28]	@ (c0de2564 <zkn_g1_384_generator+0x34>)
c0de2548:	4638      	mov	r0, r7
c0de254a:	4479      	add	r1, pc
c0de254c:	f001 fb01 	bl	c0de3b52 <zkn_fe384_from_be>
c0de2550:	4628      	mov	r0, r5
c0de2552:	4631      	mov	r1, r6
c0de2554:	463a      	mov	r2, r7
c0de2556:	4623      	mov	r3, r4
c0de2558:	f000 f806 	bl	c0de2568 <zkn_g1_384_from_affine>
c0de255c:	b019      	add	sp, #100	@ 0x64
c0de255e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de2560:	00006a02 	.word	0x00006a02
c0de2564:	00006a26 	.word	0x00006a26

c0de2568 <zkn_g1_384_from_affine>:
c0de2568:	b570      	push	{r4, r5, r6, lr}
c0de256a:	4615      	mov	r5, r2
c0de256c:	461a      	mov	r2, r3
c0de256e:	461c      	mov	r4, r3
c0de2570:	4606      	mov	r6, r0
c0de2572:	f001 fae5 	bl	c0de3b40 <zkn_to_mont_384>
c0de2576:	f106 0030 	add.w	r0, r6, #48	@ 0x30
c0de257a:	4629      	mov	r1, r5
c0de257c:	4622      	mov	r2, r4
c0de257e:	f001 fadf 	bl	c0de3b40 <zkn_to_mont_384>
c0de2582:	f106 0060 	add.w	r0, r6, #96	@ 0x60
c0de2586:	f104 0164 	add.w	r1, r4, #100	@ 0x64
c0de258a:	2230      	movs	r2, #48	@ 0x30
c0de258c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de2590:	f006 b9b4 	b.w	c0de88fc <__aeabi_memcpy>

c0de2594 <zkn_g1_384_to_affine>:
c0de2594:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2598:	b0be      	sub	sp, #248	@ 0xf8
c0de259a:	9101      	str	r1, [sp, #4]
c0de259c:	ae32      	add	r6, sp, #200	@ 0xc8
c0de259e:	4682      	mov	sl, r0
c0de25a0:	4617      	mov	r7, r2
c0de25a2:	f102 0160 	add.w	r1, r2, #96	@ 0x60
c0de25a6:	461a      	mov	r2, r3
c0de25a8:	461c      	mov	r4, r3
c0de25aa:	4630      	mov	r0, r6
c0de25ac:	f001 fb6e 	bl	c0de3c8c <zkn_inv_mont_384>
c0de25b0:	f10d 0898 	add.w	r8, sp, #152	@ 0x98
c0de25b4:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de25b6:	4631      	mov	r1, r6
c0de25b8:	4622      	mov	r2, r4
c0de25ba:	4640      	mov	r0, r8
c0de25bc:	f001 fd4a 	bl	c0de4054 <zkn_sqr_mont_384>
c0de25c0:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de25c2:	f10d 0b68 	add.w	fp, sp, #104	@ 0x68
c0de25c6:	4641      	mov	r1, r8
c0de25c8:	4632      	mov	r2, r6
c0de25ca:	f000 fa56 	bl	c0de2a7a <OUTLINED_FUNCTION_1>
c0de25ce:	4d11      	ldr	r5, [pc, #68]	@ (c0de2614 <zkn_g1_384_to_affine+0x80>)
c0de25d0:	447d      	add	r5, pc
c0de25d2:	47a8      	blx	r5
c0de25d4:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de25d6:	4639      	mov	r1, r7
c0de25d8:	4642      	mov	r2, r8
c0de25da:	4623      	mov	r3, r4
c0de25dc:	9000      	str	r0, [sp, #0]
c0de25de:	ae0e      	add	r6, sp, #56	@ 0x38
c0de25e0:	4630      	mov	r0, r6
c0de25e2:	47a8      	blx	r5
c0de25e4:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de25e6:	f107 0130 	add.w	r1, r7, #48	@ 0x30
c0de25ea:	f000 fa4a 	bl	c0de2a82 <OUTLINED_FUNCTION_2>
c0de25ee:	af02      	add	r7, sp, #8
c0de25f0:	4638      	mov	r0, r7
c0de25f2:	47a8      	blx	r5
c0de25f4:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de25f6:	4650      	mov	r0, sl
c0de25f8:	4631      	mov	r1, r6
c0de25fa:	4622      	mov	r2, r4
c0de25fc:	f001 fe2a 	bl	c0de4254 <zkn_from_mont_384>
c0de2600:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de2602:	9801      	ldr	r0, [sp, #4]
c0de2604:	4639      	mov	r1, r7
c0de2606:	4622      	mov	r2, r4
c0de2608:	f001 fe24 	bl	c0de4254 <zkn_from_mont_384>
c0de260c:	b03e      	add	sp, #248	@ 0xf8
c0de260e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2612:	bf00      	nop
c0de2614:	00001741 	.word	0x00001741

c0de2618 <zkn_g1_384_on_curve>:
c0de2618:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de261c:	b0ed      	sub	sp, #436	@ 0x1b4
c0de261e:	460c      	mov	r4, r1
c0de2620:	4607      	mov	r7, r0
c0de2622:	f7ff ff75 	bl	c0de2510 <zkn_g1_384_is_zero>
c0de2626:	b108      	cbz	r0, c0de262c <zkn_g1_384_on_curve+0x14>
c0de2628:	2001      	movs	r0, #1
c0de262a:	e047      	b.n	c0de26bc <zkn_g1_384_on_curve+0xa4>
c0de262c:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de262e:	4e25      	ldr	r6, [pc, #148]	@ (c0de26c4 <zkn_g1_384_on_curve+0xac>)
c0de2630:	f50d 78c2 	add.w	r8, sp, #388	@ 0x184
c0de2634:	f107 0130 	add.w	r1, r7, #48	@ 0x30
c0de2638:	4622      	mov	r2, r4
c0de263a:	4640      	mov	r0, r8
c0de263c:	447e      	add	r6, pc
c0de263e:	47b0      	blx	r6
c0de2640:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de2642:	ad55      	add	r5, sp, #340	@ 0x154
c0de2644:	4639      	mov	r1, r7
c0de2646:	4622      	mov	r2, r4
c0de2648:	4628      	mov	r0, r5
c0de264a:	47b0      	blx	r6
c0de264c:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de264e:	f50d 7a92 	add.w	sl, sp, #292	@ 0x124
c0de2652:	4629      	mov	r1, r5
c0de2654:	463a      	mov	r2, r7
c0de2656:	4623      	mov	r3, r4
c0de2658:	9000      	str	r0, [sp, #0]
c0de265a:	4650      	mov	r0, sl
c0de265c:	f001 fb5a 	bl	c0de3d14 <zkn_mul_mont_384>
c0de2660:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de2662:	ad3d      	add	r5, sp, #244	@ 0xf4
c0de2664:	f107 0160 	add.w	r1, r7, #96	@ 0x60
c0de2668:	4622      	mov	r2, r4
c0de266a:	4628      	mov	r0, r5
c0de266c:	47b0      	blx	r6
c0de266e:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de2670:	af31      	add	r7, sp, #196	@ 0xc4
c0de2672:	4629      	mov	r1, r5
c0de2674:	4622      	mov	r2, r4
c0de2676:	4638      	mov	r0, r7
c0de2678:	47b0      	blx	r6
c0de267a:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de267c:	4639      	mov	r1, r7
c0de267e:	462a      	mov	r2, r5
c0de2680:	4623      	mov	r3, r4
c0de2682:	9000      	str	r0, [sp, #0]
c0de2684:	ae25      	add	r6, sp, #148	@ 0x94
c0de2686:	4630      	mov	r0, r6
c0de2688:	f001 fb44 	bl	c0de3d14 <zkn_mul_mont_384>
c0de268c:	ad01      	add	r5, sp, #4
c0de268e:	4f0e      	ldr	r7, [pc, #56]	@ (c0de26c8 <zkn_g1_384_on_curve+0xb0>)
c0de2690:	4631      	mov	r1, r6
c0de2692:	4632      	mov	r2, r6
c0de2694:	4623      	mov	r3, r4
c0de2696:	4628      	mov	r0, r5
c0de2698:	447f      	add	r7, pc
c0de269a:	47b8      	blx	r7
c0de269c:	ae19      	add	r6, sp, #100	@ 0x64
c0de269e:	4629      	mov	r1, r5
c0de26a0:	462a      	mov	r2, r5
c0de26a2:	4623      	mov	r3, r4
c0de26a4:	4630      	mov	r0, r6
c0de26a6:	47b8      	blx	r7
c0de26a8:	ad0d      	add	r5, sp, #52	@ 0x34
c0de26aa:	4651      	mov	r1, sl
c0de26ac:	4632      	mov	r2, r6
c0de26ae:	4623      	mov	r3, r4
c0de26b0:	4628      	mov	r0, r5
c0de26b2:	47b8      	blx	r7
c0de26b4:	4640      	mov	r0, r8
c0de26b6:	4629      	mov	r1, r5
c0de26b8:	f001 fa79 	bl	c0de3bae <zkn_fe384_eq>
c0de26bc:	b06d      	add	sp, #436	@ 0x1b4
c0de26be:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de26c2:	bf00      	nop
c0de26c4:	00001a15 	.word	0x00001a15
c0de26c8:	000019c9 	.word	0x000019c9

c0de26cc <zkn_g1_384_neg>:
c0de26cc:	b570      	push	{r4, r5, r6, lr}
c0de26ce:	4614      	mov	r4, r2
c0de26d0:	2230      	movs	r2, #48	@ 0x30
c0de26d2:	460d      	mov	r5, r1
c0de26d4:	4606      	mov	r6, r0
c0de26d6:	f006 f911 	bl	c0de88fc <__aeabi_memcpy>
c0de26da:	f106 0030 	add.w	r0, r6, #48	@ 0x30
c0de26de:	f105 0130 	add.w	r1, r5, #48	@ 0x30
c0de26e2:	4622      	mov	r2, r4
c0de26e4:	f001 fa79 	bl	c0de3bda <zkn_neg_mod_384>
c0de26e8:	f106 0060 	add.w	r0, r6, #96	@ 0x60
c0de26ec:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de26f0:	2230      	movs	r2, #48	@ 0x30
c0de26f2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de26f6:	f006 b901 	b.w	c0de88fc <__aeabi_memcpy>
	...

c0de26fc <zkn_g1_384_dbl>:
c0de26fc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2700:	b0c0      	sub	sp, #256	@ 0x100
c0de2702:	4683      	mov	fp, r0
c0de2704:	4608      	mov	r0, r1
c0de2706:	4614      	mov	r4, r2
c0de2708:	460e      	mov	r6, r1
c0de270a:	f7ff ff01 	bl	c0de2510 <zkn_g1_384_is_zero>
c0de270e:	b128      	cbz	r0, c0de271c <zkn_g1_384_dbl+0x20>
c0de2710:	4658      	mov	r0, fp
c0de2712:	b040      	add	sp, #256	@ 0x100
c0de2714:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2718:	f7ff bee8 	b.w	c0de24ec <zkn_g1_384_zero>
c0de271c:	f106 0130 	add.w	r1, r6, #48	@ 0x30
c0de2720:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de2722:	f10d 08d0 	add.w	r8, sp, #208	@ 0xd0
c0de2726:	4622      	mov	r2, r4
c0de2728:	9102      	str	r1, [sp, #8]
c0de272a:	4640      	mov	r0, r8
c0de272c:	4d3c      	ldr	r5, [pc, #240]	@ (c0de2820 <zkn_g1_384_dbl+0x124>)
c0de272e:	447d      	add	r5, pc
c0de2730:	47a8      	blx	r5
c0de2732:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de2734:	46aa      	mov	sl, r5
c0de2736:	4631      	mov	r1, r6
c0de2738:	4642      	mov	r2, r8
c0de273a:	4623      	mov	r3, r4
c0de273c:	9000      	str	r0, [sp, #0]
c0de273e:	ad28      	add	r5, sp, #160	@ 0xa0
c0de2740:	4f38      	ldr	r7, [pc, #224]	@ (c0de2824 <zkn_g1_384_dbl+0x128>)
c0de2742:	4628      	mov	r0, r5
c0de2744:	447f      	add	r7, pc
c0de2746:	9703      	str	r7, [sp, #12]
c0de2748:	47b8      	blx	r7
c0de274a:	4f37      	ldr	r7, [pc, #220]	@ (c0de2828 <zkn_g1_384_dbl+0x12c>)
c0de274c:	4628      	mov	r0, r5
c0de274e:	4629      	mov	r1, r5
c0de2750:	462a      	mov	r2, r5
c0de2752:	4623      	mov	r3, r4
c0de2754:	447f      	add	r7, pc
c0de2756:	47b8      	blx	r7
c0de2758:	4628      	mov	r0, r5
c0de275a:	4629      	mov	r1, r5
c0de275c:	462a      	mov	r2, r5
c0de275e:	4623      	mov	r3, r4
c0de2760:	47b8      	blx	r7
c0de2762:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de2764:	f10d 0870 	add.w	r8, sp, #112	@ 0x70
c0de2768:	a934      	add	r1, sp, #208	@ 0xd0
c0de276a:	4622      	mov	r2, r4
c0de276c:	f8cd a004 	str.w	sl, [sp, #4]
c0de2770:	4640      	mov	r0, r8
c0de2772:	47d0      	blx	sl
c0de2774:	f000 f97c 	bl	c0de2a70 <OUTLINED_FUNCTION_0>
c0de2778:	f000 f97a 	bl	c0de2a70 <OUTLINED_FUNCTION_0>
c0de277c:	f000 f978 	bl	c0de2a70 <OUTLINED_FUNCTION_0>
c0de2780:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de2782:	ad10      	add	r5, sp, #64	@ 0x40
c0de2784:	4631      	mov	r1, r6
c0de2786:	4622      	mov	r2, r4
c0de2788:	4628      	mov	r0, r5
c0de278a:	47d0      	blx	sl
c0de278c:	f10d 0a10 	add.w	sl, sp, #16
c0de2790:	4629      	mov	r1, r5
c0de2792:	462a      	mov	r2, r5
c0de2794:	4623      	mov	r3, r4
c0de2796:	4650      	mov	r0, sl
c0de2798:	47b8      	blx	r7
c0de279a:	4628      	mov	r0, r5
c0de279c:	4651      	mov	r1, sl
c0de279e:	462a      	mov	r2, r5
c0de27a0:	4623      	mov	r3, r4
c0de27a2:	47b8      	blx	r7
c0de27a4:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de27a6:	f10b 0a60 	add.w	sl, fp, #96	@ 0x60
c0de27aa:	f106 0260 	add.w	r2, r6, #96	@ 0x60
c0de27ae:	4623      	mov	r3, r4
c0de27b0:	9000      	str	r0, [sp, #0]
c0de27b2:	4650      	mov	r0, sl
c0de27b4:	9902      	ldr	r1, [sp, #8]
c0de27b6:	9d03      	ldr	r5, [sp, #12]
c0de27b8:	47a8      	blx	r5
c0de27ba:	4650      	mov	r0, sl
c0de27bc:	4651      	mov	r1, sl
c0de27be:	4652      	mov	r2, sl
c0de27c0:	4623      	mov	r3, r4
c0de27c2:	47b8      	blx	r7
c0de27c4:	f10d 0a40 	add.w	sl, sp, #64	@ 0x40
c0de27c8:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de27ca:	9d01      	ldr	r5, [sp, #4]
c0de27cc:	4658      	mov	r0, fp
c0de27ce:	4622      	mov	r2, r4
c0de27d0:	4651      	mov	r1, sl
c0de27d2:	47a8      	blx	r5
c0de27d4:	4e15      	ldr	r6, [pc, #84]	@ (c0de282c <zkn_g1_384_dbl+0x130>)
c0de27d6:	ad28      	add	r5, sp, #160	@ 0xa0
c0de27d8:	4658      	mov	r0, fp
c0de27da:	4659      	mov	r1, fp
c0de27dc:	4623      	mov	r3, r4
c0de27de:	462a      	mov	r2, r5
c0de27e0:	447e      	add	r6, pc
c0de27e2:	47b0      	blx	r6
c0de27e4:	4658      	mov	r0, fp
c0de27e6:	4659      	mov	r1, fp
c0de27e8:	462a      	mov	r2, r5
c0de27ea:	4623      	mov	r3, r4
c0de27ec:	47b0      	blx	r6
c0de27ee:	af04      	add	r7, sp, #16
c0de27f0:	4629      	mov	r1, r5
c0de27f2:	465a      	mov	r2, fp
c0de27f4:	4623      	mov	r3, r4
c0de27f6:	4638      	mov	r0, r7
c0de27f8:	47b0      	blx	r6
c0de27fa:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de27fc:	f10b 0530 	add.w	r5, fp, #48	@ 0x30
c0de2800:	463a      	mov	r2, r7
c0de2802:	4651      	mov	r1, sl
c0de2804:	4623      	mov	r3, r4
c0de2806:	9000      	str	r0, [sp, #0]
c0de2808:	4628      	mov	r0, r5
c0de280a:	9f03      	ldr	r7, [sp, #12]
c0de280c:	47b8      	blx	r7
c0de280e:	4628      	mov	r0, r5
c0de2810:	4629      	mov	r1, r5
c0de2812:	4642      	mov	r2, r8
c0de2814:	4623      	mov	r3, r4
c0de2816:	47b0      	blx	r6
c0de2818:	b040      	add	sp, #256	@ 0x100
c0de281a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de281e:	bf00      	nop
c0de2820:	00001923 	.word	0x00001923
c0de2824:	000015cd 	.word	0x000015cd
c0de2828:	0000190d 	.word	0x0000190d
c0de282c:	00001975 	.word	0x00001975

c0de2830 <zkn_g1_384_add>:
c0de2830:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2834:	f5ad 7d38 	sub.w	sp, sp, #736	@ 0x2e0
c0de2838:	4680      	mov	r8, r0
c0de283a:	4608      	mov	r0, r1
c0de283c:	461c      	mov	r4, r3
c0de283e:	4617      	mov	r7, r2
c0de2840:	460e      	mov	r6, r1
c0de2842:	f7ff fe65 	bl	c0de2510 <zkn_g1_384_is_zero>
c0de2846:	b110      	cbz	r0, c0de284e <zkn_g1_384_add+0x1e>
c0de2848:	4640      	mov	r0, r8
c0de284a:	4639      	mov	r1, r7
c0de284c:	e005      	b.n	c0de285a <zkn_g1_384_add+0x2a>
c0de284e:	4638      	mov	r0, r7
c0de2850:	f7ff fe5e 	bl	c0de2510 <zkn_g1_384_is_zero>
c0de2854:	b138      	cbz	r0, c0de2866 <zkn_g1_384_add+0x36>
c0de2856:	4640      	mov	r0, r8
c0de2858:	4631      	mov	r1, r6
c0de285a:	f000 f916 	bl	c0de2a8a <OUTLINED_FUNCTION_3>
c0de285e:	f50d 7d38 	add.w	sp, sp, #736	@ 0x2e0
c0de2862:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2866:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de2868:	f106 0b60 	add.w	fp, r6, #96	@ 0x60
c0de286c:	a8ac      	add	r0, sp, #688	@ 0x2b0
c0de286e:	4622      	mov	r2, r4
c0de2870:	4659      	mov	r1, fp
c0de2872:	f001 fbef 	bl	c0de4054 <zkn_sqr_mont_384>
c0de2876:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de2878:	f107 0a60 	add.w	sl, r7, #96	@ 0x60
c0de287c:	a8a0      	add	r0, sp, #640	@ 0x280
c0de287e:	4622      	mov	r2, r4
c0de2880:	4651      	mov	r1, sl
c0de2882:	f001 fbe7 	bl	c0de4054 <zkn_sqr_mont_384>
c0de2886:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de2888:	f000 f8fb 	bl	c0de2a82 <OUTLINED_FUNCTION_2>
c0de288c:	a894      	add	r0, sp, #592	@ 0x250
c0de288e:	4d56      	ldr	r5, [pc, #344]	@ (c0de29e8 <zkn_g1_384_add+0x1b8>)
c0de2890:	a9ac      	add	r1, sp, #688	@ 0x2b0
c0de2892:	f8cd b00c 	str.w	fp, [sp, #12]
c0de2896:	447d      	add	r5, pc
c0de2898:	47a8      	blx	r5
c0de289a:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de289c:	f50d 7b20 	add.w	fp, sp, #640	@ 0x280
c0de28a0:	4652      	mov	r2, sl
c0de28a2:	4623      	mov	r3, r4
c0de28a4:	4659      	mov	r1, fp
c0de28a6:	9000      	str	r0, [sp, #0]
c0de28a8:	a888      	add	r0, sp, #544	@ 0x220
c0de28aa:	f8cd a008 	str.w	sl, [sp, #8]
c0de28ae:	47a8      	blx	r5
c0de28b0:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de28b2:	4631      	mov	r1, r6
c0de28b4:	f000 f8e5 	bl	c0de2a82 <OUTLINED_FUNCTION_2>
c0de28b8:	a87c      	add	r0, sp, #496	@ 0x1f0
c0de28ba:	47a8      	blx	r5
c0de28bc:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de28be:	4639      	mov	r1, r7
c0de28c0:	4623      	mov	r3, r4
c0de28c2:	9000      	str	r0, [sp, #0]
c0de28c4:	a870      	add	r0, sp, #448	@ 0x1c0
c0de28c6:	aaac      	add	r2, sp, #688	@ 0x2b0
c0de28c8:	47a8      	blx	r5
c0de28ca:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de28cc:	f50d 7bc8 	add.w	fp, sp, #400	@ 0x190
c0de28d0:	f106 0130 	add.w	r1, r6, #48	@ 0x30
c0de28d4:	f000 f8d1 	bl	c0de2a7a <OUTLINED_FUNCTION_1>
c0de28d8:	aa88      	add	r2, sp, #544	@ 0x220
c0de28da:	47a8      	blx	r5
c0de28dc:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de28de:	f107 0130 	add.w	r1, r7, #48	@ 0x30
c0de28e2:	4623      	mov	r3, r4
c0de28e4:	9000      	str	r0, [sp, #0]
c0de28e6:	af58      	add	r7, sp, #352	@ 0x160
c0de28e8:	aa94      	add	r2, sp, #592	@ 0x250
c0de28ea:	9501      	str	r5, [sp, #4]
c0de28ec:	4638      	mov	r0, r7
c0de28ee:	47a8      	blx	r5
c0de28f0:	f50d 7a98 	add.w	sl, sp, #304	@ 0x130
c0de28f4:	a970      	add	r1, sp, #448	@ 0x1c0
c0de28f6:	aa7c      	add	r2, sp, #496	@ 0x1f0
c0de28f8:	4623      	mov	r3, r4
c0de28fa:	4650      	mov	r0, sl
c0de28fc:	f001 fc2c 	bl	c0de4158 <zkn_sub_mod_384>
c0de2900:	a840      	add	r0, sp, #256	@ 0x100
c0de2902:	4639      	mov	r1, r7
c0de2904:	465a      	mov	r2, fp
c0de2906:	4623      	mov	r3, r4
c0de2908:	f001 fc26 	bl	c0de4158 <zkn_sub_mod_384>
c0de290c:	af34      	add	r7, sp, #208	@ 0xd0
c0de290e:	2130      	movs	r1, #48	@ 0x30
c0de2910:	4638      	mov	r0, r7
c0de2912:	f005 fffd 	bl	c0de8910 <__aeabi_memclr>
c0de2916:	4650      	mov	r0, sl
c0de2918:	4639      	mov	r1, r7
c0de291a:	f001 f948 	bl	c0de3bae <zkn_fe384_eq>
c0de291e:	b158      	cbz	r0, c0de2938 <zkn_g1_384_add+0x108>
c0de2920:	a840      	add	r0, sp, #256	@ 0x100
c0de2922:	a934      	add	r1, sp, #208	@ 0xd0
c0de2924:	f001 f943 	bl	c0de3bae <zkn_fe384_eq>
c0de2928:	2800      	cmp	r0, #0
c0de292a:	d058      	beq.n	c0de29de <zkn_g1_384_add+0x1ae>
c0de292c:	4640      	mov	r0, r8
c0de292e:	4631      	mov	r1, r6
c0de2930:	4622      	mov	r2, r4
c0de2932:	f7ff fee3 	bl	c0de26fc <zkn_g1_384_dbl>
c0de2936:	e792      	b.n	c0de285e <zkn_g1_384_add+0x2e>
c0de2938:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de293a:	ae28      	add	r6, sp, #160	@ 0xa0
c0de293c:	ad4c      	add	r5, sp, #304	@ 0x130
c0de293e:	f000 f8a7 	bl	c0de2a90 <OUTLINED_FUNCTION_4>
c0de2942:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de2944:	f10d 0b70 	add.w	fp, sp, #112	@ 0x70
c0de2948:	f8dd a004 	ldr.w	sl, [sp, #4]
c0de294c:	4631      	mov	r1, r6
c0de294e:	462a      	mov	r2, r5
c0de2950:	f000 f893 	bl	c0de2a7a <OUTLINED_FUNCTION_1>
c0de2954:	47d0      	blx	sl
c0de2956:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de2958:	4632      	mov	r2, r6
c0de295a:	4623      	mov	r3, r4
c0de295c:	9000      	str	r0, [sp, #0]
c0de295e:	af10      	add	r7, sp, #64	@ 0x40
c0de2960:	a97c      	add	r1, sp, #496	@ 0x1f0
c0de2962:	4638      	mov	r0, r7
c0de2964:	47d0      	blx	sl
c0de2966:	6b23      	ldr	r3, [r4, #48]	@ 0x30
c0de2968:	a940      	add	r1, sp, #256	@ 0x100
c0de296a:	4640      	mov	r0, r8
c0de296c:	4622      	mov	r2, r4
c0de296e:	f001 fb71 	bl	c0de4054 <zkn_sqr_mont_384>
c0de2972:	4e1e      	ldr	r6, [pc, #120]	@ (c0de29ec <zkn_g1_384_add+0x1bc>)
c0de2974:	4640      	mov	r0, r8
c0de2976:	4641      	mov	r1, r8
c0de2978:	465a      	mov	r2, fp
c0de297a:	4623      	mov	r3, r4
c0de297c:	447e      	add	r6, pc
c0de297e:	47b0      	blx	r6
c0de2980:	f000 f88b 	bl	c0de2a9a <OUTLINED_FUNCTION_5>
c0de2984:	f000 f889 	bl	c0de2a9a <OUTLINED_FUNCTION_5>
c0de2988:	ad04      	add	r5, sp, #16
c0de298a:	4639      	mov	r1, r7
c0de298c:	4642      	mov	r2, r8
c0de298e:	4623      	mov	r3, r4
c0de2990:	4628      	mov	r0, r5
c0de2992:	47b0      	blx	r6
c0de2994:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de2996:	f108 0730 	add.w	r7, r8, #48	@ 0x30
c0de299a:	462a      	mov	r2, r5
c0de299c:	4623      	mov	r3, r4
c0de299e:	9000      	str	r0, [sp, #0]
c0de29a0:	4638      	mov	r0, r7
c0de29a2:	a940      	add	r1, sp, #256	@ 0x100
c0de29a4:	47d0      	blx	sl
c0de29a6:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de29a8:	f000 f86b 	bl	c0de2a82 <OUTLINED_FUNCTION_2>
c0de29ac:	a964      	add	r1, sp, #400	@ 0x190
c0de29ae:	4628      	mov	r0, r5
c0de29b0:	47d0      	blx	sl
c0de29b2:	4638      	mov	r0, r7
c0de29b4:	4639      	mov	r1, r7
c0de29b6:	462a      	mov	r2, r5
c0de29b8:	4623      	mov	r3, r4
c0de29ba:	47b0      	blx	r6
c0de29bc:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de29be:	f108 0560 	add.w	r5, r8, #96	@ 0x60
c0de29c2:	4623      	mov	r3, r4
c0de29c4:	9000      	str	r0, [sp, #0]
c0de29c6:	a94c      	add	r1, sp, #304	@ 0x130
c0de29c8:	9a03      	ldr	r2, [sp, #12]
c0de29ca:	4628      	mov	r0, r5
c0de29cc:	47d0      	blx	sl
c0de29ce:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de29d0:	9a02      	ldr	r2, [sp, #8]
c0de29d2:	4629      	mov	r1, r5
c0de29d4:	4623      	mov	r3, r4
c0de29d6:	9000      	str	r0, [sp, #0]
c0de29d8:	4628      	mov	r0, r5
c0de29da:	47d0      	blx	sl
c0de29dc:	e73f      	b.n	c0de285e <zkn_g1_384_add+0x2e>
c0de29de:	4640      	mov	r0, r8
c0de29e0:	f7ff fd84 	bl	c0de24ec <zkn_g1_384_zero>
c0de29e4:	e73b      	b.n	c0de285e <zkn_g1_384_add+0x2e>
c0de29e6:	bf00      	nop
c0de29e8:	0000147b 	.word	0x0000147b
c0de29ec:	000017d9 	.word	0x000017d9

c0de29f0 <zkn_g1_384_mul>:
c0de29f0:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de29f4:	e9cd 2300 	strd	r2, r3, [sp]
c0de29f8:	460e      	mov	r6, r1
c0de29fa:	4607      	mov	r7, r0
c0de29fc:	f7ff fd76 	bl	c0de24ec <zkn_g1_384_zero>
c0de2a00:	9d0a      	ldr	r5, [sp, #40]	@ 0x28
c0de2a02:	f04f 0b00 	mov.w	fp, #0
c0de2a06:	f04f 0a00 	mov.w	sl, #0
c0de2a0a:	9801      	ldr	r0, [sp, #4]
c0de2a0c:	4583      	cmp	fp, r0
c0de2a0e:	bfa8      	it	ge
c0de2a10:	e8bd 8dfc 	ldmiage.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de2a14:	9800      	ldr	r0, [sp, #0]
c0de2a16:	f04f 0807 	mov.w	r8, #7
c0de2a1a:	f810 400b 	ldrb.w	r4, [r0, fp]
c0de2a1e:	f1b8 3fff 	cmp.w	r8, #4294967295	@ 0xffffffff
c0de2a22:	dd22      	ble.n	c0de2a6a <zkn_g1_384_mul+0x7a>
c0de2a24:	f1ba 0f00 	cmp.w	sl, #0
c0de2a28:	d00f      	beq.n	c0de2a4a <zkn_g1_384_mul+0x5a>
c0de2a2a:	4638      	mov	r0, r7
c0de2a2c:	4639      	mov	r1, r7
c0de2a2e:	462a      	mov	r2, r5
c0de2a30:	f7ff fe64 	bl	c0de26fc <zkn_g1_384_dbl>
c0de2a34:	fa24 f008 	lsr.w	r0, r4, r8
c0de2a38:	07c0      	lsls	r0, r0, #31
c0de2a3a:	d010      	beq.n	c0de2a5e <zkn_g1_384_mul+0x6e>
c0de2a3c:	4638      	mov	r0, r7
c0de2a3e:	4639      	mov	r1, r7
c0de2a40:	4632      	mov	r2, r6
c0de2a42:	462b      	mov	r3, r5
c0de2a44:	f7ff fef4 	bl	c0de2830 <zkn_g1_384_add>
c0de2a48:	e007      	b.n	c0de2a5a <zkn_g1_384_mul+0x6a>
c0de2a4a:	fa24 f008 	lsr.w	r0, r4, r8
c0de2a4e:	07c0      	lsls	r0, r0, #31
c0de2a50:	d008      	beq.n	c0de2a64 <zkn_g1_384_mul+0x74>
c0de2a52:	4638      	mov	r0, r7
c0de2a54:	4631      	mov	r1, r6
c0de2a56:	f000 f818 	bl	c0de2a8a <OUTLINED_FUNCTION_3>
c0de2a5a:	f04f 0a01 	mov.w	sl, #1
c0de2a5e:	f1a8 0801 	sub.w	r8, r8, #1
c0de2a62:	e7dc      	b.n	c0de2a1e <zkn_g1_384_mul+0x2e>
c0de2a64:	f04f 0a00 	mov.w	sl, #0
c0de2a68:	e7f9      	b.n	c0de2a5e <zkn_g1_384_mul+0x6e>
c0de2a6a:	f10b 0b01 	add.w	fp, fp, #1
c0de2a6e:	e7cc      	b.n	c0de2a0a <zkn_g1_384_mul+0x1a>

c0de2a70 <OUTLINED_FUNCTION_0>:
c0de2a70:	4640      	mov	r0, r8
c0de2a72:	4641      	mov	r1, r8
c0de2a74:	4642      	mov	r2, r8
c0de2a76:	4623      	mov	r3, r4
c0de2a78:	4738      	bx	r7

c0de2a7a <OUTLINED_FUNCTION_1>:
c0de2a7a:	4623      	mov	r3, r4
c0de2a7c:	9000      	str	r0, [sp, #0]
c0de2a7e:	4658      	mov	r0, fp
c0de2a80:	4770      	bx	lr

c0de2a82 <OUTLINED_FUNCTION_2>:
c0de2a82:	465a      	mov	r2, fp
c0de2a84:	4623      	mov	r3, r4
c0de2a86:	9000      	str	r0, [sp, #0]
c0de2a88:	4770      	bx	lr

c0de2a8a <OUTLINED_FUNCTION_3>:
c0de2a8a:	2290      	movs	r2, #144	@ 0x90
c0de2a8c:	f005 bf36 	b.w	c0de88fc <__aeabi_memcpy>

c0de2a90 <OUTLINED_FUNCTION_4>:
c0de2a90:	4622      	mov	r2, r4
c0de2a92:	4630      	mov	r0, r6
c0de2a94:	4629      	mov	r1, r5
c0de2a96:	f001 badd 	b.w	c0de4054 <zkn_sqr_mont_384>

c0de2a9a <OUTLINED_FUNCTION_5>:
c0de2a9a:	4640      	mov	r0, r8
c0de2a9c:	4641      	mov	r1, r8
c0de2a9e:	463a      	mov	r2, r7
c0de2aa0:	4623      	mov	r3, r4
c0de2aa2:	4730      	bx	r6

c0de2aa4 <zkn_g2_384_zero>:
c0de2aa4:	b5b0      	push	{r4, r5, r7, lr}
c0de2aa6:	4d07      	ldr	r5, [pc, #28]	@ (c0de2ac4 <zkn_g2_384_zero+0x20>)
c0de2aa8:	4604      	mov	r4, r0
c0de2aaa:	447d      	add	r5, pc
c0de2aac:	47a8      	blx	r5
c0de2aae:	f104 0060 	add.w	r0, r4, #96	@ 0x60
c0de2ab2:	47a8      	blx	r5
c0de2ab4:	2001      	movs	r0, #1
c0de2ab6:	4629      	mov	r1, r5
c0de2ab8:	6620      	str	r0, [r4, #96]	@ 0x60
c0de2aba:	f104 00c0 	add.w	r0, r4, #192	@ 0xc0
c0de2abe:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2ac2:	4708      	bx	r1
c0de2ac4:	fffff0bf 	.word	0xfffff0bf

c0de2ac8 <zkn_g2_384_is_zero>:
c0de2ac8:	30c0      	adds	r0, #192	@ 0xc0
c0de2aca:	f000 b800 	b.w	c0de2ace <fp2_is_zero>

c0de2ace <fp2_is_zero>:
c0de2ace:	b570      	push	{r4, r5, r6, lr}
c0de2ad0:	b08c      	sub	sp, #48	@ 0x30
c0de2ad2:	466d      	mov	r5, sp
c0de2ad4:	4604      	mov	r4, r0
c0de2ad6:	2130      	movs	r1, #48	@ 0x30
c0de2ad8:	4628      	mov	r0, r5
c0de2ada:	f005 ff19 	bl	c0de8910 <__aeabi_memclr>
c0de2ade:	4620      	mov	r0, r4
c0de2ae0:	4629      	mov	r1, r5
c0de2ae2:	f001 f864 	bl	c0de3bae <zkn_fe384_eq>
c0de2ae6:	4606      	mov	r6, r0
c0de2ae8:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de2aec:	4629      	mov	r1, r5
c0de2aee:	f001 f85e 	bl	c0de3bae <zkn_fe384_eq>
c0de2af2:	4030      	ands	r0, r6
c0de2af4:	b00c      	add	sp, #48	@ 0x30
c0de2af6:	bd70      	pop	{r4, r5, r6, pc}

c0de2af8 <zkn_g2_384_generator>:
c0de2af8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2afc:	b0b0      	sub	sp, #192	@ 0xc0
c0de2afe:	4688      	mov	r8, r1
c0de2b00:	ae18      	add	r6, sp, #96	@ 0x60
c0de2b02:	490f      	ldr	r1, [pc, #60]	@ (c0de2b40 <zkn_g2_384_generator+0x48>)
c0de2b04:	4c0f      	ldr	r4, [pc, #60]	@ (c0de2b44 <zkn_g2_384_generator+0x4c>)
c0de2b06:	4605      	mov	r5, r0
c0de2b08:	4630      	mov	r0, r6
c0de2b0a:	4479      	add	r1, pc
c0de2b0c:	447c      	add	r4, pc
c0de2b0e:	47a0      	blx	r4
c0de2b10:	490d      	ldr	r1, [pc, #52]	@ (c0de2b48 <zkn_g2_384_generator+0x50>)
c0de2b12:	f106 0030 	add.w	r0, r6, #48	@ 0x30
c0de2b16:	4479      	add	r1, pc
c0de2b18:	47a0      	blx	r4
c0de2b1a:	490c      	ldr	r1, [pc, #48]	@ (c0de2b4c <zkn_g2_384_generator+0x54>)
c0de2b1c:	466f      	mov	r7, sp
c0de2b1e:	4638      	mov	r0, r7
c0de2b20:	4479      	add	r1, pc
c0de2b22:	47a0      	blx	r4
c0de2b24:	490a      	ldr	r1, [pc, #40]	@ (c0de2b50 <zkn_g2_384_generator+0x58>)
c0de2b26:	f107 0030 	add.w	r0, r7, #48	@ 0x30
c0de2b2a:	4479      	add	r1, pc
c0de2b2c:	47a0      	blx	r4
c0de2b2e:	4628      	mov	r0, r5
c0de2b30:	4631      	mov	r1, r6
c0de2b32:	463a      	mov	r2, r7
c0de2b34:	4643      	mov	r3, r8
c0de2b36:	f000 f80d 	bl	c0de2b54 <zkn_g2_384_from_affine>
c0de2b3a:	b030      	add	sp, #192	@ 0xc0
c0de2b3c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2b40:	00006496 	.word	0x00006496
c0de2b44:	00001043 	.word	0x00001043
c0de2b48:	000064ba 	.word	0x000064ba
c0de2b4c:	000064e0 	.word	0x000064e0
c0de2b50:	00006506 	.word	0x00006506

c0de2b54 <zkn_g2_384_from_affine>:
c0de2b54:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2b58:	4e0f      	ldr	r6, [pc, #60]	@ (c0de2b98 <zkn_g2_384_from_affine+0x44>)
c0de2b5a:	4690      	mov	r8, r2
c0de2b5c:	461a      	mov	r2, r3
c0de2b5e:	461c      	mov	r4, r3
c0de2b60:	460f      	mov	r7, r1
c0de2b62:	4605      	mov	r5, r0
c0de2b64:	447e      	add	r6, pc
c0de2b66:	47b0      	blx	r6
c0de2b68:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de2b6c:	f107 0130 	add.w	r1, r7, #48	@ 0x30
c0de2b70:	4622      	mov	r2, r4
c0de2b72:	47b0      	blx	r6
c0de2b74:	f105 0060 	add.w	r0, r5, #96	@ 0x60
c0de2b78:	4641      	mov	r1, r8
c0de2b7a:	4622      	mov	r2, r4
c0de2b7c:	47b0      	blx	r6
c0de2b7e:	f105 0090 	add.w	r0, r5, #144	@ 0x90
c0de2b82:	f108 0130 	add.w	r1, r8, #48	@ 0x30
c0de2b86:	4622      	mov	r2, r4
c0de2b88:	47b0      	blx	r6
c0de2b8a:	f105 00c0 	add.w	r0, r5, #192	@ 0xc0
c0de2b8e:	4621      	mov	r1, r4
c0de2b90:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2b94:	f7fe bff4 	b.w	c0de1b80 <zkn_fp2_384_one>
c0de2b98:	00000fd9 	.word	0x00000fd9

c0de2b9c <zkn_g2_384_to_affine>:
c0de2b9c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2ba0:	b0ca      	sub	sp, #296	@ 0x128
c0de2ba2:	f10d 08c8 	add.w	r8, sp, #200	@ 0xc8
c0de2ba6:	9101      	str	r1, [sp, #4]
c0de2ba8:	4682      	mov	sl, r0
c0de2baa:	4616      	mov	r6, r2
c0de2bac:	f102 01c0 	add.w	r1, r2, #192	@ 0xc0
c0de2bb0:	461a      	mov	r2, r3
c0de2bb2:	461c      	mov	r4, r3
c0de2bb4:	4640      	mov	r0, r8
c0de2bb6:	f7ff f8ce 	bl	c0de1d56 <zkn_fp2_384_inv>
c0de2bba:	af1a      	add	r7, sp, #104	@ 0x68
c0de2bbc:	4641      	mov	r1, r8
c0de2bbe:	4622      	mov	r2, r4
c0de2bc0:	4638      	mov	r0, r7
c0de2bc2:	f7ff f881 	bl	c0de1cc8 <zkn_fp2_384_sqr>
c0de2bc6:	4d0b      	ldr	r5, [pc, #44]	@ (c0de2bf4 <zkn_g2_384_to_affine+0x58>)
c0de2bc8:	f10d 0b08 	add.w	fp, sp, #8
c0de2bcc:	4639      	mov	r1, r7
c0de2bce:	4642      	mov	r2, r8
c0de2bd0:	4623      	mov	r3, r4
c0de2bd2:	4658      	mov	r0, fp
c0de2bd4:	447d      	add	r5, pc
c0de2bd6:	47a8      	blx	r5
c0de2bd8:	4650      	mov	r0, sl
c0de2bda:	4631      	mov	r1, r6
c0de2bdc:	463a      	mov	r2, r7
c0de2bde:	4623      	mov	r3, r4
c0de2be0:	47a8      	blx	r5
c0de2be2:	9801      	ldr	r0, [sp, #4]
c0de2be4:	f106 0160 	add.w	r1, r6, #96	@ 0x60
c0de2be8:	465a      	mov	r2, fp
c0de2bea:	4623      	mov	r3, r4
c0de2bec:	47a8      	blx	r5
c0de2bee:	b04a      	add	sp, #296	@ 0x128
c0de2bf0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2bf4:	fffff05d 	.word	0xfffff05d

c0de2bf8 <zkn_g2_384_on_curve>:
c0de2bf8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2bfc:	f5ad 7d58 	sub.w	sp, sp, #864	@ 0x360
c0de2c00:	f100 07c0 	add.w	r7, r0, #192	@ 0xc0
c0de2c04:	4605      	mov	r5, r0
c0de2c06:	460c      	mov	r4, r1
c0de2c08:	4638      	mov	r0, r7
c0de2c0a:	f7ff ff60 	bl	c0de2ace <fp2_is_zero>
c0de2c0e:	b108      	cbz	r0, c0de2c14 <zkn_g2_384_on_curve+0x1c>
c0de2c10:	2001      	movs	r0, #1
c0de2c12:	e044      	b.n	c0de2c9e <zkn_g2_384_on_curve+0xa6>
c0de2c14:	4e24      	ldr	r6, [pc, #144]	@ (c0de2ca8 <zkn_g2_384_on_curve+0xb0>)
c0de2c16:	f50d 7840 	add.w	r8, sp, #768	@ 0x300
c0de2c1a:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de2c1e:	4622      	mov	r2, r4
c0de2c20:	4640      	mov	r0, r8
c0de2c22:	447e      	add	r6, pc
c0de2c24:	47b0      	blx	r6
c0de2c26:	f50d 7b28 	add.w	fp, sp, #672	@ 0x2a0
c0de2c2a:	4629      	mov	r1, r5
c0de2c2c:	4622      	mov	r2, r4
c0de2c2e:	4658      	mov	r0, fp
c0de2c30:	47b0      	blx	r6
c0de2c32:	f50d 7a10 	add.w	sl, sp, #576	@ 0x240
c0de2c36:	4659      	mov	r1, fp
c0de2c38:	462a      	mov	r2, r5
c0de2c3a:	4623      	mov	r3, r4
c0de2c3c:	4650      	mov	r0, sl
c0de2c3e:	f7fe fff9 	bl	c0de1c34 <zkn_fp2_384_mul>
c0de2c42:	ad78      	add	r5, sp, #480	@ 0x1e0
c0de2c44:	4639      	mov	r1, r7
c0de2c46:	4622      	mov	r2, r4
c0de2c48:	4628      	mov	r0, r5
c0de2c4a:	47b0      	blx	r6
c0de2c4c:	af60      	add	r7, sp, #384	@ 0x180
c0de2c4e:	4629      	mov	r1, r5
c0de2c50:	4622      	mov	r2, r4
c0de2c52:	4638      	mov	r0, r7
c0de2c54:	47b0      	blx	r6
c0de2c56:	ae48      	add	r6, sp, #288	@ 0x120
c0de2c58:	4639      	mov	r1, r7
c0de2c5a:	462a      	mov	r2, r5
c0de2c5c:	4623      	mov	r3, r4
c0de2c5e:	4630      	mov	r0, r6
c0de2c60:	f7fe ffe8 	bl	c0de1c34 <zkn_fp2_384_mul>
c0de2c64:	ad30      	add	r5, sp, #192	@ 0xc0
c0de2c66:	4631      	mov	r1, r6
c0de2c68:	4622      	mov	r2, r4
c0de2c6a:	4628      	mov	r0, r5
c0de2c6c:	f7ff f89c 	bl	c0de1da8 <zkn_fp2_384_mul_by_xi>
c0de2c70:	4f0e      	ldr	r7, [pc, #56]	@ (c0de2cac <zkn_g2_384_on_curve+0xb4>)
c0de2c72:	466e      	mov	r6, sp
c0de2c74:	4629      	mov	r1, r5
c0de2c76:	462a      	mov	r2, r5
c0de2c78:	4623      	mov	r3, r4
c0de2c7a:	4630      	mov	r0, r6
c0de2c7c:	447f      	add	r7, pc
c0de2c7e:	47b8      	blx	r7
c0de2c80:	4628      	mov	r0, r5
c0de2c82:	4631      	mov	r1, r6
c0de2c84:	4632      	mov	r2, r6
c0de2c86:	4623      	mov	r3, r4
c0de2c88:	47b8      	blx	r7
c0de2c8a:	ae18      	add	r6, sp, #96	@ 0x60
c0de2c8c:	4651      	mov	r1, sl
c0de2c8e:	462a      	mov	r2, r5
c0de2c90:	4623      	mov	r3, r4
c0de2c92:	4630      	mov	r0, r6
c0de2c94:	47b8      	blx	r7
c0de2c96:	4640      	mov	r0, r8
c0de2c98:	4631      	mov	r1, r6
c0de2c9a:	f7fe ff82 	bl	c0de1ba2 <zkn_fp2_384_eq>
c0de2c9e:	f50d 7d58 	add.w	sp, sp, #864	@ 0x360
c0de2ca2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2ca6:	bf00      	nop
c0de2ca8:	fffff0a3 	.word	0xfffff0a3
c0de2cac:	ffffef3f 	.word	0xffffef3f

c0de2cb0 <zkn_g2_384_dbl>:
c0de2cb0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2cb4:	b0fc      	sub	sp, #496	@ 0x1f0
c0de2cb6:	f101 08c0 	add.w	r8, r1, #192	@ 0xc0
c0de2cba:	4682      	mov	sl, r0
c0de2cbc:	4614      	mov	r4, r2
c0de2cbe:	460f      	mov	r7, r1
c0de2cc0:	4640      	mov	r0, r8
c0de2cc2:	f7ff ff04 	bl	c0de2ace <fp2_is_zero>
c0de2cc6:	b128      	cbz	r0, c0de2cd4 <zkn_g2_384_dbl+0x24>
c0de2cc8:	4650      	mov	r0, sl
c0de2cca:	b07c      	add	sp, #496	@ 0x1f0
c0de2ccc:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2cd0:	f7ff bee8 	b.w	c0de2aa4 <zkn_g2_384_zero>
c0de2cd4:	f107 0160 	add.w	r1, r7, #96	@ 0x60
c0de2cd8:	f50d 7bc8 	add.w	fp, sp, #400	@ 0x190
c0de2cdc:	4622      	mov	r2, r4
c0de2cde:	9102      	str	r1, [sp, #8]
c0de2ce0:	4658      	mov	r0, fp
c0de2ce2:	4b35      	ldr	r3, [pc, #212]	@ (c0de2db8 <zkn_g2_384_dbl+0x108>)
c0de2ce4:	447b      	add	r3, pc
c0de2ce6:	9303      	str	r3, [sp, #12]
c0de2ce8:	4798      	blx	r3
c0de2cea:	ad4c      	add	r5, sp, #304	@ 0x130
c0de2cec:	4e33      	ldr	r6, [pc, #204]	@ (c0de2dbc <zkn_g2_384_dbl+0x10c>)
c0de2cee:	4639      	mov	r1, r7
c0de2cf0:	465a      	mov	r2, fp
c0de2cf2:	4623      	mov	r3, r4
c0de2cf4:	4628      	mov	r0, r5
c0de2cf6:	447e      	add	r6, pc
c0de2cf8:	9601      	str	r6, [sp, #4]
c0de2cfa:	47b0      	blx	r6
c0de2cfc:	4e30      	ldr	r6, [pc, #192]	@ (c0de2dc0 <zkn_g2_384_dbl+0x110>)
c0de2cfe:	4628      	mov	r0, r5
c0de2d00:	4629      	mov	r1, r5
c0de2d02:	462a      	mov	r2, r5
c0de2d04:	4623      	mov	r3, r4
c0de2d06:	447e      	add	r6, pc
c0de2d08:	47b0      	blx	r6
c0de2d0a:	4628      	mov	r0, r5
c0de2d0c:	4629      	mov	r1, r5
c0de2d0e:	462a      	mov	r2, r5
c0de2d10:	4623      	mov	r3, r4
c0de2d12:	47b0      	blx	r6
c0de2d14:	f10d 0bd0 	add.w	fp, sp, #208	@ 0xd0
c0de2d18:	a964      	add	r1, sp, #400	@ 0x190
c0de2d1a:	9d03      	ldr	r5, [sp, #12]
c0de2d1c:	4622      	mov	r2, r4
c0de2d1e:	4658      	mov	r0, fp
c0de2d20:	47a8      	blx	r5
c0de2d22:	f000 f957 	bl	c0de2fd4 <OUTLINED_FUNCTION_1>
c0de2d26:	f000 f955 	bl	c0de2fd4 <OUTLINED_FUNCTION_1>
c0de2d2a:	f000 f953 	bl	c0de2fd4 <OUTLINED_FUNCTION_1>
c0de2d2e:	a81c      	add	r0, sp, #112	@ 0x70
c0de2d30:	4639      	mov	r1, r7
c0de2d32:	4622      	mov	r2, r4
c0de2d34:	47a8      	blx	r5
c0de2d36:	af04      	add	r7, sp, #16
c0de2d38:	a91c      	add	r1, sp, #112	@ 0x70
c0de2d3a:	4623      	mov	r3, r4
c0de2d3c:	4638      	mov	r0, r7
c0de2d3e:	460a      	mov	r2, r1
c0de2d40:	460d      	mov	r5, r1
c0de2d42:	47b0      	blx	r6
c0de2d44:	4628      	mov	r0, r5
c0de2d46:	4639      	mov	r1, r7
c0de2d48:	462a      	mov	r2, r5
c0de2d4a:	4623      	mov	r3, r4
c0de2d4c:	47b0      	blx	r6
c0de2d4e:	f10a 07c0 	add.w	r7, sl, #192	@ 0xc0
c0de2d52:	4642      	mov	r2, r8
c0de2d54:	9902      	ldr	r1, [sp, #8]
c0de2d56:	f8dd 8004 	ldr.w	r8, [sp, #4]
c0de2d5a:	4623      	mov	r3, r4
c0de2d5c:	4638      	mov	r0, r7
c0de2d5e:	47c0      	blx	r8
c0de2d60:	4638      	mov	r0, r7
c0de2d62:	4639      	mov	r1, r7
c0de2d64:	463a      	mov	r2, r7
c0de2d66:	4623      	mov	r3, r4
c0de2d68:	47b0      	blx	r6
c0de2d6a:	9b03      	ldr	r3, [sp, #12]
c0de2d6c:	4650      	mov	r0, sl
c0de2d6e:	4629      	mov	r1, r5
c0de2d70:	4622      	mov	r2, r4
c0de2d72:	4798      	blx	r3
c0de2d74:	4e13      	ldr	r6, [pc, #76]	@ (c0de2dc4 <zkn_g2_384_dbl+0x114>)
c0de2d76:	ad4c      	add	r5, sp, #304	@ 0x130
c0de2d78:	4650      	mov	r0, sl
c0de2d7a:	4651      	mov	r1, sl
c0de2d7c:	4623      	mov	r3, r4
c0de2d7e:	462a      	mov	r2, r5
c0de2d80:	447e      	add	r6, pc
c0de2d82:	47b0      	blx	r6
c0de2d84:	4650      	mov	r0, sl
c0de2d86:	4651      	mov	r1, sl
c0de2d88:	462a      	mov	r2, r5
c0de2d8a:	4623      	mov	r3, r4
c0de2d8c:	47b0      	blx	r6
c0de2d8e:	af04      	add	r7, sp, #16
c0de2d90:	4629      	mov	r1, r5
c0de2d92:	4652      	mov	r2, sl
c0de2d94:	4623      	mov	r3, r4
c0de2d96:	4638      	mov	r0, r7
c0de2d98:	47b0      	blx	r6
c0de2d9a:	f10a 0560 	add.w	r5, sl, #96	@ 0x60
c0de2d9e:	a91c      	add	r1, sp, #112	@ 0x70
c0de2da0:	463a      	mov	r2, r7
c0de2da2:	4623      	mov	r3, r4
c0de2da4:	4628      	mov	r0, r5
c0de2da6:	47c0      	blx	r8
c0de2da8:	4628      	mov	r0, r5
c0de2daa:	4629      	mov	r1, r5
c0de2dac:	465a      	mov	r2, fp
c0de2dae:	4623      	mov	r3, r4
c0de2db0:	47b0      	blx	r6
c0de2db2:	b07c      	add	sp, #496	@ 0x1f0
c0de2db4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2db8:	ffffefe1 	.word	0xffffefe1
c0de2dbc:	ffffef3b 	.word	0xffffef3b
c0de2dc0:	ffffeeb5 	.word	0xffffeeb5
c0de2dc4:	ffffee57 	.word	0xffffee57

c0de2dc8 <zkn_g2_384_add>:
c0de2dc8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2dcc:	f5ad 6da9 	sub.w	sp, sp, #1352	@ 0x548
c0de2dd0:	f101 08c0 	add.w	r8, r1, #192	@ 0xc0
c0de2dd4:	4682      	mov	sl, r0
c0de2dd6:	461c      	mov	r4, r3
c0de2dd8:	4615      	mov	r5, r2
c0de2dda:	460f      	mov	r7, r1
c0de2ddc:	4640      	mov	r0, r8
c0de2dde:	f7ff fe76 	bl	c0de2ace <fp2_is_zero>
c0de2de2:	b110      	cbz	r0, c0de2dea <zkn_g2_384_add+0x22>
c0de2de4:	4650      	mov	r0, sl
c0de2de6:	4629      	mov	r1, r5
c0de2de8:	e007      	b.n	c0de2dfa <zkn_g2_384_add+0x32>
c0de2dea:	f105 0bc0 	add.w	fp, r5, #192	@ 0xc0
c0de2dee:	4658      	mov	r0, fp
c0de2df0:	f7ff fe6d 	bl	c0de2ace <fp2_is_zero>
c0de2df4:	b138      	cbz	r0, c0de2e06 <zkn_g2_384_add+0x3e>
c0de2df6:	4650      	mov	r0, sl
c0de2df8:	4639      	mov	r1, r7
c0de2dfa:	f000 f8e7 	bl	c0de2fcc <OUTLINED_FUNCTION_0>
c0de2dfe:	f50d 6da9 	add.w	sp, sp, #1352	@ 0x548
c0de2e02:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2e06:	f50d 609d 	add.w	r0, sp, #1256	@ 0x4e8
c0de2e0a:	4641      	mov	r1, r8
c0de2e0c:	f000 f8e7 	bl	c0de2fde <OUTLINED_FUNCTION_2>
c0de2e10:	f50d 6091 	add.w	r0, sp, #1160	@ 0x488
c0de2e14:	4659      	mov	r1, fp
c0de2e16:	f000 f8e2 	bl	c0de2fde <OUTLINED_FUNCTION_2>
c0de2e1a:	4e4a      	ldr	r6, [pc, #296]	@ (c0de2f44 <zkn_g2_384_add+0x17c>)
c0de2e1c:	f50d 6085 	add.w	r0, sp, #1064	@ 0x428
c0de2e20:	f50d 619d 	add.w	r1, sp, #1256	@ 0x4e8
c0de2e24:	4642      	mov	r2, r8
c0de2e26:	4623      	mov	r3, r4
c0de2e28:	447e      	add	r6, pc
c0de2e2a:	47b0      	blx	r6
c0de2e2c:	a8f2      	add	r0, sp, #968	@ 0x3c8
c0de2e2e:	f50d 6191 	add.w	r1, sp, #1160	@ 0x488
c0de2e32:	465a      	mov	r2, fp
c0de2e34:	4623      	mov	r3, r4
c0de2e36:	f8cd b000 	str.w	fp, [sp]
c0de2e3a:	47b0      	blx	r6
c0de2e3c:	a8da      	add	r0, sp, #872	@ 0x368
c0de2e3e:	4639      	mov	r1, r7
c0de2e40:	f50d 6291 	add.w	r2, sp, #1160	@ 0x488
c0de2e44:	4623      	mov	r3, r4
c0de2e46:	47b0      	blx	r6
c0de2e48:	a8c2      	add	r0, sp, #776	@ 0x308
c0de2e4a:	4629      	mov	r1, r5
c0de2e4c:	f50d 629d 	add.w	r2, sp, #1256	@ 0x4e8
c0de2e50:	4623      	mov	r3, r4
c0de2e52:	47b0      	blx	r6
c0de2e54:	a8aa      	add	r0, sp, #680	@ 0x2a8
c0de2e56:	f107 0160 	add.w	r1, r7, #96	@ 0x60
c0de2e5a:	aaf2      	add	r2, sp, #968	@ 0x3c8
c0de2e5c:	4623      	mov	r3, r4
c0de2e5e:	47b0      	blx	r6
c0de2e60:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de2e64:	ad92      	add	r5, sp, #584	@ 0x248
c0de2e66:	f50d 6285 	add.w	r2, sp, #1064	@ 0x428
c0de2e6a:	4623      	mov	r3, r4
c0de2e6c:	9601      	str	r6, [sp, #4]
c0de2e6e:	4628      	mov	r0, r5
c0de2e70:	47b0      	blx	r6
c0de2e72:	f50d 7bf4 	add.w	fp, sp, #488	@ 0x1e8
c0de2e76:	a9c2      	add	r1, sp, #776	@ 0x308
c0de2e78:	aada      	add	r2, sp, #872	@ 0x368
c0de2e7a:	4623      	mov	r3, r4
c0de2e7c:	4658      	mov	r0, fp
c0de2e7e:	f7fe feac 	bl	c0de1bda <zkn_fp2_384_sub>
c0de2e82:	a862      	add	r0, sp, #392	@ 0x188
c0de2e84:	4629      	mov	r1, r5
c0de2e86:	aaaa      	add	r2, sp, #680	@ 0x2a8
c0de2e88:	4623      	mov	r3, r4
c0de2e8a:	f7fe fea6 	bl	c0de1bda <zkn_fp2_384_sub>
c0de2e8e:	4658      	mov	r0, fp
c0de2e90:	f7ff fe1d 	bl	c0de2ace <fp2_is_zero>
c0de2e94:	b150      	cbz	r0, c0de2eac <zkn_g2_384_add+0xe4>
c0de2e96:	a862      	add	r0, sp, #392	@ 0x188
c0de2e98:	f7ff fe19 	bl	c0de2ace <fp2_is_zero>
c0de2e9c:	2800      	cmp	r0, #0
c0de2e9e:	d04d      	beq.n	c0de2f3c <zkn_g2_384_add+0x174>
c0de2ea0:	4650      	mov	r0, sl
c0de2ea2:	4639      	mov	r1, r7
c0de2ea4:	4622      	mov	r2, r4
c0de2ea6:	f7ff ff03 	bl	c0de2cb0 <zkn_g2_384_dbl>
c0de2eaa:	e7a8      	b.n	c0de2dfe <zkn_g2_384_add+0x36>
c0de2eac:	af4a      	add	r7, sp, #296	@ 0x128
c0de2eae:	ad7a      	add	r5, sp, #488	@ 0x1e8
c0de2eb0:	4622      	mov	r2, r4
c0de2eb2:	4638      	mov	r0, r7
c0de2eb4:	4629      	mov	r1, r5
c0de2eb6:	f7fe ff07 	bl	c0de1cc8 <zkn_fp2_384_sqr>
c0de2eba:	ae32      	add	r6, sp, #200	@ 0xc8
c0de2ebc:	f8dd b004 	ldr.w	fp, [sp, #4]
c0de2ec0:	4639      	mov	r1, r7
c0de2ec2:	462a      	mov	r2, r5
c0de2ec4:	4623      	mov	r3, r4
c0de2ec6:	4630      	mov	r0, r6
c0de2ec8:	47d8      	blx	fp
c0de2eca:	ad1a      	add	r5, sp, #104	@ 0x68
c0de2ecc:	a9da      	add	r1, sp, #872	@ 0x368
c0de2ece:	463a      	mov	r2, r7
c0de2ed0:	4623      	mov	r3, r4
c0de2ed2:	4628      	mov	r0, r5
c0de2ed4:	47d8      	blx	fp
c0de2ed6:	a962      	add	r1, sp, #392	@ 0x188
c0de2ed8:	4650      	mov	r0, sl
c0de2eda:	f000 f880 	bl	c0de2fde <OUTLINED_FUNCTION_2>
c0de2ede:	4f1a      	ldr	r7, [pc, #104]	@ (c0de2f48 <zkn_g2_384_add+0x180>)
c0de2ee0:	4650      	mov	r0, sl
c0de2ee2:	4651      	mov	r1, sl
c0de2ee4:	4632      	mov	r2, r6
c0de2ee6:	4623      	mov	r3, r4
c0de2ee8:	447f      	add	r7, pc
c0de2eea:	47b8      	blx	r7
c0de2eec:	f000 f87a 	bl	c0de2fe4 <OUTLINED_FUNCTION_4>
c0de2ef0:	f000 f878 	bl	c0de2fe4 <OUTLINED_FUNCTION_4>
c0de2ef4:	ae02      	add	r6, sp, #8
c0de2ef6:	4629      	mov	r1, r5
c0de2ef8:	4652      	mov	r2, sl
c0de2efa:	4623      	mov	r3, r4
c0de2efc:	4630      	mov	r0, r6
c0de2efe:	47b8      	blx	r7
c0de2f00:	f10a 0560 	add.w	r5, sl, #96	@ 0x60
c0de2f04:	a962      	add	r1, sp, #392	@ 0x188
c0de2f06:	4632      	mov	r2, r6
c0de2f08:	4623      	mov	r3, r4
c0de2f0a:	4628      	mov	r0, r5
c0de2f0c:	47d8      	blx	fp
c0de2f0e:	a9aa      	add	r1, sp, #680	@ 0x2a8
c0de2f10:	4630      	mov	r0, r6
c0de2f12:	aa32      	add	r2, sp, #200	@ 0xc8
c0de2f14:	4623      	mov	r3, r4
c0de2f16:	47d8      	blx	fp
c0de2f18:	4628      	mov	r0, r5
c0de2f1a:	4629      	mov	r1, r5
c0de2f1c:	4632      	mov	r2, r6
c0de2f1e:	4623      	mov	r3, r4
c0de2f20:	47b8      	blx	r7
c0de2f22:	f10a 05c0 	add.w	r5, sl, #192	@ 0xc0
c0de2f26:	a97a      	add	r1, sp, #488	@ 0x1e8
c0de2f28:	4642      	mov	r2, r8
c0de2f2a:	4623      	mov	r3, r4
c0de2f2c:	4628      	mov	r0, r5
c0de2f2e:	47d8      	blx	fp
c0de2f30:	9a00      	ldr	r2, [sp, #0]
c0de2f32:	4628      	mov	r0, r5
c0de2f34:	4629      	mov	r1, r5
c0de2f36:	4623      	mov	r3, r4
c0de2f38:	47d8      	blx	fp
c0de2f3a:	e760      	b.n	c0de2dfe <zkn_g2_384_add+0x36>
c0de2f3c:	4650      	mov	r0, sl
c0de2f3e:	f7ff fdb1 	bl	c0de2aa4 <zkn_g2_384_zero>
c0de2f42:	e75c      	b.n	c0de2dfe <zkn_g2_384_add+0x36>
c0de2f44:	ffffee09 	.word	0xffffee09
c0de2f48:	ffffecef 	.word	0xffffecef

c0de2f4c <zkn_g2_384_mul>:
c0de2f4c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de2f50:	e9cd 2300 	strd	r2, r3, [sp]
c0de2f54:	460e      	mov	r6, r1
c0de2f56:	4607      	mov	r7, r0
c0de2f58:	f7ff fda4 	bl	c0de2aa4 <zkn_g2_384_zero>
c0de2f5c:	9d0a      	ldr	r5, [sp, #40]	@ 0x28
c0de2f5e:	f04f 0b00 	mov.w	fp, #0
c0de2f62:	f04f 0a00 	mov.w	sl, #0
c0de2f66:	9801      	ldr	r0, [sp, #4]
c0de2f68:	4583      	cmp	fp, r0
c0de2f6a:	bfa8      	it	ge
c0de2f6c:	e8bd 8dfc 	ldmiage.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de2f70:	9800      	ldr	r0, [sp, #0]
c0de2f72:	f04f 0807 	mov.w	r8, #7
c0de2f76:	f810 400b 	ldrb.w	r4, [r0, fp]
c0de2f7a:	f1b8 3fff 	cmp.w	r8, #4294967295	@ 0xffffffff
c0de2f7e:	dd22      	ble.n	c0de2fc6 <zkn_g2_384_mul+0x7a>
c0de2f80:	f1ba 0f00 	cmp.w	sl, #0
c0de2f84:	d00f      	beq.n	c0de2fa6 <zkn_g2_384_mul+0x5a>
c0de2f86:	4638      	mov	r0, r7
c0de2f88:	4639      	mov	r1, r7
c0de2f8a:	462a      	mov	r2, r5
c0de2f8c:	f7ff fe90 	bl	c0de2cb0 <zkn_g2_384_dbl>
c0de2f90:	fa24 f008 	lsr.w	r0, r4, r8
c0de2f94:	07c0      	lsls	r0, r0, #31
c0de2f96:	d010      	beq.n	c0de2fba <zkn_g2_384_mul+0x6e>
c0de2f98:	4638      	mov	r0, r7
c0de2f9a:	4639      	mov	r1, r7
c0de2f9c:	4632      	mov	r2, r6
c0de2f9e:	462b      	mov	r3, r5
c0de2fa0:	f7ff ff12 	bl	c0de2dc8 <zkn_g2_384_add>
c0de2fa4:	e007      	b.n	c0de2fb6 <zkn_g2_384_mul+0x6a>
c0de2fa6:	fa24 f008 	lsr.w	r0, r4, r8
c0de2faa:	07c0      	lsls	r0, r0, #31
c0de2fac:	d008      	beq.n	c0de2fc0 <zkn_g2_384_mul+0x74>
c0de2fae:	4638      	mov	r0, r7
c0de2fb0:	4631      	mov	r1, r6
c0de2fb2:	f000 f80b 	bl	c0de2fcc <OUTLINED_FUNCTION_0>
c0de2fb6:	f04f 0a01 	mov.w	sl, #1
c0de2fba:	f1a8 0801 	sub.w	r8, r8, #1
c0de2fbe:	e7dc      	b.n	c0de2f7a <zkn_g2_384_mul+0x2e>
c0de2fc0:	f04f 0a00 	mov.w	sl, #0
c0de2fc4:	e7f9      	b.n	c0de2fba <zkn_g2_384_mul+0x6e>
c0de2fc6:	f10b 0b01 	add.w	fp, fp, #1
c0de2fca:	e7cc      	b.n	c0de2f66 <zkn_g2_384_mul+0x1a>

c0de2fcc <OUTLINED_FUNCTION_0>:
c0de2fcc:	f44f 7290 	mov.w	r2, #288	@ 0x120
c0de2fd0:	f005 bc94 	b.w	c0de88fc <__aeabi_memcpy>

c0de2fd4 <OUTLINED_FUNCTION_1>:
c0de2fd4:	4658      	mov	r0, fp
c0de2fd6:	4659      	mov	r1, fp
c0de2fd8:	465a      	mov	r2, fp
c0de2fda:	4623      	mov	r3, r4
c0de2fdc:	4730      	bx	r6

c0de2fde <OUTLINED_FUNCTION_2>:
c0de2fde:	4622      	mov	r2, r4
c0de2fe0:	f7fe be72 	b.w	c0de1cc8 <zkn_fp2_384_sqr>

c0de2fe4 <OUTLINED_FUNCTION_4>:
c0de2fe4:	4650      	mov	r0, sl
c0de2fe6:	4651      	mov	r1, sl
c0de2fe8:	462a      	mov	r2, r5
c0de2fea:	4623      	mov	r3, r4
c0de2fec:	4738      	bx	r7
	...

c0de2ff0 <zkn_groth16_verify>:
c0de2ff0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2ff4:	f6ad 6d18 	subw	sp, sp, #3608	@ 0xe18
c0de2ff8:	4d87      	ldr	r5, [pc, #540]	@ (c0de3218 <zkn_groth16_verify+0x228>)
c0de2ffa:	4607      	mov	r7, r0
c0de2ffc:	f50d 6851 	add.w	r8, sp, #3344	@ 0xd10
c0de3000:	468b      	mov	fp, r1
c0de3002:	4640      	mov	r0, r8
c0de3004:	4639      	mov	r1, r7
c0de3006:	447d      	add	r5, pc
c0de3008:	47a8      	blx	r5
c0de300a:	f50d 664e 	add.w	r6, sp, #3296	@ 0xce0
c0de300e:	f107 0130 	add.w	r1, r7, #48	@ 0x30
c0de3012:	4630      	mov	r0, r6
c0de3014:	47a8      	blx	r5
c0de3016:	f50d 6054 	add.w	r0, sp, #3392	@ 0xd40
c0de301a:	f000 f95b 	bl	c0de32d4 <OUTLINED_FUNCTION_0>
c0de301e:	ae92      	add	r6, sp, #584	@ 0x248
c0de3020:	f107 0160 	add.w	r1, r7, #96	@ 0x60
c0de3024:	4630      	mov	r0, r6
c0de3026:	47a8      	blx	r5
c0de3028:	f106 0030 	add.w	r0, r6, #48	@ 0x30
c0de302c:	f107 0190 	add.w	r1, r7, #144	@ 0x90
c0de3030:	47a8      	blx	r5
c0de3032:	f10d 0a08 	add.w	sl, sp, #8
c0de3036:	f107 01c0 	add.w	r1, r7, #192	@ 0xc0
c0de303a:	4650      	mov	r0, sl
c0de303c:	47a8      	blx	r5
c0de303e:	f10a 0030 	add.w	r0, sl, #48	@ 0x30
c0de3042:	f107 01f0 	add.w	r1, r7, #240	@ 0xf0
c0de3046:	47a8      	blx	r5
c0de3048:	f50d 603c 	add.w	r0, sp, #3008	@ 0xbc0
c0de304c:	4631      	mov	r1, r6
c0de304e:	4652      	mov	r2, sl
c0de3050:	465b      	mov	r3, fp
c0de3052:	f7ff fd7f 	bl	c0de2b54 <zkn_g2_384_from_affine>
c0de3056:	f50d 6830 	add.w	r8, sp, #2816	@ 0xb00
c0de305a:	f507 7190 	add.w	r1, r7, #288	@ 0x120
c0de305e:	4640      	mov	r0, r8
c0de3060:	47a8      	blx	r5
c0de3062:	f50d 662d 	add.w	r6, sp, #2768	@ 0xad0
c0de3066:	f507 71a8 	add.w	r1, r7, #336	@ 0x150
c0de306a:	4630      	mov	r0, r6
c0de306c:	47a8      	blx	r5
c0de306e:	f50d 6033 	add.w	r0, sp, #2864	@ 0xb30
c0de3072:	f000 f92f 	bl	c0de32d4 <OUTLINED_FUNCTION_0>
c0de3076:	4969      	ldr	r1, [pc, #420]	@ (c0de321c <zkn_groth16_verify+0x22c>)
c0de3078:	4a69      	ldr	r2, [pc, #420]	@ (c0de3220 <zkn_groth16_verify+0x230>)
c0de307a:	4c6a      	ldr	r4, [pc, #424]	@ (c0de3224 <zkn_groth16_verify+0x234>)
c0de307c:	f50d 6024 	add.w	r0, sp, #2624	@ 0xa40
c0de3080:	465b      	mov	r3, fp
c0de3082:	4479      	add	r1, pc
c0de3084:	447a      	add	r2, pc
c0de3086:	447c      	add	r4, pc
c0de3088:	47a0      	blx	r4
c0de308a:	4967      	ldr	r1, [pc, #412]	@ (c0de3228 <zkn_groth16_verify+0x238>)
c0de308c:	4a67      	ldr	r2, [pc, #412]	@ (c0de322c <zkn_groth16_verify+0x23c>)
c0de308e:	f50d 661b 	add.w	r6, sp, #2480	@ 0x9b0
c0de3092:	465b      	mov	r3, fp
c0de3094:	4630      	mov	r0, r6
c0de3096:	4479      	add	r1, pc
c0de3098:	447a      	add	r2, pc
c0de309a:	47a0      	blx	r4
c0de309c:	4964      	ldr	r1, [pc, #400]	@ (c0de3230 <zkn_groth16_verify+0x240>)
c0de309e:	4a65      	ldr	r2, [pc, #404]	@ (c0de3234 <zkn_groth16_verify+0x244>)
c0de30a0:	f50d 6512 	add.w	r5, sp, #2336	@ 0x920
c0de30a4:	465b      	mov	r3, fp
c0de30a6:	4628      	mov	r0, r5
c0de30a8:	4479      	add	r1, pc
c0de30aa:	447a      	add	r2, pc
c0de30ac:	47a0      	blx	r4
c0de30ae:	4862      	ldr	r0, [pc, #392]	@ (c0de3238 <zkn_groth16_verify+0x248>)
c0de30b0:	4478      	add	r0, pc
c0de30b2:	e9cd 0b00 	strd	r0, fp, [sp]
c0de30b6:	f50d 6000 	add.w	r0, sp, #2048	@ 0x800
c0de30ba:	4960      	ldr	r1, [pc, #384]	@ (c0de323c <zkn_groth16_verify+0x24c>)
c0de30bc:	4a60      	ldr	r2, [pc, #384]	@ (c0de3240 <zkn_groth16_verify+0x250>)
c0de30be:	4b61      	ldr	r3, [pc, #388]	@ (c0de3244 <zkn_groth16_verify+0x254>)
c0de30c0:	4479      	add	r1, pc
c0de30c2:	447a      	add	r2, pc
c0de30c4:	447b      	add	r3, pc
c0de30c6:	f000 f8e3 	bl	c0de3290 <load_g2>
c0de30ca:	485f      	ldr	r0, [pc, #380]	@ (c0de3248 <zkn_groth16_verify+0x258>)
c0de30cc:	f50d 64dc 	add.w	r4, sp, #1760	@ 0x6e0
c0de30d0:	4478      	add	r0, pc
c0de30d2:	e9cd 0b00 	strd	r0, fp, [sp]
c0de30d6:	4620      	mov	r0, r4
c0de30d8:	495c      	ldr	r1, [pc, #368]	@ (c0de324c <zkn_groth16_verify+0x25c>)
c0de30da:	4a5d      	ldr	r2, [pc, #372]	@ (c0de3250 <zkn_groth16_verify+0x260>)
c0de30dc:	4b5d      	ldr	r3, [pc, #372]	@ (c0de3254 <zkn_groth16_verify+0x264>)
c0de30de:	4479      	add	r1, pc
c0de30e0:	447a      	add	r2, pc
c0de30e2:	447b      	add	r3, pc
c0de30e4:	f000 f8d4 	bl	c0de3290 <load_g2>
c0de30e8:	f50d 68ca 	add.w	r8, sp, #1616	@ 0x650
c0de30ec:	f507 72c0 	add.w	r2, r7, #384	@ 0x180
c0de30f0:	4631      	mov	r1, r6
c0de30f2:	2320      	movs	r3, #32
c0de30f4:	f8cd b000 	str.w	fp, [sp]
c0de30f8:	4640      	mov	r0, r8
c0de30fa:	f7ff fc79 	bl	c0de29f0 <zkn_g1_384_mul>
c0de30fe:	f50d 66b8 	add.w	r6, sp, #1472	@ 0x5c0
c0de3102:	f50d 6124 	add.w	r1, sp, #2624	@ 0xa40
c0de3106:	4642      	mov	r2, r8
c0de3108:	465b      	mov	r3, fp
c0de310a:	4630      	mov	r0, r6
c0de310c:	f7ff fb90 	bl	c0de2830 <zkn_g1_384_add>
c0de3110:	f507 72d0 	add.w	r2, r7, #416	@ 0x1a0
c0de3114:	4640      	mov	r0, r8
c0de3116:	4629      	mov	r1, r5
c0de3118:	2320      	movs	r3, #32
c0de311a:	f8cd b000 	str.w	fp, [sp]
c0de311e:	f7ff fc67 	bl	c0de29f0 <zkn_g1_384_mul>
c0de3122:	4630      	mov	r0, r6
c0de3124:	4631      	mov	r1, r6
c0de3126:	4642      	mov	r2, r8
c0de3128:	465b      	mov	r3, fp
c0de312a:	f7ff fb81 	bl	c0de2830 <zkn_g1_384_add>
c0de312e:	f50d 65a6 	add.w	r5, sp, #1328	@ 0x530
c0de3132:	4631      	mov	r1, r6
c0de3134:	465a      	mov	r2, fp
c0de3136:	4628      	mov	r0, r5
c0de3138:	f7ff fac8 	bl	c0de26cc <zkn_g1_384_neg>
c0de313c:	f50d 6694 	add.w	r6, sp, #1184	@ 0x4a0
c0de3140:	f50d 6133 	add.w	r1, sp, #2864	@ 0xb30
c0de3144:	465a      	mov	r2, fp
c0de3146:	4630      	mov	r0, r6
c0de3148:	f7ff fac0 	bl	c0de26cc <zkn_g1_384_neg>
c0de314c:	f50d 6054 	add.w	r0, sp, #3392	@ 0xd40
c0de3150:	f8cd 649c 	str.w	r6, [sp, #1180]	@ 0x49c
c0de3154:	f8cd 5498 	str.w	r5, [sp, #1176]	@ 0x498
c0de3158:	f8cd 4490 	str.w	r4, [sp, #1168]	@ 0x490
c0de315c:	f8cd b000 	str.w	fp, [sp]
c0de3160:	f20d 4194 	addw	r1, sp, #1172	@ 0x494
c0de3164:	f50d 6291 	add.w	r2, sp, #1160	@ 0x488
c0de3168:	2303      	movs	r3, #3
c0de316a:	f8cd 0494 	str.w	r0, [sp, #1172]	@ 0x494
c0de316e:	f50d 6000 	add.w	r0, sp, #2048	@ 0x800
c0de3172:	f8cd 048c 	str.w	r0, [sp, #1164]	@ 0x48c
c0de3176:	f50d 603c 	add.w	r0, sp, #3008	@ 0xbc0
c0de317a:	f8cd 0488 	str.w	r0, [sp, #1160]	@ 0x488
c0de317e:	ad92      	add	r5, sp, #584	@ 0x248
c0de3180:	4628      	mov	r0, r5
c0de3182:	f000 fa17 	bl	c0de35b4 <zkn_miller_loop_n>
c0de3186:	4628      	mov	r0, r5
c0de3188:	4629      	mov	r1, r5
c0de318a:	465a      	mov	r2, fp
c0de318c:	f7fe f816 	bl	c0de11bc <zkn_final_exp>
c0de3190:	f50a 70f0 	add.w	r0, sl, #480	@ 0x1e0
c0de3194:	f8cd ae00 	str.w	sl, [sp, #3584]	@ 0xe00
c0de3198:	2400      	movs	r4, #0
c0de319a:	f50d 6860 	add.w	r8, sp, #3584	@ 0xe00
c0de319e:	f50d 665d 	add.w	r6, sp, #3536	@ 0xdd0
c0de31a2:	f8cd 0e14 	str.w	r0, [sp, #3604]	@ 0xe14
c0de31a6:	f50a 70c0 	add.w	r0, sl, #384	@ 0x180
c0de31aa:	f8cd 0e10 	str.w	r0, [sp, #3600]	@ 0xe10
c0de31ae:	f50a 7090 	add.w	r0, sl, #288	@ 0x120
c0de31b2:	f8cd 0e0c 	str.w	r0, [sp, #3596]	@ 0xe0c
c0de31b6:	f10a 00c0 	add.w	r0, sl, #192	@ 0xc0
c0de31ba:	f8cd 0e08 	str.w	r0, [sp, #3592]	@ 0xe08
c0de31be:	f10a 0060 	add.w	r0, sl, #96	@ 0x60
c0de31c2:	f8cd 0e04 	str.w	r0, [sp, #3588]	@ 0xe04
c0de31c6:	4d24      	ldr	r5, [pc, #144]	@ (c0de3258 <zkn_groth16_verify+0x268>)
c0de31c8:	447d      	add	r5, pc
c0de31ca:	2c06      	cmp	r4, #6
c0de31cc:	d018      	beq.n	c0de3200 <zkn_groth16_verify+0x210>
c0de31ce:	f858 7024 	ldr.w	r7, [r8, r4, lsl #2]
c0de31d2:	4630      	mov	r0, r6
c0de31d4:	4629      	mov	r1, r5
c0de31d6:	f000 fcbc 	bl	c0de3b52 <zkn_fe384_from_be>
c0de31da:	4638      	mov	r0, r7
c0de31dc:	4631      	mov	r1, r6
c0de31de:	465a      	mov	r2, fp
c0de31e0:	f000 fcae 	bl	c0de3b40 <zkn_to_mont_384>
c0de31e4:	f105 0130 	add.w	r1, r5, #48	@ 0x30
c0de31e8:	4630      	mov	r0, r6
c0de31ea:	f000 fcb2 	bl	c0de3b52 <zkn_fe384_from_be>
c0de31ee:	f107 0030 	add.w	r0, r7, #48	@ 0x30
c0de31f2:	4631      	mov	r1, r6
c0de31f4:	465a      	mov	r2, fp
c0de31f6:	f000 fca3 	bl	c0de3b40 <zkn_to_mont_384>
c0de31fa:	3560      	adds	r5, #96	@ 0x60
c0de31fc:	3401      	adds	r4, #1
c0de31fe:	e7e4      	b.n	c0de31ca <zkn_groth16_verify+0x1da>
c0de3200:	a892      	add	r0, sp, #584	@ 0x248
c0de3202:	a902      	add	r1, sp, #8
c0de3204:	f7fe f8e7 	bl	c0de13d6 <zkn_fp12_384_eq>
c0de3208:	2800      	cmp	r0, #0
c0de320a:	bf18      	it	ne
c0de320c:	2001      	movne	r0, #1
c0de320e:	f60d 6d18 	addw	sp, sp, #3608	@ 0xe18
c0de3212:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3216:	bf00      	nop
c0de3218:	00000b49 	.word	0x00000b49
c0de321c:	00005fde 	.word	0x00005fde
c0de3220:	0000600c 	.word	0x0000600c
c0de3224:	000001d3 	.word	0x000001d3
c0de3228:	0000602a 	.word	0x0000602a
c0de322c:	00006058 	.word	0x00006058
c0de3230:	00006078 	.word	0x00006078
c0de3234:	000060a6 	.word	0x000060a6
c0de3238:	00006160 	.word	0x00006160
c0de323c:	000060c0 	.word	0x000060c0
c0de3240:	000060ee 	.word	0x000060ee
c0de3244:	0000611c 	.word	0x0000611c
c0de3248:	00006200 	.word	0x00006200
c0de324c:	00006162 	.word	0x00006162
c0de3250:	00006190 	.word	0x00006190
c0de3254:	000061be 	.word	0x000061be
c0de3258:	00006138 	.word	0x00006138

c0de325c <load_g1>:
c0de325c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3260:	b098      	sub	sp, #96	@ 0x60
c0de3262:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de3266:	4606      	mov	r6, r0
c0de3268:	461c      	mov	r4, r3
c0de326a:	4615      	mov	r5, r2
c0de326c:	4640      	mov	r0, r8
c0de326e:	f000 fc70 	bl	c0de3b52 <zkn_fe384_from_be>
c0de3272:	466f      	mov	r7, sp
c0de3274:	4629      	mov	r1, r5
c0de3276:	4638      	mov	r0, r7
c0de3278:	f000 fc6b 	bl	c0de3b52 <zkn_fe384_from_be>
c0de327c:	4630      	mov	r0, r6
c0de327e:	4641      	mov	r1, r8
c0de3280:	463a      	mov	r2, r7
c0de3282:	4623      	mov	r3, r4
c0de3284:	f7ff f970 	bl	c0de2568 <zkn_g1_384_from_affine>
c0de3288:	b018      	add	sp, #96	@ 0x60
c0de328a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	...

c0de3290 <load_g2>:
c0de3290:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3294:	b0b0      	sub	sp, #192	@ 0xc0
c0de3296:	ad18      	add	r5, sp, #96	@ 0x60
c0de3298:	4c0d      	ldr	r4, [pc, #52]	@ (c0de32d0 <load_g2+0x40>)
c0de329a:	4680      	mov	r8, r0
c0de329c:	461e      	mov	r6, r3
c0de329e:	4617      	mov	r7, r2
c0de32a0:	4628      	mov	r0, r5
c0de32a2:	447c      	add	r4, pc
c0de32a4:	47a0      	blx	r4
c0de32a6:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de32aa:	4639      	mov	r1, r7
c0de32ac:	47a0      	blx	r4
c0de32ae:	466f      	mov	r7, sp
c0de32b0:	4631      	mov	r1, r6
c0de32b2:	4638      	mov	r0, r7
c0de32b4:	47a0      	blx	r4
c0de32b6:	9936      	ldr	r1, [sp, #216]	@ 0xd8
c0de32b8:	f107 0030 	add.w	r0, r7, #48	@ 0x30
c0de32bc:	47a0      	blx	r4
c0de32be:	9b37      	ldr	r3, [sp, #220]	@ 0xdc
c0de32c0:	4640      	mov	r0, r8
c0de32c2:	4629      	mov	r1, r5
c0de32c4:	463a      	mov	r2, r7
c0de32c6:	f7ff fc45 	bl	c0de2b54 <zkn_g2_384_from_affine>
c0de32ca:	b030      	add	sp, #192	@ 0xc0
c0de32cc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de32d0:	000008ad 	.word	0x000008ad

c0de32d4 <OUTLINED_FUNCTION_0>:
c0de32d4:	4641      	mov	r1, r8
c0de32d6:	4632      	mov	r2, r6
c0de32d8:	465b      	mov	r3, fp
c0de32da:	f7ff b945 	b.w	c0de2568 <zkn_g1_384_from_affine>
	...

c0de32e0 <zkn_miller_loop>:
c0de32e0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de32e4:	f5ad 7d5c 	sub.w	sp, sp, #880	@ 0x370
c0de32e8:	4605      	mov	r5, r0
c0de32ea:	4608      	mov	r0, r1
c0de32ec:	461c      	mov	r4, r3
c0de32ee:	4616      	mov	r6, r2
c0de32f0:	460f      	mov	r7, r1
c0de32f2:	f7ff f90d 	bl	c0de2510 <zkn_g1_384_is_zero>
c0de32f6:	b918      	cbnz	r0, c0de3300 <zkn_miller_loop+0x20>
c0de32f8:	4630      	mov	r0, r6
c0de32fa:	f7ff fbe5 	bl	c0de2ac8 <zkn_g2_384_is_zero>
c0de32fe:	b138      	cbz	r0, c0de3310 <zkn_miller_loop+0x30>
c0de3300:	4628      	mov	r0, r5
c0de3302:	4621      	mov	r1, r4
c0de3304:	f50d 7d5c 	add.w	sp, sp, #880	@ 0x370
c0de3308:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de330c:	f7fe b855 	b.w	c0de13ba <zkn_fp12_384_one>
c0de3310:	a8d0      	add	r0, sp, #832	@ 0x340
c0de3312:	a9c4      	add	r1, sp, #784	@ 0x310
c0de3314:	463a      	mov	r2, r7
c0de3316:	4623      	mov	r3, r4
c0de3318:	f000 f858 	bl	c0de33cc <g1_affine_to_mont>
c0de331c:	afac      	add	r7, sp, #688	@ 0x2b0
c0de331e:	f50d 7814 	add.w	r8, sp, #592	@ 0x250
c0de3322:	4632      	mov	r2, r6
c0de3324:	4623      	mov	r3, r4
c0de3326:	4638      	mov	r0, r7
c0de3328:	4641      	mov	r1, r8
c0de332a:	f7ff fc37 	bl	c0de2b9c <zkn_g2_384_to_affine>
c0de332e:	ae4c      	add	r6, sp, #304	@ 0x130
c0de3330:	4639      	mov	r1, r7
c0de3332:	4630      	mov	r0, r6
c0de3334:	f7fe fc30 	bl	c0de1b98 <zkn_fp2_384_copy>
c0de3338:	f106 0060 	add.w	r0, r6, #96	@ 0x60
c0de333c:	4641      	mov	r1, r8
c0de333e:	f7fe fc2b 	bl	c0de1b98 <zkn_fp2_384_copy>
c0de3342:	f106 00c0 	add.w	r0, r6, #192	@ 0xc0
c0de3346:	4621      	mov	r1, r4
c0de3348:	f7fe fc1a 	bl	c0de1b80 <zkn_fp2_384_one>
c0de334c:	4628      	mov	r0, r5
c0de334e:	4621      	mov	r1, r4
c0de3350:	f7fe f833 	bl	c0de13ba <zkn_fp12_384_one>
c0de3354:	f10d 0810 	add.w	r8, sp, #16
c0de3358:	f04f 0b3e 	mov.w	fp, #62	@ 0x3e
c0de335c:	f108 07c0 	add.w	r7, r8, #192	@ 0xc0
c0de3360:	f108 0a60 	add.w	sl, r8, #96	@ 0x60
c0de3364:	4628      	mov	r0, r5
c0de3366:	f1bb 0f00 	cmp.w	fp, #0
c0de336a:	d424      	bmi.n	c0de33b6 <zkn_miller_loop+0xd6>
c0de336c:	4629      	mov	r1, r5
c0de336e:	4622      	mov	r2, r4
c0de3370:	f7fe f8a4 	bl	c0de14bc <zkn_fp12_384_sqr>
c0de3374:	9400      	str	r4, [sp, #0]
c0de3376:	aad0      	add	r2, sp, #832	@ 0x340
c0de3378:	4630      	mov	r0, r6
c0de337a:	4641      	mov	r1, r8
c0de337c:	abc4      	add	r3, sp, #784	@ 0x310
c0de337e:	f000 ff85 	bl	c0de428c <zkn_miller_doubling_step>
c0de3382:	f000 fb65 	bl	c0de3a50 <OUTLINED_FUNCTION_2>
c0de3386:	4910      	ldr	r1, [pc, #64]	@ (c0de33c8 <zkn_miller_loop+0xe8>)
c0de3388:	f44f 3080 	mov.w	r0, #65536	@ 0x10000
c0de338c:	465a      	mov	r2, fp
c0de338e:	f005 f9bf 	bl	c0de8710 <__aeabi_llsr>
c0de3392:	07c0      	lsls	r0, r0, #31
c0de3394:	d00c      	beq.n	c0de33b0 <zkn_miller_loop+0xd0>
c0de3396:	a8d0      	add	r0, sp, #832	@ 0x340
c0de3398:	4641      	mov	r1, r8
c0de339a:	9000      	str	r0, [sp, #0]
c0de339c:	a8c4      	add	r0, sp, #784	@ 0x310
c0de339e:	e9cd 0401 	strd	r0, r4, [sp, #4]
c0de33a2:	aaac      	add	r2, sp, #688	@ 0x2b0
c0de33a4:	4630      	mov	r0, r6
c0de33a6:	ab94      	add	r3, sp, #592	@ 0x250
c0de33a8:	f001 f846 	bl	c0de4438 <zkn_miller_addition_step>
c0de33ac:	f000 fb50 	bl	c0de3a50 <OUTLINED_FUNCTION_2>
c0de33b0:	f1ab 0b01 	sub.w	fp, fp, #1
c0de33b4:	e7d6      	b.n	c0de3364 <zkn_miller_loop+0x84>
c0de33b6:	4629      	mov	r1, r5
c0de33b8:	4622      	mov	r2, r4
c0de33ba:	f7fe f81a 	bl	c0de13f2 <zkn_fp12_384_conjugate>
c0de33be:	f50d 7d5c 	add.w	sp, sp, #880	@ 0x370
c0de33c2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de33c6:	bf00      	nop
c0de33c8:	d2010000 	.word	0xd2010000

c0de33cc <g1_affine_to_mont>:
c0de33cc:	b570      	push	{r4, r5, r6, lr}
c0de33ce:	461c      	mov	r4, r3
c0de33d0:	460d      	mov	r5, r1
c0de33d2:	4606      	mov	r6, r0
c0de33d4:	f7ff f8de 	bl	c0de2594 <zkn_g1_384_to_affine>
c0de33d8:	4630      	mov	r0, r6
c0de33da:	4631      	mov	r1, r6
c0de33dc:	4622      	mov	r2, r4
c0de33de:	f000 fbaf 	bl	c0de3b40 <zkn_to_mont_384>
c0de33e2:	4628      	mov	r0, r5
c0de33e4:	4629      	mov	r1, r5
c0de33e6:	4622      	mov	r2, r4
c0de33e8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de33ec:	f000 bba8 	b.w	c0de3b40 <zkn_to_mont_384>

c0de33f0 <dbl_step_raw>:
c0de33f0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de33f4:	f5ad 7d5e 	sub.w	sp, sp, #888	@ 0x378
c0de33f8:	9104      	str	r1, [sp, #16]
c0de33fa:	af36      	add	r7, sp, #216	@ 0xd8
c0de33fc:	4601      	mov	r1, r0
c0de33fe:	4614      	mov	r4, r2
c0de3400:	4638      	mov	r0, r7
c0de3402:	460d      	mov	r5, r1
c0de3404:	f7fe fbc8 	bl	c0de1b98 <zkn_fp2_384_copy>
c0de3408:	4e58      	ldr	r6, [pc, #352]	@ (c0de356c <dbl_step_raw+0x17c>)
c0de340a:	f50d 7846 	add.w	r8, sp, #792	@ 0x318
c0de340e:	4639      	mov	r1, r7
c0de3410:	4622      	mov	r2, r4
c0de3412:	4640      	mov	r0, r8
c0de3414:	447e      	add	r6, pc
c0de3416:	47b0      	blx	r6
c0de3418:	f50d 7a2e 	add.w	sl, sp, #696	@ 0x2b8
c0de341c:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de3420:	4622      	mov	r2, r4
c0de3422:	4650      	mov	r0, sl
c0de3424:	e9cd 5102 	strd	r5, r1, [sp, #8]
c0de3428:	47b0      	blx	r6
c0de342a:	a896      	add	r0, sp, #600	@ 0x258
c0de342c:	4651      	mov	r1, sl
c0de342e:	4622      	mov	r2, r4
c0de3430:	47b0      	blx	r6
c0de3432:	f105 0bc0 	add.w	fp, r5, #192	@ 0xc0
c0de3436:	a81e      	add	r0, sp, #120	@ 0x78
c0de3438:	4622      	mov	r2, r4
c0de343a:	4659      	mov	r1, fp
c0de343c:	47b0      	blx	r6
c0de343e:	4637      	mov	r7, r6
c0de3440:	ae7e      	add	r6, sp, #504	@ 0x1f8
c0de3442:	4d4b      	ldr	r5, [pc, #300]	@ (c0de3570 <dbl_step_raw+0x180>)
c0de3444:	a936      	add	r1, sp, #216	@ 0xd8
c0de3446:	4652      	mov	r2, sl
c0de3448:	4623      	mov	r3, r4
c0de344a:	4630      	mov	r0, r6
c0de344c:	447d      	add	r5, pc
c0de344e:	47a8      	blx	r5
c0de3450:	4630      	mov	r0, r6
c0de3452:	4631      	mov	r1, r6
c0de3454:	4622      	mov	r2, r4
c0de3456:	46aa      	mov	sl, r5
c0de3458:	47b8      	blx	r7
c0de345a:	9701      	str	r7, [sp, #4]
c0de345c:	463d      	mov	r5, r7
c0de345e:	4630      	mov	r0, r6
c0de3460:	4631      	mov	r1, r6
c0de3462:	4642      	mov	r2, r8
c0de3464:	4623      	mov	r3, r4
c0de3466:	4f43      	ldr	r7, [pc, #268]	@ (c0de3574 <dbl_step_raw+0x184>)
c0de3468:	447f      	add	r7, pc
c0de346a:	47b8      	blx	r7
c0de346c:	4630      	mov	r0, r6
c0de346e:	4631      	mov	r1, r6
c0de3470:	aa96      	add	r2, sp, #600	@ 0x258
c0de3472:	4623      	mov	r3, r4
c0de3474:	47b8      	blx	r7
c0de3476:	f000 faf3 	bl	c0de3a60 <OUTLINED_FUNCTION_3>
c0de347a:	ae66      	add	r6, sp, #408	@ 0x198
c0de347c:	4641      	mov	r1, r8
c0de347e:	4642      	mov	r2, r8
c0de3480:	4623      	mov	r3, r4
c0de3482:	4630      	mov	r0, r6
c0de3484:	47d0      	blx	sl
c0de3486:	4630      	mov	r0, r6
c0de3488:	4631      	mov	r1, r6
c0de348a:	4642      	mov	r2, r8
c0de348c:	4623      	mov	r3, r4
c0de348e:	47d0      	blx	sl
c0de3490:	a84e      	add	r0, sp, #312	@ 0x138
c0de3492:	4631      	mov	r1, r6
c0de3494:	4622      	mov	r2, r4
c0de3496:	47a8      	blx	r5
c0de3498:	4d37      	ldr	r5, [pc, #220]	@ (c0de3578 <dbl_step_raw+0x188>)
c0de349a:	f8dd 8010 	ldr.w	r8, [sp, #16]
c0de349e:	4631      	mov	r1, r6
c0de34a0:	4623      	mov	r3, r4
c0de34a2:	447d      	add	r5, pc
c0de34a4:	4640      	mov	r0, r8
c0de34a6:	9505      	str	r5, [sp, #20]
c0de34a8:	aa36      	add	r2, sp, #216	@ 0xd8
c0de34aa:	47a8      	blx	r5
c0de34ac:	ae06      	add	r6, sp, #24
c0de34ae:	a9ae      	add	r1, sp, #696	@ 0x2b8
c0de34b0:	4623      	mov	r3, r4
c0de34b2:	4630      	mov	r0, r6
c0de34b4:	460a      	mov	r2, r1
c0de34b6:	47d0      	blx	sl
c0de34b8:	4640      	mov	r0, r8
c0de34ba:	4641      	mov	r1, r8
c0de34bc:	4632      	mov	r2, r6
c0de34be:	4623      	mov	r3, r4
c0de34c0:	46b8      	mov	r8, r7
c0de34c2:	47b8      	blx	r7
c0de34c4:	a97e      	add	r1, sp, #504	@ 0x1f8
c0de34c6:	4630      	mov	r0, r6
c0de34c8:	4623      	mov	r3, r4
c0de34ca:	460a      	mov	r2, r1
c0de34cc:	47d0      	blx	sl
c0de34ce:	9d02      	ldr	r5, [sp, #8]
c0de34d0:	a94e      	add	r1, sp, #312	@ 0x138
c0de34d2:	4632      	mov	r2, r6
c0de34d4:	4623      	mov	r3, r4
c0de34d6:	4628      	mov	r0, r5
c0de34d8:	47b8      	blx	r7
c0de34da:	9f03      	ldr	r7, [sp, #12]
c0de34dc:	4658      	mov	r0, fp
c0de34de:	465a      	mov	r2, fp
c0de34e0:	4623      	mov	r3, r4
c0de34e2:	4639      	mov	r1, r7
c0de34e4:	47d0      	blx	sl
c0de34e6:	9b01      	ldr	r3, [sp, #4]
c0de34e8:	4658      	mov	r0, fp
c0de34ea:	4659      	mov	r1, fp
c0de34ec:	4622      	mov	r2, r4
c0de34ee:	4798      	blx	r3
c0de34f0:	4658      	mov	r0, fp
c0de34f2:	4659      	mov	r1, fp
c0de34f4:	aaae      	add	r2, sp, #696	@ 0x2b8
c0de34f6:	4623      	mov	r3, r4
c0de34f8:	47c0      	blx	r8
c0de34fa:	4658      	mov	r0, fp
c0de34fc:	4659      	mov	r1, fp
c0de34fe:	aa1e      	add	r2, sp, #120	@ 0x78
c0de3500:	4623      	mov	r3, r4
c0de3502:	47c0      	blx	r8
c0de3504:	4638      	mov	r0, r7
c0de3506:	a97e      	add	r1, sp, #504	@ 0x1f8
c0de3508:	462a      	mov	r2, r5
c0de350a:	4623      	mov	r3, r4
c0de350c:	47c0      	blx	r8
c0de350e:	a966      	add	r1, sp, #408	@ 0x198
c0de3510:	9d05      	ldr	r5, [sp, #20]
c0de3512:	4638      	mov	r0, r7
c0de3514:	463a      	mov	r2, r7
c0de3516:	4623      	mov	r3, r4
c0de3518:	47a8      	blx	r5
c0de351a:	ae96      	add	r6, sp, #600	@ 0x258
c0de351c:	4623      	mov	r3, r4
c0de351e:	4630      	mov	r0, r6
c0de3520:	4631      	mov	r1, r6
c0de3522:	4632      	mov	r2, r6
c0de3524:	47d0      	blx	sl
c0de3526:	f000 fa9b 	bl	c0de3a60 <OUTLINED_FUNCTION_3>
c0de352a:	f000 fa99 	bl	c0de3a60 <OUTLINED_FUNCTION_3>
c0de352e:	4638      	mov	r0, r7
c0de3530:	4639      	mov	r1, r7
c0de3532:	4632      	mov	r2, r6
c0de3534:	4623      	mov	r3, r4
c0de3536:	47c0      	blx	r8
c0de3538:	f8dd 8010 	ldr.w	r8, [sp, #16]
c0de353c:	a966      	add	r1, sp, #408	@ 0x198
c0de353e:	af1e      	add	r7, sp, #120	@ 0x78
c0de3540:	9e05      	ldr	r6, [sp, #20]
c0de3542:	4623      	mov	r3, r4
c0de3544:	463a      	mov	r2, r7
c0de3546:	f108 0560 	add.w	r5, r8, #96	@ 0x60
c0de354a:	4628      	mov	r0, r5
c0de354c:	47b0      	blx	r6
c0de354e:	4628      	mov	r0, r5
c0de3550:	4629      	mov	r1, r5
c0de3552:	4622      	mov	r2, r4
c0de3554:	f7fe fb4f 	bl	c0de1bf6 <zkn_fp2_384_neg>
c0de3558:	f108 00c0 	add.w	r0, r8, #192	@ 0xc0
c0de355c:	4659      	mov	r1, fp
c0de355e:	463a      	mov	r2, r7
c0de3560:	4623      	mov	r3, r4
c0de3562:	47b0      	blx	r6
c0de3564:	f50d 7d5e 	add.w	sp, sp, #888	@ 0x378
c0de3568:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de356c:	ffffe8b1 	.word	0xffffe8b1
c0de3570:	ffffe76f 	.word	0xffffe76f
c0de3574:	ffffe76f 	.word	0xffffe76f
c0de3578:	ffffe78f 	.word	0xffffe78f

c0de357c <apply_p_to_line>:
c0de357c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3580:	4698      	mov	r8, r3
c0de3582:	4615      	mov	r5, r2
c0de3584:	460e      	mov	r6, r1
c0de3586:	4607      	mov	r7, r0
c0de3588:	f7fe fb06 	bl	c0de1b98 <zkn_fp2_384_copy>
c0de358c:	9c06      	ldr	r4, [sp, #24]
c0de358e:	f107 0060 	add.w	r0, r7, #96	@ 0x60
c0de3592:	f106 0160 	add.w	r1, r6, #96	@ 0x60
c0de3596:	462a      	mov	r2, r5
c0de3598:	4623      	mov	r3, r4
c0de359a:	f7fe fc3c 	bl	c0de1e16 <zkn_fp2_384_mul_by_fp>
c0de359e:	f107 00c0 	add.w	r0, r7, #192	@ 0xc0
c0de35a2:	f106 01c0 	add.w	r1, r6, #192	@ 0xc0
c0de35a6:	4642      	mov	r2, r8
c0de35a8:	4623      	mov	r3, r4
c0de35aa:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de35ae:	f7fe bc32 	b.w	c0de1e16 <zkn_fp2_384_mul_by_fp>
	...

c0de35b4 <zkn_miller_loop_n>:
c0de35b4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de35b8:	f6ad 3d98 	subw	sp, sp, #2968	@ 0xb98
c0de35bc:	9009      	str	r0, [sp, #36]	@ 0x24
c0de35be:	f50d 60bf 	add.w	r0, sp, #1528	@ 0x5f8
c0de35c2:	e9cd 120c 	strd	r1, r2, [sp, #48]	@ 0x30
c0de35c6:	f8dd 4bb8 	ldr.w	r4, [sp, #3000]	@ 0xbb8
c0de35ca:	469b      	mov	fp, r3
c0de35cc:	2600      	movs	r6, #0
c0de35ce:	f04f 0800 	mov.w	r8, #0
c0de35d2:	9308      	str	r3, [sp, #32]
c0de35d4:	f500 7090 	add.w	r0, r0, #288	@ 0x120
c0de35d8:	9007      	str	r0, [sp, #28]
c0de35da:	f60d 1058 	addw	r0, sp, #2392	@ 0x958
c0de35de:	f100 01c0 	add.w	r1, r0, #192	@ 0xc0
c0de35e2:	3060      	adds	r0, #96	@ 0x60
c0de35e4:	900e      	str	r0, [sp, #56]	@ 0x38
c0de35e6:	1e58      	subs	r0, r3, #1
c0de35e8:	910f      	str	r1, [sp, #60]	@ 0x3c
c0de35ea:	9006      	str	r0, [sp, #24]
c0de35ec:	455e      	cmp	r6, fp
c0de35ee:	f000 80e6 	beq.w	c0de37be <zkn_miller_loop_n+0x20a>
c0de35f2:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de35f4:	f850 7026 	ldr.w	r7, [r0, r6, lsl #2]
c0de35f8:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de35fa:	f850 5026 	ldr.w	r5, [r0, r6, lsl #2]
c0de35fe:	4628      	mov	r0, r5
c0de3600:	f7fe ff86 	bl	c0de2510 <zkn_g1_384_is_zero>
c0de3604:	2800      	cmp	r0, #0
c0de3606:	f040 80d8 	bne.w	c0de37ba <zkn_miller_loop_n+0x206>
c0de360a:	4638      	mov	r0, r7
c0de360c:	f7ff fa5c 	bl	c0de2ac8 <zkn_g2_384_is_zero>
c0de3610:	2800      	cmp	r0, #0
c0de3612:	f040 80d2 	bne.w	c0de37ba <zkn_miller_loop_n+0x206>
c0de3616:	eb08 0b48 	add.w	fp, r8, r8, lsl #1
c0de361a:	a8ca      	add	r0, sp, #808	@ 0x328
c0de361c:	4623      	mov	r3, r4
c0de361e:	eb00 120b 	add.w	r2, r0, fp, lsl #4
c0de3622:	920b      	str	r2, [sp, #44]	@ 0x2c
c0de3624:	a8a6      	add	r0, sp, #664	@ 0x298
c0de3626:	eb00 110b 	add.w	r1, r0, fp, lsl #4
c0de362a:	4610      	mov	r0, r2
c0de362c:	462a      	mov	r2, r5
c0de362e:	910a      	str	r1, [sp, #40]	@ 0x28
c0de3630:	f7ff fecc 	bl	c0de33cc <g1_affine_to_mont>
c0de3634:	f50d 609b 	add.w	r0, sp, #1240	@ 0x4d8
c0de3638:	463a      	mov	r2, r7
c0de363a:	4623      	mov	r3, r4
c0de363c:	eb00 154b 	add.w	r5, r0, fp, lsl #5
c0de3640:	a8ee      	add	r0, sp, #952	@ 0x3b8
c0de3642:	eb00 1a4b 	add.w	sl, r0, fp, lsl #5
c0de3646:	4628      	mov	r0, r5
c0de3648:	4651      	mov	r1, sl
c0de364a:	f7ff faa7 	bl	c0de2b9c <zkn_g2_384_to_affine>
c0de364e:	a8a0      	add	r0, sp, #640	@ 0x280
c0de3650:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de3652:	f840 1028 	str.w	r1, [r0, r8, lsl #2]
c0de3656:	a8a3      	add	r0, sp, #652	@ 0x28c
c0de3658:	990b      	ldr	r1, [sp, #44]	@ 0x2c
c0de365a:	f840 1028 	str.w	r1, [r0, r8, lsl #2]
c0de365e:	eb08 00c8 	add.w	r0, r8, r8, lsl #3
c0de3662:	f50d 61bf 	add.w	r1, sp, #1528	@ 0x5f8
c0de3666:	eb01 1740 	add.w	r7, r1, r0, lsl #5
c0de366a:	4629      	mov	r1, r5
c0de366c:	4638      	mov	r0, r7
c0de366e:	f7fe fa93 	bl	c0de1b98 <zkn_fp2_384_copy>
c0de3672:	f000 fa0f 	bl	c0de3a94 <OUTLINED_FUNCTION_8>
c0de3676:	f000 fa08 	bl	c0de3a8a <OUTLINED_FUNCTION_7>
c0de367a:	f108 0801 	add.w	r8, r8, #1
c0de367e:	f1b8 0f03 	cmp.w	r8, #3
c0de3682:	d003      	beq.n	c0de368c <zkn_miller_loop_n+0xd8>
c0de3684:	9806      	ldr	r0, [sp, #24]
c0de3686:	4286      	cmp	r6, r0
c0de3688:	f040 8095 	bne.w	c0de37b6 <zkn_miller_loop_n+0x202>
c0de368c:	f60d 2778 	addw	r7, sp, #2680	@ 0xa78
c0de3690:	f50d 60bf 	add.w	r0, sp, #1528	@ 0x5f8
c0de3694:	4622      	mov	r2, r4
c0de3696:	4639      	mov	r1, r7
c0de3698:	f7ff feaa 	bl	c0de33f0 <dbl_step_raw>
c0de369c:	f60d 1558 	addw	r5, sp, #2392	@ 0x958
c0de36a0:	9ba0      	ldr	r3, [sp, #640]	@ 0x280
c0de36a2:	9aa3      	ldr	r2, [sp, #652]	@ 0x28c
c0de36a4:	4639      	mov	r1, r7
c0de36a6:	9400      	str	r4, [sp, #0]
c0de36a8:	4628      	mov	r0, r5
c0de36aa:	f7ff ff67 	bl	c0de357c <apply_p_to_line>
c0de36ae:	f10d 0b40 	add.w	fp, sp, #64	@ 0x40
c0de36b2:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de36b4:	960b      	str	r6, [sp, #44]	@ 0x2c
c0de36b6:	2e03      	cmp	r6, #3
c0de36b8:	4621      	mov	r1, r4
c0de36ba:	bf38      	it	cc
c0de36bc:	4683      	movcc	fp, r0
c0de36be:	4658      	mov	r0, fp
c0de36c0:	f7fd fe7b 	bl	c0de13ba <zkn_fp12_384_one>
c0de36c4:	980f      	ldr	r0, [sp, #60]	@ 0x3c
c0de36c6:	9b0e      	ldr	r3, [sp, #56]	@ 0x38
c0de36c8:	4659      	mov	r1, fp
c0de36ca:	462a      	mov	r2, r5
c0de36cc:	f000 f9d8 	bl	c0de3a80 <OUTLINED_FUNCTION_6>
c0de36d0:	9f07      	ldr	r7, [sp, #28]
c0de36d2:	2501      	movs	r5, #1
c0de36d4:	4545      	cmp	r5, r8
c0de36d6:	d21d      	bcs.n	c0de3714 <zkn_miller_loop_n+0x160>
c0de36d8:	f60d 2678 	addw	r6, sp, #2680	@ 0xa78
c0de36dc:	4638      	mov	r0, r7
c0de36de:	4622      	mov	r2, r4
c0de36e0:	4631      	mov	r1, r6
c0de36e2:	f7ff fe85 	bl	c0de33f0 <dbl_step_raw>
c0de36e6:	a8a0      	add	r0, sp, #640	@ 0x280
c0de36e8:	f60d 1a58 	addw	sl, sp, #2392	@ 0x958
c0de36ec:	4631      	mov	r1, r6
c0de36ee:	f850 3025 	ldr.w	r3, [r0, r5, lsl #2]
c0de36f2:	a8a3      	add	r0, sp, #652	@ 0x28c
c0de36f4:	9400      	str	r4, [sp, #0]
c0de36f6:	f850 2025 	ldr.w	r2, [r0, r5, lsl #2]
c0de36fa:	4650      	mov	r0, sl
c0de36fc:	f7ff ff3e 	bl	c0de357c <apply_p_to_line>
c0de3700:	980f      	ldr	r0, [sp, #60]	@ 0x3c
c0de3702:	9b0e      	ldr	r3, [sp, #56]	@ 0x38
c0de3704:	4659      	mov	r1, fp
c0de3706:	4652      	mov	r2, sl
c0de3708:	f000 f9ba 	bl	c0de3a80 <OUTLINED_FUNCTION_6>
c0de370c:	f507 7790 	add.w	r7, r7, #288	@ 0x120
c0de3710:	3501      	adds	r5, #1
c0de3712:	e7df      	b.n	c0de36d4 <zkn_miller_loop_n+0x120>
c0de3714:	aea3      	add	r6, sp, #652	@ 0x28c
c0de3716:	f50d 61bf 	add.w	r1, sp, #1528	@ 0x5f8
c0de371a:	f50d 629b 	add.w	r2, sp, #1240	@ 0x4d8
c0de371e:	9600      	str	r6, [sp, #0]
c0de3720:	a8a0      	add	r0, sp, #640	@ 0x280
c0de3722:	e9cd 0801 	strd	r0, r8, [sp, #4]
c0de3726:	2002      	movs	r0, #2
c0de3728:	e9cd 0403 	strd	r0, r4, [sp, #12]
c0de372c:	4658      	mov	r0, fp
c0de372e:	4d29      	ldr	r5, [pc, #164]	@ (c0de37d4 <zkn_miller_loop_n+0x220>)
c0de3730:	abee      	add	r3, sp, #952	@ 0x3b8
c0de3732:	447d      	add	r5, pc
c0de3734:	47a8      	blx	r5
c0de3736:	9600      	str	r6, [sp, #0]
c0de3738:	afa0      	add	r7, sp, #640	@ 0x280
c0de373a:	2003      	movs	r0, #3
c0de373c:	f50d 6abf 	add.w	sl, sp, #1528	@ 0x5f8
c0de3740:	f50d 629b 	add.w	r2, sp, #1240	@ 0x4d8
c0de3744:	e9cd 0403 	strd	r0, r4, [sp, #12]
c0de3748:	e9cd 7801 	strd	r7, r8, [sp, #4]
c0de374c:	4658      	mov	r0, fp
c0de374e:	4651      	mov	r1, sl
c0de3750:	abee      	add	r3, sp, #952	@ 0x3b8
c0de3752:	47a8      	blx	r5
c0de3754:	2009      	movs	r0, #9
c0de3756:	e88d 01c0 	stmia.w	sp, {r6, r7, r8}
c0de375a:	4651      	mov	r1, sl
c0de375c:	f50d 629b 	add.w	r2, sp, #1240	@ 0x4d8
c0de3760:	e9cd 0403 	strd	r0, r4, [sp, #12]
c0de3764:	4658      	mov	r0, fp
c0de3766:	abee      	add	r3, sp, #952	@ 0x3b8
c0de3768:	47a8      	blx	r5
c0de376a:	2020      	movs	r0, #32
c0de376c:	e88d 01c0 	stmia.w	sp, {r6, r7, r8}
c0de3770:	4651      	mov	r1, sl
c0de3772:	f50d 629b 	add.w	r2, sp, #1240	@ 0x4d8
c0de3776:	e9cd 0403 	strd	r0, r4, [sp, #12]
c0de377a:	4658      	mov	r0, fp
c0de377c:	abee      	add	r3, sp, #952	@ 0x3b8
c0de377e:	47a8      	blx	r5
c0de3780:	2010      	movs	r0, #16
c0de3782:	e88d 01c0 	stmia.w	sp, {r6, r7, r8}
c0de3786:	4651      	mov	r1, sl
c0de3788:	f50d 629b 	add.w	r2, sp, #1240	@ 0x4d8
c0de378c:	e9cd 0403 	strd	r0, r4, [sp, #12]
c0de3790:	4658      	mov	r0, fp
c0de3792:	abee      	add	r3, sp, #952	@ 0x3b8
c0de3794:	47a8      	blx	r5
c0de3796:	4658      	mov	r0, fp
c0de3798:	4659      	mov	r1, fp
c0de379a:	4622      	mov	r2, r4
c0de379c:	f7fd fe29 	bl	c0de13f2 <zkn_fp12_384_conjugate>
c0de37a0:	9e0b      	ldr	r6, [sp, #44]	@ 0x2c
c0de37a2:	2e03      	cmp	r6, #3
c0de37a4:	d305      	bcc.n	c0de37b2 <zkn_miller_loop_n+0x1fe>
c0de37a6:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de37a8:	aa10      	add	r2, sp, #64	@ 0x40
c0de37aa:	4623      	mov	r3, r4
c0de37ac:	4601      	mov	r1, r0
c0de37ae:	f7fd fe2f 	bl	c0de1410 <zkn_fp12_384_mul>
c0de37b2:	f04f 0800 	mov.w	r8, #0
c0de37b6:	f8dd b020 	ldr.w	fp, [sp, #32]
c0de37ba:	3601      	adds	r6, #1
c0de37bc:	e716      	b.n	c0de35ec <zkn_miller_loop_n+0x38>
c0de37be:	ea58 000b 	orrs.w	r0, r8, fp
c0de37c2:	d103      	bne.n	c0de37cc <zkn_miller_loop_n+0x218>
c0de37c4:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de37c6:	4621      	mov	r1, r4
c0de37c8:	f7fd fdf7 	bl	c0de13ba <zkn_fp12_384_one>
c0de37cc:	f60d 3d98 	addw	sp, sp, #2968	@ 0xb98
c0de37d0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de37d4:	000000a3 	.word	0x000000a3

c0de37d8 <add_n_dbl_n>:
c0de37d8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de37dc:	f5ad 7d1a 	sub.w	sp, sp, #616	@ 0x268
c0de37e0:	9009      	str	r0, [sp, #36]	@ 0x24
c0de37e2:	ac0a      	add	r4, sp, #40	@ 0x28
c0de37e4:	e9dd 67a4 	ldrd	r6, r7, [sp, #656]	@ 0x290
c0de37e8:	4698      	mov	r8, r3
c0de37ea:	4692      	mov	sl, r2
c0de37ec:	460d      	mov	r5, r1
c0de37ee:	9103      	str	r1, [sp, #12]
c0de37f0:	f104 00c0 	add.w	r0, r4, #192	@ 0xc0
c0de37f4:	9008      	str	r0, [sp, #32]
c0de37f6:	f104 0060 	add.w	r0, r4, #96	@ 0x60
c0de37fa:	9007      	str	r0, [sp, #28]
c0de37fc:	e9dd 40a2 	ldrd	r4, r0, [sp, #648]	@ 0x288
c0de3800:	e9cd 4005 	strd	r4, r0, [sp, #20]
c0de3804:	2e00      	cmp	r6, #0
c0de3806:	d04f      	beq.n	c0de38a8 <add_n_dbl_n+0xd0>
c0de3808:	9ca6      	ldr	r4, [sp, #664]	@ 0x298
c0de380a:	9604      	str	r6, [sp, #16]
c0de380c:	4628      	mov	r0, r5
c0de380e:	4652      	mov	r2, sl
c0de3810:	4643      	mov	r3, r8
c0de3812:	9400      	str	r4, [sp, #0]
c0de3814:	ae52      	add	r6, sp, #328	@ 0x148
c0de3816:	4631      	mov	r1, r6
c0de3818:	f000 f84c 	bl	c0de38b4 <add_step_raw>
c0de381c:	9806      	ldr	r0, [sp, #24]
c0de381e:	f10d 0b28 	add.w	fp, sp, #40	@ 0x28
c0de3822:	4631      	mov	r1, r6
c0de3824:	c808      	ldmia	r0!, {r3}
c0de3826:	9006      	str	r0, [sp, #24]
c0de3828:	9805      	ldr	r0, [sp, #20]
c0de382a:	c804      	ldmia	r0!, {r2}
c0de382c:	9400      	str	r4, [sp, #0]
c0de382e:	9005      	str	r0, [sp, #20]
c0de3830:	4658      	mov	r0, fp
c0de3832:	f7ff fea3 	bl	c0de357c <apply_p_to_line>
c0de3836:	9808      	ldr	r0, [sp, #32]
c0de3838:	9b07      	ldr	r3, [sp, #28]
c0de383a:	465a      	mov	r2, fp
c0de383c:	f000 f915 	bl	c0de3a6a <OUTLINED_FUNCTION_4>
c0de3840:	9e04      	ldr	r6, [sp, #16]
c0de3842:	f108 0860 	add.w	r8, r8, #96	@ 0x60
c0de3846:	f10a 0a60 	add.w	sl, sl, #96	@ 0x60
c0de384a:	f505 7590 	add.w	r5, r5, #288	@ 0x120
c0de384e:	3e01      	subs	r6, #1
c0de3850:	e7d8      	b.n	c0de3804 <add_n_dbl_n+0x2c>
c0de3852:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de3854:	9aa6      	ldr	r2, [sp, #664]	@ 0x298
c0de3856:	3f01      	subs	r7, #1
c0de3858:	9706      	str	r7, [sp, #24]
c0de385a:	4601      	mov	r1, r0
c0de385c:	f7fd fe2e 	bl	c0de14bc <zkn_fp12_384_sqr>
c0de3860:	e9dd 8ba2 	ldrd	r8, fp, [sp, #648]	@ 0x288
c0de3864:	9f03      	ldr	r7, [sp, #12]
c0de3866:	f8dd a290 	ldr.w	sl, [sp, #656]	@ 0x290
c0de386a:	f1ba 0f00 	cmp.w	sl, #0
c0de386e:	d01a      	beq.n	c0de38a6 <add_n_dbl_n+0xce>
c0de3870:	9ca6      	ldr	r4, [sp, #664]	@ 0x298
c0de3872:	ae52      	add	r6, sp, #328	@ 0x148
c0de3874:	4638      	mov	r0, r7
c0de3876:	4631      	mov	r1, r6
c0de3878:	4622      	mov	r2, r4
c0de387a:	f7ff fdb9 	bl	c0de33f0 <dbl_step_raw>
c0de387e:	f85b 3b04 	ldr.w	r3, [fp], #4
c0de3882:	f858 2b04 	ldr.w	r2, [r8], #4
c0de3886:	9400      	str	r4, [sp, #0]
c0de3888:	ad0a      	add	r5, sp, #40	@ 0x28
c0de388a:	4631      	mov	r1, r6
c0de388c:	4628      	mov	r0, r5
c0de388e:	f7ff fe75 	bl	c0de357c <apply_p_to_line>
c0de3892:	9808      	ldr	r0, [sp, #32]
c0de3894:	9b07      	ldr	r3, [sp, #28]
c0de3896:	462a      	mov	r2, r5
c0de3898:	f000 f8e7 	bl	c0de3a6a <OUTLINED_FUNCTION_4>
c0de389c:	f507 7790 	add.w	r7, r7, #288	@ 0x120
c0de38a0:	f1aa 0a01 	sub.w	sl, sl, #1
c0de38a4:	e7e1      	b.n	c0de386a <add_n_dbl_n+0x92>
c0de38a6:	9f06      	ldr	r7, [sp, #24]
c0de38a8:	2f00      	cmp	r7, #0
c0de38aa:	d1d2      	bne.n	c0de3852 <add_n_dbl_n+0x7a>
c0de38ac:	f50d 7d1a 	add.w	sp, sp, #616	@ 0x268
c0de38b0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de38b4 <add_step_raw>:
c0de38b4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de38b8:	f5ad 6d94 	sub.w	sp, sp, #1184	@ 0x4a0
c0de38bc:	e9cd 2104 	strd	r2, r1, [sp, #16]
c0de38c0:	f100 0160 	add.w	r1, r0, #96	@ 0x60
c0de38c4:	9303      	str	r3, [sp, #12]
c0de38c6:	4683      	mov	fp, r0
c0de38c8:	461d      	mov	r5, r3
c0de38ca:	4690      	mov	r8, r2
c0de38cc:	9102      	str	r1, [sp, #8]
c0de38ce:	a820      	add	r0, sp, #128	@ 0x80
c0de38d0:	f7fe f962 	bl	c0de1b98 <zkn_fp2_384_copy>
c0de38d4:	4b5a      	ldr	r3, [pc, #360]	@ (c0de3a40 <add_step_raw+0x18c>)
c0de38d6:	f8dd 64c0 	ldr.w	r6, [sp, #1216]	@ 0x4c0
c0de38da:	f10b 0ac0 	add.w	sl, fp, #192	@ 0xc0
c0de38de:	f50d 6488 	add.w	r4, sp, #1088	@ 0x440
c0de38e2:	4620      	mov	r0, r4
c0de38e4:	4651      	mov	r1, sl
c0de38e6:	447b      	add	r3, pc
c0de38e8:	4632      	mov	r2, r6
c0de38ea:	9307      	str	r3, [sp, #28]
c0de38ec:	4798      	blx	r3
c0de38ee:	a8f8      	add	r0, sp, #992	@ 0x3e0
c0de38f0:	4f54      	ldr	r7, [pc, #336]	@ (c0de3a44 <add_step_raw+0x190>)
c0de38f2:	4621      	mov	r1, r4
c0de38f4:	4652      	mov	r2, sl
c0de38f6:	4633      	mov	r3, r6
c0de38f8:	447f      	add	r7, pc
c0de38fa:	47b8      	blx	r7
c0de38fc:	a8e0      	add	r0, sp, #896	@ 0x380
c0de38fe:	4641      	mov	r1, r8
c0de3900:	4622      	mov	r2, r4
c0de3902:	4633      	mov	r3, r6
c0de3904:	47b8      	blx	r7
c0de3906:	a8c8      	add	r0, sp, #800	@ 0x320
c0de3908:	4629      	mov	r1, r5
c0de390a:	aaf8      	add	r2, sp, #992	@ 0x3e0
c0de390c:	4633      	mov	r3, r6
c0de390e:	47b8      	blx	r7
c0de3910:	46b8      	mov	r8, r7
c0de3912:	9701      	str	r7, [sp, #4]
c0de3914:	afb0      	add	r7, sp, #704	@ 0x2c0
c0de3916:	4c4c      	ldr	r4, [pc, #304]	@ (c0de3a48 <add_step_raw+0x194>)
c0de3918:	a9e0      	add	r1, sp, #896	@ 0x380
c0de391a:	465a      	mov	r2, fp
c0de391c:	4633      	mov	r3, r6
c0de391e:	4638      	mov	r0, r7
c0de3920:	447c      	add	r4, pc
c0de3922:	47a0      	blx	r4
c0de3924:	9400      	str	r4, [sp, #0]
c0de3926:	a898      	add	r0, sp, #608	@ 0x260
c0de3928:	9b07      	ldr	r3, [sp, #28]
c0de392a:	4639      	mov	r1, r7
c0de392c:	4632      	mov	r2, r6
c0de392e:	4625      	mov	r5, r4
c0de3930:	4798      	blx	r3
c0de3932:	ac80      	add	r4, sp, #512	@ 0x200
c0de3934:	4f45      	ldr	r7, [pc, #276]	@ (c0de3a4c <add_step_raw+0x198>)
c0de3936:	4633      	mov	r3, r6
c0de3938:	4620      	mov	r0, r4
c0de393a:	447f      	add	r7, pc
c0de393c:	9706      	str	r7, [sp, #24]
c0de393e:	a998      	add	r1, sp, #608	@ 0x260
c0de3940:	460a      	mov	r2, r1
c0de3942:	47b8      	blx	r7
c0de3944:	4620      	mov	r0, r4
c0de3946:	4621      	mov	r1, r4
c0de3948:	4622      	mov	r2, r4
c0de394a:	4633      	mov	r3, r6
c0de394c:	47b8      	blx	r7
c0de394e:	a868      	add	r0, sp, #416	@ 0x1a0
c0de3950:	a9b0      	add	r1, sp, #704	@ 0x2c0
c0de3952:	4622      	mov	r2, r4
c0de3954:	4633      	mov	r3, r6
c0de3956:	47c0      	blx	r8
c0de3958:	af50      	add	r7, sp, #320	@ 0x140
c0de395a:	a9c8      	add	r1, sp, #800	@ 0x320
c0de395c:	aa20      	add	r2, sp, #128	@ 0x80
c0de395e:	4633      	mov	r3, r6
c0de3960:	4638      	mov	r0, r7
c0de3962:	47a8      	blx	r5
c0de3964:	4638      	mov	r0, r7
c0de3966:	4639      	mov	r1, r7
c0de3968:	463a      	mov	r2, r7
c0de396a:	9f06      	ldr	r7, [sp, #24]
c0de396c:	4633      	mov	r3, r6
c0de396e:	47b8      	blx	r7
c0de3970:	a838      	add	r0, sp, #224	@ 0xe0
c0de3972:	4659      	mov	r1, fp
c0de3974:	4622      	mov	r2, r4
c0de3976:	4633      	mov	r3, r6
c0de3978:	47c0      	blx	r8
c0de397a:	a950      	add	r1, sp, #320	@ 0x140
c0de397c:	9c07      	ldr	r4, [sp, #28]
c0de397e:	4658      	mov	r0, fp
c0de3980:	4632      	mov	r2, r6
c0de3982:	47a0      	blx	r4
c0de3984:	4658      	mov	r0, fp
c0de3986:	4659      	mov	r1, fp
c0de3988:	aa68      	add	r2, sp, #416	@ 0x1a0
c0de398a:	4633      	mov	r3, r6
c0de398c:	47a8      	blx	r5
c0de398e:	f10d 0820 	add.w	r8, sp, #32
c0de3992:	a938      	add	r1, sp, #224	@ 0xe0
c0de3994:	4633      	mov	r3, r6
c0de3996:	4640      	mov	r0, r8
c0de3998:	460a      	mov	r2, r1
c0de399a:	47b8      	blx	r7
c0de399c:	4658      	mov	r0, fp
c0de399e:	4659      	mov	r1, fp
c0de39a0:	4642      	mov	r2, r8
c0de39a2:	4633      	mov	r3, r6
c0de39a4:	47a8      	blx	r5
c0de39a6:	4650      	mov	r0, sl
c0de39a8:	4651      	mov	r1, sl
c0de39aa:	aab0      	add	r2, sp, #704	@ 0x2c0
c0de39ac:	4633      	mov	r3, r6
c0de39ae:	47b8      	blx	r7
c0de39b0:	4650      	mov	r0, sl
c0de39b2:	4651      	mov	r1, sl
c0de39b4:	4632      	mov	r2, r6
c0de39b6:	47a0      	blx	r4
c0de39b8:	4650      	mov	r0, sl
c0de39ba:	4651      	mov	r1, sl
c0de39bc:	f50d 6288 	add.w	r2, sp, #1088	@ 0x440
c0de39c0:	4633      	mov	r3, r6
c0de39c2:	47a8      	blx	r5
c0de39c4:	4650      	mov	r0, sl
c0de39c6:	4651      	mov	r1, sl
c0de39c8:	aa98      	add	r2, sp, #608	@ 0x260
c0de39ca:	4633      	mov	r3, r6
c0de39cc:	47a8      	blx	r5
c0de39ce:	4640      	mov	r0, r8
c0de39d0:	a938      	add	r1, sp, #224	@ 0xe0
c0de39d2:	465a      	mov	r2, fp
c0de39d4:	4633      	mov	r3, r6
c0de39d6:	47a8      	blx	r5
c0de39d8:	9c02      	ldr	r4, [sp, #8]
c0de39da:	f50d 7ba0 	add.w	fp, sp, #320	@ 0x140
c0de39de:	9f01      	ldr	r7, [sp, #4]
c0de39e0:	4642      	mov	r2, r8
c0de39e2:	4633      	mov	r3, r6
c0de39e4:	4659      	mov	r1, fp
c0de39e6:	4620      	mov	r0, r4
c0de39e8:	47b8      	blx	r7
c0de39ea:	a920      	add	r1, sp, #128	@ 0x80
c0de39ec:	4640      	mov	r0, r8
c0de39ee:	aa68      	add	r2, sp, #416	@ 0x1a0
c0de39f0:	4633      	mov	r3, r6
c0de39f2:	47b8      	blx	r7
c0de39f4:	9d06      	ldr	r5, [sp, #24]
c0de39f6:	4640      	mov	r0, r8
c0de39f8:	4641      	mov	r1, r8
c0de39fa:	4642      	mov	r2, r8
c0de39fc:	4633      	mov	r3, r6
c0de39fe:	47a8      	blx	r5
c0de3a00:	9d00      	ldr	r5, [sp, #0]
c0de3a02:	f000 f838 	bl	c0de3a76 <OUTLINED_FUNCTION_5>
c0de3a06:	9c05      	ldr	r4, [sp, #20]
c0de3a08:	9a04      	ldr	r2, [sp, #16]
c0de3a0a:	4659      	mov	r1, fp
c0de3a0c:	4633      	mov	r3, r6
c0de3a0e:	4620      	mov	r0, r4
c0de3a10:	47b8      	blx	r7
c0de3a12:	9903      	ldr	r1, [sp, #12]
c0de3a14:	4640      	mov	r0, r8
c0de3a16:	4652      	mov	r2, sl
c0de3a18:	4633      	mov	r3, r6
c0de3a1a:	47b8      	blx	r7
c0de3a1c:	f000 f82b 	bl	c0de3a76 <OUTLINED_FUNCTION_5>
c0de3a20:	f104 0060 	add.w	r0, r4, #96	@ 0x60
c0de3a24:	4659      	mov	r1, fp
c0de3a26:	4632      	mov	r2, r6
c0de3a28:	f7fe f8e5 	bl	c0de1bf6 <zkn_fp2_384_neg>
c0de3a2c:	f104 00c0 	add.w	r0, r4, #192	@ 0xc0
c0de3a30:	4651      	mov	r1, sl
c0de3a32:	f7fe f8b1 	bl	c0de1b98 <zkn_fp2_384_copy>
c0de3a36:	f50d 6d94 	add.w	sp, sp, #1184	@ 0x4a0
c0de3a3a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3a3e:	bf00      	nop
c0de3a40:	ffffe3df 	.word	0xffffe3df
c0de3a44:	ffffe339 	.word	0xffffe339
c0de3a48:	ffffe2b7 	.word	0xffffe2b7
c0de3a4c:	ffffe281 	.word	0xffffe281

c0de3a50 <OUTLINED_FUNCTION_2>:
c0de3a50:	4628      	mov	r0, r5
c0de3a52:	4629      	mov	r1, r5
c0de3a54:	4642      	mov	r2, r8
c0de3a56:	4653      	mov	r3, sl
c0de3a58:	e9cd 7400 	strd	r7, r4, [sp]
c0de3a5c:	f7fd bd74 	b.w	c0de1548 <zkn_fp12_384_mul_by_014>

c0de3a60 <OUTLINED_FUNCTION_3>:
c0de3a60:	4630      	mov	r0, r6
c0de3a62:	4631      	mov	r1, r6
c0de3a64:	4632      	mov	r2, r6
c0de3a66:	4623      	mov	r3, r4
c0de3a68:	4750      	bx	sl

c0de3a6a <OUTLINED_FUNCTION_4>:
c0de3a6a:	e9cd 0400 	strd	r0, r4, [sp]
c0de3a6e:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de3a70:	4601      	mov	r1, r0
c0de3a72:	f7fd bd69 	b.w	c0de1548 <zkn_fp12_384_mul_by_014>

c0de3a76 <OUTLINED_FUNCTION_5>:
c0de3a76:	4620      	mov	r0, r4
c0de3a78:	4621      	mov	r1, r4
c0de3a7a:	4642      	mov	r2, r8
c0de3a7c:	4633      	mov	r3, r6
c0de3a7e:	4728      	bx	r5

c0de3a80 <OUTLINED_FUNCTION_6>:
c0de3a80:	e9cd 0400 	strd	r0, r4, [sp]
c0de3a84:	4658      	mov	r0, fp
c0de3a86:	f7fd bd5f 	b.w	c0de1548 <zkn_fp12_384_mul_by_014>

c0de3a8a <OUTLINED_FUNCTION_7>:
c0de3a8a:	f107 00c0 	add.w	r0, r7, #192	@ 0xc0
c0de3a8e:	4621      	mov	r1, r4
c0de3a90:	f7fe b876 	b.w	c0de1b80 <zkn_fp2_384_one>

c0de3a94 <OUTLINED_FUNCTION_8>:
c0de3a94:	f107 0060 	add.w	r0, r7, #96	@ 0x60
c0de3a98:	4651      	mov	r1, sl
c0de3a9a:	f7fe b87d 	b.w	c0de1b98 <zkn_fp2_384_copy>

c0de3a9e <zkn_mont384_compute_n0>:
c0de3a9e:	2105      	movs	r1, #5
c0de3aa0:	4602      	mov	r2, r0
c0de3aa2:	b131      	cbz	r1, c0de3ab2 <zkn_mont384_compute_n0+0x14>
c0de3aa4:	fb02 f300 	mul.w	r3, r2, r0
c0de3aa8:	3901      	subs	r1, #1
c0de3aaa:	f1c3 0302 	rsb	r3, r3, #2
c0de3aae:	435a      	muls	r2, r3
c0de3ab0:	e7f7      	b.n	c0de3aa2 <zkn_mont384_compute_n0+0x4>
c0de3ab2:	4250      	negs	r0, r2
c0de3ab4:	4770      	bx	lr

c0de3ab6 <zkn_mont_ctx384_init>:
c0de3ab6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3aba:	b098      	sub	sp, #96	@ 0x60
c0de3abc:	2230      	movs	r2, #48	@ 0x30
c0de3abe:	460d      	mov	r5, r1
c0de3ac0:	4680      	mov	r8, r0
c0de3ac2:	f004 ff1b 	bl	c0de88fc <__aeabi_memcpy>
c0de3ac6:	6828      	ldr	r0, [r5, #0]
c0de3ac8:	f7ff ffe9 	bl	c0de3a9e <zkn_mont384_compute_n0>
c0de3acc:	f108 0664 	add.w	r6, r8, #100	@ 0x64
c0de3ad0:	f8c8 0030 	str.w	r0, [r8, #48]	@ 0x30
c0de3ad4:	2130      	movs	r1, #48	@ 0x30
c0de3ad6:	4630      	mov	r0, r6
c0de3ad8:	f004 ff1a 	bl	c0de8910 <__aeabi_memclr>
c0de3adc:	af0c      	add	r7, sp, #48	@ 0x30
c0de3ade:	212c      	movs	r1, #44	@ 0x2c
c0de3ae0:	1d38      	adds	r0, r7, #4
c0de3ae2:	f004 ff15 	bl	c0de8910 <__aeabi_memclr>
c0de3ae6:	2001      	movs	r0, #1
c0de3ae8:	f44f 74c0 	mov.w	r4, #384	@ 0x180
c0de3aec:	900c      	str	r0, [sp, #48]	@ 0x30
c0de3aee:	b13c      	cbz	r4, c0de3b00 <zkn_mont_ctx384_init+0x4a>
c0de3af0:	4638      	mov	r0, r7
c0de3af2:	4639      	mov	r1, r7
c0de3af4:	463a      	mov	r2, r7
c0de3af6:	462b      	mov	r3, r5
c0de3af8:	f000 fab4 	bl	c0de4064 <zkn_add_mod_384>
c0de3afc:	3c01      	subs	r4, #1
c0de3afe:	e7f6      	b.n	c0de3aee <zkn_mont_ctx384_init+0x38>
c0de3b00:	af0c      	add	r7, sp, #48	@ 0x30
c0de3b02:	4630      	mov	r0, r6
c0de3b04:	2230      	movs	r2, #48	@ 0x30
c0de3b06:	4639      	mov	r1, r7
c0de3b08:	f004 fef8 	bl	c0de88fc <__aeabi_memcpy>
c0de3b0c:	466e      	mov	r6, sp
c0de3b0e:	4639      	mov	r1, r7
c0de3b10:	2230      	movs	r2, #48	@ 0x30
c0de3b12:	4630      	mov	r0, r6
c0de3b14:	f004 fef2 	bl	c0de88fc <__aeabi_memcpy>
c0de3b18:	f44f 74c0 	mov.w	r4, #384	@ 0x180
c0de3b1c:	b13c      	cbz	r4, c0de3b2e <zkn_mont_ctx384_init+0x78>
c0de3b1e:	4630      	mov	r0, r6
c0de3b20:	4631      	mov	r1, r6
c0de3b22:	4632      	mov	r2, r6
c0de3b24:	462b      	mov	r3, r5
c0de3b26:	f000 fa9d 	bl	c0de4064 <zkn_add_mod_384>
c0de3b2a:	3c01      	subs	r4, #1
c0de3b2c:	e7f6      	b.n	c0de3b1c <zkn_mont_ctx384_init+0x66>
c0de3b2e:	f108 0034 	add.w	r0, r8, #52	@ 0x34
c0de3b32:	4669      	mov	r1, sp
c0de3b34:	2230      	movs	r2, #48	@ 0x30
c0de3b36:	f004 fee1 	bl	c0de88fc <__aeabi_memcpy>
c0de3b3a:	b018      	add	sp, #96	@ 0x60
c0de3b3c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de3b40 <zkn_to_mont_384>:
c0de3b40:	b5e0      	push	{r5, r6, r7, lr}
c0de3b42:	4613      	mov	r3, r2
c0de3b44:	6b12      	ldr	r2, [r2, #48]	@ 0x30
c0de3b46:	9200      	str	r2, [sp, #0]
c0de3b48:	f103 0234 	add.w	r2, r3, #52	@ 0x34
c0de3b4c:	f000 f8e2 	bl	c0de3d14 <zkn_mul_mont_384>
c0de3b50:	bd8c      	pop	{r2, r3, r7, pc}

c0de3b52 <zkn_fe384_from_be>:
c0de3b52:	b570      	push	{r4, r5, r6, lr}
c0de3b54:	2200      	movs	r2, #0
c0de3b56:	f112 0330 	adds.w	r3, r2, #48	@ 0x30
c0de3b5a:	bf08      	it	eq
c0de3b5c:	bd70      	popeq	{r4, r5, r6, pc}
c0de3b5e:	188b      	adds	r3, r1, r2
c0de3b60:	3a04      	subs	r2, #4
c0de3b62:	f893 502d 	ldrb.w	r5, [r3, #45]	@ 0x2d
c0de3b66:	f893 402c 	ldrb.w	r4, [r3, #44]	@ 0x2c
c0de3b6a:	f893 602e 	ldrb.w	r6, [r3, #46]	@ 0x2e
c0de3b6e:	f893 302f 	ldrb.w	r3, [r3, #47]	@ 0x2f
c0de3b72:	042d      	lsls	r5, r5, #16
c0de3b74:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
c0de3b78:	ea44 2406 	orr.w	r4, r4, r6, lsl #8
c0de3b7c:	4423      	add	r3, r4
c0de3b7e:	c008      	stmia	r0!, {r3}
c0de3b80:	e7e9      	b.n	c0de3b56 <zkn_fe384_from_be+0x4>

c0de3b82 <zkn_fe384_to_be>:
c0de3b82:	b510      	push	{r4, lr}
c0de3b84:	2200      	movs	r2, #0
c0de3b86:	f112 0330 	adds.w	r3, r2, #48	@ 0x30
c0de3b8a:	bf08      	it	eq
c0de3b8c:	bd10      	popeq	{r4, pc}
c0de3b8e:	78cc      	ldrb	r4, [r1, #3]
c0de3b90:	1883      	adds	r3, r0, r2
c0de3b92:	3a04      	subs	r2, #4
c0de3b94:	f883 402c 	strb.w	r4, [r3, #44]	@ 0x2c
c0de3b98:	884c      	ldrh	r4, [r1, #2]
c0de3b9a:	f883 402d 	strb.w	r4, [r3, #45]	@ 0x2d
c0de3b9e:	680c      	ldr	r4, [r1, #0]
c0de3ba0:	0a24      	lsrs	r4, r4, #8
c0de3ba2:	f883 402e 	strb.w	r4, [r3, #46]	@ 0x2e
c0de3ba6:	c910      	ldmia	r1!, {r4}
c0de3ba8:	f883 402f 	strb.w	r4, [r3, #47]	@ 0x2f
c0de3bac:	e7eb      	b.n	c0de3b86 <zkn_fe384_to_be+0x4>

c0de3bae <zkn_fe384_eq>:
c0de3bae:	b5b0      	push	{r4, r5, r7, lr}
c0de3bb0:	2200      	movs	r2, #0
c0de3bb2:	2300      	movs	r3, #0
c0de3bb4:	2b0c      	cmp	r3, #12
c0de3bb6:	d007      	beq.n	c0de3bc8 <zkn_fe384_eq+0x1a>
c0de3bb8:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
c0de3bbc:	f851 5023 	ldr.w	r5, [r1, r3, lsl #2]
c0de3bc0:	3301      	adds	r3, #1
c0de3bc2:	406c      	eors	r4, r5
c0de3bc4:	4322      	orrs	r2, r4
c0de3bc6:	e7f5      	b.n	c0de3bb4 <zkn_fe384_eq+0x6>
c0de3bc8:	fab2 f082 	clz	r0, r2
c0de3bcc:	0940      	lsrs	r0, r0, #5
c0de3bce:	bdb0      	pop	{r4, r5, r7, pc}

c0de3bd0 <zkn_fe384_zero>:
c0de3bd0:	b580      	push	{r7, lr}
c0de3bd2:	2130      	movs	r1, #48	@ 0x30
c0de3bd4:	f004 fe9c 	bl	c0de8910 <__aeabi_memclr>
c0de3bd8:	bd80      	pop	{r7, pc}

c0de3bda <zkn_neg_mod_384>:
c0de3bda:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3bdc:	b08d      	sub	sp, #52	@ 0x34
c0de3bde:	af01      	add	r7, sp, #4
c0de3be0:	460d      	mov	r5, r1
c0de3be2:	4606      	mov	r6, r0
c0de3be4:	2130      	movs	r1, #48	@ 0x30
c0de3be6:	4614      	mov	r4, r2
c0de3be8:	4638      	mov	r0, r7
c0de3bea:	f004 fe91 	bl	c0de8910 <__aeabi_memclr>
c0de3bee:	4630      	mov	r0, r6
c0de3bf0:	4639      	mov	r1, r7
c0de3bf2:	462a      	mov	r2, r5
c0de3bf4:	4623      	mov	r3, r4
c0de3bf6:	f000 faaf 	bl	c0de4158 <zkn_sub_mod_384>
c0de3bfa:	b00d      	add	sp, #52	@ 0x34
c0de3bfc:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de3bfe <zkn_exp_mont_384>:
c0de3bfe:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de3c02:	9d0c      	ldr	r5, [sp, #48]	@ 0x30
c0de3c04:	e9cd 2302 	strd	r2, r3, [sp, #8]
c0de3c08:	460e      	mov	r6, r1
c0de3c0a:	2230      	movs	r2, #48	@ 0x30
c0de3c0c:	4607      	mov	r7, r0
c0de3c0e:	f105 0164 	add.w	r1, r5, #100	@ 0x64
c0de3c12:	f004 fe73 	bl	c0de88fc <__aeabi_memcpy>
c0de3c16:	f04f 0b00 	mov.w	fp, #0
c0de3c1a:	f04f 0a00 	mov.w	sl, #0
c0de3c1e:	9803      	ldr	r0, [sp, #12]
c0de3c20:	4583      	cmp	fp, r0
c0de3c22:	bfa8      	it	ge
c0de3c24:	e8bd 8dff 	ldmiage.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de3c28:	9802      	ldr	r0, [sp, #8]
c0de3c2a:	f04f 0807 	mov.w	r8, #7
c0de3c2e:	f810 400b 	ldrb.w	r4, [r0, fp]
c0de3c32:	f1b8 3fff 	cmp.w	r8, #4294967295	@ 0xffffffff
c0de3c36:	dd26      	ble.n	c0de3c86 <zkn_exp_mont_384+0x88>
c0de3c38:	f1ba 0f00 	cmp.w	sl, #0
c0de3c3c:	d012      	beq.n	c0de3c64 <zkn_exp_mont_384+0x66>
c0de3c3e:	6b2b      	ldr	r3, [r5, #48]	@ 0x30
c0de3c40:	4638      	mov	r0, r7
c0de3c42:	4639      	mov	r1, r7
c0de3c44:	462a      	mov	r2, r5
c0de3c46:	f000 fa05 	bl	c0de4054 <zkn_sqr_mont_384>
c0de3c4a:	fa24 f008 	lsr.w	r0, r4, r8
c0de3c4e:	07c0      	lsls	r0, r0, #31
c0de3c50:	d013      	beq.n	c0de3c7a <zkn_exp_mont_384+0x7c>
c0de3c52:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de3c54:	4639      	mov	r1, r7
c0de3c56:	4632      	mov	r2, r6
c0de3c58:	462b      	mov	r3, r5
c0de3c5a:	9000      	str	r0, [sp, #0]
c0de3c5c:	4638      	mov	r0, r7
c0de3c5e:	f000 f859 	bl	c0de3d14 <zkn_mul_mont_384>
c0de3c62:	e008      	b.n	c0de3c76 <zkn_exp_mont_384+0x78>
c0de3c64:	fa24 f008 	lsr.w	r0, r4, r8
c0de3c68:	07c0      	lsls	r0, r0, #31
c0de3c6a:	d009      	beq.n	c0de3c80 <zkn_exp_mont_384+0x82>
c0de3c6c:	4638      	mov	r0, r7
c0de3c6e:	4631      	mov	r1, r6
c0de3c70:	2230      	movs	r2, #48	@ 0x30
c0de3c72:	f004 fe43 	bl	c0de88fc <__aeabi_memcpy>
c0de3c76:	f04f 0a01 	mov.w	sl, #1
c0de3c7a:	f1a8 0801 	sub.w	r8, r8, #1
c0de3c7e:	e7d8      	b.n	c0de3c32 <zkn_exp_mont_384+0x34>
c0de3c80:	f04f 0a00 	mov.w	sl, #0
c0de3c84:	e7f9      	b.n	c0de3c7a <zkn_exp_mont_384+0x7c>
c0de3c86:	f10b 0b01 	add.w	fp, fp, #1
c0de3c8a:	e7c8      	b.n	c0de3c1e <zkn_exp_mont_384+0x20>

c0de3c8c <zkn_inv_mont_384>:
c0de3c8c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3c8e:	b099      	sub	sp, #100	@ 0x64
c0de3c90:	af0d      	add	r7, sp, #52	@ 0x34
c0de3c92:	460c      	mov	r4, r1
c0de3c94:	4605      	mov	r5, r0
c0de3c96:	4616      	mov	r6, r2
c0de3c98:	4611      	mov	r1, r2
c0de3c9a:	2230      	movs	r2, #48	@ 0x30
c0de3c9c:	4638      	mov	r0, r7
c0de3c9e:	f004 fe2d 	bl	c0de88fc <__aeabi_memcpy>
c0de3ca2:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de3ca6:	f06f 0101 	mvn.w	r1, #1
c0de3caa:	2000      	movs	r0, #0
c0de3cac:	280c      	cmp	r0, #12
c0de3cae:	d00a      	beq.n	c0de3cc6 <zkn_inv_mont_384+0x3a>
c0de3cb0:	f857 3020 	ldr.w	r3, [r7, r0, lsl #2]
c0de3cb4:	18c9      	adds	r1, r1, r3
c0de3cb6:	f847 1020 	str.w	r1, [r7, r0, lsl #2]
c0de3cba:	f142 0100 	adc.w	r1, r2, #0
c0de3cbe:	3001      	adds	r0, #1
c0de3cc0:	17c9      	asrs	r1, r1, #31
c0de3cc2:	460a      	mov	r2, r1
c0de3cc4:	e7f2      	b.n	c0de3cac <zkn_inv_mont_384+0x20>
c0de3cc6:	af01      	add	r7, sp, #4
c0de3cc8:	a90d      	add	r1, sp, #52	@ 0x34
c0de3cca:	4638      	mov	r0, r7
c0de3ccc:	f7ff ff59 	bl	c0de3b82 <zkn_fe384_to_be>
c0de3cd0:	4628      	mov	r0, r5
c0de3cd2:	4621      	mov	r1, r4
c0de3cd4:	463a      	mov	r2, r7
c0de3cd6:	2330      	movs	r3, #48	@ 0x30
c0de3cd8:	9600      	str	r6, [sp, #0]
c0de3cda:	f7ff ff90 	bl	c0de3bfe <zkn_exp_mont_384>
c0de3cde:	b019      	add	sp, #100	@ 0x64
c0de3ce0:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

c0de3ce4 <zkn_bls12381_ctx>:
c0de3ce4:	b510      	push	{r4, lr}
c0de3ce6:	4c08      	ldr	r4, [pc, #32]	@ (c0de3d08 <zkn_bls12381_ctx+0x24>)
c0de3ce8:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de3cec:	b940      	cbnz	r0, c0de3d00 <zkn_bls12381_ctx+0x1c>
c0de3cee:	4807      	ldr	r0, [pc, #28]	@ (c0de3d0c <zkn_bls12381_ctx+0x28>)
c0de3cf0:	4907      	ldr	r1, [pc, #28]	@ (c0de3d10 <zkn_bls12381_ctx+0x2c>)
c0de3cf2:	4448      	add	r0, r9
c0de3cf4:	4479      	add	r1, pc
c0de3cf6:	f7ff fede 	bl	c0de3ab6 <zkn_mont_ctx384_init>
c0de3cfa:	2001      	movs	r0, #1
c0de3cfc:	f809 0004 	strb.w	r0, [r9, r4]
c0de3d00:	4802      	ldr	r0, [pc, #8]	@ (c0de3d0c <zkn_bls12381_ctx+0x28>)
c0de3d02:	4448      	add	r0, r9
c0de3d04:	bd10      	pop	{r4, pc}
c0de3d06:	bf00      	nop
c0de3d08:	00000f00 	.word	0x00000f00
c0de3d0c:	00000e6c 	.word	0x00000e6c
c0de3d10:	0000584c 	.word	0x0000584c

c0de3d14 <zkn_mul_mont_384>:
c0de3d14:	f000 b800 	b.w	c0de3d18 <zkn_mul_mont_384_stk>

c0de3d18 <zkn_mul_mont_384_stk>:
c0de3d18:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
c0de3d1c:	b093      	sub	sp, #76	@ 0x4c
c0de3d1e:	900d      	str	r0, [sp, #52]	@ 0x34
c0de3d20:	910e      	str	r1, [sp, #56]	@ 0x38
c0de3d22:	920f      	str	r2, [sp, #60]	@ 0x3c
c0de3d24:	9310      	str	r3, [sp, #64]	@ 0x40
c0de3d26:	981c      	ldr	r0, [sp, #112]	@ 0x70
c0de3d28:	9011      	str	r0, [sp, #68]	@ 0x44
c0de3d2a:	2000      	movs	r0, #0
c0de3d2c:	9000      	str	r0, [sp, #0]
c0de3d2e:	9001      	str	r0, [sp, #4]
c0de3d30:	9002      	str	r0, [sp, #8]
c0de3d32:	9003      	str	r0, [sp, #12]
c0de3d34:	9004      	str	r0, [sp, #16]
c0de3d36:	9005      	str	r0, [sp, #20]
c0de3d38:	9006      	str	r0, [sp, #24]
c0de3d3a:	9007      	str	r0, [sp, #28]
c0de3d3c:	9008      	str	r0, [sp, #32]
c0de3d3e:	9009      	str	r0, [sp, #36]	@ 0x24
c0de3d40:	900a      	str	r0, [sp, #40]	@ 0x28
c0de3d42:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de3d44:	900c      	str	r0, [sp, #48]	@ 0x30
c0de3d46:	9012      	str	r0, [sp, #72]	@ 0x48
c0de3d48:	980f      	ldr	r0, [sp, #60]	@ 0x3c
c0de3d4a:	9912      	ldr	r1, [sp, #72]	@ 0x48
c0de3d4c:	f850 b021 	ldr.w	fp, [r0, r1, lsl #2]
c0de3d50:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de3d52:	f05f 0c00 	movs.w	ip, #0
c0de3d56:	6808      	ldr	r0, [r1, #0]
c0de3d58:	9c00      	ldr	r4, [sp, #0]
c0de3d5a:	fba0 0e0b 	umull	r0, lr, r0, fp
c0de3d5e:	1900      	adds	r0, r0, r4
c0de3d60:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3d64:	eb10 000c 	adds.w	r0, r0, ip
c0de3d68:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3d6c:	9000      	str	r0, [sp, #0]
c0de3d6e:	6848      	ldr	r0, [r1, #4]
c0de3d70:	9c01      	ldr	r4, [sp, #4]
c0de3d72:	fba0 0e0b 	umull	r0, lr, r0, fp
c0de3d76:	1900      	adds	r0, r0, r4
c0de3d78:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3d7c:	eb10 000c 	adds.w	r0, r0, ip
c0de3d80:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3d84:	9001      	str	r0, [sp, #4]
c0de3d86:	6888      	ldr	r0, [r1, #8]
c0de3d88:	9c02      	ldr	r4, [sp, #8]
c0de3d8a:	fba0 0e0b 	umull	r0, lr, r0, fp
c0de3d8e:	1900      	adds	r0, r0, r4
c0de3d90:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3d94:	eb10 000c 	adds.w	r0, r0, ip
c0de3d98:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3d9c:	9002      	str	r0, [sp, #8]
c0de3d9e:	68c8      	ldr	r0, [r1, #12]
c0de3da0:	9c03      	ldr	r4, [sp, #12]
c0de3da2:	fba0 0e0b 	umull	r0, lr, r0, fp
c0de3da6:	1900      	adds	r0, r0, r4
c0de3da8:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3dac:	eb10 000c 	adds.w	r0, r0, ip
c0de3db0:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3db4:	9003      	str	r0, [sp, #12]
c0de3db6:	6908      	ldr	r0, [r1, #16]
c0de3db8:	9c04      	ldr	r4, [sp, #16]
c0de3dba:	fba0 0e0b 	umull	r0, lr, r0, fp
c0de3dbe:	1900      	adds	r0, r0, r4
c0de3dc0:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3dc4:	eb10 000c 	adds.w	r0, r0, ip
c0de3dc8:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3dcc:	9004      	str	r0, [sp, #16]
c0de3dce:	6948      	ldr	r0, [r1, #20]
c0de3dd0:	9c05      	ldr	r4, [sp, #20]
c0de3dd2:	fba0 0e0b 	umull	r0, lr, r0, fp
c0de3dd6:	1900      	adds	r0, r0, r4
c0de3dd8:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3ddc:	eb10 000c 	adds.w	r0, r0, ip
c0de3de0:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3de4:	9005      	str	r0, [sp, #20]
c0de3de6:	6988      	ldr	r0, [r1, #24]
c0de3de8:	9c06      	ldr	r4, [sp, #24]
c0de3dea:	fba0 0e0b 	umull	r0, lr, r0, fp
c0de3dee:	1900      	adds	r0, r0, r4
c0de3df0:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3df4:	eb10 000c 	adds.w	r0, r0, ip
c0de3df8:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3dfc:	9006      	str	r0, [sp, #24]
c0de3dfe:	69c8      	ldr	r0, [r1, #28]
c0de3e00:	9c07      	ldr	r4, [sp, #28]
c0de3e02:	fba0 0e0b 	umull	r0, lr, r0, fp
c0de3e06:	1900      	adds	r0, r0, r4
c0de3e08:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3e0c:	eb10 000c 	adds.w	r0, r0, ip
c0de3e10:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3e14:	9007      	str	r0, [sp, #28]
c0de3e16:	6a08      	ldr	r0, [r1, #32]
c0de3e18:	9c08      	ldr	r4, [sp, #32]
c0de3e1a:	fba0 0e0b 	umull	r0, lr, r0, fp
c0de3e1e:	1900      	adds	r0, r0, r4
c0de3e20:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3e24:	eb10 000c 	adds.w	r0, r0, ip
c0de3e28:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3e2c:	9008      	str	r0, [sp, #32]
c0de3e2e:	6a48      	ldr	r0, [r1, #36]	@ 0x24
c0de3e30:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de3e32:	fba0 0e0b 	umull	r0, lr, r0, fp
c0de3e36:	1900      	adds	r0, r0, r4
c0de3e38:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3e3c:	eb10 000c 	adds.w	r0, r0, ip
c0de3e40:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3e44:	9009      	str	r0, [sp, #36]	@ 0x24
c0de3e46:	6a88      	ldr	r0, [r1, #40]	@ 0x28
c0de3e48:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de3e4a:	fba0 0e0b 	umull	r0, lr, r0, fp
c0de3e4e:	1900      	adds	r0, r0, r4
c0de3e50:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3e54:	eb10 000c 	adds.w	r0, r0, ip
c0de3e58:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3e5c:	900a      	str	r0, [sp, #40]	@ 0x28
c0de3e5e:	6ac8      	ldr	r0, [r1, #44]	@ 0x2c
c0de3e60:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de3e62:	fba0 0e0b 	umull	r0, lr, r0, fp
c0de3e66:	1900      	adds	r0, r0, r4
c0de3e68:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3e6c:	eb10 000c 	adds.w	r0, r0, ip
c0de3e70:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3e74:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de3e76:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de3e78:	eb10 000c 	adds.w	r0, r0, ip
c0de3e7c:	2400      	movs	r4, #0
c0de3e7e:	f154 0400 	adcs.w	r4, r4, #0
c0de3e82:	900c      	str	r0, [sp, #48]	@ 0x30
c0de3e84:	9800      	ldr	r0, [sp, #0]
c0de3e86:	9d11      	ldr	r5, [sp, #68]	@ 0x44
c0de3e88:	fb00 fb05 	mul.w	fp, r0, r5
c0de3e8c:	9b10      	ldr	r3, [sp, #64]	@ 0x40
c0de3e8e:	681d      	ldr	r5, [r3, #0]
c0de3e90:	fbab ce05 	umull	ip, lr, fp, r5
c0de3e94:	eb10 0c0c 	adds.w	ip, r0, ip
c0de3e98:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3e9c:	685d      	ldr	r5, [r3, #4]
c0de3e9e:	9801      	ldr	r0, [sp, #4]
c0de3ea0:	fbab 6e05 	umull	r6, lr, fp, r5
c0de3ea4:	1986      	adds	r6, r0, r6
c0de3ea6:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3eaa:	eb16 060c 	adds.w	r6, r6, ip
c0de3eae:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3eb2:	9600      	str	r6, [sp, #0]
c0de3eb4:	689d      	ldr	r5, [r3, #8]
c0de3eb6:	9802      	ldr	r0, [sp, #8]
c0de3eb8:	fbab 6e05 	umull	r6, lr, fp, r5
c0de3ebc:	1986      	adds	r6, r0, r6
c0de3ebe:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3ec2:	eb16 060c 	adds.w	r6, r6, ip
c0de3ec6:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3eca:	9601      	str	r6, [sp, #4]
c0de3ecc:	68dd      	ldr	r5, [r3, #12]
c0de3ece:	9803      	ldr	r0, [sp, #12]
c0de3ed0:	fbab 6e05 	umull	r6, lr, fp, r5
c0de3ed4:	1986      	adds	r6, r0, r6
c0de3ed6:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3eda:	eb16 060c 	adds.w	r6, r6, ip
c0de3ede:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3ee2:	9602      	str	r6, [sp, #8]
c0de3ee4:	691d      	ldr	r5, [r3, #16]
c0de3ee6:	9804      	ldr	r0, [sp, #16]
c0de3ee8:	fbab 6e05 	umull	r6, lr, fp, r5
c0de3eec:	1986      	adds	r6, r0, r6
c0de3eee:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3ef2:	eb16 060c 	adds.w	r6, r6, ip
c0de3ef6:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3efa:	9603      	str	r6, [sp, #12]
c0de3efc:	695d      	ldr	r5, [r3, #20]
c0de3efe:	9805      	ldr	r0, [sp, #20]
c0de3f00:	fbab 6e05 	umull	r6, lr, fp, r5
c0de3f04:	1986      	adds	r6, r0, r6
c0de3f06:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3f0a:	eb16 060c 	adds.w	r6, r6, ip
c0de3f0e:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3f12:	9604      	str	r6, [sp, #16]
c0de3f14:	699d      	ldr	r5, [r3, #24]
c0de3f16:	9806      	ldr	r0, [sp, #24]
c0de3f18:	fbab 6e05 	umull	r6, lr, fp, r5
c0de3f1c:	1986      	adds	r6, r0, r6
c0de3f1e:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3f22:	eb16 060c 	adds.w	r6, r6, ip
c0de3f26:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3f2a:	9605      	str	r6, [sp, #20]
c0de3f2c:	69dd      	ldr	r5, [r3, #28]
c0de3f2e:	9807      	ldr	r0, [sp, #28]
c0de3f30:	fbab 6e05 	umull	r6, lr, fp, r5
c0de3f34:	1986      	adds	r6, r0, r6
c0de3f36:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3f3a:	eb16 060c 	adds.w	r6, r6, ip
c0de3f3e:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3f42:	9606      	str	r6, [sp, #24]
c0de3f44:	6a1d      	ldr	r5, [r3, #32]
c0de3f46:	9808      	ldr	r0, [sp, #32]
c0de3f48:	fbab 6e05 	umull	r6, lr, fp, r5
c0de3f4c:	1986      	adds	r6, r0, r6
c0de3f4e:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3f52:	eb16 060c 	adds.w	r6, r6, ip
c0de3f56:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3f5a:	9607      	str	r6, [sp, #28]
c0de3f5c:	6a5d      	ldr	r5, [r3, #36]	@ 0x24
c0de3f5e:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de3f60:	fbab 6e05 	umull	r6, lr, fp, r5
c0de3f64:	1986      	adds	r6, r0, r6
c0de3f66:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3f6a:	eb16 060c 	adds.w	r6, r6, ip
c0de3f6e:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3f72:	9608      	str	r6, [sp, #32]
c0de3f74:	6a9d      	ldr	r5, [r3, #40]	@ 0x28
c0de3f76:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de3f78:	fbab 6e05 	umull	r6, lr, fp, r5
c0de3f7c:	1986      	adds	r6, r0, r6
c0de3f7e:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3f82:	eb16 060c 	adds.w	r6, r6, ip
c0de3f86:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3f8a:	9609      	str	r6, [sp, #36]	@ 0x24
c0de3f8c:	6add      	ldr	r5, [r3, #44]	@ 0x2c
c0de3f8e:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de3f90:	fbab 6e05 	umull	r6, lr, fp, r5
c0de3f94:	1986      	adds	r6, r0, r6
c0de3f96:	f15e 0e00 	adcs.w	lr, lr, #0
c0de3f9a:	eb16 060c 	adds.w	r6, r6, ip
c0de3f9e:	f15e 0c00 	adcs.w	ip, lr, #0
c0de3fa2:	960a      	str	r6, [sp, #40]	@ 0x28
c0de3fa4:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de3fa6:	eb10 000c 	adds.w	r0, r0, ip
c0de3faa:	f154 0c00 	adcs.w	ip, r4, #0
c0de3fae:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de3fb0:	f8cd c030 	str.w	ip, [sp, #48]	@ 0x30
c0de3fb4:	9812      	ldr	r0, [sp, #72]	@ 0x48
c0de3fb6:	1c40      	adds	r0, r0, #1
c0de3fb8:	9012      	str	r0, [sp, #72]	@ 0x48
c0de3fba:	280c      	cmp	r0, #12
c0de3fbc:	f47f aec4 	bne.w	c0de3d48 <zkn_mul_mont_384_stk+0x30>
c0de3fc0:	9b10      	ldr	r3, [sp, #64]	@ 0x40
c0de3fc2:	9e0d      	ldr	r6, [sp, #52]	@ 0x34
c0de3fc4:	9800      	ldr	r0, [sp, #0]
c0de3fc6:	6819      	ldr	r1, [r3, #0]
c0de3fc8:	1a40      	subs	r0, r0, r1
c0de3fca:	6030      	str	r0, [r6, #0]
c0de3fcc:	9801      	ldr	r0, [sp, #4]
c0de3fce:	6859      	ldr	r1, [r3, #4]
c0de3fd0:	4188      	sbcs	r0, r1
c0de3fd2:	6070      	str	r0, [r6, #4]
c0de3fd4:	9802      	ldr	r0, [sp, #8]
c0de3fd6:	6899      	ldr	r1, [r3, #8]
c0de3fd8:	4188      	sbcs	r0, r1
c0de3fda:	60b0      	str	r0, [r6, #8]
c0de3fdc:	9803      	ldr	r0, [sp, #12]
c0de3fde:	68d9      	ldr	r1, [r3, #12]
c0de3fe0:	4188      	sbcs	r0, r1
c0de3fe2:	60f0      	str	r0, [r6, #12]
c0de3fe4:	9804      	ldr	r0, [sp, #16]
c0de3fe6:	6919      	ldr	r1, [r3, #16]
c0de3fe8:	4188      	sbcs	r0, r1
c0de3fea:	6130      	str	r0, [r6, #16]
c0de3fec:	9805      	ldr	r0, [sp, #20]
c0de3fee:	6959      	ldr	r1, [r3, #20]
c0de3ff0:	4188      	sbcs	r0, r1
c0de3ff2:	6170      	str	r0, [r6, #20]
c0de3ff4:	9806      	ldr	r0, [sp, #24]
c0de3ff6:	6999      	ldr	r1, [r3, #24]
c0de3ff8:	4188      	sbcs	r0, r1
c0de3ffa:	61b0      	str	r0, [r6, #24]
c0de3ffc:	9807      	ldr	r0, [sp, #28]
c0de3ffe:	69d9      	ldr	r1, [r3, #28]
c0de4000:	4188      	sbcs	r0, r1
c0de4002:	61f0      	str	r0, [r6, #28]
c0de4004:	9808      	ldr	r0, [sp, #32]
c0de4006:	6a19      	ldr	r1, [r3, #32]
c0de4008:	4188      	sbcs	r0, r1
c0de400a:	6230      	str	r0, [r6, #32]
c0de400c:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de400e:	6a59      	ldr	r1, [r3, #36]	@ 0x24
c0de4010:	4188      	sbcs	r0, r1
c0de4012:	6270      	str	r0, [r6, #36]	@ 0x24
c0de4014:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de4016:	6a99      	ldr	r1, [r3, #40]	@ 0x28
c0de4018:	4188      	sbcs	r0, r1
c0de401a:	62b0      	str	r0, [r6, #40]	@ 0x28
c0de401c:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de401e:	6ad9      	ldr	r1, [r3, #44]	@ 0x2c
c0de4020:	4188      	sbcs	r0, r1
c0de4022:	62f0      	str	r0, [r6, #44]	@ 0x2c
c0de4024:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de4026:	f170 0000 	sbcs.w	r0, r0, #0
c0de402a:	2100      	movs	r1, #0
c0de402c:	f161 0100 	sbc.w	r1, r1, #0
c0de4030:	466f      	mov	r7, sp
c0de4032:	2400      	movs	r4, #0
c0de4034:	5938      	ldr	r0, [r7, r4]
c0de4036:	5935      	ldr	r5, [r6, r4]
c0de4038:	ea25 0501 	bic.w	r5, r5, r1
c0de403c:	ea00 0001 	and.w	r0, r0, r1
c0de4040:	ea40 0005 	orr.w	r0, r0, r5
c0de4044:	5130      	str	r0, [r6, r4]
c0de4046:	1d24      	adds	r4, r4, #4
c0de4048:	2c30      	cmp	r4, #48	@ 0x30
c0de404a:	d1f3      	bne.n	c0de4034 <zkn_mul_mont_384_stk+0x31c>
c0de404c:	b013      	add	sp, #76	@ 0x4c
c0de404e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
c0de4052:	bf00      	nop

c0de4054 <zkn_sqr_mont_384>:
c0de4054:	b500      	push	{lr}
c0de4056:	b408      	push	{r3}
c0de4058:	4613      	mov	r3, r2
c0de405a:	460a      	mov	r2, r1
c0de405c:	f7ff fe5c 	bl	c0de3d18 <zkn_mul_mont_384_stk>
c0de4060:	b001      	add	sp, #4
c0de4062:	bd00      	pop	{pc}

c0de4064 <zkn_add_mod_384>:
c0de4064:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4066:	680c      	ldr	r4, [r1, #0]
c0de4068:	6815      	ldr	r5, [r2, #0]
c0de406a:	1964      	adds	r4, r4, r5
c0de406c:	6004      	str	r4, [r0, #0]
c0de406e:	684c      	ldr	r4, [r1, #4]
c0de4070:	6855      	ldr	r5, [r2, #4]
c0de4072:	416c      	adcs	r4, r5
c0de4074:	6044      	str	r4, [r0, #4]
c0de4076:	688c      	ldr	r4, [r1, #8]
c0de4078:	6895      	ldr	r5, [r2, #8]
c0de407a:	416c      	adcs	r4, r5
c0de407c:	6084      	str	r4, [r0, #8]
c0de407e:	68cc      	ldr	r4, [r1, #12]
c0de4080:	68d5      	ldr	r5, [r2, #12]
c0de4082:	416c      	adcs	r4, r5
c0de4084:	60c4      	str	r4, [r0, #12]
c0de4086:	690c      	ldr	r4, [r1, #16]
c0de4088:	6915      	ldr	r5, [r2, #16]
c0de408a:	416c      	adcs	r4, r5
c0de408c:	6104      	str	r4, [r0, #16]
c0de408e:	694c      	ldr	r4, [r1, #20]
c0de4090:	6955      	ldr	r5, [r2, #20]
c0de4092:	416c      	adcs	r4, r5
c0de4094:	6144      	str	r4, [r0, #20]
c0de4096:	698c      	ldr	r4, [r1, #24]
c0de4098:	6995      	ldr	r5, [r2, #24]
c0de409a:	416c      	adcs	r4, r5
c0de409c:	6184      	str	r4, [r0, #24]
c0de409e:	69cc      	ldr	r4, [r1, #28]
c0de40a0:	69d5      	ldr	r5, [r2, #28]
c0de40a2:	416c      	adcs	r4, r5
c0de40a4:	61c4      	str	r4, [r0, #28]
c0de40a6:	6a0c      	ldr	r4, [r1, #32]
c0de40a8:	6a15      	ldr	r5, [r2, #32]
c0de40aa:	416c      	adcs	r4, r5
c0de40ac:	6204      	str	r4, [r0, #32]
c0de40ae:	6a4c      	ldr	r4, [r1, #36]	@ 0x24
c0de40b0:	6a55      	ldr	r5, [r2, #36]	@ 0x24
c0de40b2:	416c      	adcs	r4, r5
c0de40b4:	6244      	str	r4, [r0, #36]	@ 0x24
c0de40b6:	6a8c      	ldr	r4, [r1, #40]	@ 0x28
c0de40b8:	6a95      	ldr	r5, [r2, #40]	@ 0x28
c0de40ba:	416c      	adcs	r4, r5
c0de40bc:	6284      	str	r4, [r0, #40]	@ 0x28
c0de40be:	6acc      	ldr	r4, [r1, #44]	@ 0x2c
c0de40c0:	6ad5      	ldr	r5, [r2, #44]	@ 0x2c
c0de40c2:	416c      	adcs	r4, r5
c0de40c4:	62c4      	str	r4, [r0, #44]	@ 0x2c
c0de40c6:	2500      	movs	r5, #0
c0de40c8:	f155 0500 	adcs.w	r5, r5, #0
c0de40cc:	b08c      	sub	sp, #48	@ 0x30
c0de40ce:	6804      	ldr	r4, [r0, #0]
c0de40d0:	681e      	ldr	r6, [r3, #0]
c0de40d2:	1ba4      	subs	r4, r4, r6
c0de40d4:	9400      	str	r4, [sp, #0]
c0de40d6:	6844      	ldr	r4, [r0, #4]
c0de40d8:	685e      	ldr	r6, [r3, #4]
c0de40da:	41b4      	sbcs	r4, r6
c0de40dc:	9401      	str	r4, [sp, #4]
c0de40de:	6884      	ldr	r4, [r0, #8]
c0de40e0:	689e      	ldr	r6, [r3, #8]
c0de40e2:	41b4      	sbcs	r4, r6
c0de40e4:	9402      	str	r4, [sp, #8]
c0de40e6:	68c4      	ldr	r4, [r0, #12]
c0de40e8:	68de      	ldr	r6, [r3, #12]
c0de40ea:	41b4      	sbcs	r4, r6
c0de40ec:	9403      	str	r4, [sp, #12]
c0de40ee:	6904      	ldr	r4, [r0, #16]
c0de40f0:	691e      	ldr	r6, [r3, #16]
c0de40f2:	41b4      	sbcs	r4, r6
c0de40f4:	9404      	str	r4, [sp, #16]
c0de40f6:	6944      	ldr	r4, [r0, #20]
c0de40f8:	695e      	ldr	r6, [r3, #20]
c0de40fa:	41b4      	sbcs	r4, r6
c0de40fc:	9405      	str	r4, [sp, #20]
c0de40fe:	6984      	ldr	r4, [r0, #24]
c0de4100:	699e      	ldr	r6, [r3, #24]
c0de4102:	41b4      	sbcs	r4, r6
c0de4104:	9406      	str	r4, [sp, #24]
c0de4106:	69c4      	ldr	r4, [r0, #28]
c0de4108:	69de      	ldr	r6, [r3, #28]
c0de410a:	41b4      	sbcs	r4, r6
c0de410c:	9407      	str	r4, [sp, #28]
c0de410e:	6a04      	ldr	r4, [r0, #32]
c0de4110:	6a1e      	ldr	r6, [r3, #32]
c0de4112:	41b4      	sbcs	r4, r6
c0de4114:	9408      	str	r4, [sp, #32]
c0de4116:	6a44      	ldr	r4, [r0, #36]	@ 0x24
c0de4118:	6a5e      	ldr	r6, [r3, #36]	@ 0x24
c0de411a:	41b4      	sbcs	r4, r6
c0de411c:	9409      	str	r4, [sp, #36]	@ 0x24
c0de411e:	6a84      	ldr	r4, [r0, #40]	@ 0x28
c0de4120:	6a9e      	ldr	r6, [r3, #40]	@ 0x28
c0de4122:	41b4      	sbcs	r4, r6
c0de4124:	940a      	str	r4, [sp, #40]	@ 0x28
c0de4126:	6ac4      	ldr	r4, [r0, #44]	@ 0x2c
c0de4128:	6ade      	ldr	r6, [r3, #44]	@ 0x2c
c0de412a:	41b4      	sbcs	r4, r6
c0de412c:	940b      	str	r4, [sp, #44]	@ 0x2c
c0de412e:	f175 0500 	sbcs.w	r5, r5, #0
c0de4132:	2100      	movs	r1, #0
c0de4134:	f161 0100 	sbc.w	r1, r1, #0
c0de4138:	466f      	mov	r7, sp
c0de413a:	2400      	movs	r4, #0
c0de413c:	593d      	ldr	r5, [r7, r4]
c0de413e:	5906      	ldr	r6, [r0, r4]
c0de4140:	ea25 0501 	bic.w	r5, r5, r1
c0de4144:	ea06 0601 	and.w	r6, r6, r1
c0de4148:	ea45 0506 	orr.w	r5, r5, r6
c0de414c:	5105      	str	r5, [r0, r4]
c0de414e:	1d24      	adds	r4, r4, #4
c0de4150:	2c30      	cmp	r4, #48	@ 0x30
c0de4152:	d1f3      	bne.n	c0de413c <zkn_add_mod_384+0xd8>
c0de4154:	b00c      	add	sp, #48	@ 0x30
c0de4156:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de4158 <zkn_sub_mod_384>:
c0de4158:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de415a:	680c      	ldr	r4, [r1, #0]
c0de415c:	6815      	ldr	r5, [r2, #0]
c0de415e:	1b64      	subs	r4, r4, r5
c0de4160:	6004      	str	r4, [r0, #0]
c0de4162:	684c      	ldr	r4, [r1, #4]
c0de4164:	6855      	ldr	r5, [r2, #4]
c0de4166:	41ac      	sbcs	r4, r5
c0de4168:	6044      	str	r4, [r0, #4]
c0de416a:	688c      	ldr	r4, [r1, #8]
c0de416c:	6895      	ldr	r5, [r2, #8]
c0de416e:	41ac      	sbcs	r4, r5
c0de4170:	6084      	str	r4, [r0, #8]
c0de4172:	68cc      	ldr	r4, [r1, #12]
c0de4174:	68d5      	ldr	r5, [r2, #12]
c0de4176:	41ac      	sbcs	r4, r5
c0de4178:	60c4      	str	r4, [r0, #12]
c0de417a:	690c      	ldr	r4, [r1, #16]
c0de417c:	6915      	ldr	r5, [r2, #16]
c0de417e:	41ac      	sbcs	r4, r5
c0de4180:	6104      	str	r4, [r0, #16]
c0de4182:	694c      	ldr	r4, [r1, #20]
c0de4184:	6955      	ldr	r5, [r2, #20]
c0de4186:	41ac      	sbcs	r4, r5
c0de4188:	6144      	str	r4, [r0, #20]
c0de418a:	698c      	ldr	r4, [r1, #24]
c0de418c:	6995      	ldr	r5, [r2, #24]
c0de418e:	41ac      	sbcs	r4, r5
c0de4190:	6184      	str	r4, [r0, #24]
c0de4192:	69cc      	ldr	r4, [r1, #28]
c0de4194:	69d5      	ldr	r5, [r2, #28]
c0de4196:	41ac      	sbcs	r4, r5
c0de4198:	61c4      	str	r4, [r0, #28]
c0de419a:	6a0c      	ldr	r4, [r1, #32]
c0de419c:	6a15      	ldr	r5, [r2, #32]
c0de419e:	41ac      	sbcs	r4, r5
c0de41a0:	6204      	str	r4, [r0, #32]
c0de41a2:	6a4c      	ldr	r4, [r1, #36]	@ 0x24
c0de41a4:	6a55      	ldr	r5, [r2, #36]	@ 0x24
c0de41a6:	41ac      	sbcs	r4, r5
c0de41a8:	6244      	str	r4, [r0, #36]	@ 0x24
c0de41aa:	6a8c      	ldr	r4, [r1, #40]	@ 0x28
c0de41ac:	6a95      	ldr	r5, [r2, #40]	@ 0x28
c0de41ae:	41ac      	sbcs	r4, r5
c0de41b0:	6284      	str	r4, [r0, #40]	@ 0x28
c0de41b2:	6acc      	ldr	r4, [r1, #44]	@ 0x2c
c0de41b4:	6ad5      	ldr	r5, [r2, #44]	@ 0x2c
c0de41b6:	41ac      	sbcs	r4, r5
c0de41b8:	62c4      	str	r4, [r0, #44]	@ 0x2c
c0de41ba:	2400      	movs	r4, #0
c0de41bc:	f164 0400 	sbc.w	r4, r4, #0
c0de41c0:	6805      	ldr	r5, [r0, #0]
c0de41c2:	681e      	ldr	r6, [r3, #0]
c0de41c4:	ea06 0604 	and.w	r6, r6, r4
c0de41c8:	19ad      	adds	r5, r5, r6
c0de41ca:	6005      	str	r5, [r0, #0]
c0de41cc:	6845      	ldr	r5, [r0, #4]
c0de41ce:	685e      	ldr	r6, [r3, #4]
c0de41d0:	ea06 0604 	and.w	r6, r6, r4
c0de41d4:	4175      	adcs	r5, r6
c0de41d6:	6045      	str	r5, [r0, #4]
c0de41d8:	6885      	ldr	r5, [r0, #8]
c0de41da:	689e      	ldr	r6, [r3, #8]
c0de41dc:	ea06 0604 	and.w	r6, r6, r4
c0de41e0:	4175      	adcs	r5, r6
c0de41e2:	6085      	str	r5, [r0, #8]
c0de41e4:	68c5      	ldr	r5, [r0, #12]
c0de41e6:	68de      	ldr	r6, [r3, #12]
c0de41e8:	ea06 0604 	and.w	r6, r6, r4
c0de41ec:	4175      	adcs	r5, r6
c0de41ee:	60c5      	str	r5, [r0, #12]
c0de41f0:	6905      	ldr	r5, [r0, #16]
c0de41f2:	691e      	ldr	r6, [r3, #16]
c0de41f4:	ea06 0604 	and.w	r6, r6, r4
c0de41f8:	4175      	adcs	r5, r6
c0de41fa:	6105      	str	r5, [r0, #16]
c0de41fc:	6945      	ldr	r5, [r0, #20]
c0de41fe:	695e      	ldr	r6, [r3, #20]
c0de4200:	ea06 0604 	and.w	r6, r6, r4
c0de4204:	4175      	adcs	r5, r6
c0de4206:	6145      	str	r5, [r0, #20]
c0de4208:	6985      	ldr	r5, [r0, #24]
c0de420a:	699e      	ldr	r6, [r3, #24]
c0de420c:	ea06 0604 	and.w	r6, r6, r4
c0de4210:	4175      	adcs	r5, r6
c0de4212:	6185      	str	r5, [r0, #24]
c0de4214:	69c5      	ldr	r5, [r0, #28]
c0de4216:	69de      	ldr	r6, [r3, #28]
c0de4218:	ea06 0604 	and.w	r6, r6, r4
c0de421c:	4175      	adcs	r5, r6
c0de421e:	61c5      	str	r5, [r0, #28]
c0de4220:	6a05      	ldr	r5, [r0, #32]
c0de4222:	6a1e      	ldr	r6, [r3, #32]
c0de4224:	ea06 0604 	and.w	r6, r6, r4
c0de4228:	4175      	adcs	r5, r6
c0de422a:	6205      	str	r5, [r0, #32]
c0de422c:	6a45      	ldr	r5, [r0, #36]	@ 0x24
c0de422e:	6a5e      	ldr	r6, [r3, #36]	@ 0x24
c0de4230:	ea06 0604 	and.w	r6, r6, r4
c0de4234:	4175      	adcs	r5, r6
c0de4236:	6245      	str	r5, [r0, #36]	@ 0x24
c0de4238:	6a85      	ldr	r5, [r0, #40]	@ 0x28
c0de423a:	6a9e      	ldr	r6, [r3, #40]	@ 0x28
c0de423c:	ea06 0604 	and.w	r6, r6, r4
c0de4240:	4175      	adcs	r5, r6
c0de4242:	6285      	str	r5, [r0, #40]	@ 0x28
c0de4244:	6ac5      	ldr	r5, [r0, #44]	@ 0x2c
c0de4246:	6ade      	ldr	r6, [r3, #44]	@ 0x2c
c0de4248:	ea06 0604 	and.w	r6, r6, r4
c0de424c:	4175      	adcs	r5, r6
c0de424e:	62c5      	str	r5, [r0, #44]	@ 0x2c
c0de4250:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4252:	bf00      	nop

c0de4254 <zkn_from_mont_384>:
c0de4254:	b500      	push	{lr}
c0de4256:	b08d      	sub	sp, #52	@ 0x34
c0de4258:	930c      	str	r3, [sp, #48]	@ 0x30
c0de425a:	2300      	movs	r3, #0
c0de425c:	9301      	str	r3, [sp, #4]
c0de425e:	9302      	str	r3, [sp, #8]
c0de4260:	9303      	str	r3, [sp, #12]
c0de4262:	9304      	str	r3, [sp, #16]
c0de4264:	9305      	str	r3, [sp, #20]
c0de4266:	9306      	str	r3, [sp, #24]
c0de4268:	9307      	str	r3, [sp, #28]
c0de426a:	9308      	str	r3, [sp, #32]
c0de426c:	9309      	str	r3, [sp, #36]	@ 0x24
c0de426e:	930a      	str	r3, [sp, #40]	@ 0x28
c0de4270:	930b      	str	r3, [sp, #44]	@ 0x2c
c0de4272:	2301      	movs	r3, #1
c0de4274:	9300      	str	r3, [sp, #0]
c0de4276:	4613      	mov	r3, r2
c0de4278:	466a      	mov	r2, sp
c0de427a:	f8dd c030 	ldr.w	ip, [sp, #48]	@ 0x30
c0de427e:	f84d cd04 	str.w	ip, [sp, #-4]!
c0de4282:	f7ff fd49 	bl	c0de3d18 <zkn_mul_mont_384_stk>
c0de4286:	b001      	add	sp, #4
c0de4288:	b00d      	add	sp, #52	@ 0x34
c0de428a:	bd00      	pop	{pc}

c0de428c <zkn_miller_doubling_step>:
c0de428c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4290:	f5ad 7d60 	sub.w	sp, sp, #896	@ 0x380
c0de4294:	f10d 0ae0 	add.w	sl, sp, #224	@ 0xe0
c0de4298:	9107      	str	r1, [sp, #28]
c0de429a:	4601      	mov	r1, r0
c0de429c:	e9cd 3203 	strd	r3, r2, [sp, #12]
c0de42a0:	4650      	mov	r0, sl
c0de42a2:	460c      	mov	r4, r1
c0de42a4:	f7fd fc78 	bl	c0de1b98 <zkn_fp2_384_copy>
c0de42a8:	a8c8      	add	r0, sp, #800	@ 0x320
c0de42aa:	4d5f      	ldr	r5, [pc, #380]	@ (c0de4428 <zkn_miller_doubling_step+0x19c>)
c0de42ac:	9ee8      	ldr	r6, [sp, #928]	@ 0x3a0
c0de42ae:	4651      	mov	r1, sl
c0de42b0:	447d      	add	r5, pc
c0de42b2:	4632      	mov	r2, r6
c0de42b4:	47a8      	blx	r5
c0de42b6:	f50d 7b30 	add.w	fp, sp, #704	@ 0x2c0
c0de42ba:	f104 0160 	add.w	r1, r4, #96	@ 0x60
c0de42be:	4632      	mov	r2, r6
c0de42c0:	4658      	mov	r0, fp
c0de42c2:	e9cd 4101 	strd	r4, r1, [sp, #4]
c0de42c6:	47a8      	blx	r5
c0de42c8:	a898      	add	r0, sp, #608	@ 0x260
c0de42ca:	4659      	mov	r1, fp
c0de42cc:	4632      	mov	r2, r6
c0de42ce:	47a8      	blx	r5
c0de42d0:	f104 08c0 	add.w	r8, r4, #192	@ 0xc0
c0de42d4:	a820      	add	r0, sp, #128	@ 0x80
c0de42d6:	4632      	mov	r2, r6
c0de42d8:	4641      	mov	r1, r8
c0de42da:	47a8      	blx	r5
c0de42dc:	9505      	str	r5, [sp, #20]
c0de42de:	af80      	add	r7, sp, #512	@ 0x200
c0de42e0:	4c52      	ldr	r4, [pc, #328]	@ (c0de442c <zkn_miller_doubling_step+0x1a0>)
c0de42e2:	4651      	mov	r1, sl
c0de42e4:	465a      	mov	r2, fp
c0de42e6:	4633      	mov	r3, r6
c0de42e8:	4638      	mov	r0, r7
c0de42ea:	447c      	add	r4, pc
c0de42ec:	47a0      	blx	r4
c0de42ee:	4638      	mov	r0, r7
c0de42f0:	4639      	mov	r1, r7
c0de42f2:	4632      	mov	r2, r6
c0de42f4:	47a8      	blx	r5
c0de42f6:	4d4e      	ldr	r5, [pc, #312]	@ (c0de4430 <zkn_miller_doubling_step+0x1a4>)
c0de42f8:	4638      	mov	r0, r7
c0de42fa:	4639      	mov	r1, r7
c0de42fc:	aac8      	add	r2, sp, #800	@ 0x320
c0de42fe:	4633      	mov	r3, r6
c0de4300:	447d      	add	r5, pc
c0de4302:	47a8      	blx	r5
c0de4304:	4638      	mov	r0, r7
c0de4306:	4639      	mov	r1, r7
c0de4308:	aa98      	add	r2, sp, #608	@ 0x260
c0de430a:	4633      	mov	r3, r6
c0de430c:	47a8      	blx	r5
c0de430e:	4638      	mov	r0, r7
c0de4310:	4639      	mov	r1, r7
c0de4312:	463a      	mov	r2, r7
c0de4314:	4633      	mov	r3, r6
c0de4316:	47a0      	blx	r4
c0de4318:	a9c8      	add	r1, sp, #800	@ 0x320
c0de431a:	f50d 7ad0 	add.w	sl, sp, #416	@ 0x1a0
c0de431e:	4633      	mov	r3, r6
c0de4320:	4650      	mov	r0, sl
c0de4322:	460a      	mov	r2, r1
c0de4324:	460f      	mov	r7, r1
c0de4326:	47a0      	blx	r4
c0de4328:	4650      	mov	r0, sl
c0de432a:	4651      	mov	r1, sl
c0de432c:	463a      	mov	r2, r7
c0de432e:	4633      	mov	r3, r6
c0de4330:	47a0      	blx	r4
c0de4332:	a850      	add	r0, sp, #320	@ 0x140
c0de4334:	9b05      	ldr	r3, [sp, #20]
c0de4336:	4651      	mov	r1, sl
c0de4338:	4632      	mov	r2, r6
c0de433a:	46a3      	mov	fp, r4
c0de433c:	4798      	blx	r3
c0de433e:	4f3d      	ldr	r7, [pc, #244]	@ (c0de4434 <zkn_miller_doubling_step+0x1a8>)
c0de4340:	9c07      	ldr	r4, [sp, #28]
c0de4342:	4651      	mov	r1, sl
c0de4344:	4633      	mov	r3, r6
c0de4346:	447f      	add	r7, pc
c0de4348:	4620      	mov	r0, r4
c0de434a:	9706      	str	r7, [sp, #24]
c0de434c:	aa38      	add	r2, sp, #224	@ 0xe0
c0de434e:	47b8      	blx	r7
c0de4350:	af08      	add	r7, sp, #32
c0de4352:	a9b0      	add	r1, sp, #704	@ 0x2c0
c0de4354:	4633      	mov	r3, r6
c0de4356:	4638      	mov	r0, r7
c0de4358:	460a      	mov	r2, r1
c0de435a:	47d8      	blx	fp
c0de435c:	4620      	mov	r0, r4
c0de435e:	4621      	mov	r1, r4
c0de4360:	463a      	mov	r2, r7
c0de4362:	4633      	mov	r3, r6
c0de4364:	46aa      	mov	sl, r5
c0de4366:	47a8      	blx	r5
c0de4368:	a980      	add	r1, sp, #512	@ 0x200
c0de436a:	4638      	mov	r0, r7
c0de436c:	4633      	mov	r3, r6
c0de436e:	460a      	mov	r2, r1
c0de4370:	47d8      	blx	fp
c0de4372:	9c01      	ldr	r4, [sp, #4]
c0de4374:	a950      	add	r1, sp, #320	@ 0x140
c0de4376:	463a      	mov	r2, r7
c0de4378:	4633      	mov	r3, r6
c0de437a:	4620      	mov	r0, r4
c0de437c:	47a8      	blx	r5
c0de437e:	9d02      	ldr	r5, [sp, #8]
c0de4380:	4640      	mov	r0, r8
c0de4382:	4642      	mov	r2, r8
c0de4384:	4633      	mov	r3, r6
c0de4386:	4629      	mov	r1, r5
c0de4388:	47d8      	blx	fp
c0de438a:	9b05      	ldr	r3, [sp, #20]
c0de438c:	4640      	mov	r0, r8
c0de438e:	4641      	mov	r1, r8
c0de4390:	4632      	mov	r2, r6
c0de4392:	4798      	blx	r3
c0de4394:	4640      	mov	r0, r8
c0de4396:	4641      	mov	r1, r8
c0de4398:	aab0      	add	r2, sp, #704	@ 0x2c0
c0de439a:	4633      	mov	r3, r6
c0de439c:	47d0      	blx	sl
c0de439e:	4640      	mov	r0, r8
c0de43a0:	4641      	mov	r1, r8
c0de43a2:	aa20      	add	r2, sp, #128	@ 0x80
c0de43a4:	4633      	mov	r3, r6
c0de43a6:	47d0      	blx	sl
c0de43a8:	4628      	mov	r0, r5
c0de43aa:	a980      	add	r1, sp, #512	@ 0x200
c0de43ac:	4622      	mov	r2, r4
c0de43ae:	4633      	mov	r3, r6
c0de43b0:	47d0      	blx	sl
c0de43b2:	a968      	add	r1, sp, #416	@ 0x1a0
c0de43b4:	9c06      	ldr	r4, [sp, #24]
c0de43b6:	4628      	mov	r0, r5
c0de43b8:	462a      	mov	r2, r5
c0de43ba:	4633      	mov	r3, r6
c0de43bc:	47a0      	blx	r4
c0de43be:	af98      	add	r7, sp, #608	@ 0x260
c0de43c0:	4633      	mov	r3, r6
c0de43c2:	4638      	mov	r0, r7
c0de43c4:	4639      	mov	r1, r7
c0de43c6:	463a      	mov	r2, r7
c0de43c8:	47d8      	blx	fp
c0de43ca:	f000 f916 	bl	c0de45fa <OUTLINED_FUNCTION_1>
c0de43ce:	f000 f914 	bl	c0de45fa <OUTLINED_FUNCTION_1>
c0de43d2:	4628      	mov	r0, r5
c0de43d4:	4629      	mov	r1, r5
c0de43d6:	463a      	mov	r2, r7
c0de43d8:	4633      	mov	r3, r6
c0de43da:	47d0      	blx	sl
c0de43dc:	ac20      	add	r4, sp, #128	@ 0x80
c0de43de:	f10d 0a20 	add.w	sl, sp, #32
c0de43e2:	9d06      	ldr	r5, [sp, #24]
c0de43e4:	4641      	mov	r1, r8
c0de43e6:	4633      	mov	r3, r6
c0de43e8:	4650      	mov	r0, sl
c0de43ea:	4622      	mov	r2, r4
c0de43ec:	47a8      	blx	r5
c0de43ee:	9f07      	ldr	r7, [sp, #28]
c0de43f0:	9a03      	ldr	r2, [sp, #12]
c0de43f2:	4651      	mov	r1, sl
c0de43f4:	4633      	mov	r3, r6
c0de43f6:	f107 00c0 	add.w	r0, r7, #192	@ 0xc0
c0de43fa:	f7fd fd0c 	bl	c0de1e16 <zkn_fp2_384_mul_by_fp>
c0de43fe:	4650      	mov	r0, sl
c0de4400:	a968      	add	r1, sp, #416	@ 0x1a0
c0de4402:	4622      	mov	r2, r4
c0de4404:	4633      	mov	r3, r6
c0de4406:	47a8      	blx	r5
c0de4408:	4650      	mov	r0, sl
c0de440a:	4651      	mov	r1, sl
c0de440c:	4632      	mov	r2, r6
c0de440e:	f7fd fbf2 	bl	c0de1bf6 <zkn_fp2_384_neg>
c0de4412:	9a04      	ldr	r2, [sp, #16]
c0de4414:	f107 0060 	add.w	r0, r7, #96	@ 0x60
c0de4418:	4651      	mov	r1, sl
c0de441a:	4633      	mov	r3, r6
c0de441c:	f7fd fcfb 	bl	c0de1e16 <zkn_fp2_384_mul_by_fp>
c0de4420:	f50d 7d60 	add.w	sp, sp, #896	@ 0x380
c0de4424:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4428:	ffffda15 	.word	0xffffda15
c0de442c:	ffffd8d1 	.word	0xffffd8d1
c0de4430:	ffffd8d7 	.word	0xffffd8d7
c0de4434:	ffffd8eb 	.word	0xffffd8eb

c0de4438 <zkn_miller_addition_step>:
c0de4438:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de443c:	f5ad 6d95 	sub.w	sp, sp, #1192	@ 0x4a8
c0de4440:	e9cd 2106 	strd	r2, r1, [sp, #24]
c0de4444:	f100 0160 	add.w	r1, r0, #96	@ 0x60
c0de4448:	9305      	str	r3, [sp, #20]
c0de444a:	4683      	mov	fp, r0
c0de444c:	4698      	mov	r8, r3
c0de444e:	4617      	mov	r7, r2
c0de4450:	9104      	str	r1, [sp, #16]
c0de4452:	a822      	add	r0, sp, #136	@ 0x88
c0de4454:	f7fd fba0 	bl	c0de1b98 <zkn_fp2_384_copy>
c0de4458:	f10b 06c0 	add.w	r6, fp, #192	@ 0xc0
c0de445c:	f8dd a4d0 	ldr.w	sl, [sp, #1232]	@ 0x4d0
c0de4460:	f50d 6489 	add.w	r4, sp, #1096	@ 0x448
c0de4464:	9608      	str	r6, [sp, #32]
c0de4466:	4620      	mov	r0, r4
c0de4468:	4631      	mov	r1, r6
c0de446a:	4b5d      	ldr	r3, [pc, #372]	@ (c0de45e0 <zkn_miller_addition_step+0x1a8>)
c0de446c:	4652      	mov	r2, sl
c0de446e:	447b      	add	r3, pc
c0de4470:	9309      	str	r3, [sp, #36]	@ 0x24
c0de4472:	4798      	blx	r3
c0de4474:	a8fa      	add	r0, sp, #1000	@ 0x3e8
c0de4476:	4d5b      	ldr	r5, [pc, #364]	@ (c0de45e4 <zkn_miller_addition_step+0x1ac>)
c0de4478:	4621      	mov	r1, r4
c0de447a:	4632      	mov	r2, r6
c0de447c:	4653      	mov	r3, sl
c0de447e:	447d      	add	r5, pc
c0de4480:	47a8      	blx	r5
c0de4482:	a8e2      	add	r0, sp, #904	@ 0x388
c0de4484:	4639      	mov	r1, r7
c0de4486:	4622      	mov	r2, r4
c0de4488:	4653      	mov	r3, sl
c0de448a:	47a8      	blx	r5
c0de448c:	a8ca      	add	r0, sp, #808	@ 0x328
c0de448e:	4641      	mov	r1, r8
c0de4490:	aafa      	add	r2, sp, #1000	@ 0x3e8
c0de4492:	4653      	mov	r3, sl
c0de4494:	47a8      	blx	r5
c0de4496:	afb2      	add	r7, sp, #712	@ 0x2c8
c0de4498:	4c53      	ldr	r4, [pc, #332]	@ (c0de45e8 <zkn_miller_addition_step+0x1b0>)
c0de449a:	465a      	mov	r2, fp
c0de449c:	4653      	mov	r3, sl
c0de449e:	4638      	mov	r0, r7
c0de44a0:	447c      	add	r4, pc
c0de44a2:	9401      	str	r4, [sp, #4]
c0de44a4:	a9e2      	add	r1, sp, #904	@ 0x388
c0de44a6:	47a0      	blx	r4
c0de44a8:	f50d 781a 	add.w	r8, sp, #616	@ 0x268
c0de44ac:	9b09      	ldr	r3, [sp, #36]	@ 0x24
c0de44ae:	4639      	mov	r1, r7
c0de44b0:	4652      	mov	r2, sl
c0de44b2:	4640      	mov	r0, r8
c0de44b4:	4798      	blx	r3
c0de44b6:	af82      	add	r7, sp, #520	@ 0x208
c0de44b8:	4c4c      	ldr	r4, [pc, #304]	@ (c0de45ec <zkn_miller_addition_step+0x1b4>)
c0de44ba:	4641      	mov	r1, r8
c0de44bc:	4642      	mov	r2, r8
c0de44be:	4653      	mov	r3, sl
c0de44c0:	4638      	mov	r0, r7
c0de44c2:	447c      	add	r4, pc
c0de44c4:	47a0      	blx	r4
c0de44c6:	4638      	mov	r0, r7
c0de44c8:	4639      	mov	r1, r7
c0de44ca:	463a      	mov	r2, r7
c0de44cc:	4653      	mov	r3, sl
c0de44ce:	47a0      	blx	r4
c0de44d0:	a86a      	add	r0, sp, #424	@ 0x1a8
c0de44d2:	a9b2      	add	r1, sp, #712	@ 0x2c8
c0de44d4:	463a      	mov	r2, r7
c0de44d6:	4653      	mov	r3, sl
c0de44d8:	9503      	str	r5, [sp, #12]
c0de44da:	47a8      	blx	r5
c0de44dc:	ae52      	add	r6, sp, #328	@ 0x148
c0de44de:	a9ca      	add	r1, sp, #808	@ 0x328
c0de44e0:	aa22      	add	r2, sp, #136	@ 0x88
c0de44e2:	f8dd 8004 	ldr.w	r8, [sp, #4]
c0de44e6:	4653      	mov	r3, sl
c0de44e8:	4630      	mov	r0, r6
c0de44ea:	47c0      	blx	r8
c0de44ec:	4630      	mov	r0, r6
c0de44ee:	4631      	mov	r1, r6
c0de44f0:	4632      	mov	r2, r6
c0de44f2:	4653      	mov	r3, sl
c0de44f4:	47a0      	blx	r4
c0de44f6:	a83a      	add	r0, sp, #232	@ 0xe8
c0de44f8:	4659      	mov	r1, fp
c0de44fa:	463a      	mov	r2, r7
c0de44fc:	4653      	mov	r3, sl
c0de44fe:	47a8      	blx	r5
c0de4500:	a952      	add	r1, sp, #328	@ 0x148
c0de4502:	9f09      	ldr	r7, [sp, #36]	@ 0x24
c0de4504:	4658      	mov	r0, fp
c0de4506:	4652      	mov	r2, sl
c0de4508:	47b8      	blx	r7
c0de450a:	4658      	mov	r0, fp
c0de450c:	4659      	mov	r1, fp
c0de450e:	aa6a      	add	r2, sp, #424	@ 0x1a8
c0de4510:	4653      	mov	r3, sl
c0de4512:	4645      	mov	r5, r8
c0de4514:	47c0      	blx	r8
c0de4516:	a93a      	add	r1, sp, #232	@ 0xe8
c0de4518:	f10d 0828 	add.w	r8, sp, #40	@ 0x28
c0de451c:	4653      	mov	r3, sl
c0de451e:	9402      	str	r4, [sp, #8]
c0de4520:	4640      	mov	r0, r8
c0de4522:	460a      	mov	r2, r1
c0de4524:	47a0      	blx	r4
c0de4526:	4658      	mov	r0, fp
c0de4528:	4659      	mov	r1, fp
c0de452a:	4642      	mov	r2, r8
c0de452c:	4653      	mov	r3, sl
c0de452e:	47a8      	blx	r5
c0de4530:	9e08      	ldr	r6, [sp, #32]
c0de4532:	aab2      	add	r2, sp, #712	@ 0x2c8
c0de4534:	4653      	mov	r3, sl
c0de4536:	4630      	mov	r0, r6
c0de4538:	4631      	mov	r1, r6
c0de453a:	47a0      	blx	r4
c0de453c:	4630      	mov	r0, r6
c0de453e:	4631      	mov	r1, r6
c0de4540:	4652      	mov	r2, sl
c0de4542:	47b8      	blx	r7
c0de4544:	4630      	mov	r0, r6
c0de4546:	4631      	mov	r1, r6
c0de4548:	f50d 6289 	add.w	r2, sp, #1096	@ 0x448
c0de454c:	4653      	mov	r3, sl
c0de454e:	47a8      	blx	r5
c0de4550:	4630      	mov	r0, r6
c0de4552:	4631      	mov	r1, r6
c0de4554:	aa9a      	add	r2, sp, #616	@ 0x268
c0de4556:	4653      	mov	r3, sl
c0de4558:	47a8      	blx	r5
c0de455a:	4640      	mov	r0, r8
c0de455c:	a93a      	add	r1, sp, #232	@ 0xe8
c0de455e:	465a      	mov	r2, fp
c0de4560:	4653      	mov	r3, sl
c0de4562:	47a8      	blx	r5
c0de4564:	9f04      	ldr	r7, [sp, #16]
c0de4566:	f50d 7ba4 	add.w	fp, sp, #328	@ 0x148
c0de456a:	9c03      	ldr	r4, [sp, #12]
c0de456c:	4642      	mov	r2, r8
c0de456e:	4653      	mov	r3, sl
c0de4570:	4659      	mov	r1, fp
c0de4572:	4638      	mov	r0, r7
c0de4574:	47a0      	blx	r4
c0de4576:	a922      	add	r1, sp, #136	@ 0x88
c0de4578:	4640      	mov	r0, r8
c0de457a:	aa6a      	add	r2, sp, #424	@ 0x1a8
c0de457c:	4653      	mov	r3, sl
c0de457e:	47a0      	blx	r4
c0de4580:	9e02      	ldr	r6, [sp, #8]
c0de4582:	4640      	mov	r0, r8
c0de4584:	4641      	mov	r1, r8
c0de4586:	4642      	mov	r2, r8
c0de4588:	4653      	mov	r3, sl
c0de458a:	47b0      	blx	r6
c0de458c:	f000 f830 	bl	c0de45f0 <OUTLINED_FUNCTION_0>
c0de4590:	9f07      	ldr	r7, [sp, #28]
c0de4592:	9a06      	ldr	r2, [sp, #24]
c0de4594:	4659      	mov	r1, fp
c0de4596:	4653      	mov	r3, sl
c0de4598:	4638      	mov	r0, r7
c0de459a:	47a0      	blx	r4
c0de459c:	9e08      	ldr	r6, [sp, #32]
c0de459e:	9905      	ldr	r1, [sp, #20]
c0de45a0:	4640      	mov	r0, r8
c0de45a2:	4653      	mov	r3, sl
c0de45a4:	4632      	mov	r2, r6
c0de45a6:	47a0      	blx	r4
c0de45a8:	f000 f822 	bl	c0de45f0 <OUTLINED_FUNCTION_0>
c0de45ac:	4640      	mov	r0, r8
c0de45ae:	4659      	mov	r1, fp
c0de45b0:	4652      	mov	r2, sl
c0de45b2:	f7fd fb20 	bl	c0de1bf6 <zkn_fp2_384_neg>
c0de45b6:	f8dd 24c8 	ldr.w	r2, [sp, #1224]	@ 0x4c8
c0de45ba:	f107 0060 	add.w	r0, r7, #96	@ 0x60
c0de45be:	4641      	mov	r1, r8
c0de45c0:	4653      	mov	r3, sl
c0de45c2:	f7fd fc28 	bl	c0de1e16 <zkn_fp2_384_mul_by_fp>
c0de45c6:	f8dd 24cc 	ldr.w	r2, [sp, #1228]	@ 0x4cc
c0de45ca:	f107 00c0 	add.w	r0, r7, #192	@ 0xc0
c0de45ce:	4631      	mov	r1, r6
c0de45d0:	4653      	mov	r3, sl
c0de45d2:	f7fd fc20 	bl	c0de1e16 <zkn_fp2_384_mul_by_fp>
c0de45d6:	f50d 6d95 	add.w	sp, sp, #1192	@ 0x4a8
c0de45da:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de45de:	bf00      	nop
c0de45e0:	ffffd857 	.word	0xffffd857
c0de45e4:	ffffd7b3 	.word	0xffffd7b3
c0de45e8:	ffffd737 	.word	0xffffd737
c0de45ec:	ffffd6f9 	.word	0xffffd6f9

c0de45f0 <OUTLINED_FUNCTION_0>:
c0de45f0:	4638      	mov	r0, r7
c0de45f2:	4639      	mov	r1, r7
c0de45f4:	4642      	mov	r2, r8
c0de45f6:	4653      	mov	r3, sl
c0de45f8:	4728      	bx	r5

c0de45fa <OUTLINED_FUNCTION_1>:
c0de45fa:	4638      	mov	r0, r7
c0de45fc:	4639      	mov	r1, r7
c0de45fe:	463a      	mov	r2, r7
c0de4600:	4633      	mov	r3, r6
c0de4602:	4758      	bx	fp

c0de4604 <os_io_handle_default_apdu>:
c0de4604:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4606:	b09d      	sub	sp, #116	@ 0x74
c0de4608:	4615      	mov	r5, r2
c0de460a:	9a22      	ldr	r2, [sp, #136]	@ 0x88
c0de460c:	b3c8      	cbz	r0, c0de4682 <os_io_handle_default_apdu+0x7e>
c0de460e:	b3c1      	cbz	r1, c0de4682 <os_io_handle_default_apdu+0x7e>
c0de4610:	b3bd      	cbz	r5, c0de4682 <os_io_handle_default_apdu+0x7e>
c0de4612:	461c      	mov	r4, r3
c0de4614:	b3ab      	cbz	r3, c0de4682 <os_io_handle_default_apdu+0x7e>
c0de4616:	b10a      	cbz	r2, c0de461c <os_io_handle_default_apdu+0x18>
c0de4618:	2100      	movs	r1, #0
c0de461a:	7011      	strb	r1, [r2, #0]
c0de461c:	7801      	ldrb	r1, [r0, #0]
c0de461e:	29b0      	cmp	r1, #176	@ 0xb0
c0de4620:	d131      	bne.n	c0de4686 <os_io_handle_default_apdu+0x82>
c0de4622:	7841      	ldrb	r1, [r0, #1]
c0de4624:	29a7      	cmp	r1, #167	@ 0xa7
c0de4626:	d031      	beq.n	c0de468c <os_io_handle_default_apdu+0x88>
c0de4628:	2906      	cmp	r1, #6
c0de462a:	d036      	beq.n	c0de469a <os_io_handle_default_apdu+0x96>
c0de462c:	2901      	cmp	r1, #1
c0de462e:	d131      	bne.n	c0de4694 <os_io_handle_default_apdu+0x90>
c0de4630:	7881      	ldrb	r1, [r0, #2]
c0de4632:	bb79      	cbnz	r1, c0de4694 <os_io_handle_default_apdu+0x90>
c0de4634:	78c0      	ldrb	r0, [r0, #3]
c0de4636:	bb68      	cbnz	r0, c0de4694 <os_io_handle_default_apdu+0x90>
c0de4638:	6820      	ldr	r0, [r4, #0]
c0de463a:	2100      	movs	r1, #0
c0de463c:	6021      	str	r1, [r4, #0]
c0de463e:	2803      	cmp	r0, #3
c0de4640:	d321      	bcc.n	c0de4686 <os_io_handle_default_apdu+0x82>
c0de4642:	2601      	movs	r6, #1
c0de4644:	1ec7      	subs	r7, r0, #3
c0de4646:	6026      	str	r6, [r4, #0]
c0de4648:	702e      	strb	r6, [r5, #0]
c0de464a:	6820      	ldr	r0, [r4, #0]
c0de464c:	1a3a      	subs	r2, r7, r0
c0de464e:	4428      	add	r0, r5
c0de4650:	1c41      	adds	r1, r0, #1
c0de4652:	2001      	movs	r0, #1
c0de4654:	f003 fff8 	bl	c0de8648 <os_registry_get_current_app_tag>
c0de4658:	f000 f83f 	bl	c0de46da <OUTLINED_FUNCTION_0>
c0de465c:	6020      	str	r0, [r4, #0]
c0de465e:	1a3a      	subs	r2, r7, r0
c0de4660:	4428      	add	r0, r5
c0de4662:	1c41      	adds	r1, r0, #1
c0de4664:	2002      	movs	r0, #2
c0de4666:	f003 ffef 	bl	c0de8648 <os_registry_get_current_app_tag>
c0de466a:	f000 f836 	bl	c0de46da <OUTLINED_FUNCTION_0>
c0de466e:	1c41      	adds	r1, r0, #1
c0de4670:	6021      	str	r1, [r4, #0]
c0de4672:	542e      	strb	r6, [r5, r0]
c0de4674:	f003 ffe0 	bl	c0de8638 <os_flags>
c0de4678:	6821      	ldr	r1, [r4, #0]
c0de467a:	1c4a      	adds	r2, r1, #1
c0de467c:	6022      	str	r2, [r4, #0]
c0de467e:	5468      	strb	r0, [r5, r1]
c0de4680:	e028      	b.n	c0de46d4 <os_io_handle_default_apdu+0xd0>
c0de4682:	7814      	ldrb	r4, [r2, #0]
c0de4684:	e01e      	b.n	c0de46c4 <os_io_handle_default_apdu+0xc0>
c0de4686:	f646 1485 	movw	r4, #27013	@ 0x6985
c0de468a:	e01b      	b.n	c0de46c4 <os_io_handle_default_apdu+0xc0>
c0de468c:	7881      	ldrb	r1, [r0, #2]
c0de468e:	b909      	cbnz	r1, c0de4694 <os_io_handle_default_apdu+0x90>
c0de4690:	78c0      	ldrb	r0, [r0, #3]
c0de4692:	b1d0      	cbz	r0, c0de46ca <os_io_handle_default_apdu+0xc6>
c0de4694:	f44f 44dc 	mov.w	r4, #28160	@ 0x6e00
c0de4698:	e014      	b.n	c0de46c4 <os_io_handle_default_apdu+0xc0>
c0de469a:	2100      	movs	r1, #0
c0de469c:	6021      	str	r1, [r4, #0]
c0de469e:	7883      	ldrb	r3, [r0, #2]
c0de46a0:	7902      	ldrb	r2, [r0, #4]
c0de46a2:	ad02      	add	r5, sp, #8
c0de46a4:	e9cd 1500 	strd	r1, r5, [sp]
c0de46a8:	1d41      	adds	r1, r0, #5
c0de46aa:	4618      	mov	r0, r3
c0de46ac:	2300      	movs	r3, #0
c0de46ae:	f003 ff97 	bl	c0de85e0 <os_pki_load_certificate>
c0de46b2:	4604      	mov	r4, r0
c0de46b4:	4628      	mov	r0, r5
c0de46b6:	216c      	movs	r1, #108	@ 0x6c
c0de46b8:	f004 f938 	bl	c0de892c <explicit_bzero>
c0de46bc:	2c00      	cmp	r4, #0
c0de46be:	bf08      	it	eq
c0de46c0:	f44f 4410 	moveq.w	r4, #36864	@ 0x9000
c0de46c4:	4620      	mov	r0, r4
c0de46c6:	b01d      	add	sp, #116	@ 0x74
c0de46c8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de46ca:	2000      	movs	r0, #0
c0de46cc:	6020      	str	r0, [r4, #0]
c0de46ce:	b10a      	cbz	r2, c0de46d4 <os_io_handle_default_apdu+0xd0>
c0de46d0:	2001      	movs	r0, #1
c0de46d2:	7010      	strb	r0, [r2, #0]
c0de46d4:	f44f 4410 	mov.w	r4, #36864	@ 0x9000
c0de46d8:	e7f4      	b.n	c0de46c4 <os_io_handle_default_apdu+0xc0>

c0de46da <OUTLINED_FUNCTION_0>:
c0de46da:	6821      	ldr	r1, [r4, #0]
c0de46dc:	1c4a      	adds	r2, r1, #1
c0de46de:	6022      	str	r2, [r4, #0]
c0de46e0:	5468      	strb	r0, [r5, r1]
c0de46e2:	6821      	ldr	r1, [r4, #0]
c0de46e4:	4408      	add	r0, r1
c0de46e6:	4770      	bx	lr

c0de46e8 <io_process_itc_ux_event>:
c0de46e8:	b580      	push	{r7, lr}
c0de46ea:	78c0      	ldrb	r0, [r0, #3]
c0de46ec:	2820      	cmp	r0, #32
c0de46ee:	d107      	bne.n	c0de4700 <io_process_itc_ux_event+0x18>
c0de46f0:	2001      	movs	r0, #1
c0de46f2:	f003 fb98 	bl	c0de7e26 <nbgl_objAllowDrawing>
c0de46f6:	f003 fba5 	bl	c0de7e44 <nbgl_screenRedraw>
c0de46fa:	f003 fb8a 	bl	c0de7e12 <nbgl_refresh>
c0de46fe:	2100      	movs	r1, #0
c0de4700:	4608      	mov	r0, r1
c0de4702:	bd80      	pop	{r7, pc}

c0de4704 <io_legacy_apdu_tx>:
c0de4704:	b5b0      	push	{r4, r5, r7, lr}
c0de4706:	460a      	mov	r2, r1
c0de4708:	4601      	mov	r1, r0
c0de470a:	4806      	ldr	r0, [pc, #24]	@ (c0de4724 <io_legacy_apdu_tx+0x20>)
c0de470c:	2300      	movs	r3, #0
c0de470e:	2500      	movs	r5, #0
c0de4710:	eb09 0400 	add.w	r4, r9, r0
c0de4714:	7860      	ldrb	r0, [r4, #1]
c0de4716:	f003 ffc1 	bl	c0de869c <os_io_tx_cmd>
c0de471a:	4903      	ldr	r1, [pc, #12]	@ (c0de4728 <io_legacy_apdu_tx+0x24>)
c0de471c:	7065      	strb	r5, [r4, #1]
c0de471e:	4449      	add	r1, r9
c0de4720:	718d      	strb	r5, [r1, #6]
c0de4722:	bdb0      	pop	{r4, r5, r7, pc}
c0de4724:	0000112c 	.word	0x0000112c
c0de4728:	00001124 	.word	0x00001124

c0de472c <io_legacy_apdu_rx>:
c0de472c:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de472e:	4e66      	ldr	r6, [pc, #408]	@ (c0de48c8 <io_legacy_apdu_rx+0x19c>)
c0de4730:	2100      	movs	r1, #0
c0de4732:	4605      	mov	r5, r0
c0de4734:	2200      	movs	r2, #0
c0de4736:	2301      	movs	r3, #1
c0de4738:	f88d 100b 	strb.w	r1, [sp, #11]
c0de473c:	f240 1111 	movw	r1, #273	@ 0x111
c0de4740:	eb09 0006 	add.w	r0, r9, r6
c0de4744:	f003 ffb6 	bl	c0de86b4 <os_io_rx_evt>
c0de4748:	4604      	mov	r4, r0
c0de474a:	2801      	cmp	r0, #1
c0de474c:	f2c0 80ab 	blt.w	c0de48a6 <io_legacy_apdu_rx+0x17a>
c0de4750:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de4754:	f1a0 0110 	sub.w	r1, r0, #16
c0de4758:	2916      	cmp	r1, #22
c0de475a:	d805      	bhi.n	c0de4768 <io_legacy_apdu_rx+0x3c>
c0de475c:	2201      	movs	r2, #1
c0de475e:	fa02 f101 	lsl.w	r1, r2, r1
c0de4762:	4a5a      	ldr	r2, [pc, #360]	@ (c0de48cc <io_legacy_apdu_rx+0x1a0>)
c0de4764:	4211      	tst	r1, r2
c0de4766:	d106      	bne.n	c0de4776 <io_legacy_apdu_rx+0x4a>
c0de4768:	1e41      	subs	r1, r0, #1
c0de476a:	2902      	cmp	r1, #2
c0de476c:	d367      	bcc.n	c0de483e <io_legacy_apdu_rx+0x112>
c0de476e:	2830      	cmp	r0, #48	@ 0x30
c0de4770:	bf18      	it	ne
c0de4772:	2840      	cmpne	r0, #64	@ 0x40
c0de4774:	d177      	bne.n	c0de4866 <io_legacy_apdu_rx+0x13a>
c0de4776:	4f56      	ldr	r7, [pc, #344]	@ (c0de48d0 <io_legacy_apdu_rx+0x1a4>)
c0de4778:	eb09 0107 	add.w	r1, r9, r7
c0de477c:	7048      	strb	r0, [r1, #1]
c0de477e:	f003 ff3f 	bl	c0de8600 <os_perso_is_pin_set>
c0de4782:	28aa      	cmp	r0, #170	@ 0xaa
c0de4784:	d103      	bne.n	c0de478e <io_legacy_apdu_rx+0x62>
c0de4786:	f003 ff44 	bl	c0de8612 <os_global_pin_is_validated>
c0de478a:	28aa      	cmp	r0, #170	@ 0xaa
c0de478c:	d145      	bne.n	c0de481a <io_legacy_apdu_rx+0xee>
c0de478e:	eb09 0006 	add.w	r0, r9, r6
c0de4792:	7840      	ldrb	r0, [r0, #1]
c0de4794:	28b0      	cmp	r0, #176	@ 0xb0
c0de4796:	d12c      	bne.n	c0de47f2 <io_legacy_apdu_rx+0xc6>
c0de4798:	f240 1011 	movw	r0, #273	@ 0x111
c0de479c:	1e61      	subs	r1, r4, #1
c0de479e:	9001      	str	r0, [sp, #4]
c0de47a0:	f10d 000b 	add.w	r0, sp, #11
c0de47a4:	9000      	str	r0, [sp, #0]
c0de47a6:	484b      	ldr	r0, [pc, #300]	@ (c0de48d4 <io_legacy_apdu_rx+0x1a8>)
c0de47a8:	ab01      	add	r3, sp, #4
c0de47aa:	eb09 0500 	add.w	r5, r9, r0
c0de47ae:	eb09 0006 	add.w	r0, r9, r6
c0de47b2:	3001      	adds	r0, #1
c0de47b4:	462a      	mov	r2, r5
c0de47b6:	f7ff ff25 	bl	c0de4604 <os_io_handle_default_apdu>
c0de47ba:	2400      	movs	r4, #0
c0de47bc:	9901      	ldr	r1, [sp, #4]
c0de47be:	eb09 0607 	add.w	r6, r9, r7
c0de47c2:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de47c6:	bf18      	it	ne
c0de47c8:	4621      	movne	r1, r4
c0de47ca:	0a02      	lsrs	r2, r0, #8
c0de47cc:	2300      	movs	r3, #0
c0de47ce:	546a      	strb	r2, [r5, r1]
c0de47d0:	186a      	adds	r2, r5, r1
c0de47d2:	7050      	strb	r0, [r2, #1]
c0de47d4:	1c88      	adds	r0, r1, #2
c0de47d6:	4629      	mov	r1, r5
c0de47d8:	9001      	str	r0, [sp, #4]
c0de47da:	b282      	uxth	r2, r0
c0de47dc:	7870      	ldrb	r0, [r6, #1]
c0de47de:	f003 ff5d 	bl	c0de869c <os_io_tx_cmd>
c0de47e2:	f89d 100b 	ldrb.w	r1, [sp, #11]
c0de47e6:	7074      	strb	r4, [r6, #1]
c0de47e8:	2901      	cmp	r1, #1
c0de47ea:	d06a      	beq.n	c0de48c2 <io_legacy_apdu_rx+0x196>
c0de47ec:	ea00 74e0 	and.w	r4, r0, r0, asr #31
c0de47f0:	e059      	b.n	c0de48a6 <io_legacy_apdu_rx+0x17a>
c0de47f2:	eb09 0007 	add.w	r0, r9, r7
c0de47f6:	7840      	ldrb	r0, [r0, #1]
c0de47f8:	2810      	cmp	r0, #16
c0de47fa:	d043      	beq.n	c0de4884 <io_legacy_apdu_rx+0x158>
c0de47fc:	2840      	cmp	r0, #64	@ 0x40
c0de47fe:	d043      	beq.n	c0de4888 <io_legacy_apdu_rx+0x15c>
c0de4800:	2821      	cmp	r0, #33	@ 0x21
c0de4802:	d043      	beq.n	c0de488c <io_legacy_apdu_rx+0x160>
c0de4804:	2822      	cmp	r0, #34	@ 0x22
c0de4806:	d037      	beq.n	c0de4878 <io_legacy_apdu_rx+0x14c>
c0de4808:	2823      	cmp	r0, #35	@ 0x23
c0de480a:	d037      	beq.n	c0de487c <io_legacy_apdu_rx+0x150>
c0de480c:	2830      	cmp	r0, #48	@ 0x30
c0de480e:	d037      	beq.n	c0de4880 <io_legacy_apdu_rx+0x154>
c0de4810:	2820      	cmp	r0, #32
c0de4812:	bf14      	ite	ne
c0de4814:	2000      	movne	r0, #0
c0de4816:	2001      	moveq	r0, #1
c0de4818:	e039      	b.n	c0de488e <io_legacy_apdu_rx+0x162>
c0de481a:	482e      	ldr	r0, [pc, #184]	@ (c0de48d4 <io_legacy_apdu_rx+0x1a8>)
c0de481c:	2155      	movs	r1, #85	@ 0x55
c0de481e:	2202      	movs	r2, #2
c0de4820:	2300      	movs	r3, #0
c0de4822:	f809 1000 	strb.w	r1, [r9, r0]
c0de4826:	eb09 0100 	add.w	r1, r9, r0
c0de482a:	2015      	movs	r0, #21
c0de482c:	7048      	strb	r0, [r1, #1]
c0de482e:	eb09 0007 	add.w	r0, r9, r7
c0de4832:	7840      	ldrb	r0, [r0, #1]
c0de4834:	b003      	add	sp, #12
c0de4836:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de483a:	f003 bf2f 	b.w	c0de869c <os_io_tx_cmd>
c0de483e:	4f27      	ldr	r7, [pc, #156]	@ (c0de48dc <io_legacy_apdu_rx+0x1b0>)
c0de4840:	444e      	add	r6, r9
c0de4842:	3c01      	subs	r4, #1
c0de4844:	1c71      	adds	r1, r6, #1
c0de4846:	4622      	mov	r2, r4
c0de4848:	eb09 0007 	add.w	r0, r9, r7
c0de484c:	f004 f856 	bl	c0de88fc <__aeabi_memcpy>
c0de4850:	7870      	ldrb	r0, [r6, #1]
c0de4852:	281a      	cmp	r0, #26
c0de4854:	d10a      	bne.n	c0de486c <io_legacy_apdu_rx+0x140>
c0de4856:	eb09 0007 	add.w	r0, r9, r7
c0de485a:	4621      	mov	r1, r4
c0de485c:	b003      	add	sp, #12
c0de485e:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de4862:	f7ff bf41 	b.w	c0de46e8 <io_process_itc_ux_event>
c0de4866:	2842      	cmp	r0, #66	@ 0x42
c0de4868:	d01d      	beq.n	c0de48a6 <io_legacy_apdu_rx+0x17a>
c0de486a:	e028      	b.n	c0de48be <io_legacy_apdu_rx+0x192>
c0de486c:	b1ed      	cbz	r5, c0de48aa <io_legacy_apdu_rx+0x17e>
c0de486e:	2000      	movs	r0, #0
c0de4870:	2400      	movs	r4, #0
c0de4872:	f003 f8d7 	bl	c0de7a24 <io_event>
c0de4876:	e016      	b.n	c0de48a6 <io_legacy_apdu_rx+0x17a>
c0de4878:	2004      	movs	r0, #4
c0de487a:	e008      	b.n	c0de488e <io_legacy_apdu_rx+0x162>
c0de487c:	2007      	movs	r0, #7
c0de487e:	e006      	b.n	c0de488e <io_legacy_apdu_rx+0x162>
c0de4880:	2002      	movs	r0, #2
c0de4882:	e004      	b.n	c0de488e <io_legacy_apdu_rx+0x162>
c0de4884:	2006      	movs	r0, #6
c0de4886:	e002      	b.n	c0de488e <io_legacy_apdu_rx+0x162>
c0de4888:	2003      	movs	r0, #3
c0de488a:	e000      	b.n	c0de488e <io_legacy_apdu_rx+0x162>
c0de488c:	2005      	movs	r0, #5
c0de488e:	4912      	ldr	r1, [pc, #72]	@ (c0de48d8 <io_legacy_apdu_rx+0x1ac>)
c0de4890:	3c01      	subs	r4, #1
c0de4892:	4622      	mov	r2, r4
c0de4894:	4449      	add	r1, r9
c0de4896:	7188      	strb	r0, [r1, #6]
c0de4898:	480e      	ldr	r0, [pc, #56]	@ (c0de48d4 <io_legacy_apdu_rx+0x1a8>)
c0de489a:	eb09 0106 	add.w	r1, r9, r6
c0de489e:	3101      	adds	r1, #1
c0de48a0:	4448      	add	r0, r9
c0de48a2:	f004 f82b 	bl	c0de88fc <__aeabi_memcpy>
c0de48a6:	4620      	mov	r0, r4
c0de48a8:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de48aa:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de48ae:	2815      	cmp	r0, #21
c0de48b0:	d8dd      	bhi.n	c0de486e <io_legacy_apdu_rx+0x142>
c0de48b2:	2101      	movs	r1, #1
c0de48b4:	fa01 f000 	lsl.w	r0, r1, r0
c0de48b8:	4909      	ldr	r1, [pc, #36]	@ (c0de48e0 <io_legacy_apdu_rx+0x1b4>)
c0de48ba:	4208      	tst	r0, r1
c0de48bc:	d0d7      	beq.n	c0de486e <io_legacy_apdu_rx+0x142>
c0de48be:	2400      	movs	r4, #0
c0de48c0:	e7f1      	b.n	c0de48a6 <io_legacy_apdu_rx+0x17a>
c0de48c2:	20ff      	movs	r0, #255	@ 0xff
c0de48c4:	f003 fecc 	bl	c0de8660 <os_sched_exit>
c0de48c8:	00001012 	.word	0x00001012
c0de48cc:	007f0001 	.word	0x007f0001
c0de48d0:	0000112c 	.word	0x0000112c
c0de48d4:	00000f01 	.word	0x00000f01
c0de48d8:	00001124 	.word	0x00001124
c0de48dc:	000012ac 	.word	0x000012ac
c0de48e0:	00205020 	.word	0x00205020

c0de48e4 <io_seproxyhal_init>:
c0de48e4:	b570      	push	{r4, r5, r6, lr}
c0de48e6:	b08a      	sub	sp, #40	@ 0x28
c0de48e8:	4d0b      	ldr	r5, [pc, #44]	@ (c0de4918 <io_seproxyhal_init+0x34>)
c0de48ea:	2600      	movs	r6, #0
c0de48ec:	2118      	movs	r1, #24
c0de48ee:	eb09 0005 	add.w	r0, r9, r5
c0de48f2:	7046      	strb	r6, [r0, #1]
c0de48f4:	ac01      	add	r4, sp, #4
c0de48f6:	4620      	mov	r0, r4
c0de48f8:	f004 f80a 	bl	c0de8910 <__aeabi_memclr>
c0de48fc:	2011      	movs	r0, #17
c0de48fe:	f8ad 6024 	strh.w	r6, [sp, #36]	@ 0x24
c0de4902:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de4906:	4620      	mov	r0, r4
c0de4908:	f003 feb4 	bl	c0de8674 <os_io_init>
c0de490c:	2001      	movs	r0, #1
c0de490e:	f809 0005 	strb.w	r0, [r9, r5]
c0de4912:	b00a      	add	sp, #40	@ 0x28
c0de4914:	bd70      	pop	{r4, r5, r6, pc}
c0de4916:	bf00      	nop
c0de4918:	0000112c 	.word	0x0000112c

c0de491c <nbgl_layoutGet>:
c0de491c:	b570      	push	{r4, r5, r6, lr}
c0de491e:	4605      	mov	r5, r0
c0de4920:	7800      	ldrb	r0, [r0, #0]
c0de4922:	b148      	cbz	r0, c0de4938 <nbgl_layoutGet+0x1c>
c0de4924:	4819      	ldr	r0, [pc, #100]	@ (c0de498c <nbgl_layoutGet+0x70>)
c0de4926:	eb09 0100 	add.w	r1, r9, r0
c0de492a:	7b8a      	ldrb	r2, [r1, #14]
c0de492c:	b152      	cbz	r2, c0de4944 <nbgl_layoutGet+0x28>
c0de492e:	4448      	add	r0, r9
c0de4930:	7e81      	ldrb	r1, [r0, #26]
c0de4932:	b151      	cbz	r1, c0de494a <nbgl_layoutGet+0x2e>
c0de4934:	2400      	movs	r4, #0
c0de4936:	e026      	b.n	c0de4986 <nbgl_layoutGet+0x6a>
c0de4938:	4814      	ldr	r0, [pc, #80]	@ (c0de498c <nbgl_layoutGet+0x70>)
c0de493a:	eb09 0400 	add.w	r4, r9, r0
c0de493e:	2000      	movs	r0, #0
c0de4940:	70a0      	strb	r0, [r4, #2]
c0de4942:	e004      	b.n	c0de494e <nbgl_layoutGet+0x32>
c0de4944:	f101 040c 	add.w	r4, r1, #12
c0de4948:	e001      	b.n	c0de494e <nbgl_layoutGet+0x32>
c0de494a:	f100 0418 	add.w	r4, r0, #24
c0de494e:	2000      	movs	r0, #0
c0de4950:	4626      	mov	r6, r4
c0de4952:	60a0      	str	r0, [r4, #8]
c0de4954:	6020      	str	r0, [r4, #0]
c0de4956:	f846 0f04 	str.w	r0, [r6, #4]!
c0de495a:	6868      	ldr	r0, [r5, #4]
c0de495c:	f003 fde8 	bl	c0de8530 <pic>
c0de4960:	60a0      	str	r0, [r4, #8]
c0de4962:	7828      	ldrb	r0, [r5, #0]
c0de4964:	f105 0208 	add.w	r2, r5, #8
c0de4968:	7020      	strb	r0, [r4, #0]
c0de496a:	4b09      	ldr	r3, [pc, #36]	@ (c0de4990 <nbgl_layoutGet+0x74>)
c0de496c:	447b      	add	r3, pc
c0de496e:	b120      	cbz	r0, c0de497a <nbgl_layoutGet+0x5e>
c0de4970:	4630      	mov	r0, r6
c0de4972:	2107      	movs	r1, #7
c0de4974:	f003 fa61 	bl	c0de7e3a <nbgl_screenPush>
c0de4978:	e004      	b.n	c0de4984 <nbgl_layoutGet+0x68>
c0de497a:	4630      	mov	r0, r6
c0de497c:	2107      	movs	r1, #7
c0de497e:	f003 fa57 	bl	c0de7e30 <nbgl_screenSet>
c0de4982:	2000      	movs	r0, #0
c0de4984:	7060      	strb	r0, [r4, #1]
c0de4986:	4620      	mov	r0, r4
c0de4988:	bd70      	pop	{r4, r5, r6, pc}
c0de498a:	bf00      	nop
c0de498c:	00001130 	.word	0x00001130
c0de4990:	00000025 	.word	0x00000025

c0de4994 <buttonCallback>:
c0de4994:	b5b0      	push	{r4, r5, r7, lr}
c0de4996:	f890 203e 	ldrb.w	r2, [r0, #62]	@ 0x3e
c0de499a:	4811      	ldr	r0, [pc, #68]	@ (c0de49e0 <buttonCallback+0x4c>)
c0de499c:	2302      	movs	r3, #2
c0de499e:	1c5c      	adds	r4, r3, #1
c0de49a0:	d01d      	beq.n	c0de49de <buttonCallback+0x4a>
c0de49a2:	b2dc      	uxtb	r4, r3
c0de49a4:	eb09 0500 	add.w	r5, r9, r0
c0de49a8:	eb04 0444 	add.w	r4, r4, r4, lsl #1
c0de49ac:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de49b0:	786d      	ldrb	r5, [r5, #1]
c0de49b2:	42aa      	cmp	r2, r5
c0de49b4:	d105      	bne.n	c0de49c2 <buttonCallback+0x2e>
c0de49b6:	eb09 0500 	add.w	r5, r9, r0
c0de49ba:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de49be:	78ad      	ldrb	r5, [r5, #2]
c0de49c0:	b90d      	cbnz	r5, c0de49c6 <buttonCallback+0x32>
c0de49c2:	3b01      	subs	r3, #1
c0de49c4:	e7eb      	b.n	c0de499e <buttonCallback+0xa>
c0de49c6:	eb09 0200 	add.w	r2, r9, r0
c0de49ca:	eb02 0284 	add.w	r2, r2, r4, lsl #2
c0de49ce:	6892      	ldr	r2, [r2, #8]
c0de49d0:	b12a      	cbz	r2, c0de49de <buttonCallback+0x4a>
c0de49d2:	4448      	add	r0, r9
c0de49d4:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de49d8:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de49dc:	4710      	bx	r2
c0de49de:	bdb0      	pop	{r4, r5, r7, pc}
c0de49e0:	00001130 	.word	0x00001130

c0de49e4 <nbgl_layoutAddNavigation>:
c0de49e4:	b570      	push	{r4, r5, r6, lr}
c0de49e6:	2800      	cmp	r0, #0
c0de49e8:	d04d      	beq.n	c0de4a86 <nbgl_layoutAddNavigation+0xa2>
c0de49ea:	460d      	mov	r5, r1
c0de49ec:	7849      	ldrb	r1, [r1, #1]
c0de49ee:	4604      	mov	r4, r0
c0de49f0:	07c8      	lsls	r0, r1, #31
c0de49f2:	d022      	beq.n	c0de4a3a <nbgl_layoutAddNavigation+0x56>
c0de49f4:	7861      	ldrb	r1, [r4, #1]
c0de49f6:	2002      	movs	r0, #2
c0de49f8:	f003 fa33 	bl	c0de7e62 <nbgl_objPoolGet>
c0de49fc:	782a      	ldrb	r2, [r5, #0]
c0de49fe:	7869      	ldrb	r1, [r5, #1]
c0de4a00:	4b23      	ldr	r3, [pc, #140]	@ (c0de4a90 <nbgl_layoutAddNavigation+0xac>)
c0de4a02:	4e24      	ldr	r6, [pc, #144]	@ (c0de4a94 <nbgl_layoutAddNavigation+0xb0>)
c0de4a04:	2a00      	cmp	r2, #0
c0de4a06:	447b      	add	r3, pc
c0de4a08:	447e      	add	r6, pc
c0de4a0a:	4602      	mov	r2, r0
c0de4a0c:	bf08      	it	eq
c0de4a0e:	461e      	moveq	r6, r3
c0de4a10:	f802 6f21 	strb.w	r6, [r2, #33]!
c0de4a14:	0e33      	lsrs	r3, r6, #24
c0de4a16:	70d3      	strb	r3, [r2, #3]
c0de4a18:	0c33      	lsrs	r3, r6, #16
c0de4a1a:	7093      	strb	r3, [r2, #2]
c0de4a1c:	0a32      	lsrs	r2, r6, #8
c0de4a1e:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de4a22:	6862      	ldr	r2, [r4, #4]
c0de4a24:	78a3      	ldrb	r3, [r4, #2]
c0de4a26:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
c0de4a2a:	2203      	movs	r2, #3
c0de4a2c:	77c2      	strb	r2, [r0, #31]
c0de4a2e:	2204      	movs	r2, #4
c0de4a30:	7582      	strb	r2, [r0, #22]
c0de4a32:	2200      	movs	r2, #0
c0de4a34:	7242      	strb	r2, [r0, #9]
c0de4a36:	1c58      	adds	r0, r3, #1
c0de4a38:	70a0      	strb	r0, [r4, #2]
c0de4a3a:	0788      	lsls	r0, r1, #30
c0de4a3c:	f04f 0600 	mov.w	r6, #0
c0de4a40:	d523      	bpl.n	c0de4a8a <nbgl_layoutAddNavigation+0xa6>
c0de4a42:	7861      	ldrb	r1, [r4, #1]
c0de4a44:	2002      	movs	r0, #2
c0de4a46:	f003 fa0c 	bl	c0de7e62 <nbgl_objPoolGet>
c0de4a4a:	7829      	ldrb	r1, [r5, #0]
c0de4a4c:	4a12      	ldr	r2, [pc, #72]	@ (c0de4a98 <nbgl_layoutAddNavigation+0xb4>)
c0de4a4e:	4b13      	ldr	r3, [pc, #76]	@ (c0de4a9c <nbgl_layoutAddNavigation+0xb8>)
c0de4a50:	2900      	cmp	r1, #0
c0de4a52:	447a      	add	r2, pc
c0de4a54:	447b      	add	r3, pc
c0de4a56:	4601      	mov	r1, r0
c0de4a58:	bf08      	it	eq
c0de4a5a:	4613      	moveq	r3, r2
c0de4a5c:	f801 3f21 	strb.w	r3, [r1, #33]!
c0de4a60:	0e1a      	lsrs	r2, r3, #24
c0de4a62:	7246      	strb	r6, [r0, #9]
c0de4a64:	70ca      	strb	r2, [r1, #3]
c0de4a66:	0c1a      	lsrs	r2, r3, #16
c0de4a68:	708a      	strb	r2, [r1, #2]
c0de4a6a:	0a19      	lsrs	r1, r3, #8
c0de4a6c:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de4a70:	6861      	ldr	r1, [r4, #4]
c0de4a72:	78a2      	ldrb	r2, [r4, #2]
c0de4a74:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de4a78:	2103      	movs	r1, #3
c0de4a7a:	77c1      	strb	r1, [r0, #31]
c0de4a7c:	2106      	movs	r1, #6
c0de4a7e:	7581      	strb	r1, [r0, #22]
c0de4a80:	1c50      	adds	r0, r2, #1
c0de4a82:	70a0      	strb	r0, [r4, #2]
c0de4a84:	e001      	b.n	c0de4a8a <nbgl_layoutAddNavigation+0xa6>
c0de4a86:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de4a8a:	4630      	mov	r0, r6
c0de4a8c:	bd70      	pop	{r4, r5, r6, pc}
c0de4a8e:	bf00      	nop
c0de4a90:	00004104 	.word	0x00004104
c0de4a94:	0000411e 	.word	0x0000411e
c0de4a98:	000040c6 	.word	0x000040c6
c0de4a9c:	000040a8 	.word	0x000040a8

c0de4aa0 <nbgl_layoutAddText>:
c0de4aa0:	2800      	cmp	r0, #0
c0de4aa2:	f000 8143 	beq.w	c0de4d2c <nbgl_layoutAddText+0x28c>
c0de4aa6:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4aaa:	b088      	sub	sp, #32
c0de4aac:	460e      	mov	r6, r1
c0de4aae:	7841      	ldrb	r1, [r0, #1]
c0de4ab0:	4605      	mov	r5, r0
c0de4ab2:	2001      	movs	r0, #1
c0de4ab4:	4617      	mov	r7, r2
c0de4ab6:	461c      	mov	r4, r3
c0de4ab8:	f003 f9d3 	bl	c0de7e62 <nbgl_objPoolGet>
c0de4abc:	4680      	mov	r8, r0
c0de4abe:	2003      	movs	r0, #3
c0de4ac0:	2f00      	cmp	r7, #0
c0de4ac2:	bf08      	it	eq
c0de4ac4:	2001      	moveq	r0, #1
c0de4ac6:	7869      	ldrb	r1, [r5, #1]
c0de4ac8:	f888 0020 	strb.w	r0, [r8, #32]
c0de4acc:	f003 f9ce 	bl	c0de7e6c <nbgl_containerPoolGet>
c0de4ad0:	4641      	mov	r1, r8
c0de4ad2:	0e02      	lsrs	r2, r0, #24
c0de4ad4:	f04f 0a72 	mov.w	sl, #114	@ 0x72
c0de4ad8:	f04f 0b00 	mov.w	fp, #0
c0de4adc:	9704      	str	r7, [sp, #16]
c0de4ade:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de4ae2:	f888 a004 	strb.w	sl, [r8, #4]
c0de4ae6:	f888 b005 	strb.w	fp, [r8, #5]
c0de4aea:	70ca      	strb	r2, [r1, #3]
c0de4aec:	0c02      	lsrs	r2, r0, #16
c0de4aee:	0a00      	lsrs	r0, r0, #8
c0de4af0:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de4af4:	708a      	strb	r2, [r1, #2]
c0de4af6:	2004      	movs	r0, #4
c0de4af8:	7869      	ldrb	r1, [r5, #1]
c0de4afa:	f003 f9b2 	bl	c0de7e62 <nbgl_objPoolGet>
c0de4afe:	4607      	mov	r7, r0
c0de4b00:	2003      	movs	r0, #3
c0de4b02:	77f8      	strb	r0, [r7, #31]
c0de4b04:	4630      	mov	r0, r6
c0de4b06:	f003 fd13 	bl	c0de8530 <pic>
c0de4b0a:	4601      	mov	r1, r0
c0de4b0c:	2008      	movs	r0, #8
c0de4b0e:	f887 b005 	strb.w	fp, [r7, #5]
c0de4b12:	f887 a004 	strb.w	sl, [r7, #4]
c0de4b16:	9403      	str	r4, [sp, #12]
c0de4b18:	2c00      	cmp	r4, #0
c0de4b1a:	bf08      	it	eq
c0de4b1c:	200a      	moveq	r0, #10
c0de4b1e:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4b22:	2205      	movs	r2, #5
c0de4b24:	0e0b      	lsrs	r3, r1, #24
c0de4b26:	f887 2020 	strb.w	r2, [r7, #32]
c0de4b2a:	463a      	mov	r2, r7
c0de4b2c:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de4b30:	70d3      	strb	r3, [r2, #3]
c0de4b32:	0c0b      	lsrs	r3, r1, #16
c0de4b34:	7093      	strb	r3, [r2, #2]
c0de4b36:	0a0a      	lsrs	r2, r1, #8
c0de4b38:	2301      	movs	r3, #1
c0de4b3a:	f887 2027 	strb.w	r2, [r7, #39]	@ 0x27
c0de4b3e:	2272      	movs	r2, #114	@ 0x72
c0de4b40:	f003 f9a8 	bl	c0de7e94 <nbgl_getTextNbLinesInWidth>
c0de4b44:	4606      	mov	r6, r0
c0de4b46:	2805      	cmp	r0, #5
c0de4b48:	9505      	str	r5, [sp, #20]
c0de4b4a:	d31d      	bcc.n	c0de4b88 <nbgl_layoutAddText+0xe8>
c0de4b4c:	463e      	mov	r6, r7
c0de4b4e:	2004      	movs	r0, #4
c0de4b50:	2101      	movs	r1, #1
c0de4b52:	f10d 051e 	add.w	r5, sp, #30
c0de4b56:	f816 cf26 	ldrb.w	ip, [r6, #38]!
c0de4b5a:	7872      	ldrb	r2, [r6, #1]
c0de4b5c:	78b3      	ldrb	r3, [r6, #2]
c0de4b5e:	78f4      	ldrb	r4, [r6, #3]
c0de4b60:	f806 0c01 	strb.w	r0, [r6, #-1]
c0de4b64:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de4b68:	9101      	str	r1, [sp, #4]
c0de4b6a:	9500      	str	r5, [sp, #0]
c0de4b6c:	9d05      	ldr	r5, [sp, #20]
c0de4b6e:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de4b72:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de4b76:	2304      	movs	r3, #4
c0de4b78:	f000 fc78 	bl	c0de546c <OUTLINED_FUNCTION_4>
c0de4b7c:	f8bd 001e 	ldrh.w	r0, [sp, #30]
c0de4b80:	7130      	strb	r0, [r6, #4]
c0de4b82:	0a00      	lsrs	r0, r0, #8
c0de4b84:	7170      	strb	r0, [r6, #5]
c0de4b86:	2604      	movs	r6, #4
c0de4b88:	f000 fc78 	bl	c0de547c <OUTLINED_FUNCTION_6>
c0de4b8c:	4683      	mov	fp, r0
c0de4b8e:	79c0      	ldrb	r0, [r0, #7]
c0de4b90:	f897 1024 	ldrb.w	r1, [r7, #36]	@ 0x24
c0de4b94:	9c04      	ldr	r4, [sp, #16]
c0de4b96:	fb06 fa00 	mul.w	sl, r6, r0
c0de4b9a:	f041 0101 	orr.w	r1, r1, #1
c0de4b9e:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de4ba2:	f887 1024 	strb.w	r1, [r7, #36]	@ 0x24
c0de4ba6:	2102      	movs	r1, #2
c0de4ba8:	f887 a006 	strb.w	sl, [r7, #6]
c0de4bac:	71f8      	strb	r0, [r7, #7]
c0de4bae:	4640      	mov	r0, r8
c0de4bb0:	75b9      	strb	r1, [r7, #22]
c0de4bb2:	2c00      	cmp	r4, #0
c0de4bb4:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de4bb8:	7842      	ldrb	r2, [r0, #1]
c0de4bba:	7883      	ldrb	r3, [r0, #2]
c0de4bbc:	78c0      	ldrb	r0, [r0, #3]
c0de4bbe:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4bc2:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de4bc6:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4bca:	6007      	str	r7, [r0, #0]
c0de4bcc:	f000 8110 	beq.w	c0de4df0 <nbgl_layoutAddText+0x350>
c0de4bd0:	9803      	ldr	r0, [sp, #12]
c0de4bd2:	7869      	ldrb	r1, [r5, #1]
c0de4bd4:	2802      	cmp	r0, #2
c0de4bd6:	f040 80ab 	bne.w	c0de4d30 <nbgl_layoutAddText+0x290>
c0de4bda:	2005      	movs	r0, #5
c0de4bdc:	2505      	movs	r5, #5
c0de4bde:	f003 f940 	bl	c0de7e62 <nbgl_objPoolGet>
c0de4be2:	2600      	movs	r6, #0
c0de4be4:	4607      	mov	r7, r0
c0de4be6:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de4bea:	2001      	movs	r0, #1
c0de4bec:	f8ad 601a 	strh.w	r6, [sp, #26]
c0de4bf0:	f8ad 6018 	strh.w	r6, [sp, #24]
c0de4bf4:	f000 fc51 	bl	c0de549a <OUTLINED_FUNCTION_9>
c0de4bf8:	4620      	mov	r0, r4
c0de4bfa:	f003 fc99 	bl	c0de8530 <pic>
c0de4bfe:	4601      	mov	r1, r0
c0de4c00:	200e      	movs	r0, #14
c0de4c02:	71fe      	strb	r6, [r7, #7]
c0de4c04:	75bd      	strb	r5, [r7, #22]
c0de4c06:	71b8      	strb	r0, [r7, #6]
c0de4c08:	2008      	movs	r0, #8
c0de4c0a:	0e0a      	lsrs	r2, r1, #24
c0de4c0c:	f887 0023 	strb.w	r0, [r7, #35]	@ 0x23
c0de4c10:	4638      	mov	r0, r7
c0de4c12:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de4c16:	f000 fc20 	bl	c0de545a <OUTLINED_FUNCTION_3>
c0de4c1a:	2865      	cmp	r0, #101	@ 0x65
c0de4c1c:	f240 80d8 	bls.w	c0de4dd0 <nbgl_layoutAddText+0x330>
c0de4c20:	46bb      	mov	fp, r7
c0de4c22:	f897 5026 	ldrb.w	r5, [r7, #38]	@ 0x26
c0de4c26:	f897 0023 	ldrb.w	r0, [r7, #35]	@ 0x23
c0de4c2a:	2401      	movs	r4, #1
c0de4c2c:	f81b 1f25 	ldrb.w	r1, [fp, #37]!
c0de4c30:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de4c34:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de4c38:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de4c3c:	ae06      	add	r6, sp, #24
c0de4c3e:	e9cd 6400 	strd	r6, r4, [sp]
c0de4c42:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4c46:	f10d 031a 	add.w	r3, sp, #26
c0de4c4a:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4c4e:	2266      	movs	r2, #102	@ 0x66
c0de4c50:	f003 f91b 	bl	c0de7e8a <nbgl_getTextMaxLenAndWidth>
c0de4c54:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de4c58:	f8bd 601a 	ldrh.w	r6, [sp, #26]
c0de4c5c:	300c      	adds	r0, #12
c0de4c5e:	7138      	strb	r0, [r7, #4]
c0de4c60:	0a00      	lsrs	r0, r0, #8
c0de4c62:	7178      	strb	r0, [r7, #5]
c0de4c64:	486d      	ldr	r0, [pc, #436]	@ (c0de4e1c <nbgl_layoutAddText+0x37c>)
c0de4c66:	2e13      	cmp	r6, #19
c0de4c68:	bf28      	it	cs
c0de4c6a:	2613      	movcs	r6, #19
c0de4c6c:	f89b 1000 	ldrb.w	r1, [fp]
c0de4c70:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de4c74:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de4c78:	eb09 0400 	add.w	r4, r9, r0
c0de4c7c:	f897 0026 	ldrb.w	r0, [r7, #38]	@ 0x26
c0de4c80:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4c84:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de4c88:	4632      	mov	r2, r6
c0de4c8a:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de4c8e:	4620      	mov	r0, r4
c0de4c90:	f003 fe34 	bl	c0de88fc <__aeabi_memcpy>
c0de4c94:	2500      	movs	r5, #0
c0de4c96:	4620      	mov	r0, r4
c0de4c98:	55a5      	strb	r5, [r4, r6]
c0de4c9a:	f003 fc49 	bl	c0de8530 <pic>
c0de4c9e:	2101      	movs	r1, #1
c0de4ca0:	f88b 0000 	strb.w	r0, [fp]
c0de4ca4:	76bd      	strb	r5, [r7, #26]
c0de4ca6:	9d05      	ldr	r5, [sp, #20]
c0de4ca8:	7679      	strb	r1, [r7, #25]
c0de4caa:	0e01      	lsrs	r1, r0, #24
c0de4cac:	f88b 1003 	strb.w	r1, [fp, #3]
c0de4cb0:	0c01      	lsrs	r1, r0, #16
c0de4cb2:	0a00      	lsrs	r0, r0, #8
c0de4cb4:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de4cb8:	f88b 1002 	strb.w	r1, [fp, #2]
c0de4cbc:	4640      	mov	r0, r8
c0de4cbe:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de4cc2:	7842      	ldrb	r2, [r0, #1]
c0de4cc4:	7883      	ldrb	r3, [r0, #2]
c0de4cc6:	78c0      	ldrb	r0, [r0, #3]
c0de4cc8:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4ccc:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de4cd0:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4cd4:	6047      	str	r7, [r0, #4]
c0de4cd6:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de4cda:	2800      	cmp	r0, #0
c0de4cdc:	f000 8086 	beq.w	c0de4dec <nbgl_layoutAddText+0x34c>
c0de4ce0:	7869      	ldrb	r1, [r5, #1]
c0de4ce2:	2005      	movs	r0, #5
c0de4ce4:	2605      	movs	r6, #5
c0de4ce6:	f003 f8bc 	bl	c0de7e62 <nbgl_objPoolGet>
c0de4cea:	2500      	movs	r5, #0
c0de4cec:	4607      	mov	r7, r0
c0de4cee:	f880 5021 	strb.w	r5, [r0, #33]	@ 0x21
c0de4cf2:	2001      	movs	r0, #1
c0de4cf4:	f000 fbd1 	bl	c0de549a <OUTLINED_FUNCTION_9>
c0de4cf8:	9804      	ldr	r0, [sp, #16]
c0de4cfa:	f003 fc19 	bl	c0de8530 <pic>
c0de4cfe:	210e      	movs	r1, #14
c0de4d00:	71fd      	strb	r5, [r7, #7]
c0de4d02:	71b9      	strb	r1, [r7, #6]
c0de4d04:	2108      	movs	r1, #8
c0de4d06:	f887 1023 	strb.w	r1, [r7, #35]	@ 0x23
c0de4d0a:	f8bd 101a 	ldrh.w	r1, [sp, #26]
c0de4d0e:	4401      	add	r1, r0
c0de4d10:	4638      	mov	r0, r7
c0de4d12:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de4d16:	0e0a      	lsrs	r2, r1, #24
c0de4d18:	f000 fb9f 	bl	c0de545a <OUTLINED_FUNCTION_3>
c0de4d1c:	300c      	adds	r0, #12
c0de4d1e:	210f      	movs	r1, #15
c0de4d20:	75be      	strb	r6, [r7, #22]
c0de4d22:	7138      	strb	r0, [r7, #4]
c0de4d24:	0a00      	lsrs	r0, r0, #8
c0de4d26:	7178      	strb	r0, [r7, #5]
c0de4d28:	2002      	movs	r0, #2
c0de4d2a:	e057      	b.n	c0de4ddc <nbgl_layoutAddText+0x33c>
c0de4d2c:	f000 bbb2 	b.w	c0de5494 <OUTLINED_FUNCTION_8>
c0de4d30:	f000 fba1 	bl	c0de5476 <OUTLINED_FUNCTION_5>
c0de4d34:	2603      	movs	r6, #3
c0de4d36:	4607      	mov	r7, r0
c0de4d38:	77c6      	strb	r6, [r0, #31]
c0de4d3a:	4620      	mov	r0, r4
c0de4d3c:	f003 fbf8 	bl	c0de8530 <pic>
c0de4d40:	4601      	mov	r1, r0
c0de4d42:	2072      	movs	r0, #114	@ 0x72
c0de4d44:	2400      	movs	r4, #0
c0de4d46:	2301      	movs	r3, #1
c0de4d48:	7138      	strb	r0, [r7, #4]
c0de4d4a:	200a      	movs	r0, #10
c0de4d4c:	0e0a      	lsrs	r2, r1, #24
c0de4d4e:	717c      	strb	r4, [r7, #5]
c0de4d50:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4d54:	f000 fb61 	bl	c0de541a <OUTLINED_FUNCTION_0>
c0de4d58:	2804      	cmp	r0, #4
c0de4d5a:	d31e      	bcc.n	c0de4d9a <nbgl_layoutAddText+0x2fa>
c0de4d5c:	463d      	mov	r5, r7
c0de4d5e:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de4d62:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de4d66:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de4d6a:	f895 e001 	ldrb.w	lr, [r5, #1]
c0de4d6e:	78ab      	ldrb	r3, [r5, #2]
c0de4d70:	78e9      	ldrb	r1, [r5, #3]
c0de4d72:	aa07      	add	r2, sp, #28
c0de4d74:	9200      	str	r2, [sp, #0]
c0de4d76:	2201      	movs	r2, #1
c0de4d78:	9201      	str	r2, [sp, #4]
c0de4d7a:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de4d7e:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de4d82:	2303      	movs	r3, #3
c0de4d84:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de4d88:	2272      	movs	r2, #114	@ 0x72
c0de4d8a:	f003 f892 	bl	c0de7eb2 <nbgl_getTextMaxLenInNbLines>
c0de4d8e:	f8bd 001c 	ldrh.w	r0, [sp, #28]
c0de4d92:	7128      	strb	r0, [r5, #4]
c0de4d94:	0a00      	lsrs	r0, r0, #8
c0de4d96:	7168      	strb	r0, [r5, #5]
c0de4d98:	2003      	movs	r0, #3
c0de4d9a:	9903      	ldr	r1, [sp, #12]
c0de4d9c:	2900      	cmp	r1, #0
c0de4d9e:	bf08      	it	eq
c0de4da0:	4606      	moveq	r6, r0
c0de4da2:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de4da6:	76bc      	strb	r4, [r7, #26]
c0de4da8:	75bc      	strb	r4, [r7, #22]
c0de4daa:	fb06 f100 	mul.w	r1, r6, r0
c0de4dae:	fb06 a000 	mla	r0, r6, r0, sl
c0de4db2:	71b9      	strb	r1, [r7, #6]
c0de4db4:	0a09      	lsrs	r1, r1, #8
c0de4db6:	71f9      	strb	r1, [r7, #7]
c0de4db8:	2102      	movs	r1, #2
c0de4dba:	f100 0a02 	add.w	sl, r0, #2
c0de4dbe:	7679      	strb	r1, [r7, #25]
c0de4dc0:	2105      	movs	r1, #5
c0de4dc2:	f887 1020 	strb.w	r1, [r7, #32]
c0de4dc6:	4641      	mov	r1, r8
c0de4dc8:	f000 fb3a 	bl	c0de5440 <OUTLINED_FUNCTION_2>
c0de4dcc:	604f      	str	r7, [r1, #4]
c0de4dce:	e00f      	b.n	c0de4df0 <nbgl_layoutAddText+0x350>
c0de4dd0:	300c      	adds	r0, #12
c0de4dd2:	2108      	movs	r1, #8
c0de4dd4:	7138      	strb	r0, [r7, #4]
c0de4dd6:	0a00      	lsrs	r0, r0, #8
c0de4dd8:	7178      	strb	r0, [r7, #5]
c0de4dda:	2001      	movs	r0, #1
c0de4ddc:	2200      	movs	r2, #0
c0de4dde:	7679      	strb	r1, [r7, #25]
c0de4de0:	4641      	mov	r1, r8
c0de4de2:	76ba      	strb	r2, [r7, #26]
c0de4de4:	f000 fb2c 	bl	c0de5440 <OUTLINED_FUNCTION_2>
c0de4de8:	f841 7020 	str.w	r7, [r1, r0, lsl #2]
c0de4dec:	f10a 0a2c 	add.w	sl, sl, #44	@ 0x2c
c0de4df0:	6868      	ldr	r0, [r5, #4]
c0de4df2:	78a9      	ldrb	r1, [r5, #2]
c0de4df4:	2205      	movs	r2, #5
c0de4df6:	f888 2016 	strb.w	r2, [r8, #22]
c0de4dfa:	ea4f 221a 	mov.w	r2, sl, lsr #8
c0de4dfe:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de4e02:	2000      	movs	r0, #0
c0de4e04:	3101      	adds	r1, #1
c0de4e06:	f888 a006 	strb.w	sl, [r8, #6]
c0de4e0a:	f888 2007 	strb.w	r2, [r8, #7]
c0de4e0e:	f888 001f 	strb.w	r0, [r8, #31]
c0de4e12:	70a9      	strb	r1, [r5, #2]
c0de4e14:	b008      	add	sp, #32
c0de4e16:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4e1a:	bf00      	nop
c0de4e1c:	00001154 	.word	0x00001154

c0de4e20 <nbgl_layoutAddMenuList>:
c0de4e20:	2800      	cmp	r0, #0
c0de4e22:	d04f      	beq.n	c0de4ec4 <nbgl_layoutAddMenuList+0xa4>
c0de4e24:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4e28:	460c      	mov	r4, r1
c0de4e2a:	4605      	mov	r5, r0
c0de4e2c:	2700      	movs	r7, #0
c0de4e2e:	f04f 0b05 	mov.w	fp, #5
c0de4e32:	f04f 0803 	mov.w	r8, #3
c0de4e36:	f04f 0a00 	mov.w	sl, #0
c0de4e3a:	7920      	ldrb	r0, [r4, #4]
c0de4e3c:	4582      	cmp	sl, r0
c0de4e3e:	d23e      	bcs.n	c0de4ebe <nbgl_layoutAddMenuList+0x9e>
c0de4e40:	7960      	ldrb	r0, [r4, #5]
c0de4e42:	2803      	cmp	r0, #3
c0de4e44:	d302      	bcc.n	c0de4e4c <nbgl_layoutAddMenuList+0x2c>
c0de4e46:	1e81      	subs	r1, r0, #2
c0de4e48:	4551      	cmp	r1, sl
c0de4e4a:	dc35      	bgt.n	c0de4eb8 <nbgl_layoutAddMenuList+0x98>
c0de4e4c:	3002      	adds	r0, #2
c0de4e4e:	4550      	cmp	r0, sl
c0de4e50:	d332      	bcc.n	c0de4eb8 <nbgl_layoutAddMenuList+0x98>
c0de4e52:	7869      	ldrb	r1, [r5, #1]
c0de4e54:	f000 fb0f 	bl	c0de5476 <OUTLINED_FUNCTION_5>
c0de4e58:	6821      	ldr	r1, [r4, #0]
c0de4e5a:	4606      	mov	r6, r0
c0de4e5c:	fa5f f08a 	uxtb.w	r0, sl
c0de4e60:	4788      	blx	r1
c0de4e62:	7961      	ldrb	r1, [r4, #5]
c0de4e64:	220a      	movs	r2, #10
c0de4e66:	458a      	cmp	sl, r1
c0de4e68:	bf08      	it	eq
c0de4e6a:	2208      	moveq	r2, #8
c0de4e6c:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de4e70:	71f7      	strb	r7, [r6, #7]
c0de4e72:	7177      	strb	r7, [r6, #5]
c0de4e74:	f886 b020 	strb.w	fp, [r6, #32]
c0de4e78:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de4e7c:	f886 b016 	strb.w	fp, [r6, #22]
c0de4e80:	f886 801f 	strb.w	r8, [r6, #31]
c0de4e84:	4632      	mov	r2, r6
c0de4e86:	0e03      	lsrs	r3, r0, #24
c0de4e88:	f802 0f26 	strb.w	r0, [r2, #38]!
c0de4e8c:	70d3      	strb	r3, [r2, #3]
c0de4e8e:	0c03      	lsrs	r3, r0, #16
c0de4e90:	0a00      	lsrs	r0, r0, #8
c0de4e92:	7093      	strb	r3, [r2, #2]
c0de4e94:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de4e98:	6868      	ldr	r0, [r5, #4]
c0de4e9a:	78aa      	ldrb	r2, [r5, #2]
c0de4e9c:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de4ea0:	200c      	movs	r0, #12
c0de4ea2:	71b0      	strb	r0, [r6, #6]
c0de4ea4:	2072      	movs	r0, #114	@ 0x72
c0de4ea6:	7130      	strb	r0, [r6, #4]
c0de4ea8:	ebaa 0001 	sub.w	r0, sl, r1
c0de4eac:	0901      	lsrs	r1, r0, #4
c0de4eae:	0100      	lsls	r0, r0, #4
c0de4eb0:	7670      	strb	r0, [r6, #25]
c0de4eb2:	1c50      	adds	r0, r2, #1
c0de4eb4:	76b1      	strb	r1, [r6, #26]
c0de4eb6:	70a8      	strb	r0, [r5, #2]
c0de4eb8:	f10a 0a01 	add.w	sl, sl, #1
c0de4ebc:	e7bd      	b.n	c0de4e3a <nbgl_layoutAddMenuList+0x1a>
c0de4ebe:	2000      	movs	r0, #0
c0de4ec0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4ec4:	f000 bae6 	b.w	c0de5494 <OUTLINED_FUNCTION_8>

c0de4ec8 <nbgl_layoutAddCenteredInfo>:
c0de4ec8:	2800      	cmp	r0, #0
c0de4eca:	f000 80dc 	beq.w	c0de5086 <nbgl_layoutAddCenteredInfo+0x1be>
c0de4ece:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4ed2:	b086      	sub	sp, #24
c0de4ed4:	460d      	mov	r5, r1
c0de4ed6:	7841      	ldrb	r1, [r0, #1]
c0de4ed8:	4682      	mov	sl, r0
c0de4eda:	2001      	movs	r0, #1
c0de4edc:	f002 ffc1 	bl	c0de7e62 <nbgl_objPoolGet>
c0de4ee0:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de4ee4:	4680      	mov	r8, r0
c0de4ee6:	2003      	movs	r0, #3
c0de4ee8:	2703      	movs	r7, #3
c0de4eea:	f002 ffbf 	bl	c0de7e6c <nbgl_containerPoolGet>
c0de4eee:	4641      	mov	r1, r8
c0de4ef0:	0e02      	lsrs	r2, r0, #24
c0de4ef2:	f04f 0b00 	mov.w	fp, #0
c0de4ef6:	9504      	str	r5, [sp, #16]
c0de4ef8:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de4efc:	f888 b020 	strb.w	fp, [r8, #32]
c0de4f00:	70ca      	strb	r2, [r1, #3]
c0de4f02:	0c02      	lsrs	r2, r0, #16
c0de4f04:	0a00      	lsrs	r0, r0, #8
c0de4f06:	708a      	strb	r2, [r1, #2]
c0de4f08:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de4f0c:	68a8      	ldr	r0, [r5, #8]
c0de4f0e:	b3c0      	cbz	r0, c0de4f82 <nbgl_layoutAddCenteredInfo+0xba>
c0de4f10:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de4f14:	2002      	movs	r0, #2
c0de4f16:	f002 ffa4 	bl	c0de7e62 <nbgl_objPoolGet>
c0de4f1a:	4606      	mov	r6, r0
c0de4f1c:	77c7      	strb	r7, [r0, #31]
c0de4f1e:	68a8      	ldr	r0, [r5, #8]
c0de4f20:	f003 fb06 	bl	c0de8530 <pic>
c0de4f24:	4631      	mov	r1, r6
c0de4f26:	0e02      	lsrs	r2, r0, #24
c0de4f28:	f886 b013 	strb.w	fp, [r6, #19]
c0de4f2c:	f886 b009 	strb.w	fp, [r6, #9]
c0de4f30:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de4f34:	70ca      	strb	r2, [r1, #3]
c0de4f36:	0c02      	lsrs	r2, r0, #16
c0de4f38:	708a      	strb	r2, [r1, #2]
c0de4f3a:	0a01      	lsrs	r1, r0, #8
c0de4f3c:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de4f40:	4631      	mov	r1, r6
c0de4f42:	f801 bf12 	strb.w	fp, [r1, #18]!
c0de4f46:	f881 b003 	strb.w	fp, [r1, #3]
c0de4f4a:	f881 b002 	strb.w	fp, [r1, #2]
c0de4f4e:	4641      	mov	r1, r8
c0de4f50:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4f54:	784f      	ldrb	r7, [r1, #1]
c0de4f56:	788c      	ldrb	r4, [r1, #2]
c0de4f58:	78cd      	ldrb	r5, [r1, #3]
c0de4f5a:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de4f5e:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de4f62:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de4f66:	9d04      	ldr	r5, [sp, #16]
c0de4f68:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de4f6c:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de4f70:	2202      	movs	r2, #2
c0de4f72:	75b2      	strb	r2, [r6, #22]
c0de4f74:	1c5a      	adds	r2, r3, #1
c0de4f76:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de4f7a:	7881      	ldrb	r1, [r0, #2]
c0de4f7c:	78c0      	ldrb	r0, [r0, #3]
c0de4f7e:	ea41 2b00 	orr.w	fp, r1, r0, lsl #8
c0de4f82:	6828      	ldr	r0, [r5, #0]
c0de4f84:	2800      	cmp	r0, #0
c0de4f86:	f000 80a5 	beq.w	c0de50d4 <nbgl_layoutAddCenteredInfo+0x20c>
c0de4f8a:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de4f8e:	f000 fa72 	bl	c0de5476 <OUTLINED_FUNCTION_5>
c0de4f92:	4607      	mov	r7, r0
c0de4f94:	2003      	movs	r0, #3
c0de4f96:	77f8      	strb	r0, [r7, #31]
c0de4f98:	6828      	ldr	r0, [r5, #0]
c0de4f9a:	f003 fac9 	bl	c0de8530 <pic>
c0de4f9e:	4601      	mov	r1, r0
c0de4fa0:	2072      	movs	r0, #114	@ 0x72
c0de4fa2:	2400      	movs	r4, #0
c0de4fa4:	7138      	strb	r0, [r7, #4]
c0de4fa6:	2005      	movs	r0, #5
c0de4fa8:	0e0a      	lsrs	r2, r1, #24
c0de4faa:	717c      	strb	r4, [r7, #5]
c0de4fac:	f887 0020 	strb.w	r0, [r7, #32]
c0de4fb0:	4638      	mov	r0, r7
c0de4fb2:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4fb6:	70c2      	strb	r2, [r0, #3]
c0de4fb8:	0c0a      	lsrs	r2, r1, #16
c0de4fba:	7082      	strb	r2, [r0, #2]
c0de4fbc:	0a08      	lsrs	r0, r1, #8
c0de4fbe:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de4fc2:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de4fc6:	7b6a      	ldrb	r2, [r5, #13]
c0de4fc8:	f040 0001 	orr.w	r0, r0, #1
c0de4fcc:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de4fd0:	2008      	movs	r0, #8
c0de4fd2:	2a00      	cmp	r2, #0
c0de4fd4:	bf08      	it	eq
c0de4fd6:	200a      	moveq	r0, #10
c0de4fd8:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4fdc:	2272      	movs	r2, #114	@ 0x72
c0de4fde:	2301      	movs	r3, #1
c0de4fe0:	f002 ff58 	bl	c0de7e94 <nbgl_getTextNbLinesInWidth>
c0de4fe4:	4606      	mov	r6, r0
c0de4fe6:	2805      	cmp	r0, #5
c0de4fe8:	d31e      	bcc.n	c0de5028 <nbgl_layoutAddCenteredInfo+0x160>
c0de4fea:	463d      	mov	r5, r7
c0de4fec:	2004      	movs	r0, #4
c0de4fee:	2101      	movs	r1, #1
c0de4ff0:	f10d 0416 	add.w	r4, sp, #22
c0de4ff4:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de4ff8:	786a      	ldrb	r2, [r5, #1]
c0de4ffa:	78ab      	ldrb	r3, [r5, #2]
c0de4ffc:	78ee      	ldrb	r6, [r5, #3]
c0de4ffe:	f805 0c01 	strb.w	r0, [r5, #-1]
c0de5002:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de5006:	9101      	str	r1, [sp, #4]
c0de5008:	9400      	str	r4, [sp, #0]
c0de500a:	2400      	movs	r4, #0
c0de500c:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de5010:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de5014:	2304      	movs	r3, #4
c0de5016:	f000 fa29 	bl	c0de546c <OUTLINED_FUNCTION_4>
c0de501a:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de501e:	2604      	movs	r6, #4
c0de5020:	7128      	strb	r0, [r5, #4]
c0de5022:	0a00      	lsrs	r0, r0, #8
c0de5024:	7168      	strb	r0, [r5, #5]
c0de5026:	9d04      	ldr	r5, [sp, #16]
c0de5028:	f000 fa28 	bl	c0de547c <OUTLINED_FUNCTION_6>
c0de502c:	79c0      	ldrb	r0, [r0, #7]
c0de502e:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de5032:	4370      	muls	r0, r6
c0de5034:	0a01      	lsrs	r1, r0, #8
c0de5036:	71b8      	strb	r0, [r7, #6]
c0de5038:	71f9      	strb	r1, [r7, #7]
c0de503a:	68a9      	ldr	r1, [r5, #8]
c0de503c:	b329      	cbz	r1, c0de508a <nbgl_layoutAddCenteredInfo+0x1c2>
c0de503e:	4641      	mov	r1, r8
c0de5040:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de5044:	784c      	ldrb	r4, [r1, #1]
c0de5046:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de504a:	788d      	ldrb	r5, [r1, #2]
c0de504c:	78c9      	ldrb	r1, [r1, #3]
c0de504e:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de5052:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de5056:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de505a:	463a      	mov	r2, r7
c0de505c:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de5060:	f851 1c04 	ldr.w	r1, [r1, #-4]
c0de5064:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de5068:	0e0b      	lsrs	r3, r1, #24
c0de506a:	70d3      	strb	r3, [r2, #3]
c0de506c:	0c0b      	lsrs	r3, r1, #16
c0de506e:	0a09      	lsrs	r1, r1, #8
c0de5070:	7051      	strb	r1, [r2, #1]
c0de5072:	2100      	movs	r1, #0
c0de5074:	7093      	strb	r3, [r2, #2]
c0de5076:	7211      	strb	r1, [r2, #8]
c0de5078:	2e03      	cmp	r6, #3
c0de507a:	bf38      	it	cc
c0de507c:	2101      	movcc	r1, #1
c0de507e:	0089      	lsls	r1, r1, #2
c0de5080:	71d1      	strb	r1, [r2, #7]
c0de5082:	2108      	movs	r1, #8
c0de5084:	e00a      	b.n	c0de509c <nbgl_layoutAddCenteredInfo+0x1d4>
c0de5086:	f000 ba05 	b.w	c0de5494 <OUTLINED_FUNCTION_8>
c0de508a:	6869      	ldr	r1, [r5, #4]
c0de508c:	b119      	cbz	r1, c0de5096 <nbgl_layoutAddCenteredInfo+0x1ce>
c0de508e:	f000 f9f9 	bl	c0de5484 <OUTLINED_FUNCTION_7>
c0de5092:	2102      	movs	r1, #2
c0de5094:	e002      	b.n	c0de509c <nbgl_layoutAddCenteredInfo+0x1d4>
c0de5096:	f000 f9f5 	bl	c0de5484 <OUTLINED_FUNCTION_7>
c0de509a:	2105      	movs	r1, #5
c0de509c:	7111      	strb	r1, [r2, #4]
c0de509e:	4641      	mov	r1, r8
c0de50a0:	4458      	add	r0, fp
c0de50a2:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de50a6:	784c      	ldrb	r4, [r1, #1]
c0de50a8:	788d      	ldrb	r5, [r1, #2]
c0de50aa:	78ce      	ldrb	r6, [r1, #3]
c0de50ac:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de50b0:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de50b4:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de50b8:	9d04      	ldr	r5, [sp, #16]
c0de50ba:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de50be:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de50c2:	1c5a      	adds	r2, r3, #1
c0de50c4:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de50c8:	7e79      	ldrb	r1, [r7, #25]
c0de50ca:	7eba      	ldrb	r2, [r7, #26]
c0de50cc:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de50d0:	eb00 0b01 	add.w	fp, r0, r1
c0de50d4:	6868      	ldr	r0, [r5, #4]
c0de50d6:	2800      	cmp	r0, #0
c0de50d8:	d071      	beq.n	c0de51be <nbgl_layoutAddCenteredInfo+0x2f6>
c0de50da:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de50de:	2004      	movs	r0, #4
c0de50e0:	f8cd a00c 	str.w	sl, [sp, #12]
c0de50e4:	f002 febd 	bl	c0de7e62 <nbgl_objPoolGet>
c0de50e8:	2403      	movs	r4, #3
c0de50ea:	4607      	mov	r7, r0
c0de50ec:	77c4      	strb	r4, [r0, #31]
c0de50ee:	6868      	ldr	r0, [r5, #4]
c0de50f0:	f003 fa1e 	bl	c0de8530 <pic>
c0de50f4:	4601      	mov	r1, r0
c0de50f6:	2000      	movs	r0, #0
c0de50f8:	2301      	movs	r3, #1
c0de50fa:	7178      	strb	r0, [r7, #5]
c0de50fc:	2072      	movs	r0, #114	@ 0x72
c0de50fe:	0e0a      	lsrs	r2, r1, #24
c0de5100:	7138      	strb	r0, [r7, #4]
c0de5102:	200a      	movs	r0, #10
c0de5104:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de5108:	2005      	movs	r0, #5
c0de510a:	f887 0020 	strb.w	r0, [r7, #32]
c0de510e:	f000 f984 	bl	c0de541a <OUTLINED_FUNCTION_0>
c0de5112:	4682      	mov	sl, r0
c0de5114:	2804      	cmp	r0, #4
c0de5116:	d31c      	bcc.n	c0de5152 <nbgl_layoutAddCenteredInfo+0x28a>
c0de5118:	463d      	mov	r5, r7
c0de511a:	f04f 0c01 	mov.w	ip, #1
c0de511e:	f815 1f26 	ldrb.w	r1, [r5, #38]!
c0de5122:	f805 4c01 	strb.w	r4, [r5, #-1]
c0de5126:	786a      	ldrb	r2, [r5, #1]
c0de5128:	78ab      	ldrb	r3, [r5, #2]
c0de512a:	78ec      	ldrb	r4, [r5, #3]
c0de512c:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de5130:	ae05      	add	r6, sp, #20
c0de5132:	e9cd 6c00 	strd	r6, ip, [sp]
c0de5136:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de513a:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de513e:	2303      	movs	r3, #3
c0de5140:	f000 f994 	bl	c0de546c <OUTLINED_FUNCTION_4>
c0de5144:	f8bd 0014 	ldrh.w	r0, [sp, #20]
c0de5148:	f04f 0a03 	mov.w	sl, #3
c0de514c:	7128      	strb	r0, [r5, #4]
c0de514e:	0a00      	lsrs	r0, r0, #8
c0de5150:	7168      	strb	r0, [r5, #5]
c0de5152:	f000 f993 	bl	c0de547c <OUTLINED_FUNCTION_6>
c0de5156:	4641      	mov	r1, r8
c0de5158:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de515c:	784c      	ldrb	r4, [r1, #1]
c0de515e:	788d      	ldrb	r5, [r1, #2]
c0de5160:	78ce      	ldrb	r6, [r1, #3]
c0de5162:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de5166:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de516a:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de516e:	463d      	mov	r5, r7
c0de5170:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
c0de5174:	eb03 0482 	add.w	r4, r3, r2, lsl #2
c0de5178:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de517c:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de5180:	0e26      	lsrs	r6, r4, #24
c0de5182:	70ee      	strb	r6, [r5, #3]
c0de5184:	0c26      	lsrs	r6, r4, #16
c0de5186:	0a24      	lsrs	r4, r4, #8
c0de5188:	74fc      	strb	r4, [r7, #19]
c0de518a:	70ae      	strb	r6, [r5, #2]
c0de518c:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
c0de5190:	2302      	movs	r3, #2
c0de5192:	2400      	movs	r4, #0
c0de5194:	3201      	adds	r2, #1
c0de5196:	767b      	strb	r3, [r7, #25]
c0de5198:	2308      	movs	r3, #8
c0de519a:	76bc      	strb	r4, [r7, #26]
c0de519c:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de51a0:	79c0      	ldrb	r0, [r0, #7]
c0de51a2:	75bb      	strb	r3, [r7, #22]
c0de51a4:	fb0a f300 	mul.w	r3, sl, r0
c0de51a8:	fb0a b000 	mla	r0, sl, r0, fp
c0de51ac:	e9dd a503 	ldrd	sl, r5, [sp, #12]
c0de51b0:	71bb      	strb	r3, [r7, #6]
c0de51b2:	0a1b      	lsrs	r3, r3, #8
c0de51b4:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de51b8:	f100 0b02 	add.w	fp, r0, #2
c0de51bc:	71fb      	strb	r3, [r7, #7]
c0de51be:	7b28      	ldrb	r0, [r5, #12]
c0de51c0:	2102      	movs	r1, #2
c0de51c2:	2800      	cmp	r0, #0
c0de51c4:	bf08      	it	eq
c0de51c6:	2105      	moveq	r1, #5
c0de51c8:	f888 1016 	strb.w	r1, [r8, #22]
c0de51cc:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de51d0:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de51d4:	2272      	movs	r2, #114	@ 0x72
c0de51d6:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de51da:	2000      	movs	r0, #0
c0de51dc:	f888 2004 	strb.w	r2, [r8, #4]
c0de51e0:	ea4f 221b 	mov.w	r2, fp, lsr #8
c0de51e4:	3101      	adds	r1, #1
c0de51e6:	f888 b006 	strb.w	fp, [r8, #6]
c0de51ea:	f888 0019 	strb.w	r0, [r8, #25]
c0de51ee:	f888 001a 	strb.w	r0, [r8, #26]
c0de51f2:	f888 0005 	strb.w	r0, [r8, #5]
c0de51f6:	f888 001f 	strb.w	r0, [r8, #31]
c0de51fa:	f888 2007 	strb.w	r2, [r8, #7]
c0de51fe:	f88a 1002 	strb.w	r1, [sl, #2]
c0de5202:	b006      	add	sp, #24
c0de5204:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de5208 <nbgl_layoutAddSwitch>:
c0de5208:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de520c:	2800      	cmp	r0, #0
c0de520e:	f000 8084 	beq.w	c0de531a <nbgl_layoutAddSwitch+0x112>
c0de5212:	460d      	mov	r5, r1
c0de5214:	7841      	ldrb	r1, [r0, #1]
c0de5216:	4604      	mov	r4, r0
c0de5218:	f000 f92d 	bl	c0de5476 <OUTLINED_FUNCTION_5>
c0de521c:	f04f 0803 	mov.w	r8, #3
c0de5220:	4606      	mov	r6, r0
c0de5222:	f880 801f 	strb.w	r8, [r0, #31]
c0de5226:	6828      	ldr	r0, [r5, #0]
c0de5228:	f003 f982 	bl	c0de8530 <pic>
c0de522c:	4601      	mov	r1, r0
c0de522e:	2072      	movs	r0, #114	@ 0x72
c0de5230:	2700      	movs	r7, #0
c0de5232:	2301      	movs	r3, #1
c0de5234:	7130      	strb	r0, [r6, #4]
c0de5236:	2008      	movs	r0, #8
c0de5238:	0e0a      	lsrs	r2, r1, #24
c0de523a:	7177      	strb	r7, [r6, #5]
c0de523c:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de5240:	2005      	movs	r0, #5
c0de5242:	f886 0020 	strb.w	r0, [r6, #32]
c0de5246:	4630      	mov	r0, r6
c0de5248:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de524c:	70c2      	strb	r2, [r0, #3]
c0de524e:	0c0a      	lsrs	r2, r1, #16
c0de5250:	7082      	strb	r2, [r0, #2]
c0de5252:	0a08      	lsrs	r0, r1, #8
c0de5254:	2272      	movs	r2, #114	@ 0x72
c0de5256:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de525a:	f896 0024 	ldrb.w	r0, [r6, #36]	@ 0x24
c0de525e:	f040 0001 	orr.w	r0, r0, #1
c0de5262:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de5266:	2008      	movs	r0, #8
c0de5268:	f002 fe14 	bl	c0de7e94 <nbgl_getTextNbLinesInWidth>
c0de526c:	2801      	cmp	r0, #1
c0de526e:	d854      	bhi.n	c0de531a <nbgl_layoutAddSwitch+0x112>
c0de5270:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de5274:	f002 fe04 	bl	c0de7e80 <nbgl_getFontLineHeight>
c0de5278:	6861      	ldr	r1, [r4, #4]
c0de527a:	78a2      	ldrb	r2, [r4, #2]
c0de527c:	76b7      	strb	r7, [r6, #26]
c0de527e:	71f7      	strb	r7, [r6, #7]
c0de5280:	f841 6022 	str.w	r6, [r1, r2, lsl #2]
c0de5284:	71b0      	strb	r0, [r6, #6]
c0de5286:	2002      	movs	r0, #2
c0de5288:	f886 8019 	strb.w	r8, [r6, #25]
c0de528c:	75b0      	strb	r0, [r6, #22]
c0de528e:	1c50      	adds	r0, r2, #1
c0de5290:	70a0      	strb	r0, [r4, #2]
c0de5292:	6868      	ldr	r0, [r5, #4]
c0de5294:	2800      	cmp	r0, #0
c0de5296:	d04e      	beq.n	c0de5336 <nbgl_layoutAddSwitch+0x12e>
c0de5298:	7861      	ldrb	r1, [r4, #1]
c0de529a:	f000 f8ec 	bl	c0de5476 <OUTLINED_FUNCTION_5>
c0de529e:	4606      	mov	r6, r0
c0de52a0:	2003      	movs	r0, #3
c0de52a2:	77f0      	strb	r0, [r6, #31]
c0de52a4:	6868      	ldr	r0, [r5, #4]
c0de52a6:	f003 f943 	bl	c0de8530 <pic>
c0de52aa:	2172      	movs	r1, #114	@ 0x72
c0de52ac:	4637      	mov	r7, r6
c0de52ae:	f04f 0800 	mov.w	r8, #0
c0de52b2:	f04f 0a05 	mov.w	sl, #5
c0de52b6:	7131      	strb	r1, [r6, #4]
c0de52b8:	210a      	movs	r1, #10
c0de52ba:	f807 0f26 	strb.w	r0, [r7, #38]!
c0de52be:	f886 8005 	strb.w	r8, [r6, #5]
c0de52c2:	f886 a020 	strb.w	sl, [r6, #32]
c0de52c6:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de52ca:	0e01      	lsrs	r1, r0, #24
c0de52cc:	70f9      	strb	r1, [r7, #3]
c0de52ce:	0c01      	lsrs	r1, r0, #16
c0de52d0:	0a00      	lsrs	r0, r0, #8
c0de52d2:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de52d6:	200a      	movs	r0, #10
c0de52d8:	70b9      	strb	r1, [r7, #2]
c0de52da:	f002 fdd1 	bl	c0de7e80 <nbgl_getFontLineHeight>
c0de52de:	09c1      	lsrs	r1, r0, #7
c0de52e0:	f896 2027 	ldrb.w	r2, [r6, #39]	@ 0x27
c0de52e4:	78bb      	ldrb	r3, [r7, #2]
c0de52e6:	0040      	lsls	r0, r0, #1
c0de52e8:	71f1      	strb	r1, [r6, #7]
c0de52ea:	f896 1024 	ldrb.w	r1, [r6, #36]	@ 0x24
c0de52ee:	71b0      	strb	r0, [r6, #6]
c0de52f0:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de52f4:	f041 0101 	orr.w	r1, r1, #1
c0de52f8:	f886 1024 	strb.w	r1, [r6, #36]	@ 0x24
c0de52fc:	7839      	ldrb	r1, [r7, #0]
c0de52fe:	78ff      	ldrb	r7, [r7, #3]
c0de5300:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de5304:	ea43 2207 	orr.w	r2, r3, r7, lsl #8
c0de5308:	2301      	movs	r3, #1
c0de530a:	2701      	movs	r7, #1
c0de530c:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de5310:	2272      	movs	r2, #114	@ 0x72
c0de5312:	f002 fdbf 	bl	c0de7e94 <nbgl_getTextNbLinesInWidth>
c0de5316:	2802      	cmp	r0, #2
c0de5318:	d902      	bls.n	c0de5320 <nbgl_layoutAddSwitch+0x118>
c0de531a:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de531e:	e05c      	b.n	c0de53da <nbgl_layoutAddSwitch+0x1d2>
c0de5320:	6860      	ldr	r0, [r4, #4]
c0de5322:	78a1      	ldrb	r1, [r4, #2]
c0de5324:	f886 801a 	strb.w	r8, [r6, #26]
c0de5328:	f886 a016 	strb.w	sl, [r6, #22]
c0de532c:	f840 6021 	str.w	r6, [r0, r1, lsl #2]
c0de5330:	1c48      	adds	r0, r1, #1
c0de5332:	7677      	strb	r7, [r6, #25]
c0de5334:	70a0      	strb	r0, [r4, #2]
c0de5336:	7861      	ldrb	r1, [r4, #1]
c0de5338:	2005      	movs	r0, #5
c0de533a:	f002 fd92 	bl	c0de7e62 <nbgl_objPoolGet>
c0de533e:	2600      	movs	r6, #0
c0de5340:	4607      	mov	r7, r0
c0de5342:	f04f 0a03 	mov.w	sl, #3
c0de5346:	f04f 0808 	mov.w	r8, #8
c0de534a:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de534e:	2001      	movs	r0, #1
c0de5350:	f887 a020 	strb.w	sl, [r7, #32]
c0de5354:	f887 a01f 	strb.w	sl, [r7, #31]
c0de5358:	f887 8023 	strb.w	r8, [r7, #35]	@ 0x23
c0de535c:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de5360:	7a28      	ldrb	r0, [r5, #8]
c0de5362:	4a1f      	ldr	r2, [pc, #124]	@ (c0de53e0 <nbgl_layoutAddSwitch+0x1d8>)
c0de5364:	491f      	ldr	r1, [pc, #124]	@ (c0de53e4 <nbgl_layoutAddSwitch+0x1dc>)
c0de5366:	2801      	cmp	r0, #1
c0de5368:	447a      	add	r2, pc
c0de536a:	4479      	add	r1, pc
c0de536c:	bf08      	it	eq
c0de536e:	4611      	moveq	r1, r2
c0de5370:	463a      	mov	r2, r7
c0de5372:	0e0b      	lsrs	r3, r1, #24
c0de5374:	f802 1f25 	strb.w	r1, [r2, #37]!
c0de5378:	70d3      	strb	r3, [r2, #3]
c0de537a:	0c0b      	lsrs	r3, r1, #16
c0de537c:	7093      	strb	r3, [r2, #2]
c0de537e:	0a0a      	lsrs	r2, r1, #8
c0de5380:	f887 2026 	strb.w	r2, [r7, #38]	@ 0x26
c0de5384:	2801      	cmp	r0, #1
c0de5386:	4638      	mov	r0, r7
c0de5388:	4a17      	ldr	r2, [pc, #92]	@ (c0de53e8 <nbgl_layoutAddSwitch+0x1e0>)
c0de538a:	4d18      	ldr	r5, [pc, #96]	@ (c0de53ec <nbgl_layoutAddSwitch+0x1e4>)
c0de538c:	447a      	add	r2, pc
c0de538e:	447d      	add	r5, pc
c0de5390:	bf18      	it	ne
c0de5392:	462a      	movne	r2, r5
c0de5394:	f800 2f2e 	strb.w	r2, [r0, #46]!
c0de5398:	0e13      	lsrs	r3, r2, #24
c0de539a:	70c3      	strb	r3, [r0, #3]
c0de539c:	0c13      	lsrs	r3, r2, #16
c0de539e:	7083      	strb	r3, [r0, #2]
c0de53a0:	0a10      	lsrs	r0, r2, #8
c0de53a2:	f887 002f 	strb.w	r0, [r7, #47]	@ 0x2f
c0de53a6:	2008      	movs	r0, #8
c0de53a8:	f002 fd7e 	bl	c0de7ea8 <nbgl_getTextWidth>
c0de53ac:	6861      	ldr	r1, [r4, #4]
c0de53ae:	78a2      	ldrb	r2, [r4, #2]
c0de53b0:	786b      	ldrb	r3, [r5, #1]
c0de53b2:	76be      	strb	r6, [r7, #26]
c0de53b4:	71fe      	strb	r6, [r7, #7]
c0de53b6:	f887 8016 	strb.w	r8, [r7, #22]
c0de53ba:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de53be:	210c      	movs	r1, #12
c0de53c0:	f887 a019 	strb.w	sl, [r7, #25]
c0de53c4:	71b9      	strb	r1, [r7, #6]
c0de53c6:	7829      	ldrb	r1, [r5, #0]
c0de53c8:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de53cc:	4408      	add	r0, r1
c0de53ce:	1c51      	adds	r1, r2, #1
c0de53d0:	300a      	adds	r0, #10
c0de53d2:	7138      	strb	r0, [r7, #4]
c0de53d4:	0a00      	lsrs	r0, r0, #8
c0de53d6:	70a1      	strb	r1, [r4, #2]
c0de53d8:	7178      	strb	r0, [r7, #5]
c0de53da:	4630      	mov	r0, r6
c0de53dc:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de53e0:	0000395c 	.word	0x0000395c
c0de53e4:	00003a30 	.word	0x00003a30
c0de53e8:	000036f9 	.word	0x000036f9
c0de53ec:	000036e1 	.word	0x000036e1

c0de53f0 <nbgl_layoutDraw>:
c0de53f0:	b120      	cbz	r0, c0de53fc <nbgl_layoutDraw+0xc>
c0de53f2:	b580      	push	{r7, lr}
c0de53f4:	f002 fd26 	bl	c0de7e44 <nbgl_screenRedraw>
c0de53f8:	2000      	movs	r0, #0
c0de53fa:	bd80      	pop	{r7, pc}
c0de53fc:	f000 b84a 	b.w	c0de5494 <OUTLINED_FUNCTION_8>

c0de5400 <nbgl_layoutRelease>:
c0de5400:	b148      	cbz	r0, c0de5416 <nbgl_layoutRelease+0x16>
c0de5402:	b510      	push	{r4, lr}
c0de5404:	4604      	mov	r4, r0
c0de5406:	7800      	ldrb	r0, [r0, #0]
c0de5408:	b110      	cbz	r0, c0de5410 <nbgl_layoutRelease+0x10>
c0de540a:	7860      	ldrb	r0, [r4, #1]
c0de540c:	f002 fd1f 	bl	c0de7e4e <nbgl_screenPop>
c0de5410:	2000      	movs	r0, #0
c0de5412:	70a0      	strb	r0, [r4, #2]
c0de5414:	bd10      	pop	{r4, pc}
c0de5416:	f000 b83d 	b.w	c0de5494 <OUTLINED_FUNCTION_8>

c0de541a <OUTLINED_FUNCTION_0>:
c0de541a:	4638      	mov	r0, r7
c0de541c:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de5420:	70c2      	strb	r2, [r0, #3]
c0de5422:	0c0a      	lsrs	r2, r1, #16
c0de5424:	7082      	strb	r2, [r0, #2]
c0de5426:	0a08      	lsrs	r0, r1, #8
c0de5428:	2272      	movs	r2, #114	@ 0x72
c0de542a:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de542e:	f897 0024 	ldrb.w	r0, [r7, #36]	@ 0x24
c0de5432:	f040 0001 	orr.w	r0, r0, #1
c0de5436:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de543a:	200a      	movs	r0, #10
c0de543c:	f002 bd2a 	b.w	c0de7e94 <nbgl_getTextNbLinesInWidth>

c0de5440 <OUTLINED_FUNCTION_2>:
c0de5440:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de5444:	784b      	ldrb	r3, [r1, #1]
c0de5446:	788d      	ldrb	r5, [r1, #2]
c0de5448:	78c9      	ldrb	r1, [r1, #3]
c0de544a:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de544e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5452:	9d05      	ldr	r5, [sp, #20]
c0de5454:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de5458:	4770      	bx	lr

c0de545a <OUTLINED_FUNCTION_3>:
c0de545a:	70c2      	strb	r2, [r0, #3]
c0de545c:	0c0a      	lsrs	r2, r1, #16
c0de545e:	7082      	strb	r2, [r0, #2]
c0de5460:	0a08      	lsrs	r0, r1, #8
c0de5462:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de5466:	2008      	movs	r0, #8
c0de5468:	f002 bd1e 	b.w	c0de7ea8 <nbgl_getTextWidth>

c0de546c <OUTLINED_FUNCTION_4>:
c0de546c:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de5470:	2272      	movs	r2, #114	@ 0x72
c0de5472:	f002 bd1e 	b.w	c0de7eb2 <nbgl_getTextMaxLenInNbLines>

c0de5476 <OUTLINED_FUNCTION_5>:
c0de5476:	2004      	movs	r0, #4
c0de5478:	f002 bcf3 	b.w	c0de7e62 <nbgl_objPoolGet>

c0de547c <OUTLINED_FUNCTION_6>:
c0de547c:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de5480:	f002 bcf9 	b.w	c0de7e76 <nbgl_getFont>

c0de5484 <OUTLINED_FUNCTION_7>:
c0de5484:	2100      	movs	r1, #0
c0de5486:	463a      	mov	r2, r7
c0de5488:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de548c:	70d1      	strb	r1, [r2, #3]
c0de548e:	7091      	strb	r1, [r2, #2]
c0de5490:	7051      	strb	r1, [r2, #1]
c0de5492:	4770      	bx	lr

c0de5494 <OUTLINED_FUNCTION_8>:
c0de5494:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de5498:	4770      	bx	lr

c0de549a <OUTLINED_FUNCTION_9>:
c0de549a:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de549e:	2003      	movs	r0, #3
c0de54a0:	f887 0020 	strb.w	r0, [r7, #32]
c0de54a4:	77f8      	strb	r0, [r7, #31]
c0de54a6:	4770      	bx	lr

c0de54a8 <nbgl_stepDrawText>:
c0de54a8:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de54ac:	460e      	mov	r6, r1
c0de54ae:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de54b0:	4605      	mov	r5, r0
c0de54b2:	2000      	movs	r0, #0
c0de54b4:	469a      	mov	sl, r3
c0de54b6:	4617      	mov	r7, r2
c0de54b8:	f000 f830 	bl	c0de551c <getFreeContext>
c0de54bc:	b348      	cbz	r0, c0de5512 <nbgl_stepDrawText+0x6a>
c0de54be:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de54c2:	4604      	mov	r4, r0
c0de54c4:	6146      	str	r6, [r0, #20]
c0de54c6:	b10f      	cbz	r7, c0de54cc <nbgl_stepDrawText+0x24>
c0de54c8:	f000 fae1 	bl	c0de5a8e <OUTLINED_FUNCTION_1>
c0de54cc:	200a      	movs	r0, #10
c0de54ce:	f1b8 0f00 	cmp.w	r8, #0
c0de54d2:	bf19      	ittee	ne
c0de54d4:	4641      	movne	r1, r8
c0de54d6:	2203      	movne	r2, #3
c0de54d8:	4651      	moveq	r1, sl
c0de54da:	2204      	moveq	r2, #4
c0de54dc:	2372      	movs	r3, #114	@ 0x72
c0de54de:	f002 fcde 	bl	c0de7e9e <nbgl_getTextNbPagesInWidth>
c0de54e2:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de54e4:	7020      	strb	r0, [r4, #0]
c0de54e6:	072a      	lsls	r2, r5, #28
c0de54e8:	bf46      	itte	mi
c0de54ea:	3801      	submi	r0, #1
c0de54ec:	7060      	strbmi	r0, [r4, #1]
c0de54ee:	7860      	ldrbpl	r0, [r4, #1]
c0de54f0:	f8c4 800c 	str.w	r8, [r4, #12]
c0de54f4:	f8c4 a004 	str.w	sl, [r4, #4]
c0de54f8:	f884 1030 	strb.w	r1, [r4, #48]	@ 0x30
c0de54fc:	f3c5 1180 	ubfx	r1, r5, #6, #1
c0de5500:	7461      	strb	r1, [r4, #17]
c0de5502:	f005 0103 	and.w	r1, r5, #3
c0de5506:	7421      	strb	r1, [r4, #16]
c0de5508:	b2c1      	uxtb	r1, r0
c0de550a:	4620      	mov	r0, r4
c0de550c:	f000 f82c 	bl	c0de5568 <displayTextPage>
c0de5510:	e000      	b.n	c0de5514 <nbgl_stepDrawText+0x6c>
c0de5512:	2400      	movs	r4, #0
c0de5514:	4620      	mov	r0, r4
c0de5516:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de551c <getFreeContext>:
c0de551c:	b570      	push	{r4, r5, r6, lr}
c0de551e:	4604      	mov	r4, r0
c0de5520:	4810      	ldr	r0, [pc, #64]	@ (c0de5564 <getFreeContext+0x48>)
c0de5522:	460d      	mov	r5, r1
c0de5524:	b151      	cbz	r1, c0de553c <getFreeContext+0x20>
c0de5526:	2100      	movs	r1, #0
c0de5528:	2990      	cmp	r1, #144	@ 0x90
c0de552a:	d00a      	beq.n	c0de5542 <getFreeContext+0x26>
c0de552c:	eb09 0200 	add.w	r2, r9, r0
c0de5530:	440a      	add	r2, r1
c0de5532:	f8d2 2088 	ldr.w	r2, [r2, #136]	@ 0x88
c0de5536:	b132      	cbz	r2, c0de5546 <getFreeContext+0x2a>
c0de5538:	3148      	adds	r1, #72	@ 0x48
c0de553a:	e7f5      	b.n	c0de5528 <getFreeContext+0xc>
c0de553c:	eb09 0600 	add.w	r6, r9, r0
c0de5540:	e005      	b.n	c0de554e <getFreeContext+0x32>
c0de5542:	2600      	movs	r6, #0
c0de5544:	e00b      	b.n	c0de555e <getFreeContext+0x42>
c0de5546:	4448      	add	r0, r9
c0de5548:	4408      	add	r0, r1
c0de554a:	f100 0648 	add.w	r6, r0, #72	@ 0x48
c0de554e:	4630      	mov	r0, r6
c0de5550:	2148      	movs	r1, #72	@ 0x48
c0de5552:	f003 f9dd 	bl	c0de8910 <__aeabi_memclr>
c0de5556:	f886 5045 	strb.w	r5, [r6, #69]	@ 0x45
c0de555a:	f886 4044 	strb.w	r4, [r6, #68]	@ 0x44
c0de555e:	4630      	mov	r0, r6
c0de5560:	bd70      	pop	{r4, r5, r6, pc}
c0de5562:	bf00      	nop
c0de5564:	00001168 	.word	0x00001168

c0de5568 <displayTextPage>:
c0de5568:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de556c:	b091      	sub	sp, #68	@ 0x44
c0de556e:	4604      	mov	r4, r0
c0de5570:	7840      	ldrb	r0, [r0, #1]
c0de5572:	460e      	mov	r6, r1
c0de5574:	4288      	cmp	r0, r1
c0de5576:	d21c      	bcs.n	c0de55b2 <displayTextPage+0x4a>
c0de5578:	68a5      	ldr	r5, [r4, #8]
c0de557a:	7820      	ldrb	r0, [r4, #0]
c0de557c:	7066      	strb	r6, [r4, #1]
c0de557e:	3801      	subs	r0, #1
c0de5580:	42b0      	cmp	r0, r6
c0de5582:	dd31      	ble.n	c0de55e8 <displayTextPage+0x80>
c0de5584:	68e0      	ldr	r0, [r4, #12]
c0de5586:	2101      	movs	r1, #1
c0de5588:	2303      	movs	r3, #3
c0de558a:	aa08      	add	r2, sp, #32
c0de558c:	e9cd 2100 	strd	r2, r1, [sp]
c0de5590:	4629      	mov	r1, r5
c0de5592:	2800      	cmp	r0, #0
c0de5594:	bf08      	it	eq
c0de5596:	2304      	moveq	r3, #4
c0de5598:	200a      	movs	r0, #10
c0de559a:	2272      	movs	r2, #114	@ 0x72
c0de559c:	f002 fc89 	bl	c0de7eb2 <nbgl_getTextMaxLenInNbLines>
c0de55a0:	f8bd 1020 	ldrh.w	r1, [sp, #32]
c0de55a4:	1868      	adds	r0, r5, r1
c0de55a6:	60a0      	str	r0, [r4, #8]
c0de55a8:	5c69      	ldrb	r1, [r5, r1]
c0de55aa:	290a      	cmp	r1, #10
c0de55ac:	d11e      	bne.n	c0de55ec <displayTextPage+0x84>
c0de55ae:	3001      	adds	r0, #1
c0de55b0:	e01b      	b.n	c0de55ea <displayTextPage+0x82>
c0de55b2:	68e5      	ldr	r5, [r4, #12]
c0de55b4:	2d00      	cmp	r5, #0
c0de55b6:	d074      	beq.n	c0de56a2 <displayTextPage+0x13a>
c0de55b8:	2700      	movs	r7, #0
c0de55ba:	f04f 0801 	mov.w	r8, #1
c0de55be:	f10d 0a20 	add.w	sl, sp, #32
c0de55c2:	42be      	cmp	r6, r7
c0de55c4:	d0d9      	beq.n	c0de557a <displayTextPage+0x12>
c0de55c6:	7820      	ldrb	r0, [r4, #0]
c0de55c8:	3801      	subs	r0, #1
c0de55ca:	42b8      	cmp	r0, r7
c0de55cc:	dd0a      	ble.n	c0de55e4 <displayTextPage+0x7c>
c0de55ce:	200a      	movs	r0, #10
c0de55d0:	4629      	mov	r1, r5
c0de55d2:	2272      	movs	r2, #114	@ 0x72
c0de55d4:	2303      	movs	r3, #3
c0de55d6:	e9cd a800 	strd	sl, r8, [sp]
c0de55da:	f002 fc6a 	bl	c0de7eb2 <nbgl_getTextMaxLenInNbLines>
c0de55de:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de55e2:	4405      	add	r5, r0
c0de55e4:	3701      	adds	r7, #1
c0de55e6:	e7ec      	b.n	c0de55c2 <displayTextPage+0x5a>
c0de55e8:	2000      	movs	r0, #0
c0de55ea:	60a0      	str	r0, [r4, #8]
c0de55ec:	484f      	ldr	r0, [pc, #316]	@ (c0de572c <displayTextPage+0x1c4>)
c0de55ee:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de55f2:	4478      	add	r0, pc
c0de55f4:	9004      	str	r0, [sp, #16]
c0de55f6:	2000      	movs	r0, #0
c0de55f8:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de55fc:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de5600:	f88d 000c 	strb.w	r0, [sp, #12]
c0de5604:	ca07      	ldmia	r2, {r0, r1, r2}
c0de5606:	ab05      	add	r3, sp, #20
c0de5608:	c307      	stmia	r3!, {r0, r1, r2}
c0de560a:	a803      	add	r0, sp, #12
c0de560c:	f7ff f986 	bl	c0de491c <nbgl_layoutGet>
c0de5610:	7827      	ldrb	r7, [r4, #0]
c0de5612:	f894 a001 	ldrb.w	sl, [r4, #1]
c0de5616:	4606      	mov	r6, r0
c0de5618:	6420      	str	r0, [r4, #64]	@ 0x40
c0de561a:	7c20      	ldrb	r0, [r4, #16]
c0de561c:	4639      	mov	r1, r7
c0de561e:	4652      	mov	r2, sl
c0de5620:	f000 f8fc 	bl	c0de581c <getNavigationInfo>
c0de5624:	4680      	mov	r8, r0
c0de5626:	f88d 000b 	strb.w	r0, [sp, #11]
c0de562a:	68e0      	ldr	r0, [r4, #12]
c0de562c:	b188      	cbz	r0, c0de5652 <displayTextPage+0xea>
c0de562e:	2f01      	cmp	r7, #1
c0de5630:	d115      	bne.n	c0de565e <displayTextPage+0xf6>
c0de5632:	6861      	ldr	r1, [r4, #4]
c0de5634:	2008      	movs	r0, #8
c0de5636:	2272      	movs	r2, #114	@ 0x72
c0de5638:	2300      	movs	r3, #0
c0de563a:	2600      	movs	r6, #0
c0de563c:	f002 fc2a 	bl	c0de7e94 <nbgl_getTextNbLinesInWidth>
c0de5640:	2802      	cmp	r0, #2
c0de5642:	d348      	bcc.n	c0de56d6 <displayTextPage+0x16e>
c0de5644:	6861      	ldr	r1, [r4, #4]
c0de5646:	2018      	movs	r0, #24
c0de5648:	f104 0218 	add.w	r2, r4, #24
c0de564c:	e9cd 2000 	strd	r2, r0, [sp]
c0de5650:	e021      	b.n	c0de5696 <displayTextPage+0x12e>
c0de5652:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de5656:	4630      	mov	r0, r6
c0de5658:	4629      	mov	r1, r5
c0de565a:	2200      	movs	r2, #0
c0de565c:	e055      	b.n	c0de570a <displayTextPage+0x1a2>
c0de565e:	f10a 0001 	add.w	r0, sl, #1
c0de5662:	6863      	ldr	r3, [r4, #4]
c0de5664:	2124      	movs	r1, #36	@ 0x24
c0de5666:	e9cd 0700 	strd	r0, r7, [sp]
c0de566a:	af08      	add	r7, sp, #32
c0de566c:	4a30      	ldr	r2, [pc, #192]	@ (c0de5730 <displayTextPage+0x1c8>)
c0de566e:	4638      	mov	r0, r7
c0de5670:	447a      	add	r2, pc
c0de5672:	f002 fc3f 	bl	c0de7ef4 <snprintf>
c0de5676:	2008      	movs	r0, #8
c0de5678:	4639      	mov	r1, r7
c0de567a:	2272      	movs	r2, #114	@ 0x72
c0de567c:	2300      	movs	r3, #0
c0de567e:	f04f 0a00 	mov.w	sl, #0
c0de5682:	f002 fc07 	bl	c0de7e94 <nbgl_getTextNbLinesInWidth>
c0de5686:	f104 0c18 	add.w	ip, r4, #24
c0de568a:	2802      	cmp	r0, #2
c0de568c:	d32c      	bcc.n	c0de56e8 <displayTextPage+0x180>
c0de568e:	2018      	movs	r0, #24
c0de5690:	e9cd c000 	strd	ip, r0, [sp]
c0de5694:	a908      	add	r1, sp, #32
c0de5696:	2008      	movs	r0, #8
c0de5698:	2272      	movs	r2, #114	@ 0x72
c0de569a:	2301      	movs	r3, #1
c0de569c:	f002 fc0e 	bl	c0de7ebc <nbgl_textReduceOnNbLines>
c0de56a0:	e02d      	b.n	c0de56fe <displayTextPage+0x196>
c0de56a2:	6865      	ldr	r5, [r4, #4]
c0de56a4:	2700      	movs	r7, #0
c0de56a6:	f04f 0801 	mov.w	r8, #1
c0de56aa:	f10d 0a20 	add.w	sl, sp, #32
c0de56ae:	42be      	cmp	r6, r7
c0de56b0:	f43f af63 	beq.w	c0de557a <displayTextPage+0x12>
c0de56b4:	7820      	ldrb	r0, [r4, #0]
c0de56b6:	3801      	subs	r0, #1
c0de56b8:	42b8      	cmp	r0, r7
c0de56ba:	dd0a      	ble.n	c0de56d2 <displayTextPage+0x16a>
c0de56bc:	200a      	movs	r0, #10
c0de56be:	4629      	mov	r1, r5
c0de56c0:	2272      	movs	r2, #114	@ 0x72
c0de56c2:	2304      	movs	r3, #4
c0de56c4:	e9cd a800 	strd	sl, r8, [sp]
c0de56c8:	f002 fbf3 	bl	c0de7eb2 <nbgl_getTextMaxLenInNbLines>
c0de56cc:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de56d0:	4405      	add	r5, r0
c0de56d2:	3701      	adds	r7, #1
c0de56d4:	e7eb      	b.n	c0de56ae <displayTextPage+0x146>
c0de56d6:	6861      	ldr	r1, [r4, #4]
c0de56d8:	f104 0018 	add.w	r0, r4, #24
c0de56dc:	2217      	movs	r2, #23
c0de56de:	f003 f90d 	bl	c0de88fc <__aeabi_memcpy>
c0de56e2:	f884 602f 	strb.w	r6, [r4, #47]	@ 0x2f
c0de56e6:	e00a      	b.n	c0de56fe <displayTextPage+0x196>
c0de56e8:	cf4f      	ldmia	r7!, {r0, r1, r2, r3, r6}
c0de56ea:	e8ac 004f 	stmia.w	ip!, {r0, r1, r2, r3, r6}
c0de56ee:	f884 a02f 	strb.w	sl, [r4, #47]	@ 0x2f
c0de56f2:	8838      	ldrh	r0, [r7, #0]
c0de56f4:	f8ac 0000 	strh.w	r0, [ip]
c0de56f8:	78b8      	ldrb	r0, [r7, #2]
c0de56fa:	f88c 0002 	strb.w	r0, [ip, #2]
c0de56fe:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de5702:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de5704:	f104 0118 	add.w	r1, r4, #24
c0de5708:	462a      	mov	r2, r5
c0de570a:	f7ff f9c9 	bl	c0de4aa0 <nbgl_layoutAddText>
c0de570e:	f1b8 0f00 	cmp.w	r8, #0
c0de5712:	d004      	beq.n	c0de571e <displayTextPage+0x1b6>
c0de5714:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de5716:	f10d 010a 	add.w	r1, sp, #10
c0de571a:	f7ff f963 	bl	c0de49e4 <nbgl_layoutAddNavigation>
c0de571e:	f000 f9e9 	bl	c0de5af4 <OUTLINED_FUNCTION_4>
c0de5722:	f002 fb76 	bl	c0de7e12 <nbgl_refresh>
c0de5726:	b011      	add	sp, #68	@ 0x44
c0de5728:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de572c:	000001bb 	.word	0x000001bb
c0de5730:	0000354e 	.word	0x0000354e

c0de5734 <nbgl_stepDrawCenteredInfo>:
c0de5734:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de5738:	b087      	sub	sp, #28
c0de573a:	460d      	mov	r5, r1
c0de573c:	4682      	mov	sl, r0
c0de573e:	a802      	add	r0, sp, #8
c0de5740:	f000 f9d3 	bl	c0de5aea <OUTLINED_FUNCTION_3>
c0de5744:	4819      	ldr	r0, [pc, #100]	@ (c0de57ac <nbgl_stepDrawCenteredInfo+0x78>)
c0de5746:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de5748:	4478      	add	r0, pc
c0de574a:	f000 f9c5 	bl	c0de5ad8 <OUTLINED_FUNCTION_2>
c0de574e:	b168      	cbz	r0, c0de576c <nbgl_stepDrawCenteredInfo+0x38>
c0de5750:	4604      	mov	r4, r0
c0de5752:	6145      	str	r5, [r0, #20]
c0de5754:	b10f      	cbz	r7, c0de575a <nbgl_stepDrawCenteredInfo+0x26>
c0de5756:	f000 f953 	bl	c0de5a00 <OUTLINED_FUNCTION_0>
c0de575a:	f000 f9ce 	bl	c0de5afa <OUTLINED_FUNCTION_5>
c0de575e:	d007      	beq.n	c0de5770 <nbgl_stepDrawCenteredInfo+0x3c>
c0de5760:	2802      	cmp	r0, #2
c0de5762:	d007      	beq.n	c0de5774 <nbgl_stepDrawCenteredInfo+0x40>
c0de5764:	2801      	cmp	r0, #1
c0de5766:	d108      	bne.n	c0de577a <nbgl_stepDrawCenteredInfo+0x46>
c0de5768:	2002      	movs	r0, #2
c0de576a:	e004      	b.n	c0de5776 <nbgl_stepDrawCenteredInfo+0x42>
c0de576c:	2400      	movs	r4, #0
c0de576e:	e018      	b.n	c0de57a2 <nbgl_stepDrawCenteredInfo+0x6e>
c0de5770:	2003      	movs	r0, #3
c0de5772:	e000      	b.n	c0de5776 <nbgl_stepDrawCenteredInfo+0x42>
c0de5774:	2001      	movs	r0, #1
c0de5776:	2500      	movs	r5, #0
c0de5778:	e000      	b.n	c0de577c <nbgl_stepDrawCenteredInfo+0x48>
c0de577a:	2000      	movs	r0, #0
c0de577c:	f88d 0007 	strb.w	r0, [sp, #7]
c0de5780:	a802      	add	r0, sp, #8
c0de5782:	f7ff f8cb 	bl	c0de491c <nbgl_layoutGet>
c0de5786:	4641      	mov	r1, r8
c0de5788:	6420      	str	r0, [r4, #64]	@ 0x40
c0de578a:	f7ff fb9d 	bl	c0de4ec8 <nbgl_layoutAddCenteredInfo>
c0de578e:	b925      	cbnz	r5, c0de579a <nbgl_stepDrawCenteredInfo+0x66>
c0de5790:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de5792:	f10d 0106 	add.w	r1, sp, #6
c0de5796:	f7ff f925 	bl	c0de49e4 <nbgl_layoutAddNavigation>
c0de579a:	f000 f9ab 	bl	c0de5af4 <OUTLINED_FUNCTION_4>
c0de579e:	f002 fb38 	bl	c0de7e12 <nbgl_refresh>
c0de57a2:	4620      	mov	r0, r4
c0de57a4:	b007      	add	sp, #28
c0de57a6:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de57aa:	bf00      	nop
c0de57ac:	00000065 	.word	0x00000065

c0de57b0 <actionCallback>:
c0de57b0:	b510      	push	{r4, lr}
c0de57b2:	460c      	mov	r4, r1
c0de57b4:	f000 f8f0 	bl	c0de5998 <getContextFromLayout>
c0de57b8:	b378      	cbz	r0, c0de581a <actionCallback+0x6a>
c0de57ba:	2c04      	cmp	r4, #4
c0de57bc:	d006      	beq.n	c0de57cc <actionCallback+0x1c>
c0de57be:	2c01      	cmp	r4, #1
c0de57c0:	d008      	beq.n	c0de57d4 <actionCallback+0x24>
c0de57c2:	bb54      	cbnz	r4, c0de581a <actionCallback+0x6a>
c0de57c4:	7841      	ldrb	r1, [r0, #1]
c0de57c6:	b1d9      	cbz	r1, c0de5800 <actionCallback+0x50>
c0de57c8:	3901      	subs	r1, #1
c0de57ca:	e009      	b.n	c0de57e0 <actionCallback+0x30>
c0de57cc:	6942      	ldr	r2, [r0, #20]
c0de57ce:	b322      	cbz	r2, c0de581a <actionCallback+0x6a>
c0de57d0:	2104      	movs	r1, #4
c0de57d2:	e01f      	b.n	c0de5814 <actionCallback+0x64>
c0de57d4:	7802      	ldrb	r2, [r0, #0]
c0de57d6:	7841      	ldrb	r1, [r0, #1]
c0de57d8:	3a01      	subs	r2, #1
c0de57da:	428a      	cmp	r2, r1
c0de57dc:	dd05      	ble.n	c0de57ea <actionCallback+0x3a>
c0de57de:	3101      	adds	r1, #1
c0de57e0:	b2c9      	uxtb	r1, r1
c0de57e2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de57e6:	f7ff bebf 	b.w	c0de5568 <displayTextPage>
c0de57ea:	7c01      	ldrb	r1, [r0, #16]
c0de57ec:	f041 0102 	orr.w	r1, r1, #2
c0de57f0:	2903      	cmp	r1, #3
c0de57f2:	d001      	beq.n	c0de57f8 <actionCallback+0x48>
c0de57f4:	7c41      	ldrb	r1, [r0, #17]
c0de57f6:	b181      	cbz	r1, c0de581a <actionCallback+0x6a>
c0de57f8:	6942      	ldr	r2, [r0, #20]
c0de57fa:	b172      	cbz	r2, c0de581a <actionCallback+0x6a>
c0de57fc:	2101      	movs	r1, #1
c0de57fe:	e009      	b.n	c0de5814 <actionCallback+0x64>
c0de5800:	7c01      	ldrb	r1, [r0, #16]
c0de5802:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de5806:	2902      	cmp	r1, #2
c0de5808:	d001      	beq.n	c0de580e <actionCallback+0x5e>
c0de580a:	7c41      	ldrb	r1, [r0, #17]
c0de580c:	b129      	cbz	r1, c0de581a <actionCallback+0x6a>
c0de580e:	6942      	ldr	r2, [r0, #20]
c0de5810:	b11a      	cbz	r2, c0de581a <actionCallback+0x6a>
c0de5812:	2100      	movs	r1, #0
c0de5814:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5818:	4710      	bx	r2
c0de581a:	bd10      	pop	{r4, pc}

c0de581c <getNavigationInfo>:
c0de581c:	4603      	mov	r3, r0
c0de581e:	2902      	cmp	r1, #2
c0de5820:	d308      	bcc.n	c0de5834 <getNavigationInfo+0x18>
c0de5822:	3901      	subs	r1, #1
c0de5824:	4610      	mov	r0, r2
c0de5826:	2a00      	cmp	r2, #0
c0de5828:	bf18      	it	ne
c0de582a:	2001      	movne	r0, #1
c0de582c:	4291      	cmp	r1, r2
c0de582e:	bf88      	it	hi
c0de5830:	3002      	addhi	r0, #2
c0de5832:	e000      	b.n	c0de5836 <getNavigationInfo+0x1a>
c0de5834:	2000      	movs	r0, #0
c0de5836:	2b03      	cmp	r3, #3
c0de5838:	d00a      	beq.n	c0de5850 <getNavigationInfo+0x34>
c0de583a:	2b02      	cmp	r3, #2
c0de583c:	bf04      	itt	eq
c0de583e:	f040 0001 	orreq.w	r0, r0, #1
c0de5842:	4770      	bxeq	lr
c0de5844:	2b01      	cmp	r3, #1
c0de5846:	bf04      	itt	eq
c0de5848:	f040 0002 	orreq.w	r0, r0, #2
c0de584c:	4770      	bxeq	lr
c0de584e:	4770      	bx	lr
c0de5850:	2003      	movs	r0, #3
c0de5852:	4770      	bx	lr

c0de5854 <nbgl_stepDrawMenuList>:
c0de5854:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de5856:	460f      	mov	r7, r1
c0de5858:	4606      	mov	r6, r0
c0de585a:	2002      	movs	r0, #2
c0de585c:	4619      	mov	r1, r3
c0de585e:	4615      	mov	r5, r2
c0de5860:	f7ff fe5c 	bl	c0de551c <getFreeContext>
c0de5864:	b170      	cbz	r0, c0de5884 <nbgl_stepDrawMenuList+0x30>
c0de5866:	4604      	mov	r4, r0
c0de5868:	b10f      	cbz	r7, c0de586e <nbgl_stepDrawMenuList+0x1a>
c0de586a:	f000 f910 	bl	c0de5a8e <OUTLINED_FUNCTION_1>
c0de586e:	7928      	ldrb	r0, [r5, #4]
c0de5870:	7220      	strb	r0, [r4, #8]
c0de5872:	7968      	ldrb	r0, [r5, #5]
c0de5874:	7260      	strb	r0, [r4, #9]
c0de5876:	6828      	ldr	r0, [r5, #0]
c0de5878:	e9c4 6000 	strd	r6, r0, [r4]
c0de587c:	4620      	mov	r0, r4
c0de587e:	f000 f805 	bl	c0de588c <displayMenuList>
c0de5882:	e000      	b.n	c0de5886 <nbgl_stepDrawMenuList+0x32>
c0de5884:	2400      	movs	r4, #0
c0de5886:	4620      	mov	r0, r4
c0de5888:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de588c <displayMenuList>:
c0de588c:	b5b0      	push	{r4, r5, r7, lr}
c0de588e:	b086      	sub	sp, #24
c0de5890:	4604      	mov	r4, r0
c0de5892:	2000      	movs	r0, #0
c0de5894:	9001      	str	r0, [sp, #4]
c0de5896:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de589a:	4819      	ldr	r0, [pc, #100]	@ (c0de5900 <displayMenuList+0x74>)
c0de589c:	4478      	add	r0, pc
c0de589e:	9002      	str	r0, [sp, #8]
c0de58a0:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de58a4:	f88d 0004 	strb.w	r0, [sp, #4]
c0de58a8:	ca07      	ldmia	r2, {r0, r1, r2}
c0de58aa:	ab03      	add	r3, sp, #12
c0de58ac:	c307      	stmia	r3!, {r0, r1, r2}
c0de58ae:	a801      	add	r0, sp, #4
c0de58b0:	f7ff f834 	bl	c0de491c <nbgl_layoutGet>
c0de58b4:	1d25      	adds	r5, r4, #4
c0de58b6:	6420      	str	r0, [r4, #64]	@ 0x40
c0de58b8:	4629      	mov	r1, r5
c0de58ba:	f7ff fab1 	bl	c0de4e20 <nbgl_layoutAddMenuList>
c0de58be:	7a20      	ldrb	r0, [r4, #8]
c0de58c0:	2802      	cmp	r0, #2
c0de58c2:	d316      	bcc.n	c0de58f2 <displayMenuList+0x66>
c0de58c4:	2101      	movs	r1, #1
c0de58c6:	f8ad 1002 	strh.w	r1, [sp, #2]
c0de58ca:	7969      	ldrb	r1, [r5, #5]
c0de58cc:	2900      	cmp	r1, #0
c0de58ce:	460a      	mov	r2, r1
c0de58d0:	bf18      	it	ne
c0de58d2:	2201      	movne	r2, #1
c0de58d4:	3801      	subs	r0, #1
c0de58d6:	f88d 2003 	strb.w	r2, [sp, #3]
c0de58da:	4288      	cmp	r0, r1
c0de58dc:	d903      	bls.n	c0de58e6 <displayMenuList+0x5a>
c0de58de:	1c90      	adds	r0, r2, #2
c0de58e0:	f88d 0003 	strb.w	r0, [sp, #3]
c0de58e4:	e000      	b.n	c0de58e8 <displayMenuList+0x5c>
c0de58e6:	b121      	cbz	r1, c0de58f2 <displayMenuList+0x66>
c0de58e8:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de58ea:	f10d 0102 	add.w	r1, sp, #2
c0de58ee:	f7ff f879 	bl	c0de49e4 <nbgl_layoutAddNavigation>
c0de58f2:	f000 f8ff 	bl	c0de5af4 <OUTLINED_FUNCTION_4>
c0de58f6:	f002 fa8c 	bl	c0de7e12 <nbgl_refresh>
c0de58fa:	b006      	add	sp, #24
c0de58fc:	bdb0      	pop	{r4, r5, r7, pc}
c0de58fe:	bf00      	nop
c0de5900:	00000121 	.word	0x00000121

c0de5904 <nbgl_stepDrawSwitch>:
c0de5904:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de5908:	b087      	sub	sp, #28
c0de590a:	460d      	mov	r5, r1
c0de590c:	4682      	mov	sl, r0
c0de590e:	a802      	add	r0, sp, #8
c0de5910:	f000 f8eb 	bl	c0de5aea <OUTLINED_FUNCTION_3>
c0de5914:	4819      	ldr	r0, [pc, #100]	@ (c0de597c <nbgl_stepDrawSwitch+0x78>)
c0de5916:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de5918:	4478      	add	r0, pc
c0de591a:	f000 f8dd 	bl	c0de5ad8 <OUTLINED_FUNCTION_2>
c0de591e:	b168      	cbz	r0, c0de593c <nbgl_stepDrawSwitch+0x38>
c0de5920:	4604      	mov	r4, r0
c0de5922:	6145      	str	r5, [r0, #20]
c0de5924:	b10f      	cbz	r7, c0de592a <nbgl_stepDrawSwitch+0x26>
c0de5926:	f000 f86b 	bl	c0de5a00 <OUTLINED_FUNCTION_0>
c0de592a:	f000 f8e6 	bl	c0de5afa <OUTLINED_FUNCTION_5>
c0de592e:	d007      	beq.n	c0de5940 <nbgl_stepDrawSwitch+0x3c>
c0de5930:	2802      	cmp	r0, #2
c0de5932:	d007      	beq.n	c0de5944 <nbgl_stepDrawSwitch+0x40>
c0de5934:	2801      	cmp	r0, #1
c0de5936:	d108      	bne.n	c0de594a <nbgl_stepDrawSwitch+0x46>
c0de5938:	2002      	movs	r0, #2
c0de593a:	e004      	b.n	c0de5946 <nbgl_stepDrawSwitch+0x42>
c0de593c:	2400      	movs	r4, #0
c0de593e:	e018      	b.n	c0de5972 <nbgl_stepDrawSwitch+0x6e>
c0de5940:	2003      	movs	r0, #3
c0de5942:	e000      	b.n	c0de5946 <nbgl_stepDrawSwitch+0x42>
c0de5944:	2001      	movs	r0, #1
c0de5946:	2500      	movs	r5, #0
c0de5948:	e000      	b.n	c0de594c <nbgl_stepDrawSwitch+0x48>
c0de594a:	2000      	movs	r0, #0
c0de594c:	f88d 0007 	strb.w	r0, [sp, #7]
c0de5950:	a802      	add	r0, sp, #8
c0de5952:	f7fe ffe3 	bl	c0de491c <nbgl_layoutGet>
c0de5956:	4641      	mov	r1, r8
c0de5958:	6420      	str	r0, [r4, #64]	@ 0x40
c0de595a:	f7ff fc55 	bl	c0de5208 <nbgl_layoutAddSwitch>
c0de595e:	b925      	cbnz	r5, c0de596a <nbgl_stepDrawSwitch+0x66>
c0de5960:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de5962:	f10d 0106 	add.w	r1, sp, #6
c0de5966:	f7ff f83d 	bl	c0de49e4 <nbgl_layoutAddNavigation>
c0de596a:	f000 f8c3 	bl	c0de5af4 <OUTLINED_FUNCTION_4>
c0de596e:	f002 fa50 	bl	c0de7e12 <nbgl_refresh>
c0de5972:	4620      	mov	r0, r4
c0de5974:	b007      	add	sp, #28
c0de5976:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de597a:	bf00      	nop
c0de597c:	fffffe95 	.word	0xfffffe95

c0de5980 <nbgl_stepRelease>:
c0de5980:	b138      	cbz	r0, c0de5992 <nbgl_stepRelease+0x12>
c0de5982:	b510      	push	{r4, lr}
c0de5984:	4604      	mov	r4, r0
c0de5986:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de5988:	f7ff fd3a 	bl	c0de5400 <nbgl_layoutRelease>
c0de598c:	2100      	movs	r1, #0
c0de598e:	6421      	str	r1, [r4, #64]	@ 0x40
c0de5990:	bd10      	pop	{r4, pc}
c0de5992:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de5996:	4770      	bx	lr

c0de5998 <getContextFromLayout>:
c0de5998:	4a08      	ldr	r2, [pc, #32]	@ (c0de59bc <getContextFromLayout+0x24>)
c0de599a:	2100      	movs	r1, #0
c0de599c:	29d8      	cmp	r1, #216	@ 0xd8
c0de599e:	bf04      	itt	eq
c0de59a0:	2000      	moveq	r0, #0
c0de59a2:	4770      	bxeq	lr
c0de59a4:	eb09 0302 	add.w	r3, r9, r2
c0de59a8:	440b      	add	r3, r1
c0de59aa:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
c0de59ac:	4283      	cmp	r3, r0
c0de59ae:	d001      	beq.n	c0de59b4 <getContextFromLayout+0x1c>
c0de59b0:	3148      	adds	r1, #72	@ 0x48
c0de59b2:	e7f3      	b.n	c0de599c <getContextFromLayout+0x4>
c0de59b4:	eb09 0002 	add.w	r0, r9, r2
c0de59b8:	4408      	add	r0, r1
c0de59ba:	4770      	bx	lr
c0de59bc:	00001168 	.word	0x00001168

c0de59c0 <menuListActionCallback>:
c0de59c0:	b510      	push	{r4, lr}
c0de59c2:	460c      	mov	r4, r1
c0de59c4:	f7ff ffe8 	bl	c0de5998 <getContextFromLayout>
c0de59c8:	b1c8      	cbz	r0, c0de59fe <menuListActionCallback+0x3e>
c0de59ca:	2c04      	cmp	r4, #4
c0de59cc:	d006      	beq.n	c0de59dc <menuListActionCallback+0x1c>
c0de59ce:	2c01      	cmp	r4, #1
c0de59d0:	d00a      	beq.n	c0de59e8 <menuListActionCallback+0x28>
c0de59d2:	b9a4      	cbnz	r4, c0de59fe <menuListActionCallback+0x3e>
c0de59d4:	7a41      	ldrb	r1, [r0, #9]
c0de59d6:	b191      	cbz	r1, c0de59fe <menuListActionCallback+0x3e>
c0de59d8:	3901      	subs	r1, #1
c0de59da:	e00b      	b.n	c0de59f4 <menuListActionCallback+0x34>
c0de59dc:	7a41      	ldrb	r1, [r0, #9]
c0de59de:	6802      	ldr	r2, [r0, #0]
c0de59e0:	4608      	mov	r0, r1
c0de59e2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de59e6:	4710      	bx	r2
c0de59e8:	7a02      	ldrb	r2, [r0, #8]
c0de59ea:	7a41      	ldrb	r1, [r0, #9]
c0de59ec:	3a01      	subs	r2, #1
c0de59ee:	428a      	cmp	r2, r1
c0de59f0:	dd05      	ble.n	c0de59fe <menuListActionCallback+0x3e>
c0de59f2:	3101      	adds	r1, #1
c0de59f4:	7241      	strb	r1, [r0, #9]
c0de59f6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de59fa:	f7ff bf47 	b.w	c0de588c <displayMenuList>
c0de59fe:	bd10      	pop	{r4, pc}

c0de5a00 <OUTLINED_FUNCTION_0>:
c0de5a00:	7838      	ldrb	r0, [r7, #0]
c0de5a02:	7879      	ldrb	r1, [r7, #1]
c0de5a04:	78ba      	ldrb	r2, [r7, #2]
c0de5a06:	78fb      	ldrb	r3, [r7, #3]
c0de5a08:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5a0c:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de5a10:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de5a14:	6360      	str	r0, [r4, #52]	@ 0x34
c0de5a16:	4638      	mov	r0, r7
c0de5a18:	f810 2f08 	ldrb.w	r2, [r0, #8]!
c0de5a1c:	7a79      	ldrb	r1, [r7, #9]
c0de5a1e:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de5a22:	7882      	ldrb	r2, [r0, #2]
c0de5a24:	78c3      	ldrb	r3, [r0, #3]
c0de5a26:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5a2a:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de5a2e:	63e1      	str	r1, [r4, #60]	@ 0x3c
c0de5a30:	4639      	mov	r1, r7
c0de5a32:	f811 3f04 	ldrb.w	r3, [r1, #4]!
c0de5a36:	797a      	ldrb	r2, [r7, #5]
c0de5a38:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de5a3c:	788b      	ldrb	r3, [r1, #2]
c0de5a3e:	78cd      	ldrb	r5, [r1, #3]
c0de5a40:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de5a44:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de5a48:	63a2      	str	r2, [r4, #56]	@ 0x38
c0de5a4a:	783a      	ldrb	r2, [r7, #0]
c0de5a4c:	787b      	ldrb	r3, [r7, #1]
c0de5a4e:	78bd      	ldrb	r5, [r7, #2]
c0de5a50:	78fe      	ldrb	r6, [r7, #3]
c0de5a52:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5a56:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de5a5a:	7803      	ldrb	r3, [r0, #0]
c0de5a5c:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de5a60:	7885      	ldrb	r5, [r0, #2]
c0de5a62:	78c0      	ldrb	r0, [r0, #3]
c0de5a64:	9204      	str	r2, [sp, #16]
c0de5a66:	7a7a      	ldrb	r2, [r7, #9]
c0de5a68:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de5a6c:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de5a70:	788b      	ldrb	r3, [r1, #2]
c0de5a72:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de5a76:	780a      	ldrb	r2, [r1, #0]
c0de5a78:	78c9      	ldrb	r1, [r1, #3]
c0de5a7a:	9006      	str	r0, [sp, #24]
c0de5a7c:	7978      	ldrb	r0, [r7, #5]
c0de5a7e:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de5a82:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de5a86:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de5a8a:	9005      	str	r0, [sp, #20]
c0de5a8c:	4770      	bx	lr

c0de5a8e <OUTLINED_FUNCTION_1>:
c0de5a8e:	7838      	ldrb	r0, [r7, #0]
c0de5a90:	7879      	ldrb	r1, [r7, #1]
c0de5a92:	78ba      	ldrb	r2, [r7, #2]
c0de5a94:	78fb      	ldrb	r3, [r7, #3]
c0de5a96:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de5a9a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5a9e:	4639      	mov	r1, r7
c0de5aa0:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de5aa4:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de5aa8:	6360      	str	r0, [r4, #52]	@ 0x34
c0de5aaa:	7a78      	ldrb	r0, [r7, #9]
c0de5aac:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de5ab0:	788a      	ldrb	r2, [r1, #2]
c0de5ab2:	78c9      	ldrb	r1, [r1, #3]
c0de5ab4:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de5ab8:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de5abc:	63e0      	str	r0, [r4, #60]	@ 0x3c
c0de5abe:	7978      	ldrb	r0, [r7, #5]
c0de5ac0:	f817 1f04 	ldrb.w	r1, [r7, #4]!
c0de5ac4:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de5ac8:	78b9      	ldrb	r1, [r7, #2]
c0de5aca:	78fa      	ldrb	r2, [r7, #3]
c0de5acc:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de5ad0:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de5ad4:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de5ad6:	4770      	bx	lr

c0de5ad8 <OUTLINED_FUNCTION_2>:
c0de5ad8:	f88d 1008 	strb.w	r1, [sp, #8]
c0de5adc:	9003      	str	r0, [sp, #12]
c0de5ade:	2000      	movs	r0, #0
c0de5ae0:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de5ae4:	2001      	movs	r0, #1
c0de5ae6:	f7ff bd19 	b.w	c0de551c <getFreeContext>

c0de5aea <OUTLINED_FUNCTION_3>:
c0de5aea:	2114      	movs	r1, #20
c0de5aec:	4698      	mov	r8, r3
c0de5aee:	4617      	mov	r7, r2
c0de5af0:	f002 bf0e 	b.w	c0de8910 <__aeabi_memclr>

c0de5af4 <OUTLINED_FUNCTION_4>:
c0de5af4:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de5af6:	f7ff bc7b 	b.w	c0de53f0 <nbgl_layoutDraw>

c0de5afa <OUTLINED_FUNCTION_5>:
c0de5afa:	2501      	movs	r5, #1
c0de5afc:	f00a 0003 	and.w	r0, sl, #3
c0de5b00:	2803      	cmp	r0, #3
c0de5b02:	7025      	strb	r5, [r4, #0]
c0de5b04:	7420      	strb	r0, [r4, #16]
c0de5b06:	4770      	bx	lr

c0de5b08 <nbgl_useCaseHomeAndSettings>:
c0de5b08:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de5b0c:	4607      	mov	r7, r0
c0de5b0e:	4810      	ldr	r0, [pc, #64]	@ (c0de5b50 <nbgl_useCaseHomeAndSettings+0x48>)
c0de5b10:	f001 fd0d 	bl	c0de752e <OUTLINED_FUNCTION_3>
c0de5b14:	e9c4 760f 	strd	r7, r6, [r4, #60]	@ 0x3c
c0de5b18:	6465      	str	r5, [r4, #68]	@ 0x44
c0de5b1a:	9d06      	ldr	r5, [sp, #24]
c0de5b1c:	4628      	mov	r0, r5
c0de5b1e:	f002 fd07 	bl	c0de8530 <pic>
c0de5b22:	64a0      	str	r0, [r4, #72]	@ 0x48
c0de5b24:	9807      	ldr	r0, [sp, #28]
c0de5b26:	f002 fd03 	bl	c0de8530 <pic>
c0de5b2a:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de5b2c:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de5b30:	6561      	str	r1, [r4, #84]	@ 0x54
c0de5b32:	9908      	ldr	r1, [sp, #32]
c0de5b34:	e9c4 0113 	strd	r0, r1, [r4, #76]	@ 0x4c
c0de5b38:	bf18      	it	ne
c0de5b3a:	2d00      	cmpne	r5, #0
c0de5b3c:	d103      	bne.n	c0de5b46 <nbgl_useCaseHomeAndSettings+0x3e>
c0de5b3e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de5b42:	f000 b843 	b.w	c0de5bcc <startUseCaseHome>
c0de5b46:	4640      	mov	r0, r8
c0de5b48:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de5b4c:	f000 b802 	b.w	c0de5b54 <startUseCaseSettingsAtPage>
c0de5b50:	00001240 	.word	0x00001240

c0de5b54 <startUseCaseSettingsAtPage>:
c0de5b54:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5b56:	b08f      	sub	sp, #60	@ 0x3c
c0de5b58:	4604      	mov	r4, r0
c0de5b5a:	a801      	add	r0, sp, #4
c0de5b5c:	2138      	movs	r1, #56	@ 0x38
c0de5b5e:	f002 fed7 	bl	c0de8910 <__aeabi_memclr>
c0de5b62:	4e19      	ldr	r6, [pc, #100]	@ (c0de5bc8 <startUseCaseSettingsAtPage+0x74>)
c0de5b64:	eb09 0006 	add.w	r0, r9, r6
c0de5b68:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de5b6c:	280f      	cmp	r0, #15
c0de5b6e:	bf1e      	ittt	ne
c0de5b70:	eb09 0006 	addne.w	r0, r9, r6
c0de5b74:	210e      	movne	r1, #14
c0de5b76:	f880 102c 	strbne.w	r1, [r0, #44]	@ 0x2c
c0de5b7a:	eb09 0006 	add.w	r0, r9, r6
c0de5b7e:	2101      	movs	r1, #1
c0de5b80:	2700      	movs	r7, #0
c0de5b82:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de5b86:	ad01      	add	r5, sp, #4
c0de5b88:	eb09 0006 	add.w	r0, r9, r6
c0de5b8c:	6c80      	ldr	r0, [r0, #72]	@ 0x48
c0de5b8e:	7a01      	ldrb	r1, [r0, #8]
c0de5b90:	428f      	cmp	r7, r1
c0de5b92:	d20e      	bcs.n	c0de5bb2 <startUseCaseSettingsAtPage+0x5e>
c0de5b94:	b279      	sxtb	r1, r7
c0de5b96:	462a      	mov	r2, r5
c0de5b98:	f000 fce8 	bl	c0de656c <getContentAtIdx>
c0de5b9c:	f000 fd40 	bl	c0de6620 <getContentNbElement>
c0de5ba0:	eb09 0106 	add.w	r1, r9, r6
c0de5ba4:	3701      	adds	r7, #1
c0de5ba6:	f891 2034 	ldrb.w	r2, [r1, #52]	@ 0x34
c0de5baa:	4410      	add	r0, r2
c0de5bac:	f881 0034 	strb.w	r0, [r1, #52]	@ 0x34
c0de5bb0:	e7ea      	b.n	c0de5b88 <startUseCaseSettingsAtPage+0x34>
c0de5bb2:	eb09 0006 	add.w	r0, r9, r6
c0de5bb6:	2100      	movs	r1, #0
c0de5bb8:	f880 4035 	strb.w	r4, [r0, #53]	@ 0x35
c0de5bbc:	2000      	movs	r0, #0
c0de5bbe:	f000 ff39 	bl	c0de6a34 <displaySettingsPage>
c0de5bc2:	b00f      	add	sp, #60	@ 0x3c
c0de5bc4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5bc6:	bf00      	nop
c0de5bc8:	00001240 	.word	0x00001240

c0de5bcc <startUseCaseHome>:
c0de5bcc:	b510      	push	{r4, lr}
c0de5bce:	4821      	ldr	r0, [pc, #132]	@ (c0de5c54 <startUseCaseHome+0x88>)
c0de5bd0:	eb09 0100 	add.w	r1, r9, r0
c0de5bd4:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de5bd8:	290d      	cmp	r1, #13
c0de5bda:	d009      	beq.n	c0de5bf0 <startUseCaseHome+0x24>
c0de5bdc:	290e      	cmp	r1, #14
c0de5bde:	d114      	bne.n	c0de5c0a <startUseCaseHome+0x3e>
c0de5be0:	eb09 0100 	add.w	r1, r9, r0
c0de5be4:	6d0a      	ldr	r2, [r1, #80]	@ 0x50
c0de5be6:	2102      	movs	r1, #2
c0de5be8:	2a00      	cmp	r2, #0
c0de5bea:	bf08      	it	eq
c0de5bec:	2101      	moveq	r1, #1
c0de5bee:	e00d      	b.n	c0de5c0c <startUseCaseHome+0x40>
c0de5bf0:	eb09 0200 	add.w	r2, r9, r0
c0de5bf4:	2102      	movs	r1, #2
c0de5bf6:	6d14      	ldr	r4, [r2, #80]	@ 0x50
c0de5bf8:	6c93      	ldr	r3, [r2, #72]	@ 0x48
c0de5bfa:	2c00      	cmp	r4, #0
c0de5bfc:	bf08      	it	eq
c0de5bfe:	2101      	moveq	r1, #1
c0de5c00:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de5c04:	b133      	cbz	r3, c0de5c14 <startUseCaseHome+0x48>
c0de5c06:	3101      	adds	r1, #1
c0de5c08:	e000      	b.n	c0de5c0c <startUseCaseHome+0x40>
c0de5c0a:	2100      	movs	r1, #0
c0de5c0c:	eb09 0200 	add.w	r2, r9, r0
c0de5c10:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de5c14:	eb09 0200 	add.w	r2, r9, r0
c0de5c18:	210c      	movs	r1, #12
c0de5c1a:	e9d2 3412 	ldrd	r3, r4, [r2, #72]	@ 0x48
c0de5c1e:	f882 102c 	strb.w	r1, [r2, #44]	@ 0x2c
c0de5c22:	2103      	movs	r1, #3
c0de5c24:	2b00      	cmp	r3, #0
c0de5c26:	bf08      	it	eq
c0de5c28:	2102      	moveq	r1, #2
c0de5c2a:	f882 1034 	strb.w	r1, [r2, #52]	@ 0x34
c0de5c2e:	b124      	cbz	r4, c0de5c3a <startUseCaseHome+0x6e>
c0de5c30:	3101      	adds	r1, #1
c0de5c32:	eb09 0200 	add.w	r2, r9, r0
c0de5c36:	f882 1034 	strb.w	r1, [r2, #52]	@ 0x34
c0de5c3a:	eb09 0200 	add.w	r2, r9, r0
c0de5c3e:	6d12      	ldr	r2, [r2, #80]	@ 0x50
c0de5c40:	b11a      	cbz	r2, c0de5c4a <startUseCaseHome+0x7e>
c0de5c42:	4448      	add	r0, r9
c0de5c44:	3101      	adds	r1, #1
c0de5c46:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de5c4a:	2000      	movs	r0, #0
c0de5c4c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5c50:	f000 bfe0 	b.w	c0de6c14 <displayHomePage>
c0de5c54:	00001240 	.word	0x00001240

c0de5c58 <nbgl_useCaseReview>:
c0de5c58:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de5c5a:	4614      	mov	r4, r2
c0de5c5c:	460a      	mov	r2, r1
c0de5c5e:	4601      	mov	r1, r0
c0de5c60:	9808      	ldr	r0, [sp, #32]
c0de5c62:	9003      	str	r0, [sp, #12]
c0de5c64:	9807      	ldr	r0, [sp, #28]
c0de5c66:	9002      	str	r0, [sp, #8]
c0de5c68:	9806      	ldr	r0, [sp, #24]
c0de5c6a:	e9cd 3000 	strd	r3, r0, [sp]
c0de5c6e:	2002      	movs	r0, #2
c0de5c70:	4623      	mov	r3, r4
c0de5c72:	f000 f801 	bl	c0de5c78 <useCaseReview>
c0de5c76:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de5c78 <useCaseReview>:
c0de5c78:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de5c7c:	4607      	mov	r7, r0
c0de5c7e:	4811      	ldr	r0, [pc, #68]	@ (c0de5cc4 <useCaseReview+0x4c>)
c0de5c80:	4688      	mov	r8, r1
c0de5c82:	2140      	movs	r1, #64	@ 0x40
c0de5c84:	461d      	mov	r5, r3
c0de5c86:	4614      	mov	r4, r2
c0de5c88:	f001 fc4b 	bl	c0de7522 <OUTLINED_FUNCTION_2>
c0de5c8c:	9808      	ldr	r0, [sp, #32]
c0de5c8e:	6530      	str	r0, [r6, #80]	@ 0x50
c0de5c90:	9807      	ldr	r0, [sp, #28]
c0de5c92:	64f0      	str	r0, [r6, #76]	@ 0x4c
c0de5c94:	9906      	ldr	r1, [sp, #24]
c0de5c96:	e9c6 4510 	strd	r4, r5, [r6, #64]	@ 0x40
c0de5c9a:	64b1      	str	r1, [r6, #72]	@ 0x48
c0de5c9c:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de5c9e:	f8c6 8030 	str.w	r8, [r6, #48]	@ 0x30
c0de5ca2:	f886 702c 	strb.w	r7, [r6, #44]	@ 0x2c
c0de5ca6:	63f1      	str	r1, [r6, #60]	@ 0x3c
c0de5ca8:	2104      	movs	r1, #4
c0de5caa:	2800      	cmp	r0, #0
c0de5cac:	bf08      	it	eq
c0de5cae:	2103      	moveq	r1, #3
c0de5cb0:	7a20      	ldrb	r0, [r4, #8]
c0de5cb2:	4408      	add	r0, r1
c0de5cb4:	f886 0034 	strb.w	r0, [r6, #52]	@ 0x34
c0de5cb8:	2000      	movs	r0, #0
c0de5cba:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de5cbe:	f000 b8d1 	b.w	c0de5e64 <displayReviewPage>
c0de5cc2:	bf00      	nop
c0de5cc4:	00001240 	.word	0x00001240

c0de5cc8 <nbgl_useCaseAdvancedReview>:
c0de5cc8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5ccc:	b088      	sub	sp, #32
c0de5cce:	4617      	mov	r7, r2
c0de5cd0:	460a      	mov	r2, r1
c0de5cd2:	e9dd a113 	ldrd	sl, r1, [sp, #76]	@ 0x4c
c0de5cd6:	e9dd 5410 	ldrd	r5, r4, [sp, #64]	@ 0x40
c0de5cda:	4606      	mov	r6, r0
c0de5cdc:	f1ba 0f00 	cmp.w	sl, #0
c0de5ce0:	d013      	beq.n	c0de5d0a <nbgl_useCaseAdvancedReview+0x42>
c0de5ce2:	f8da 0000 	ldr.w	r0, [sl]
c0de5ce6:	9107      	str	r1, [sp, #28]
c0de5ce8:	e9cd 5405 	strd	r5, r4, [sp, #20]
c0de5cec:	2808      	cmp	r0, #8
c0de5cee:	d018      	beq.n	c0de5d22 <nbgl_useCaseAdvancedReview+0x5a>
c0de5cf0:	b9e0      	cbnz	r0, c0de5d2c <nbgl_useCaseAdvancedReview+0x64>
c0de5cf2:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de5cf6:	b928      	cbnz	r0, c0de5d04 <nbgl_useCaseAdvancedReview+0x3c>
c0de5cf8:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de5cfc:	b910      	cbnz	r0, c0de5d04 <nbgl_useCaseAdvancedReview+0x3c>
c0de5cfe:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de5d02:	b110      	cbz	r0, c0de5d0a <nbgl_useCaseAdvancedReview+0x42>
c0de5d04:	4698      	mov	r8, r3
c0de5d06:	4615      	mov	r5, r2
c0de5d08:	e014      	b.n	c0de5d34 <nbgl_useCaseAdvancedReview+0x6c>
c0de5d0a:	e9cd 3500 	strd	r3, r5, [sp]
c0de5d0e:	e9cd 4102 	strd	r4, r1, [sp, #8]
c0de5d12:	2002      	movs	r0, #2
c0de5d14:	4631      	mov	r1, r6
c0de5d16:	463b      	mov	r3, r7
c0de5d18:	f7ff ffae 	bl	c0de5c78 <useCaseReview>
c0de5d1c:	b008      	add	sp, #32
c0de5d1e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5d22:	4698      	mov	r8, r3
c0de5d24:	4615      	mov	r5, r2
c0de5d26:	f046 0680 	orr.w	r6, r6, #128	@ 0x80
c0de5d2a:	e003      	b.n	c0de5d34 <nbgl_useCaseAdvancedReview+0x6c>
c0de5d2c:	4698      	mov	r8, r3
c0de5d2e:	4615      	mov	r5, r2
c0de5d30:	f046 0640 	orr.w	r6, r6, #64	@ 0x40
c0de5d34:	f8df b06c 	ldr.w	fp, [pc, #108]	@ c0de5da4 <nbgl_useCaseAdvancedReview+0xdc>
c0de5d38:	212c      	movs	r1, #44	@ 0x2c
c0de5d3a:	eb09 040b 	add.w	r4, r9, fp
c0de5d3e:	4620      	mov	r0, r4
c0de5d40:	f002 fde6 	bl	c0de8910 <__aeabi_memclr>
c0de5d44:	2002      	movs	r0, #2
c0de5d46:	462a      	mov	r2, r5
c0de5d48:	60a5      	str	r5, [r4, #8]
c0de5d4a:	9d06      	ldr	r5, [sp, #24]
c0de5d4c:	463b      	mov	r3, r7
c0de5d4e:	60e7      	str	r7, [r4, #12]
c0de5d50:	9f05      	ldr	r7, [sp, #20]
c0de5d52:	4641      	mov	r1, r8
c0de5d54:	f8c4 8010 	str.w	r8, [r4, #16]
c0de5d58:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de5d5c:	6066      	str	r6, [r4, #4]
c0de5d5e:	f809 000b 	strb.w	r0, [r9, fp]
c0de5d62:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de5d66:	6167      	str	r7, [r4, #20]
c0de5d68:	e9c4 5a06 	strd	r5, sl, [r4, #24]
c0de5d6c:	f8c4 8020 	str.w	r8, [r4, #32]
c0de5d70:	b120      	cbz	r0, c0de5d7c <nbgl_useCaseAdvancedReview+0xb4>
c0de5d72:	b008      	add	sp, #32
c0de5d74:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5d78:	f000 b816 	b.w	c0de5da8 <displayPrelude>
c0de5d7c:	f89a 0000 	ldrb.w	r0, [sl]
c0de5d80:	f010 0f16 	tst.w	r0, #22
c0de5d84:	d102      	bne.n	c0de5d8c <nbgl_useCaseAdvancedReview+0xc4>
c0de5d86:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de5d8a:	b120      	cbz	r0, c0de5d96 <nbgl_useCaseAdvancedReview+0xce>
c0de5d8c:	b008      	add	sp, #32
c0de5d8e:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5d92:	f000 b815 	b.w	c0de5dc0 <displayInitialWarning>
c0de5d96:	e9cd 1700 	strd	r1, r7, [sp]
c0de5d9a:	2002      	movs	r0, #2
c0de5d9c:	4631      	mov	r1, r6
c0de5d9e:	e9cd 5802 	strd	r5, r8, [sp, #8]
c0de5da2:	e7b9      	b.n	c0de5d18 <nbgl_useCaseAdvancedReview+0x50>
c0de5da4:	00001240 	.word	0x00001240

c0de5da8 <displayPrelude>:
c0de5da8:	4804      	ldr	r0, [pc, #16]	@ (c0de5dbc <displayPrelude+0x14>)
c0de5daa:	2101      	movs	r1, #1
c0de5dac:	4448      	add	r0, r9
c0de5dae:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de5db2:	f44f 7140 	mov.w	r1, #768	@ 0x300
c0de5db6:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de5db8:	f001 b818 	b.w	c0de6dec <displayWarningStep>
c0de5dbc:	00001240 	.word	0x00001240

c0de5dc0 <displayInitialWarning>:
c0de5dc0:	4804      	ldr	r0, [pc, #16]	@ (c0de5dd4 <displayInitialWarning+0x14>)
c0de5dc2:	2100      	movs	r1, #0
c0de5dc4:	4448      	add	r0, r9
c0de5dc6:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de5dca:	f44f 7100 	mov.w	r1, #512	@ 0x200
c0de5dce:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de5dd0:	f001 b80c 	b.w	c0de6dec <displayWarningStep>
c0de5dd4:	00001240 	.word	0x00001240

c0de5dd8 <nbgl_useCaseReviewBlindSigning>:
c0de5dd8:	b5b0      	push	{r4, r5, r7, lr}
c0de5dda:	b086      	sub	sp, #24
c0de5ddc:	4d06      	ldr	r5, [pc, #24]	@ (c0de5df8 <nbgl_useCaseReviewBlindSigning+0x20>)
c0de5dde:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de5de0:	447d      	add	r5, pc
c0de5de2:	e9cd 5403 	strd	r5, r4, [sp, #12]
c0de5de6:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de5de8:	9401      	str	r4, [sp, #4]
c0de5dea:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de5dec:	9400      	str	r4, [sp, #0]
c0de5dee:	f7ff ff6b 	bl	c0de5cc8 <nbgl_useCaseAdvancedReview>
c0de5df2:	b006      	add	sp, #24
c0de5df4:	bdb0      	pop	{r4, r5, r7, pc}
c0de5df6:	bf00      	nop
c0de5df8:	00003790 	.word	0x00003790

c0de5dfc <nbgl_useCaseAddressReview>:
c0de5dfc:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de5e00:	f8df 805c 	ldr.w	r8, [pc, #92]	@ c0de5e60 <nbgl_useCaseAddressReview+0x64>
c0de5e04:	460c      	mov	r4, r1
c0de5e06:	4607      	mov	r7, r0
c0de5e08:	2140      	movs	r1, #64	@ 0x40
c0de5e0a:	469a      	mov	sl, r3
c0de5e0c:	4616      	mov	r6, r2
c0de5e0e:	eb09 0508 	add.w	r5, r9, r8
c0de5e12:	f105 002c 	add.w	r0, r5, #44	@ 0x2c
c0de5e16:	f002 fd7b 	bl	c0de8910 <__aeabi_memclr>
c0de5e1a:	2004      	movs	r0, #4
c0de5e1c:	656f      	str	r7, [r5, #84]	@ 0x54
c0de5e1e:	f885 002c 	strb.w	r0, [r5, #44]	@ 0x2c
c0de5e22:	9808      	ldr	r0, [sp, #32]
c0de5e24:	e9c5 6a11 	strd	r6, sl, [r5, #68]	@ 0x44
c0de5e28:	64e8      	str	r0, [r5, #76]	@ 0x4c
c0de5e2a:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de5e2c:	63e9      	str	r1, [r5, #60]	@ 0x3c
c0de5e2e:	2105      	movs	r1, #5
c0de5e30:	2800      	cmp	r0, #0
c0de5e32:	bf08      	it	eq
c0de5e34:	2104      	moveq	r1, #4
c0de5e36:	f885 1034 	strb.w	r1, [r5, #52]	@ 0x34
c0de5e3a:	b15c      	cbz	r4, c0de5e54 <nbgl_useCaseAddressReview+0x58>
c0de5e3c:	4620      	mov	r0, r4
c0de5e3e:	eb09 0508 	add.w	r5, r9, r8
c0de5e42:	f002 fb75 	bl	c0de8530 <pic>
c0de5e46:	6428      	str	r0, [r5, #64]	@ 0x40
c0de5e48:	f895 0034 	ldrb.w	r0, [r5, #52]	@ 0x34
c0de5e4c:	7a21      	ldrb	r1, [r4, #8]
c0de5e4e:	4408      	add	r0, r1
c0de5e50:	f885 0034 	strb.w	r0, [r5, #52]	@ 0x34
c0de5e54:	2000      	movs	r0, #0
c0de5e56:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de5e5a:	f000 b803 	b.w	c0de5e64 <displayReviewPage>
c0de5e5e:	bf00      	nop
c0de5e60:	00001240 	.word	0x00001240

c0de5e64 <displayReviewPage>:
c0de5e64:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5e66:	b08b      	sub	sp, #44	@ 0x2c
c0de5e68:	4e5d      	ldr	r6, [pc, #372]	@ (c0de5fe0 <displayReviewPage+0x17c>)
c0de5e6a:	4604      	mov	r4, r0
c0de5e6c:	2000      	movs	r0, #0
c0de5e6e:	2201      	movs	r2, #1
c0de5e70:	2702      	movs	r7, #2
c0de5e72:	e9cd 0009 	strd	r0, r0, [sp, #36]	@ 0x24
c0de5e76:	e9cd 0007 	strd	r0, r0, [sp, #28]
c0de5e7a:	eb09 0306 	add.w	r3, r9, r6
c0de5e7e:	6398      	str	r0, [r3, #56]	@ 0x38
c0de5e80:	6cd8      	ldr	r0, [r3, #76]	@ 0x4c
c0de5e82:	2800      	cmp	r0, #0
c0de5e84:	bf08      	it	eq
c0de5e86:	22ff      	moveq	r2, #255	@ 0xff
c0de5e88:	bf08      	it	eq
c0de5e8a:	2701      	moveq	r7, #1
c0de5e8c:	f993 1035 	ldrsb.w	r1, [r3, #53]	@ 0x35
c0de5e90:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
c0de5e94:	1e9d      	subs	r5, r3, #2
c0de5e96:	b2ed      	uxtb	r5, r5
c0de5e98:	42a9      	cmp	r1, r5
c0de5e9a:	da06      	bge.n	c0de5eaa <displayReviewPage+0x46>
c0de5e9c:	42b9      	cmp	r1, r7
c0de5e9e:	da0b      	bge.n	c0de5eb8 <displayReviewPage+0x54>
c0de5ea0:	2900      	cmp	r1, #0
c0de5ea2:	d041      	beq.n	c0de5f28 <displayReviewPage+0xc4>
c0de5ea4:	428a      	cmp	r2, r1
c0de5ea6:	d044      	beq.n	c0de5f32 <displayReviewPage+0xce>
c0de5ea8:	e044      	b.n	c0de5f34 <displayReviewPage+0xd0>
c0de5eaa:	d110      	bne.n	c0de5ece <displayReviewPage+0x6a>
c0de5eac:	a908      	add	r1, sp, #32
c0de5eae:	aa0a      	add	r2, sp, #40	@ 0x28
c0de5eb0:	2001      	movs	r0, #1
c0de5eb2:	f001 f867 	bl	c0de6f84 <getLastPageInfo>
c0de5eb6:	e03d      	b.n	c0de5f34 <displayReviewPage+0xd0>
c0de5eb8:	eb09 0006 	add.w	r0, r9, r6
c0de5ebc:	6d45      	ldr	r5, [r0, #84]	@ 0x54
c0de5ebe:	b18d      	cbz	r5, c0de5ee4 <displayReviewPage+0x80>
c0de5ec0:	42b9      	cmp	r1, r7
c0de5ec2:	d10f      	bne.n	c0de5ee4 <displayReviewPage+0x80>
c0de5ec4:	9509      	str	r5, [sp, #36]	@ 0x24
c0de5ec6:	4847      	ldr	r0, [pc, #284]	@ (c0de5fe4 <displayReviewPage+0x180>)
c0de5ec8:	4478      	add	r0, pc
c0de5eca:	900a      	str	r0, [sp, #40]	@ 0x28
c0de5ecc:	e033      	b.n	c0de5f36 <displayReviewPage+0xd2>
c0de5ece:	1e58      	subs	r0, r3, #1
c0de5ed0:	b2c0      	uxtb	r0, r0
c0de5ed2:	4281      	cmp	r1, r0
c0de5ed4:	d12e      	bne.n	c0de5f34 <displayReviewPage+0xd0>
c0de5ed6:	a908      	add	r1, sp, #32
c0de5ed8:	aa0a      	add	r2, sp, #40	@ 0x28
c0de5eda:	2000      	movs	r0, #0
c0de5edc:	2500      	movs	r5, #0
c0de5ede:	f001 f851 	bl	c0de6f84 <getLastPageInfo>
c0de5ee2:	e028      	b.n	c0de5f36 <displayReviewPage+0xd2>
c0de5ee4:	eb09 0006 	add.w	r0, r9, r6
c0de5ee8:	f890 2030 	ldrb.w	r2, [r0, #48]	@ 0x30
c0de5eec:	06d2      	lsls	r2, r2, #27
c0de5eee:	d535      	bpl.n	c0de5f5c <displayReviewPage+0xf8>
c0de5ef0:	f890 005d 	ldrb.w	r0, [r0, #93]	@ 0x5d
c0de5ef4:	bb90      	cbnz	r0, c0de5f5c <displayReviewPage+0xf8>
c0de5ef6:	42b9      	cmp	r1, r7
c0de5ef8:	dc05      	bgt.n	c0de5f06 <displayReviewPage+0xa2>
c0de5efa:	eb09 0006 	add.w	r0, r9, r6
c0de5efe:	f890 005e 	ldrb.w	r0, [r0, #94]	@ 0x5e
c0de5f02:	2808      	cmp	r0, #8
c0de5f04:	d12a      	bne.n	c0de5f5c <displayReviewPage+0xf8>
c0de5f06:	2000      	movs	r0, #0
c0de5f08:	9006      	str	r0, [sp, #24]
c0de5f0a:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de5f0e:	eb09 0006 	add.w	r0, r9, r6
c0de5f12:	f890 205c 	ldrb.w	r2, [r0, #92]	@ 0x5c
c0de5f16:	f004 0008 	and.w	r0, r4, #8
c0de5f1a:	2a01      	cmp	r2, #1
c0de5f1c:	d001      	beq.n	c0de5f22 <displayReviewPage+0xbe>
c0de5f1e:	2901      	cmp	r1, #1
c0de5f20:	db43      	blt.n	c0de5faa <displayReviewPage+0x146>
c0de5f22:	f040 0003 	orr.w	r0, r0, #3
c0de5f26:	e042      	b.n	c0de5fae <displayReviewPage+0x14a>
c0de5f28:	eb09 0006 	add.w	r0, r9, r6
c0de5f2c:	e9d0 1011 	ldrd	r1, r0, [r0, #68]	@ 0x44
c0de5f30:	9108      	str	r1, [sp, #32]
c0de5f32:	900a      	str	r0, [sp, #40]	@ 0x28
c0de5f34:	2500      	movs	r5, #0
c0de5f36:	2000      	movs	r0, #0
c0de5f38:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
c0de5f3a:	9908      	ldr	r1, [sp, #32]
c0de5f3c:	4e2e      	ldr	r6, [pc, #184]	@ (c0de5ff8 <displayReviewPage+0x194>)
c0de5f3e:	b2c0      	uxtb	r0, r0
c0de5f40:	2300      	movs	r3, #0
c0de5f42:	9002      	str	r0, [sp, #8]
c0de5f44:	4620      	mov	r0, r4
c0de5f46:	447e      	add	r6, pc
c0de5f48:	e9cd 6300 	strd	r6, r3, [sp]
c0de5f4c:	462b      	mov	r3, r5
c0de5f4e:	f000 f875 	bl	c0de603c <drawStep>
c0de5f52:	b00b      	add	sp, #44	@ 0x2c
c0de5f54:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de5f58:	f001 bf5b 	b.w	c0de7e12 <nbgl_refresh>
c0de5f5c:	2200      	movs	r2, #0
c0de5f5e:	eb09 0006 	add.w	r0, r9, r6
c0de5f62:	1bcf      	subs	r7, r1, r7
c0de5f64:	f10d 0c0c 	add.w	ip, sp, #12
c0de5f68:	f880 205d 	strb.w	r2, [r0, #93]	@ 0x5d
c0de5f6c:	f88d 200c 	strb.w	r2, [sp, #12]
c0de5f70:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de5f72:	ab08      	add	r3, sp, #32
c0de5f74:	aa07      	add	r2, sp, #28
c0de5f76:	2d00      	cmp	r5, #0
c0de5f78:	e88d 100c 	stmia.w	sp, {r2, r3, ip}
c0de5f7c:	bf18      	it	ne
c0de5f7e:	3f01      	subne	r7, #1
c0de5f80:	aa0a      	add	r2, sp, #40	@ 0x28
c0de5f82:	b2f9      	uxtb	r1, r7
c0de5f84:	ab09      	add	r3, sp, #36	@ 0x24
c0de5f86:	f000 fcd9 	bl	c0de693c <getPairData>
c0de5f8a:	9807      	ldr	r0, [sp, #28]
c0de5f8c:	b140      	cbz	r0, c0de5fa0 <displayReviewPage+0x13c>
c0de5f8e:	eb09 0006 	add.w	r0, r9, r6
c0de5f92:	f880 705f 	strb.w	r7, [r0, #95]	@ 0x5f
c0de5f96:	4917      	ldr	r1, [pc, #92]	@ (c0de5ff4 <displayReviewPage+0x190>)
c0de5f98:	4479      	add	r1, pc
c0de5f9a:	6381      	str	r1, [r0, #56]	@ 0x38
c0de5f9c:	2001      	movs	r0, #1
c0de5f9e:	e002      	b.n	c0de5fa6 <displayReviewPage+0x142>
c0de5fa0:	f89d 000c 	ldrb.w	r0, [sp, #12]
c0de5fa4:	0040      	lsls	r0, r0, #1
c0de5fa6:	9d09      	ldr	r5, [sp, #36]	@ 0x24
c0de5fa8:	e7c6      	b.n	c0de5f38 <displayReviewPage+0xd4>
c0de5faa:	f040 0001 	orr.w	r0, r0, #1
c0de5fae:	490e      	ldr	r1, [pc, #56]	@ (c0de5fe8 <displayReviewPage+0x184>)
c0de5fb0:	2200      	movs	r2, #0
c0de5fb2:	4479      	add	r1, pc
c0de5fb4:	9103      	str	r1, [sp, #12]
c0de5fb6:	490d      	ldr	r1, [pc, #52]	@ (c0de5fec <displayReviewPage+0x188>)
c0de5fb8:	4479      	add	r1, pc
c0de5fba:	9105      	str	r1, [sp, #20]
c0de5fbc:	2100      	movs	r1, #0
c0de5fbe:	9100      	str	r1, [sp, #0]
c0de5fc0:	490b      	ldr	r1, [pc, #44]	@ (c0de5ff0 <displayReviewPage+0x18c>)
c0de5fc2:	ab03      	add	r3, sp, #12
c0de5fc4:	4479      	add	r1, pc
c0de5fc6:	f7ff fbb5 	bl	c0de5734 <nbgl_stepDrawCenteredInfo>
c0de5fca:	eb09 0406 	add.w	r4, r9, r6
c0de5fce:	f001 ff20 	bl	c0de7e12 <nbgl_refresh>
c0de5fd2:	2001      	movs	r0, #1
c0de5fd4:	f884 7036 	strb.w	r7, [r4, #54]	@ 0x36
c0de5fd8:	f884 005d 	strb.w	r0, [r4, #93]	@ 0x5d
c0de5fdc:	b00b      	add	sp, #44	@ 0x2c
c0de5fde:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5fe0:	00001240 	.word	0x00001240
c0de5fe4:	00002f67 	.word	0x00002f67
c0de5fe8:	00002c4c 	.word	0x00002c4c
c0de5fec:	00002a7e 	.word	0x00002a7e
c0de5ff0:	00001145 	.word	0x00001145
c0de5ff4:	00001229 	.word	0x00001229
c0de5ff8:	000012ef 	.word	0x000012ef

c0de5ffc <nbgl_useCaseStatus>:
c0de5ffc:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de5ffe:	4605      	mov	r5, r0
c0de6000:	480c      	ldr	r0, [pc, #48]	@ (c0de6034 <nbgl_useCaseStatus+0x38>)
c0de6002:	2140      	movs	r1, #64	@ 0x40
c0de6004:	4614      	mov	r4, r2
c0de6006:	f001 fa8c 	bl	c0de7522 <OUTLINED_FUNCTION_2>
c0de600a:	2009      	movs	r0, #9
c0de600c:	63b4      	str	r4, [r6, #56]	@ 0x38
c0de600e:	462a      	mov	r2, r5
c0de6010:	2300      	movs	r3, #0
c0de6012:	f886 002c 	strb.w	r0, [r6, #44]	@ 0x2c
c0de6016:	2001      	movs	r0, #1
c0de6018:	f886 0034 	strb.w	r0, [r6, #52]	@ 0x34
c0de601c:	2000      	movs	r0, #0
c0de601e:	4906      	ldr	r1, [pc, #24]	@ (c0de6038 <nbgl_useCaseStatus+0x3c>)
c0de6020:	9002      	str	r0, [sp, #8]
c0de6022:	4479      	add	r1, pc
c0de6024:	e9cd 1000 	strd	r1, r0, [sp]
c0de6028:	2040      	movs	r0, #64	@ 0x40
c0de602a:	2100      	movs	r1, #0
c0de602c:	f000 f806 	bl	c0de603c <drawStep>
c0de6030:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de6032:	bf00      	nop
c0de6034:	00001240 	.word	0x00001240
c0de6038:	0000019f 	.word	0x0000019f

c0de603c <drawStep>:
c0de603c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6040:	b09a      	sub	sp, #104	@ 0x68
c0de6042:	4688      	mov	r8, r1
c0de6044:	4604      	mov	r4, r0
c0de6046:	a80c      	add	r0, sp, #48	@ 0x30
c0de6048:	2138      	movs	r1, #56	@ 0x38
c0de604a:	461d      	mov	r5, r3
c0de604c:	4616      	mov	r6, r2
c0de604e:	f002 fc5f 	bl	c0de8910 <__aeabi_memclr>
c0de6052:	2700      	movs	r7, #0
c0de6054:	e9cd 770a 	strd	r7, r7, [sp, #40]	@ 0x28
c0de6058:	4856      	ldr	r0, [pc, #344]	@ (c0de61b4 <drawStep+0x178>)
c0de605a:	4478      	add	r0, pc
c0de605c:	f002 fa68 	bl	c0de8530 <pic>
c0de6060:	f8df b14c 	ldr.w	fp, [pc, #332]	@ c0de61b0 <drawStep+0x174>
c0de6064:	f640 31b8 	movw	r1, #3000	@ 0xbb8
c0de6068:	9709      	str	r7, [sp, #36]	@ 0x24
c0de606a:	e9cd 0107 	strd	r0, r1, [sp, #28]
c0de606e:	eb09 000b 	add.w	r0, r9, fp
c0de6072:	f890 0034 	ldrb.w	r0, [r0, #52]	@ 0x34
c0de6076:	2802      	cmp	r0, #2
c0de6078:	d30b      	bcc.n	c0de6092 <drawStep+0x56>
c0de607a:	eb09 010b 	add.w	r1, r9, fp
c0de607e:	f991 1035 	ldrsb.w	r1, [r1, #53]	@ 0x35
c0de6082:	b129      	cbz	r1, c0de6090 <drawStep+0x54>
c0de6084:	3801      	subs	r0, #1
c0de6086:	2703      	movs	r7, #3
c0de6088:	4288      	cmp	r0, r1
c0de608a:	bf08      	it	eq
c0de608c:	2702      	moveq	r7, #2
c0de608e:	e000      	b.n	c0de6092 <drawStep+0x56>
c0de6090:	2701      	movs	r7, #1
c0de6092:	eb09 000b 	add.w	r0, r9, fp
c0de6096:	ea47 0204 	orr.w	r2, r7, r4
c0de609a:	f890 105c 	ldrb.w	r1, [r0, #92]	@ 0x5c
c0de609e:	4614      	mov	r4, r2
c0de60a0:	2901      	cmp	r1, #1
c0de60a2:	bf88      	it	hi
c0de60a4:	f044 0402 	orrhi.w	r4, r4, #2
c0de60a8:	6d81      	ldr	r1, [r0, #88]	@ 0x58
c0de60aa:	2900      	cmp	r1, #0
c0de60ac:	bf08      	it	eq
c0de60ae:	4614      	moveq	r4, r2
c0de60b0:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de60b4:	2806      	cmp	r0, #6
c0de60b6:	f040 0108 	orr.w	r1, r0, #8
c0de60ba:	bf18      	it	ne
c0de60bc:	4614      	movne	r4, r2
c0de60be:	2909      	cmp	r1, #9
c0de60c0:	bf0c      	ite	eq
c0de60c2:	f10d 0a1c 	addeq.w	sl, sp, #28
c0de60c6:	f04f 0a00 	movne.w	sl, #0
c0de60ca:	280a      	cmp	r0, #10
c0de60cc:	d105      	bne.n	c0de60da <drawStep+0x9e>
c0de60ce:	eb09 000b 	add.w	r0, r9, fp
c0de60d2:	6d00      	ldr	r0, [r0, #80]	@ 0x50
c0de60d4:	b108      	cbz	r0, c0de60da <drawStep+0x9e>
c0de60d6:	f7ff fc53 	bl	c0de5980 <nbgl_stepRelease>
c0de60da:	9f23      	ldr	r7, [sp, #140]	@ 0x8c
c0de60dc:	b1b6      	cbz	r6, c0de610c <drawStep+0xd0>
c0de60de:	9922      	ldr	r1, [sp, #136]	@ 0x88
c0de60e0:	f1b8 0f00 	cmp.w	r8, #0
c0de60e4:	d12c      	bne.n	c0de6140 <drawStep+0x104>
c0de60e6:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de60e8:	2802      	cmp	r0, #2
c0de60ea:	d029      	beq.n	c0de6140 <drawStep+0x104>
c0de60ec:	2201      	movs	r2, #1
c0de60ee:	4633      	mov	r3, r6
c0de60f0:	2801      	cmp	r0, #1
c0de60f2:	bf08      	it	eq
c0de60f4:	2202      	moveq	r2, #2
c0de60f6:	4620      	mov	r0, r4
c0de60f8:	2d00      	cmp	r5, #0
c0de60fa:	bf08      	it	eq
c0de60fc:	462a      	moveq	r2, r5
c0de60fe:	e9cd 5200 	strd	r5, r2, [sp]
c0de6102:	9702      	str	r7, [sp, #8]
c0de6104:	4652      	mov	r2, sl
c0de6106:	f7ff f9cf 	bl	c0de54a8 <nbgl_stepDrawText>
c0de610a:	e043      	b.n	c0de6194 <drawStep+0x158>
c0de610c:	eb09 000b 	add.w	r0, r9, fp
c0de6110:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de6114:	a903      	add	r1, sp, #12
c0de6116:	aa0c      	add	r2, sp, #48	@ 0x30
c0de6118:	f000 fbcc 	bl	c0de68b4 <getContentElemAtIdx>
c0de611c:	b330      	cbz	r0, c0de616c <drawStep+0x130>
c0de611e:	7801      	ldrb	r1, [r0, #0]
c0de6120:	2400      	movs	r4, #0
c0de6122:	290a      	cmp	r1, #10
c0de6124:	d024      	beq.n	c0de6170 <drawStep+0x134>
c0de6126:	2909      	cmp	r1, #9
c0de6128:	d135      	bne.n	c0de6196 <drawStep+0x15a>
c0de612a:	f001 fa0e 	bl	c0de754a <OUTLINED_FUNCTION_5>
c0de612e:	4922      	ldr	r1, [pc, #136]	@ (c0de61b8 <drawStep+0x17c>)
c0de6130:	4479      	add	r1, pc
c0de6132:	910a      	str	r1, [sp, #40]	@ 0x28
c0de6134:	7941      	ldrb	r1, [r0, #5]
c0de6136:	7980      	ldrb	r0, [r0, #6]
c0de6138:	f88d 002d 	strb.w	r0, [sp, #45]	@ 0x2d
c0de613c:	1c48      	adds	r0, r1, #1
c0de613e:	e020      	b.n	c0de6182 <drawStep+0x146>
c0de6140:	2000      	movs	r0, #0
c0de6142:	9603      	str	r6, [sp, #12]
c0de6144:	f8cd 8014 	str.w	r8, [sp, #20]
c0de6148:	9504      	str	r5, [sp, #16]
c0de614a:	4652      	mov	r2, sl
c0de614c:	f88d 0018 	strb.w	r0, [sp, #24]
c0de6150:	eb09 000b 	add.w	r0, r9, fp
c0de6154:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de6156:	4328      	orrs	r0, r5
c0de6158:	bf18      	it	ne
c0de615a:	2001      	movne	r0, #1
c0de615c:	f88d 0019 	strb.w	r0, [sp, #25]
c0de6160:	9700      	str	r7, [sp, #0]
c0de6162:	ab03      	add	r3, sp, #12
c0de6164:	4620      	mov	r0, r4
c0de6166:	f7ff fae5 	bl	c0de5734 <nbgl_stepDrawCenteredInfo>
c0de616a:	e013      	b.n	c0de6194 <drawStep+0x158>
c0de616c:	2400      	movs	r4, #0
c0de616e:	e012      	b.n	c0de6196 <drawStep+0x15a>
c0de6170:	f001 f9eb 	bl	c0de754a <OUTLINED_FUNCTION_5>
c0de6174:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de6178:	4910      	ldr	r1, [pc, #64]	@ (c0de61bc <drawStep+0x180>)
c0de617a:	7a00      	ldrb	r0, [r0, #8]
c0de617c:	4479      	add	r1, pc
c0de617e:	3001      	adds	r0, #1
c0de6180:	910a      	str	r1, [sp, #40]	@ 0x28
c0de6182:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de6186:	4651      	mov	r1, sl
c0de6188:	463b      	mov	r3, r7
c0de618a:	480d      	ldr	r0, [pc, #52]	@ (c0de61c0 <drawStep+0x184>)
c0de618c:	aa0a      	add	r2, sp, #40	@ 0x28
c0de618e:	4478      	add	r0, pc
c0de6190:	f7ff fb60 	bl	c0de5854 <nbgl_stepDrawMenuList>
c0de6194:	4604      	mov	r4, r0
c0de6196:	eb09 000b 	add.w	r0, r9, fp
c0de619a:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de619e:	280a      	cmp	r0, #10
c0de61a0:	bf04      	itt	eq
c0de61a2:	eb09 000b 	addeq.w	r0, r9, fp
c0de61a6:	6504      	streq	r4, [r0, #80]	@ 0x50
c0de61a8:	b01a      	add	sp, #104	@ 0x68
c0de61aa:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de61ae:	bf00      	nop
c0de61b0:	00001240 	.word	0x00001240
c0de61b4:	00001367 	.word	0x00001367
c0de61b8:	000012a1 	.word	0x000012a1
c0de61bc:	00001255 	.word	0x00001255
c0de61c0:	000012a7 	.word	0x000012a7

c0de61c4 <statusButtonCallback>:
c0de61c4:	f041 0004 	orr.w	r0, r1, #4
c0de61c8:	2804      	cmp	r0, #4
c0de61ca:	d001      	beq.n	c0de61d0 <statusButtonCallback+0xc>
c0de61cc:	2901      	cmp	r1, #1
c0de61ce:	d104      	bne.n	c0de61da <statusButtonCallback+0x16>
c0de61d0:	4802      	ldr	r0, [pc, #8]	@ (c0de61dc <statusButtonCallback+0x18>)
c0de61d2:	4448      	add	r0, r9
c0de61d4:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de61d6:	b100      	cbz	r0, c0de61da <statusButtonCallback+0x16>
c0de61d8:	4700      	bx	r0
c0de61da:	4770      	bx	lr
c0de61dc:	00001240 	.word	0x00001240

c0de61e0 <nbgl_useCaseReviewStatus>:
c0de61e0:	460a      	mov	r2, r1
c0de61e2:	b198      	cbz	r0, c0de620c <nbgl_useCaseReviewStatus+0x2c>
c0de61e4:	2801      	cmp	r0, #1
c0de61e6:	d016      	beq.n	c0de6216 <nbgl_useCaseReviewStatus+0x36>
c0de61e8:	2802      	cmp	r0, #2
c0de61ea:	d019      	beq.n	c0de6220 <nbgl_useCaseReviewStatus+0x40>
c0de61ec:	2803      	cmp	r0, #3
c0de61ee:	d01c      	beq.n	c0de622a <nbgl_useCaseReviewStatus+0x4a>
c0de61f0:	2804      	cmp	r0, #4
c0de61f2:	d01f      	beq.n	c0de6234 <nbgl_useCaseReviewStatus+0x54>
c0de61f4:	2807      	cmp	r0, #7
c0de61f6:	d022      	beq.n	c0de623e <nbgl_useCaseReviewStatus+0x5e>
c0de61f8:	2806      	cmp	r0, #6
c0de61fa:	d025      	beq.n	c0de6248 <nbgl_useCaseReviewStatus+0x68>
c0de61fc:	2805      	cmp	r0, #5
c0de61fe:	bf18      	it	ne
c0de6200:	4770      	bxne	lr
c0de6202:	4815      	ldr	r0, [pc, #84]	@ (c0de6258 <nbgl_useCaseReviewStatus+0x78>)
c0de6204:	2100      	movs	r1, #0
c0de6206:	4478      	add	r0, pc
c0de6208:	f7ff bef8 	b.w	c0de5ffc <nbgl_useCaseStatus>
c0de620c:	4813      	ldr	r0, [pc, #76]	@ (c0de625c <nbgl_useCaseReviewStatus+0x7c>)
c0de620e:	2101      	movs	r1, #1
c0de6210:	4478      	add	r0, pc
c0de6212:	f7ff bef3 	b.w	c0de5ffc <nbgl_useCaseStatus>
c0de6216:	4812      	ldr	r0, [pc, #72]	@ (c0de6260 <nbgl_useCaseReviewStatus+0x80>)
c0de6218:	2100      	movs	r1, #0
c0de621a:	4478      	add	r0, pc
c0de621c:	f7ff beee 	b.w	c0de5ffc <nbgl_useCaseStatus>
c0de6220:	4810      	ldr	r0, [pc, #64]	@ (c0de6264 <nbgl_useCaseReviewStatus+0x84>)
c0de6222:	2101      	movs	r1, #1
c0de6224:	4478      	add	r0, pc
c0de6226:	f7ff bee9 	b.w	c0de5ffc <nbgl_useCaseStatus>
c0de622a:	480f      	ldr	r0, [pc, #60]	@ (c0de6268 <nbgl_useCaseReviewStatus+0x88>)
c0de622c:	2100      	movs	r1, #0
c0de622e:	4478      	add	r0, pc
c0de6230:	f7ff bee4 	b.w	c0de5ffc <nbgl_useCaseStatus>
c0de6234:	4807      	ldr	r0, [pc, #28]	@ (c0de6254 <nbgl_useCaseReviewStatus+0x74>)
c0de6236:	2101      	movs	r1, #1
c0de6238:	4478      	add	r0, pc
c0de623a:	f7ff bedf 	b.w	c0de5ffc <nbgl_useCaseStatus>
c0de623e:	480c      	ldr	r0, [pc, #48]	@ (c0de6270 <nbgl_useCaseReviewStatus+0x90>)
c0de6240:	2100      	movs	r1, #0
c0de6242:	4478      	add	r0, pc
c0de6244:	f7ff beda 	b.w	c0de5ffc <nbgl_useCaseStatus>
c0de6248:	4808      	ldr	r0, [pc, #32]	@ (c0de626c <nbgl_useCaseReviewStatus+0x8c>)
c0de624a:	2101      	movs	r1, #1
c0de624c:	4478      	add	r0, pc
c0de624e:	f7ff bed5 	b.w	c0de5ffc <nbgl_useCaseStatus>
c0de6252:	bf00      	nop
c0de6254:	00002991 	.word	0x00002991
c0de6258:	000029e5 	.word	0x000029e5
c0de625c:	00002a74 	.word	0x00002a74
c0de6260:	00002c40 	.word	0x00002c40
c0de6264:	00002ad3 	.word	0x00002ad3
c0de6268:	00002bd6 	.word	0x00002bd6
c0de626c:	000029f8 	.word	0x000029f8
c0de6270:	00002b39 	.word	0x00002b39

c0de6274 <displayStreamingReviewPage>:
c0de6274:	b570      	push	{r4, r5, r6, lr}
c0de6276:	b08c      	sub	sp, #48	@ 0x30
c0de6278:	4d5a      	ldr	r5, [pc, #360]	@ (c0de63e4 <displayStreamingReviewPage+0x170>)
c0de627a:	2100      	movs	r1, #0
c0de627c:	4604      	mov	r4, r0
c0de627e:	e9cd 110a 	strd	r1, r1, [sp, #40]	@ 0x28
c0de6282:	e9cd 1108 	strd	r1, r1, [sp, #32]
c0de6286:	eb09 0005 	add.w	r0, r9, r5
c0de628a:	6381      	str	r1, [r0, #56]	@ 0x38
c0de628c:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de6290:	2806      	cmp	r0, #6
c0de6292:	d015      	beq.n	c0de62c0 <displayStreamingReviewPage+0x4c>
c0de6294:	2805      	cmp	r0, #5
c0de6296:	d13d      	bne.n	c0de6314 <displayStreamingReviewPage+0xa0>
c0de6298:	eb09 0205 	add.w	r2, r9, r5
c0de629c:	2101      	movs	r1, #1
c0de629e:	2302      	movs	r3, #2
c0de62a0:	6cd0      	ldr	r0, [r2, #76]	@ 0x4c
c0de62a2:	2800      	cmp	r0, #0
c0de62a4:	bf08      	it	eq
c0de62a6:	21ff      	moveq	r1, #255	@ 0xff
c0de62a8:	bf08      	it	eq
c0de62aa:	2301      	moveq	r3, #1
c0de62ac:	f992 2035 	ldrsb.w	r2, [r2, #53]	@ 0x35
c0de62b0:	4293      	cmp	r3, r2
c0de62b2:	dd3b      	ble.n	c0de632c <displayStreamingReviewPage+0xb8>
c0de62b4:	b2d3      	uxtb	r3, r2
c0de62b6:	2b00      	cmp	r3, #0
c0de62b8:	d063      	beq.n	c0de6382 <displayStreamingReviewPage+0x10e>
c0de62ba:	4291      	cmp	r1, r2
c0de62bc:	d066      	beq.n	c0de638c <displayStreamingReviewPage+0x118>
c0de62be:	e066      	b.n	c0de638e <displayStreamingReviewPage+0x11a>
c0de62c0:	eb09 0005 	add.w	r0, r9, r5
c0de62c4:	f990 1035 	ldrsb.w	r1, [r0, #53]	@ 0x35
c0de62c8:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de62ca:	7a02      	ldrb	r2, [r0, #8]
c0de62cc:	4291      	cmp	r1, r2
c0de62ce:	da2d      	bge.n	c0de632c <displayStreamingReviewPage+0xb8>
c0de62d0:	eb09 0205 	add.w	r2, r9, r5
c0de62d4:	6d93      	ldr	r3, [r2, #88]	@ 0x58
c0de62d6:	b3cb      	cbz	r3, c0de634c <displayStreamingReviewPage+0xd8>
c0de62d8:	f892 205d 	ldrb.w	r2, [r2, #93]	@ 0x5d
c0de62dc:	bbb2      	cbnz	r2, c0de634c <displayStreamingReviewPage+0xd8>
c0de62de:	eb09 0205 	add.w	r2, r9, r5
c0de62e2:	f892 205c 	ldrb.w	r2, [r2, #92]	@ 0x5c
c0de62e6:	2a01      	cmp	r2, #1
c0de62e8:	d807      	bhi.n	c0de62fa <displayStreamingReviewPage+0x86>
c0de62ea:	2900      	cmp	r1, #0
c0de62ec:	dc05      	bgt.n	c0de62fa <displayStreamingReviewPage+0x86>
c0de62ee:	eb09 0305 	add.w	r3, r9, r5
c0de62f2:	f893 305e 	ldrb.w	r3, [r3, #94]	@ 0x5e
c0de62f6:	2b08      	cmp	r3, #8
c0de62f8:	d128      	bne.n	c0de634c <displayStreamingReviewPage+0xd8>
c0de62fa:	2000      	movs	r0, #0
c0de62fc:	9007      	str	r0, [sp, #28]
c0de62fe:	e9cd 0005 	strd	r0, r0, [sp, #20]
c0de6302:	f004 0008 	and.w	r0, r4, #8
c0de6306:	2a01      	cmp	r2, #1
c0de6308:	d001      	beq.n	c0de630e <displayStreamingReviewPage+0x9a>
c0de630a:	2901      	cmp	r1, #1
c0de630c:	db50      	blt.n	c0de63b0 <displayStreamingReviewPage+0x13c>
c0de630e:	f040 0003 	orr.w	r0, r0, #3
c0de6312:	e04f      	b.n	c0de63b4 <displayStreamingReviewPage+0x140>
c0de6314:	eb09 0005 	add.w	r0, r9, r5
c0de6318:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de631c:	b180      	cbz	r0, c0de6340 <displayStreamingReviewPage+0xcc>
c0de631e:	a909      	add	r1, sp, #36	@ 0x24
c0de6320:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de6322:	2000      	movs	r0, #0
c0de6324:	2500      	movs	r5, #0
c0de6326:	f000 fe2d 	bl	c0de6f84 <getLastPageInfo>
c0de632a:	e031      	b.n	c0de6390 <displayStreamingReviewPage+0x11c>
c0de632c:	eb09 0005 	add.w	r0, r9, r5
c0de6330:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de6332:	2900      	cmp	r1, #0
c0de6334:	d053      	beq.n	c0de63de <displayStreamingReviewPage+0x16a>
c0de6336:	2001      	movs	r0, #1
c0de6338:	b00c      	add	sp, #48	@ 0x30
c0de633a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de633e:	4708      	bx	r1
c0de6340:	a909      	add	r1, sp, #36	@ 0x24
c0de6342:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de6344:	2001      	movs	r0, #1
c0de6346:	f000 fe1d 	bl	c0de6f84 <getLastPageInfo>
c0de634a:	e020      	b.n	c0de638e <displayStreamingReviewPage+0x11a>
c0de634c:	2300      	movs	r3, #0
c0de634e:	eb09 0205 	add.w	r2, r9, r5
c0de6352:	b2c9      	uxtb	r1, r1
c0de6354:	f882 305d 	strb.w	r3, [r2, #93]	@ 0x5d
c0de6358:	f88d 300f 	strb.w	r3, [sp, #15]
c0de635c:	ab09      	add	r3, sp, #36	@ 0x24
c0de635e:	ad08      	add	r5, sp, #32
c0de6360:	f10d 020f 	add.w	r2, sp, #15
c0de6364:	e9cd 5300 	strd	r5, r3, [sp]
c0de6368:	9202      	str	r2, [sp, #8]
c0de636a:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de636c:	ab0a      	add	r3, sp, #40	@ 0x28
c0de636e:	f000 fae5 	bl	c0de693c <getPairData>
c0de6372:	9808      	ldr	r0, [sp, #32]
c0de6374:	2800      	cmp	r0, #0
c0de6376:	bf12      	itee	ne
c0de6378:	2501      	movne	r5, #1
c0de637a:	f89d 000f 	ldrbeq.w	r0, [sp, #15]
c0de637e:	0045      	lsleq	r5, r0, #1
c0de6380:	e006      	b.n	c0de6390 <displayStreamingReviewPage+0x11c>
c0de6382:	eb09 0005 	add.w	r0, r9, r5
c0de6386:	e9d0 1011 	ldrd	r1, r0, [r0, #68]	@ 0x44
c0de638a:	9109      	str	r1, [sp, #36]	@ 0x24
c0de638c:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de638e:	2500      	movs	r5, #0
c0de6390:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de6392:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	@ 0x24
c0de6396:	4e17      	ldr	r6, [pc, #92]	@ (c0de63f4 <displayStreamingReviewPage+0x180>)
c0de6398:	b2e8      	uxtb	r0, r5
c0de639a:	2500      	movs	r5, #0
c0de639c:	9002      	str	r0, [sp, #8]
c0de639e:	4620      	mov	r0, r4
c0de63a0:	447e      	add	r6, pc
c0de63a2:	f001 f8d5 	bl	c0de7550 <OUTLINED_FUNCTION_6>
c0de63a6:	b00c      	add	sp, #48	@ 0x30
c0de63a8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de63ac:	f001 bd31 	b.w	c0de7e12 <nbgl_refresh>
c0de63b0:	f040 0001 	orr.w	r0, r0, #1
c0de63b4:	490c      	ldr	r1, [pc, #48]	@ (c0de63e8 <displayStreamingReviewPage+0x174>)
c0de63b6:	2200      	movs	r2, #0
c0de63b8:	4479      	add	r1, pc
c0de63ba:	9104      	str	r1, [sp, #16]
c0de63bc:	490b      	ldr	r1, [pc, #44]	@ (c0de63ec <displayStreamingReviewPage+0x178>)
c0de63be:	4479      	add	r1, pc
c0de63c0:	9106      	str	r1, [sp, #24]
c0de63c2:	2100      	movs	r1, #0
c0de63c4:	9100      	str	r1, [sp, #0]
c0de63c6:	490a      	ldr	r1, [pc, #40]	@ (c0de63f0 <displayStreamingReviewPage+0x17c>)
c0de63c8:	ab04      	add	r3, sp, #16
c0de63ca:	4479      	add	r1, pc
c0de63cc:	f7ff f9b2 	bl	c0de5734 <nbgl_stepDrawCenteredInfo>
c0de63d0:	eb09 0405 	add.w	r4, r9, r5
c0de63d4:	f001 fd1d 	bl	c0de7e12 <nbgl_refresh>
c0de63d8:	2001      	movs	r0, #1
c0de63da:	f884 005d 	strb.w	r0, [r4, #93]	@ 0x5d
c0de63de:	b00c      	add	sp, #48	@ 0x30
c0de63e0:	bd70      	pop	{r4, r5, r6, pc}
c0de63e2:	bf00      	nop
c0de63e4:	00001240 	.word	0x00001240
c0de63e8:	00002846 	.word	0x00002846
c0de63ec:	00002678 	.word	0x00002678
c0de63f0:	00000d3f 	.word	0x00000d3f
c0de63f4:	00001101 	.word	0x00001101

c0de63f8 <nbgl_useCaseChoice>:
c0de63f8:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de63fa:	9c07      	ldr	r4, [sp, #28]
c0de63fc:	9402      	str	r4, [sp, #8]
c0de63fe:	2400      	movs	r4, #0
c0de6400:	9401      	str	r4, [sp, #4]
c0de6402:	9c06      	ldr	r4, [sp, #24]
c0de6404:	9400      	str	r4, [sp, #0]
c0de6406:	f000 f801 	bl	c0de640c <nbgl_useCaseChoiceWithDetails>
c0de640a:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de640c <nbgl_useCaseChoiceWithDetails>:
c0de640c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6410:	f8df 806c 	ldr.w	r8, [pc, #108]	@ c0de6480 <nbgl_useCaseChoiceWithDetails+0x74>
c0de6414:	460c      	mov	r4, r1
c0de6416:	4605      	mov	r5, r0
c0de6418:	2140      	movs	r1, #64	@ 0x40
c0de641a:	469a      	mov	sl, r3
c0de641c:	4617      	mov	r7, r2
c0de641e:	eb09 0608 	add.w	r6, r9, r8
c0de6422:	f106 002c 	add.w	r0, r6, #44	@ 0x2c
c0de6426:	f002 fa73 	bl	c0de8910 <__aeabi_memclr>
c0de642a:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de642c:	2203      	movs	r2, #3
c0de642e:	6570      	str	r0, [r6, #84]	@ 0x54
c0de6430:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de6432:	6531      	str	r1, [r6, #80]	@ 0x50
c0de6434:	9908      	ldr	r1, [sp, #32]
c0de6436:	e9c6 7a11 	strd	r7, sl, [r6, #68]	@ 0x44
c0de643a:	e9c6 540f 	strd	r5, r4, [r6, #60]	@ 0x3c
c0de643e:	64f1      	str	r1, [r6, #76]	@ 0x4c
c0de6440:	2108      	movs	r1, #8
c0de6442:	f886 102c 	strb.w	r1, [r6, #44]	@ 0x2c
c0de6446:	2f00      	cmp	r7, #0
c0de6448:	f04f 0103 	mov.w	r1, #3
c0de644c:	bf18      	it	ne
c0de644e:	2104      	movne	r1, #4
c0de6450:	2d00      	cmp	r5, #0
c0de6452:	bf08      	it	eq
c0de6454:	4611      	moveq	r1, r2
c0de6456:	2c00      	cmp	r4, #0
c0de6458:	bf08      	it	eq
c0de645a:	2102      	moveq	r1, #2
c0de645c:	f886 1034 	strb.w	r1, [r6, #52]	@ 0x34
c0de6460:	b140      	cbz	r0, c0de6474 <nbgl_useCaseChoiceWithDetails+0x68>
c0de6462:	7902      	ldrb	r2, [r0, #4]
c0de6464:	2a03      	cmp	r2, #3
c0de6466:	d105      	bne.n	c0de6474 <nbgl_useCaseChoiceWithDetails+0x68>
c0de6468:	7a00      	ldrb	r0, [r0, #8]
c0de646a:	eb09 0208 	add.w	r2, r9, r8
c0de646e:	4408      	add	r0, r1
c0de6470:	f882 0034 	strb.w	r0, [r2, #52]	@ 0x34
c0de6474:	2000      	movs	r0, #0
c0de6476:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de647a:	f000 b803 	b.w	c0de6484 <displayChoicePage>
c0de647e:	bf00      	nop
c0de6480:	00001240 	.word	0x00001240

c0de6484 <displayChoicePage>:
c0de6484:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de6486:	4b33      	ldr	r3, [pc, #204]	@ (c0de6554 <displayChoicePage+0xd0>)
c0de6488:	2400      	movs	r4, #0
c0de648a:	eb09 0103 	add.w	r1, r9, r3
c0de648e:	6c0a      	ldr	r2, [r1, #64]	@ 0x40
c0de6490:	b16a      	cbz	r2, c0de64ae <displayChoicePage+0x2a>
c0de6492:	eb09 0103 	add.w	r1, r9, r3
c0de6496:	6bc9      	ldr	r1, [r1, #60]	@ 0x3c
c0de6498:	b131      	cbz	r1, c0de64a8 <displayChoicePage+0x24>
c0de649a:	eb09 0103 	add.w	r1, r9, r3
c0de649e:	6c49      	ldr	r1, [r1, #68]	@ 0x44
c0de64a0:	b111      	cbz	r1, c0de64a8 <displayChoicePage+0x24>
c0de64a2:	2102      	movs	r1, #2
c0de64a4:	2501      	movs	r5, #1
c0de64a6:	e004      	b.n	c0de64b2 <displayChoicePage+0x2e>
c0de64a8:	2101      	movs	r1, #1
c0de64aa:	2500      	movs	r5, #0
c0de64ac:	e001      	b.n	c0de64b2 <displayChoicePage+0x2e>
c0de64ae:	2500      	movs	r5, #0
c0de64b0:	2100      	movs	r1, #0
c0de64b2:	eb09 0603 	add.w	r6, r9, r3
c0de64b6:	63b4      	str	r4, [r6, #56]	@ 0x38
c0de64b8:	f896 6035 	ldrb.w	r6, [r6, #53]	@ 0x35
c0de64bc:	b274      	sxtb	r4, r6
c0de64be:	42a1      	cmp	r1, r4
c0de64c0:	dd08      	ble.n	c0de64d4 <displayChoicePage+0x50>
c0de64c2:	b1ee      	cbz	r6, c0de6500 <displayChoicePage+0x7c>
c0de64c4:	1e71      	subs	r1, r6, #1
c0de64c6:	fab1 f181 	clz	r1, r1
c0de64ca:	0949      	lsrs	r1, r1, #5
c0de64cc:	4029      	ands	r1, r5
c0de64ce:	2901      	cmp	r1, #1
c0de64d0:	d01c      	beq.n	c0de650c <displayChoicePage+0x88>
c0de64d2:	e030      	b.n	c0de6536 <displayChoicePage+0xb2>
c0de64d4:	d108      	bne.n	c0de64e8 <displayChoicePage+0x64>
c0de64d6:	4a20      	ldr	r2, [pc, #128]	@ (c0de6558 <displayChoicePage+0xd4>)
c0de64d8:	eb09 0103 	add.w	r1, r9, r3
c0de64dc:	447a      	add	r2, pc
c0de64de:	638a      	str	r2, [r1, #56]	@ 0x38
c0de64e0:	6c8a      	ldr	r2, [r1, #72]	@ 0x48
c0de64e2:	491e      	ldr	r1, [pc, #120]	@ (c0de655c <displayChoicePage+0xd8>)
c0de64e4:	4479      	add	r1, pc
c0de64e6:	e00f      	b.n	c0de6508 <displayChoicePage+0x84>
c0de64e8:	1c4a      	adds	r2, r1, #1
c0de64ea:	42a2      	cmp	r2, r4
c0de64ec:	d112      	bne.n	c0de6514 <displayChoicePage+0x90>
c0de64ee:	4a1c      	ldr	r2, [pc, #112]	@ (c0de6560 <displayChoicePage+0xdc>)
c0de64f0:	eb09 0103 	add.w	r1, r9, r3
c0de64f4:	447a      	add	r2, pc
c0de64f6:	638a      	str	r2, [r1, #56]	@ 0x38
c0de64f8:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de64fa:	491a      	ldr	r1, [pc, #104]	@ (c0de6564 <displayChoicePage+0xe0>)
c0de64fc:	4479      	add	r1, pc
c0de64fe:	e003      	b.n	c0de6508 <displayChoicePage+0x84>
c0de6500:	eb09 0103 	add.w	r1, r9, r3
c0de6504:	6bc9      	ldr	r1, [r1, #60]	@ 0x3c
c0de6506:	b109      	cbz	r1, c0de650c <displayChoicePage+0x88>
c0de6508:	2300      	movs	r3, #0
c0de650a:	e017      	b.n	c0de653c <displayChoicePage+0xb8>
c0de650c:	eb09 0103 	add.w	r1, r9, r3
c0de6510:	6c4b      	ldr	r3, [r1, #68]	@ 0x44
c0de6512:	e012      	b.n	c0de653a <displayChoicePage+0xb6>
c0de6514:	eb09 0203 	add.w	r2, r9, r3
c0de6518:	6d52      	ldr	r2, [r2, #84]	@ 0x54
c0de651a:	b162      	cbz	r2, c0de6536 <displayChoicePage+0xb2>
c0de651c:	7913      	ldrb	r3, [r2, #4]
c0de651e:	2b03      	cmp	r3, #3
c0de6520:	d109      	bne.n	c0de6536 <displayChoicePage+0xb2>
c0de6522:	1a61      	subs	r1, r4, r1
c0de6524:	f06f 0307 	mvn.w	r3, #7
c0de6528:	e9d2 4203 	ldrd	r4, r2, [r2, #12]
c0de652c:	eb03 0181 	add.w	r1, r3, r1, lsl #2
c0de6530:	5853      	ldr	r3, [r2, r1]
c0de6532:	5862      	ldr	r2, [r4, r1]
c0de6534:	e001      	b.n	c0de653a <displayChoicePage+0xb6>
c0de6536:	2200      	movs	r2, #0
c0de6538:	2300      	movs	r3, #0
c0de653a:	2100      	movs	r1, #0
c0de653c:	4d0a      	ldr	r5, [pc, #40]	@ (c0de6568 <displayChoicePage+0xe4>)
c0de653e:	2400      	movs	r4, #0
c0de6540:	9402      	str	r4, [sp, #8]
c0de6542:	447d      	add	r5, pc
c0de6544:	e9cd 5400 	strd	r5, r4, [sp]
c0de6548:	f7ff fd78 	bl	c0de603c <drawStep>
c0de654c:	e8bd 407f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, lr}
c0de6550:	f001 bc5f 	b.w	c0de7e12 <nbgl_refresh>
c0de6554:	00001240 	.word	0x00001240
c0de6558:	00000fe9 	.word	0x00000fe9
c0de655c:	00002663 	.word	0x00002663
c0de6560:	00000fe5 	.word	0x00000fe5
c0de6564:	000025f2 	.word	0x000025f2
c0de6568:	00000fab 	.word	0x00000fab

c0de656c <getContentAtIdx>:
c0de656c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de656e:	b087      	sub	sp, #28
c0de6570:	460d      	mov	r5, r1
c0de6572:	4606      	mov	r6, r0
c0de6574:	a801      	add	r0, sp, #4
c0de6576:	2118      	movs	r1, #24
c0de6578:	4614      	mov	r4, r2
c0de657a:	f002 f9c9 	bl	c0de8910 <__aeabi_memclr>
c0de657e:	2d00      	cmp	r5, #0
c0de6580:	d428      	bmi.n	c0de65d4 <getContentAtIdx+0x68>
c0de6582:	7a30      	ldrb	r0, [r6, #8]
c0de6584:	4285      	cmp	r5, r0
c0de6586:	da25      	bge.n	c0de65d4 <getContentAtIdx+0x68>
c0de6588:	7830      	ldrb	r0, [r6, #0]
c0de658a:	b338      	cbz	r0, c0de65dc <getContentAtIdx+0x70>
c0de658c:	b314      	cbz	r4, c0de65d4 <getContentAtIdx+0x68>
c0de658e:	4620      	mov	r0, r4
c0de6590:	2138      	movs	r1, #56	@ 0x38
c0de6592:	f002 f9bd 	bl	c0de8910 <__aeabi_memclr>
c0de6596:	4821      	ldr	r0, [pc, #132]	@ (c0de661c <getContentAtIdx+0xb0>)
c0de6598:	4448      	add	r0, r9
c0de659a:	6d42      	ldr	r2, [r0, #84]	@ 0x54
c0de659c:	b342      	cbz	r2, c0de65f0 <getContentAtIdx+0x84>
c0de659e:	b2e8      	uxtb	r0, r5
c0de65a0:	ad01      	add	r5, sp, #4
c0de65a2:	4629      	mov	r1, r5
c0de65a4:	4790      	blx	r2
c0de65a6:	b1a8      	cbz	r0, c0de65d4 <getContentAtIdx+0x68>
c0de65a8:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0de65ac:	280a      	cmp	r0, #10
c0de65ae:	7020      	strb	r0, [r4, #0]
c0de65b0:	d023      	beq.n	c0de65fa <getContentAtIdx+0x8e>
c0de65b2:	2803      	cmp	r0, #3
c0de65b4:	d008      	beq.n	c0de65c8 <getContentAtIdx+0x5c>
c0de65b6:	2804      	cmp	r0, #4
c0de65b8:	d025      	beq.n	c0de6606 <getContentAtIdx+0x9a>
c0de65ba:	2807      	cmp	r0, #7
c0de65bc:	d029      	beq.n	c0de6612 <getContentAtIdx+0xa6>
c0de65be:	2808      	cmp	r0, #8
c0de65c0:	d002      	beq.n	c0de65c8 <getContentAtIdx+0x5c>
c0de65c2:	2809      	cmp	r0, #9
c0de65c4:	d019      	beq.n	c0de65fa <getContentAtIdx+0x8e>
c0de65c6:	b928      	cbnz	r0, c0de65d4 <getContentAtIdx+0x68>
c0de65c8:	1d28      	adds	r0, r5, #4
c0de65ca:	1d21      	adds	r1, r4, #4
c0de65cc:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de65d0:	c16c      	stmia	r1!, {r2, r3, r5, r6}
c0de65d2:	e000      	b.n	c0de65d6 <getContentAtIdx+0x6a>
c0de65d4:	2400      	movs	r4, #0
c0de65d6:	4620      	mov	r0, r4
c0de65d8:	b007      	add	sp, #28
c0de65da:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de65dc:	6871      	ldr	r1, [r6, #4]
c0de65de:	ebc5 00c5 	rsb	r0, r5, r5, lsl #3
c0de65e2:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de65e6:	b007      	add	sp, #28
c0de65e8:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de65ec:	f001 bfa0 	b.w	c0de8530 <pic>
c0de65f0:	6872      	ldr	r2, [r6, #4]
c0de65f2:	b2e8      	uxtb	r0, r5
c0de65f4:	4621      	mov	r1, r4
c0de65f6:	4790      	blx	r2
c0de65f8:	e7ed      	b.n	c0de65d6 <getContentAtIdx+0x6a>
c0de65fa:	1d28      	adds	r0, r5, #4
c0de65fc:	1d21      	adds	r1, r4, #4
c0de65fe:	e890 002c 	ldmia.w	r0, {r2, r3, r5}
c0de6602:	c12c      	stmia	r1!, {r2, r3, r5}
c0de6604:	e7e7      	b.n	c0de65d6 <getContentAtIdx+0x6a>
c0de6606:	1d28      	adds	r0, r5, #4
c0de6608:	1d21      	adds	r1, r4, #4
c0de660a:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de660e:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de6610:	e7e1      	b.n	c0de65d6 <getContentAtIdx+0x6a>
c0de6612:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
c0de6616:	e9c4 0101 	strd	r0, r1, [r4, #4]
c0de661a:	e7dc      	b.n	c0de65d6 <getContentAtIdx+0x6a>
c0de661c:	00001240 	.word	0x00001240

c0de6620 <getContentNbElement>:
c0de6620:	7802      	ldrb	r2, [r0, #0]
c0de6622:	2101      	movs	r1, #1
c0de6624:	b1a2      	cbz	r2, c0de6650 <getContentNbElement+0x30>
c0de6626:	2a03      	cmp	r2, #3
c0de6628:	d012      	beq.n	c0de6650 <getContentNbElement+0x30>
c0de662a:	2a0a      	cmp	r2, #10
c0de662c:	d007      	beq.n	c0de663e <getContentNbElement+0x1e>
c0de662e:	2a07      	cmp	r2, #7
c0de6630:	d007      	beq.n	c0de6642 <getContentNbElement+0x22>
c0de6632:	2a08      	cmp	r2, #8
c0de6634:	d007      	beq.n	c0de6646 <getContentNbElement+0x26>
c0de6636:	2a09      	cmp	r2, #9
c0de6638:	d007      	beq.n	c0de664a <getContentNbElement+0x2a>
c0de663a:	2a04      	cmp	r2, #4
c0de663c:	d107      	bne.n	c0de664e <getContentNbElement+0x2e>
c0de663e:	7b01      	ldrb	r1, [r0, #12]
c0de6640:	e006      	b.n	c0de6650 <getContentNbElement+0x30>
c0de6642:	7a01      	ldrb	r1, [r0, #8]
c0de6644:	e004      	b.n	c0de6650 <getContentNbElement+0x30>
c0de6646:	7c01      	ldrb	r1, [r0, #16]
c0de6648:	e002      	b.n	c0de6650 <getContentNbElement+0x30>
c0de664a:	7a41      	ldrb	r1, [r0, #9]
c0de664c:	e000      	b.n	c0de6650 <getContentNbElement+0x30>
c0de664e:	2100      	movs	r1, #0
c0de6650:	4608      	mov	r0, r1
c0de6652:	4770      	bx	lr

c0de6654 <displayContent>:
c0de6654:	b570      	push	{r4, r5, r6, lr}
c0de6656:	b08a      	sub	sp, #40	@ 0x28
c0de6658:	460d      	mov	r5, r1
c0de665a:	4604      	mov	r4, r0
c0de665c:	a804      	add	r0, sp, #16
c0de665e:	2118      	movs	r1, #24
c0de6660:	f002 f956 	bl	c0de8910 <__aeabi_memclr>
c0de6664:	4820      	ldr	r0, [pc, #128]	@ (c0de66e8 <displayContent+0x94>)
c0de6666:	f000 ff51 	bl	c0de750c <OUTLINED_FUNCTION_1>
c0de666a:	dd14      	ble.n	c0de6696 <displayContent+0x42>
c0de666c:	a904      	add	r1, sp, #16
c0de666e:	4628      	mov	r0, r5
c0de6670:	f000 f846 	bl	c0de6700 <getContentPage>
c0de6674:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de6678:	b318      	cbz	r0, c0de66c2 <displayContent+0x6e>
c0de667a:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de667e:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de6682:	481e      	ldr	r0, [pc, #120]	@ (c0de66fc <displayContent+0xa8>)
c0de6684:	4478      	add	r0, pc
c0de6686:	2b00      	cmp	r3, #0
c0de6688:	9000      	str	r0, [sp, #0]
c0de668a:	4620      	mov	r0, r4
c0de668c:	bf18      	it	ne
c0de668e:	2301      	movne	r3, #1
c0de6690:	f000 f8d8 	bl	c0de6844 <drawSwitchStep>
c0de6694:	e023      	b.n	c0de66de <displayContent+0x8a>
c0de6696:	4448      	add	r0, r9
c0de6698:	6d81      	ldr	r1, [r0, #88]	@ 0x58
c0de669a:	6381      	str	r1, [r0, #56]	@ 0x38
c0de669c:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de669e:	4a13      	ldr	r2, [pc, #76]	@ (c0de66ec <displayContent+0x98>)
c0de66a0:	2900      	cmp	r1, #0
c0de66a2:	447a      	add	r2, pc
c0de66a4:	bf18      	it	ne
c0de66a6:	460a      	movne	r2, r1
c0de66a8:	9205      	str	r2, [sp, #20]
c0de66aa:	f890 002c 	ldrb.w	r0, [r0, #44]	@ 0x2c
c0de66ae:	4910      	ldr	r1, [pc, #64]	@ (c0de66f0 <displayContent+0x9c>)
c0de66b0:	4a10      	ldr	r2, [pc, #64]	@ (c0de66f4 <displayContent+0xa0>)
c0de66b2:	2803      	cmp	r0, #3
c0de66b4:	447a      	add	r2, pc
c0de66b6:	4479      	add	r1, pc
c0de66b8:	bf08      	it	eq
c0de66ba:	460a      	moveq	r2, r1
c0de66bc:	9207      	str	r2, [sp, #28]
c0de66be:	2000      	movs	r0, #0
c0de66c0:	e002      	b.n	c0de66c8 <displayContent+0x74>
c0de66c2:	f89d 0025 	ldrb.w	r0, [sp, #37]	@ 0x25
c0de66c6:	0040      	lsls	r0, r0, #1
c0de66c8:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de66cc:	9907      	ldr	r1, [sp, #28]
c0de66ce:	4e0a      	ldr	r6, [pc, #40]	@ (c0de66f8 <displayContent+0xa4>)
c0de66d0:	b2c0      	uxtb	r0, r0
c0de66d2:	2500      	movs	r5, #0
c0de66d4:	9002      	str	r0, [sp, #8]
c0de66d6:	4620      	mov	r0, r4
c0de66d8:	447e      	add	r6, pc
c0de66da:	f000 ff39 	bl	c0de7550 <OUTLINED_FUNCTION_6>
c0de66de:	f001 fb98 	bl	c0de7e12 <nbgl_refresh>
c0de66e2:	b00a      	add	sp, #40	@ 0x28
c0de66e4:	bd70      	pop	{r4, r5, r6, pc}
c0de66e6:	bf00      	nop
c0de66e8:	00001240 	.word	0x00001240
c0de66ec:	00002795 	.word	0x00002795
c0de66f0:	00002438 	.word	0x00002438
c0de66f4:	000023f4 	.word	0x000023f4
c0de66f8:	000001b9 	.word	0x000001b9
c0de66fc:	0000020d 	.word	0x0000020d

c0de6700 <getContentPage>:
c0de6700:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6702:	b093      	sub	sp, #76	@ 0x4c
c0de6704:	4606      	mov	r6, r0
c0de6706:	2000      	movs	r0, #0
c0de6708:	460c      	mov	r4, r1
c0de670a:	2138      	movs	r1, #56	@ 0x38
c0de670c:	f88d 004b 	strb.w	r0, [sp, #75]	@ 0x4b
c0de6710:	ad04      	add	r5, sp, #16
c0de6712:	4628      	mov	r0, r5
c0de6714:	f002 f8fc 	bl	c0de8910 <__aeabi_memclr>
c0de6718:	4f47      	ldr	r7, [pc, #284]	@ (c0de6838 <getContentPage+0x138>)
c0de671a:	f10d 014b 	add.w	r1, sp, #75	@ 0x4b
c0de671e:	462a      	mov	r2, r5
c0de6720:	eb09 0007 	add.w	r0, r9, r7
c0de6724:	f000 ff0d 	bl	c0de7542 <OUTLINED_FUNCTION_4>
c0de6728:	2800      	cmp	r0, #0
c0de672a:	d07a      	beq.n	c0de6822 <getContentPage+0x122>
c0de672c:	4605      	mov	r5, r0
c0de672e:	7800      	ldrb	r0, [r0, #0]
c0de6730:	280a      	cmp	r0, #10
c0de6732:	d011      	beq.n	c0de6758 <getContentPage+0x58>
c0de6734:	2803      	cmp	r0, #3
c0de6736:	d02c      	beq.n	c0de6792 <getContentPage+0x92>
c0de6738:	2804      	cmp	r0, #4
c0de673a:	d035      	beq.n	c0de67a8 <getContentPage+0xa8>
c0de673c:	2807      	cmp	r0, #7
c0de673e:	d045      	beq.n	c0de67cc <getContentPage+0xcc>
c0de6740:	2808      	cmp	r0, #8
c0de6742:	d060      	beq.n	c0de6806 <getContentPage+0x106>
c0de6744:	2809      	cmp	r0, #9
c0de6746:	d007      	beq.n	c0de6758 <getContentPage+0x58>
c0de6748:	2800      	cmp	r0, #0
c0de674a:	d16a      	bne.n	c0de6822 <getContentPage+0x122>
c0de674c:	6868      	ldr	r0, [r5, #4]
c0de674e:	f001 feef 	bl	c0de8530 <pic>
c0de6752:	6060      	str	r0, [r4, #4]
c0de6754:	68a8      	ldr	r0, [r5, #8]
c0de6756:	e019      	b.n	c0de678c <getContentPage+0x8c>
c0de6758:	1d28      	adds	r0, r5, #4
c0de675a:	eb09 0607 	add.w	r6, r9, r7
c0de675e:	f001 fee7 	bl	c0de8530 <pic>
c0de6762:	6800      	ldr	r0, [r0, #0]
c0de6764:	f001 fee4 	bl	c0de8530 <pic>
c0de6768:	f896 102c 	ldrb.w	r1, [r6, #44]	@ 0x2c
c0de676c:	4605      	mov	r5, r0
c0de676e:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de6770:	2910      	cmp	r1, #16
c0de6772:	d100      	bne.n	c0de6776 <getContentPage+0x76>
c0de6774:	b918      	cbnz	r0, c0de677e <getContentPage+0x7e>
c0de6776:	290f      	cmp	r1, #15
c0de6778:	d155      	bne.n	c0de6826 <getContentPage+0x126>
c0de677a:	2800      	cmp	r0, #0
c0de677c:	d053      	beq.n	c0de6826 <getContentPage+0x126>
c0de677e:	f001 fed7 	bl	c0de8530 <pic>
c0de6782:	6060      	str	r0, [r4, #4]
c0de6784:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de6788:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de678c:	f001 fed0 	bl	c0de8530 <pic>
c0de6790:	e046      	b.n	c0de6820 <getContentPage+0x120>
c0de6792:	68a8      	ldr	r0, [r5, #8]
c0de6794:	4e29      	ldr	r6, [pc, #164]	@ (c0de683c <getContentPage+0x13c>)
c0de6796:	447e      	add	r6, pc
c0de6798:	47b0      	blx	r6
c0de679a:	60e0      	str	r0, [r4, #12]
c0de679c:	6868      	ldr	r0, [r5, #4]
c0de679e:	47b0      	blx	r6
c0de67a0:	6060      	str	r0, [r4, #4]
c0de67a2:	68e8      	ldr	r0, [r5, #12]
c0de67a4:	47b0      	blx	r6
c0de67a6:	e03b      	b.n	c0de6820 <getContentPage+0x120>
c0de67a8:	f104 0015 	add.w	r0, r4, #21
c0de67ac:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de67b0:	f104 020c 	add.w	r2, r4, #12
c0de67b4:	f104 0310 	add.w	r3, r4, #16
c0de67b8:	e9cd 3200 	strd	r3, r2, [sp]
c0de67bc:	9002      	str	r0, [sp, #8]
c0de67be:	1d28      	adds	r0, r5, #4
c0de67c0:	1d22      	adds	r2, r4, #4
c0de67c2:	f104 0308 	add.w	r3, r4, #8
c0de67c6:	f000 f8b9 	bl	c0de693c <getPairData>
c0de67ca:	e02a      	b.n	c0de6822 <getContentPage+0x122>
c0de67cc:	2001      	movs	r0, #1
c0de67ce:	444f      	add	r7, r9
c0de67d0:	7020      	strb	r0, [r4, #0]
c0de67d2:	6868      	ldr	r0, [r5, #4]
c0de67d4:	f001 feac 	bl	c0de8530 <pic>
c0de67d8:	4919      	ldr	r1, [pc, #100]	@ (c0de6840 <getContentPage+0x140>)
c0de67da:	4479      	add	r1, pc
c0de67dc:	63b9      	str	r1, [r7, #56]	@ 0x38
c0de67de:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de67e2:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de67e6:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de67ea:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de67ee:	6062      	str	r2, [r4, #4]
c0de67f0:	6841      	ldr	r1, [r0, #4]
c0de67f2:	60a1      	str	r1, [r4, #8]
c0de67f4:	7a00      	ldrb	r0, [r0, #8]
c0de67f6:	1e41      	subs	r1, r0, #1
c0de67f8:	bf18      	it	ne
c0de67fa:	2101      	movne	r1, #1
c0de67fc:	2e00      	cmp	r6, #0
c0de67fe:	bf08      	it	eq
c0de6800:	4601      	moveq	r1, r0
c0de6802:	7521      	strb	r1, [r4, #20]
c0de6804:	e00d      	b.n	c0de6822 <getContentPage+0x122>
c0de6806:	6868      	ldr	r0, [r5, #4]
c0de6808:	f001 fe92 	bl	c0de8530 <pic>
c0de680c:	f89d 604b 	ldrb.w	r6, [sp, #75]	@ 0x4b
c0de6810:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de6814:	6060      	str	r0, [r4, #4]
c0de6816:	68a8      	ldr	r0, [r5, #8]
c0de6818:	f001 fe8a 	bl	c0de8530 <pic>
c0de681c:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de6820:	60a0      	str	r0, [r4, #8]
c0de6822:	b013      	add	sp, #76	@ 0x4c
c0de6824:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6826:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de682a:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de682e:	f001 fe7f 	bl	c0de8530 <pic>
c0de6832:	6060      	str	r0, [r4, #4]
c0de6834:	e7f5      	b.n	c0de6822 <getContentPage+0x122>
c0de6836:	bf00      	nop
c0de6838:	00001240 	.word	0x00001240
c0de683c:	00001d97 	.word	0x00001d97
c0de6840:	000001a7 	.word	0x000001a7

c0de6844 <drawSwitchStep>:
c0de6844:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6846:	b085      	sub	sp, #20
c0de6848:	4c11      	ldr	r4, [pc, #68]	@ (c0de6890 <drawSwitchStep+0x4c>)
c0de684a:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
c0de684e:	2600      	movs	r6, #0
c0de6850:	eb09 0504 	add.w	r5, r9, r4
c0de6854:	f895 7034 	ldrb.w	r7, [r5, #52]	@ 0x34
c0de6858:	2500      	movs	r5, #0
c0de685a:	2f02      	cmp	r7, #2
c0de685c:	d30a      	bcc.n	c0de6874 <drawSwitchStep+0x30>
c0de685e:	444c      	add	r4, r9
c0de6860:	f994 4035 	ldrsb.w	r4, [r4, #53]	@ 0x35
c0de6864:	b12c      	cbz	r4, c0de6872 <drawSwitchStep+0x2e>
c0de6866:	3f01      	subs	r7, #1
c0de6868:	2603      	movs	r6, #3
c0de686a:	42a7      	cmp	r7, r4
c0de686c:	bf08      	it	eq
c0de686e:	2602      	moveq	r6, #2
c0de6870:	e000      	b.n	c0de6874 <drawSwitchStep+0x30>
c0de6872:	2601      	movs	r6, #1
c0de6874:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de6878:	f88d 3010 	strb.w	r3, [sp, #16]
c0de687c:	9500      	str	r5, [sp, #0]
c0de687e:	4330      	orrs	r0, r6
c0de6880:	ab02      	add	r3, sp, #8
c0de6882:	4661      	mov	r1, ip
c0de6884:	2200      	movs	r2, #0
c0de6886:	f7ff f83d 	bl	c0de5904 <nbgl_stepDrawSwitch>
c0de688a:	b005      	add	sp, #20
c0de688c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de688e:	bf00      	nop
c0de6890:	00001240 	.word	0x00001240

c0de6894 <contentCallback>:
c0de6894:	b5e0      	push	{r5, r6, r7, lr}
c0de6896:	4608      	mov	r0, r1
c0de6898:	f10d 0107 	add.w	r1, sp, #7
c0de689c:	f000 f928 	bl	c0de6af0 <buttonGenericCallback>
c0de68a0:	b130      	cbz	r0, c0de68b0 <contentCallback+0x1c>
c0de68a2:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de68a6:	2100      	movs	r1, #0
c0de68a8:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de68ac:	f7ff bed2 	b.w	c0de6654 <displayContent>
c0de68b0:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de68b4 <getContentElemAtIdx>:
c0de68b4:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de68b8:	4c1e      	ldr	r4, [pc, #120]	@ (c0de6934 <getContentElemAtIdx+0x80>)
c0de68ba:	4606      	mov	r6, r0
c0de68bc:	2700      	movs	r7, #0
c0de68be:	eb09 0004 	add.w	r0, r9, r4
c0de68c2:	f890 302c 	ldrb.w	r3, [r0, #44]	@ 0x2c
c0de68c6:	2b10      	cmp	r3, #16
c0de68c8:	d830      	bhi.n	c0de692c <getContentElemAtIdx+0x78>
c0de68ca:	4693      	mov	fp, r2
c0de68cc:	2201      	movs	r2, #1
c0de68ce:	9101      	str	r1, [sp, #4]
c0de68d0:	fa02 f303 	lsl.w	r3, r2, r3
c0de68d4:	f413 4f50 	tst.w	r3, #53248	@ 0xd000
c0de68d8:	d004      	beq.n	c0de68e4 <getContentElemAtIdx+0x30>
c0de68da:	eb09 0004 	add.w	r0, r9, r4
c0de68de:	46a2      	mov	sl, r4
c0de68e0:	6c84      	ldr	r4, [r0, #72]	@ 0x48
c0de68e2:	e005      	b.n	c0de68f0 <getContentElemAtIdx+0x3c>
c0de68e4:	4a14      	ldr	r2, [pc, #80]	@ (c0de6938 <getContentElemAtIdx+0x84>)
c0de68e6:	4213      	tst	r3, r2
c0de68e8:	d020      	beq.n	c0de692c <getContentElemAtIdx+0x78>
c0de68ea:	46a2      	mov	sl, r4
c0de68ec:	f100 0440 	add.w	r4, r0, #64	@ 0x40
c0de68f0:	2700      	movs	r7, #0
c0de68f2:	2000      	movs	r0, #0
c0de68f4:	f04f 0800 	mov.w	r8, #0
c0de68f8:	4605      	mov	r5, r0
c0de68fa:	7a20      	ldrb	r0, [r4, #8]
c0de68fc:	4580      	cmp	r8, r0
c0de68fe:	d215      	bcs.n	c0de692c <getContentElemAtIdx+0x78>
c0de6900:	fa4f f188 	sxtb.w	r1, r8
c0de6904:	4620      	mov	r0, r4
c0de6906:	465a      	mov	r2, fp
c0de6908:	f7ff fe30 	bl	c0de656c <getContentAtIdx>
c0de690c:	4607      	mov	r7, r0
c0de690e:	f7ff fe87 	bl	c0de6620 <getContentNbElement>
c0de6912:	b2e9      	uxtb	r1, r5
c0de6914:	f108 0801 	add.w	r8, r8, #1
c0de6918:	4408      	add	r0, r1
c0de691a:	42b0      	cmp	r0, r6
c0de691c:	d9ec      	bls.n	c0de68f8 <getContentElemAtIdx+0x44>
c0de691e:	eb09 000a 	add.w	r0, r9, sl
c0de6922:	9901      	ldr	r1, [sp, #4]
c0de6924:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de6928:	1b40      	subs	r0, r0, r5
c0de692a:	7008      	strb	r0, [r1, #0]
c0de692c:	4638      	mov	r0, r7
c0de692e:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de6932:	bf00      	nop
c0de6934:	00001240 	.word	0x00001240
c0de6938:	00010008 	.word	0x00010008

c0de693c <getPairData>:
c0de693c:	b5b0      	push	{r4, r5, r7, lr}
c0de693e:	4615      	mov	r5, r2
c0de6940:	6802      	ldr	r2, [r0, #0]
c0de6942:	461c      	mov	r4, r3
c0de6944:	b112      	cbz	r2, c0de694c <getPairData+0x10>
c0de6946:	eb02 1001 	add.w	r0, r2, r1, lsl #4
c0de694a:	e002      	b.n	c0de6952 <getPairData+0x16>
c0de694c:	6842      	ldr	r2, [r0, #4]
c0de694e:	4608      	mov	r0, r1
c0de6950:	4790      	blx	r2
c0de6952:	f001 fded 	bl	c0de8530 <pic>
c0de6956:	6802      	ldr	r2, [r0, #0]
c0de6958:	9904      	ldr	r1, [sp, #16]
c0de695a:	602a      	str	r2, [r5, #0]
c0de695c:	6842      	ldr	r2, [r0, #4]
c0de695e:	6022      	str	r2, [r4, #0]
c0de6960:	7b02      	ldrb	r2, [r0, #12]
c0de6962:	0753      	lsls	r3, r2, #29
c0de6964:	d403      	bmi.n	c0de696e <getPairData+0x32>
c0de6966:	0792      	lsls	r2, r2, #30
c0de6968:	d404      	bmi.n	c0de6974 <getPairData+0x38>
c0de696a:	2000      	movs	r0, #0
c0de696c:	e000      	b.n	c0de6970 <getPairData+0x34>
c0de696e:	6880      	ldr	r0, [r0, #8]
c0de6970:	6008      	str	r0, [r1, #0]
c0de6972:	bdb0      	pop	{r4, r5, r7, pc}
c0de6974:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de6978:	2301      	movs	r3, #1
c0de697a:	700b      	strb	r3, [r1, #0]
c0de697c:	6880      	ldr	r0, [r0, #8]
c0de697e:	6010      	str	r0, [r2, #0]
c0de6980:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de6984 <onSwitchAction>:
c0de6984:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6986:	b08f      	sub	sp, #60	@ 0x3c
c0de6988:	ac01      	add	r4, sp, #4
c0de698a:	2138      	movs	r1, #56	@ 0x38
c0de698c:	4620      	mov	r0, r4
c0de698e:	f001 ffbf 	bl	c0de8910 <__aeabi_memclr>
c0de6992:	4e26      	ldr	r6, [pc, #152]	@ (c0de6a2c <onSwitchAction+0xa8>)
c0de6994:	f10d 0103 	add.w	r1, sp, #3
c0de6998:	4622      	mov	r2, r4
c0de699a:	eb09 0006 	add.w	r0, r9, r6
c0de699e:	f000 fdd0 	bl	c0de7542 <OUTLINED_FUNCTION_4>
c0de69a2:	2800      	cmp	r0, #0
c0de69a4:	d040      	beq.n	c0de6a28 <onSwitchAction+0xa4>
c0de69a6:	4604      	mov	r4, r0
c0de69a8:	7800      	ldrb	r0, [r0, #0]
c0de69aa:	2807      	cmp	r0, #7
c0de69ac:	d13c      	bne.n	c0de6a28 <onSwitchAction+0xa4>
c0de69ae:	6860      	ldr	r0, [r4, #4]
c0de69b0:	eb09 0706 	add.w	r7, r9, r6
c0de69b4:	f001 fdbc 	bl	c0de8530 <pic>
c0de69b8:	4605      	mov	r5, r0
c0de69ba:	f897 002c 	ldrb.w	r0, [r7, #44]	@ 0x2c
c0de69be:	f89d 7003 	ldrb.w	r7, [sp, #3]
c0de69c2:	2810      	cmp	r0, #16
c0de69c4:	d811      	bhi.n	c0de69ea <onSwitchAction+0x66>
c0de69c6:	2101      	movs	r1, #1
c0de69c8:	fa01 f000 	lsl.w	r0, r1, r0
c0de69cc:	f410 4f50 	tst.w	r0, #53248	@ 0xd000
c0de69d0:	d004      	beq.n	c0de69dc <onSwitchAction+0x58>
c0de69d2:	2000      	movs	r0, #0
c0de69d4:	2101      	movs	r1, #1
c0de69d6:	f000 f82d 	bl	c0de6a34 <displaySettingsPage>
c0de69da:	e006      	b.n	c0de69ea <onSwitchAction+0x66>
c0de69dc:	4914      	ldr	r1, [pc, #80]	@ (c0de6a30 <onSwitchAction+0xac>)
c0de69de:	4208      	tst	r0, r1
c0de69e0:	d003      	beq.n	c0de69ea <onSwitchAction+0x66>
c0de69e2:	2000      	movs	r0, #0
c0de69e4:	2101      	movs	r1, #1
c0de69e6:	f7ff fe35 	bl	c0de6654 <displayContent>
c0de69ea:	6b60      	ldr	r0, [r4, #52]	@ 0x34
c0de69ec:	b188      	cbz	r0, c0de6a12 <onSwitchAction+0x8e>
c0de69ee:	eb07 0147 	add.w	r1, r7, r7, lsl #1
c0de69f2:	eb05 0481 	add.w	r4, r5, r1, lsl #2
c0de69f6:	f001 fd9b 	bl	c0de8530 <pic>
c0de69fa:	7a21      	ldrb	r1, [r4, #8]
c0de69fc:	eb09 0206 	add.w	r2, r9, r6
c0de6a00:	4603      	mov	r3, r0
c0de6a02:	7a60      	ldrb	r0, [r4, #9]
c0de6a04:	3901      	subs	r1, #1
c0de6a06:	bf18      	it	ne
c0de6a08:	2101      	movne	r1, #1
c0de6a0a:	f992 2035 	ldrsb.w	r2, [r2, #53]	@ 0x35
c0de6a0e:	4798      	blx	r3
c0de6a10:	e00a      	b.n	c0de6a28 <onSwitchAction+0xa4>
c0de6a12:	eb09 0006 	add.w	r0, r9, r6
c0de6a16:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de6a18:	b132      	cbz	r2, c0de6a28 <onSwitchAction+0xa4>
c0de6a1a:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de6a1e:	2100      	movs	r1, #0
c0de6a20:	eb05 0080 	add.w	r0, r5, r0, lsl #2
c0de6a24:	7a40      	ldrb	r0, [r0, #9]
c0de6a26:	4790      	blx	r2
c0de6a28:	b00f      	add	sp, #60	@ 0x3c
c0de6a2a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6a2c:	00001240 	.word	0x00001240
c0de6a30:	00010008 	.word	0x00010008

c0de6a34 <displaySettingsPage>:
c0de6a34:	b5b0      	push	{r4, r5, r7, lr}
c0de6a36:	b08a      	sub	sp, #40	@ 0x28
c0de6a38:	460d      	mov	r5, r1
c0de6a3a:	4604      	mov	r4, r0
c0de6a3c:	a804      	add	r0, sp, #16
c0de6a3e:	2118      	movs	r1, #24
c0de6a40:	f001 ff66 	bl	c0de8910 <__aeabi_memclr>
c0de6a44:	481c      	ldr	r0, [pc, #112]	@ (c0de6ab8 <displaySettingsPage+0x84>)
c0de6a46:	f000 fd61 	bl	c0de750c <OUTLINED_FUNCTION_1>
c0de6a4a:	dd14      	ble.n	c0de6a76 <displaySettingsPage+0x42>
c0de6a4c:	a904      	add	r1, sp, #16
c0de6a4e:	4628      	mov	r0, r5
c0de6a50:	f7ff fe56 	bl	c0de6700 <getContentPage>
c0de6a54:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de6a58:	b1e8      	cbz	r0, c0de6a96 <displaySettingsPage+0x62>
c0de6a5a:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de6a5e:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de6a62:	481a      	ldr	r0, [pc, #104]	@ (c0de6acc <displaySettingsPage+0x98>)
c0de6a64:	4478      	add	r0, pc
c0de6a66:	2b00      	cmp	r3, #0
c0de6a68:	9000      	str	r0, [sp, #0]
c0de6a6a:	4620      	mov	r0, r4
c0de6a6c:	bf18      	it	ne
c0de6a6e:	2301      	movne	r3, #1
c0de6a70:	f7ff fee8 	bl	c0de6844 <drawSwitchStep>
c0de6a74:	e01b      	b.n	c0de6aae <displaySettingsPage+0x7a>
c0de6a76:	4448      	add	r0, r9
c0de6a78:	f890 102c 	ldrb.w	r1, [r0, #44]	@ 0x2c
c0de6a7c:	6d42      	ldr	r2, [r0, #84]	@ 0x54
c0de6a7e:	4b0f      	ldr	r3, [pc, #60]	@ (c0de6abc <displaySettingsPage+0x88>)
c0de6a80:	447b      	add	r3, pc
c0de6a82:	290f      	cmp	r1, #15
c0de6a84:	bf08      	it	eq
c0de6a86:	4613      	moveq	r3, r2
c0de6a88:	6383      	str	r3, [r0, #56]	@ 0x38
c0de6a8a:	480d      	ldr	r0, [pc, #52]	@ (c0de6ac0 <displaySettingsPage+0x8c>)
c0de6a8c:	4478      	add	r0, pc
c0de6a8e:	9005      	str	r0, [sp, #20]
c0de6a90:	480c      	ldr	r0, [pc, #48]	@ (c0de6ac4 <displaySettingsPage+0x90>)
c0de6a92:	4478      	add	r0, pc
c0de6a94:	9007      	str	r0, [sp, #28]
c0de6a96:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de6a9a:	9907      	ldr	r1, [sp, #28]
c0de6a9c:	4d0a      	ldr	r5, [pc, #40]	@ (c0de6ac8 <displaySettingsPage+0x94>)
c0de6a9e:	2000      	movs	r0, #0
c0de6aa0:	9002      	str	r0, [sp, #8]
c0de6aa2:	447d      	add	r5, pc
c0de6aa4:	e9cd 5000 	strd	r5, r0, [sp]
c0de6aa8:	4620      	mov	r0, r4
c0de6aaa:	f7ff fac7 	bl	c0de603c <drawStep>
c0de6aae:	f001 f9b0 	bl	c0de7e12 <nbgl_refresh>
c0de6ab2:	b00a      	add	sp, #40	@ 0x28
c0de6ab4:	bdb0      	pop	{r4, r5, r7, pc}
c0de6ab6:	bf00      	nop
c0de6ab8:	00001240 	.word	0x00001240
c0de6abc:	fffff149 	.word	0xfffff149
c0de6ac0:	000023ab 	.word	0x000023ab
c0de6ac4:	00002016 	.word	0x00002016
c0de6ac8:	0000002b 	.word	0x0000002b
c0de6acc:	00000069 	.word	0x00000069

c0de6ad0 <settingsCallback>:
c0de6ad0:	b5e0      	push	{r5, r6, r7, lr}
c0de6ad2:	4608      	mov	r0, r1
c0de6ad4:	f10d 0107 	add.w	r1, sp, #7
c0de6ad8:	f000 f80a 	bl	c0de6af0 <buttonGenericCallback>
c0de6adc:	b130      	cbz	r0, c0de6aec <settingsCallback+0x1c>
c0de6ade:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de6ae2:	2100      	movs	r1, #0
c0de6ae4:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6ae8:	f7ff bfa4 	b.w	c0de6a34 <displaySettingsPage>
c0de6aec:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de6af0 <buttonGenericCallback>:
c0de6af0:	b5b0      	push	{r4, r5, r7, lr}
c0de6af2:	b090      	sub	sp, #64	@ 0x40
c0de6af4:	460c      	mov	r4, r1
c0de6af6:	4605      	mov	r5, r0
c0de6af8:	a801      	add	r0, sp, #4
c0de6afa:	2138      	movs	r1, #56	@ 0x38
c0de6afc:	f001 ff08 	bl	c0de8910 <__aeabi_memclr>
c0de6b00:	2d04      	cmp	r5, #4
c0de6b02:	d00d      	beq.n	c0de6b20 <buttonGenericCallback+0x30>
c0de6b04:	2d01      	cmp	r5, #1
c0de6b06:	d012      	beq.n	c0de6b2e <buttonGenericCallback+0x3e>
c0de6b08:	2d00      	cmp	r5, #0
c0de6b0a:	d17c      	bne.n	c0de6c06 <buttonGenericCallback+0x116>
c0de6b0c:	483f      	ldr	r0, [pc, #252]	@ (c0de6c0c <buttonGenericCallback+0x11c>)
c0de6b0e:	eb09 0100 	add.w	r1, r9, r0
c0de6b12:	f991 1035 	ldrsb.w	r1, [r1, #53]	@ 0x35
c0de6b16:	2901      	cmp	r1, #1
c0de6b18:	db1d      	blt.n	c0de6b56 <buttonGenericCallback+0x66>
c0de6b1a:	3901      	subs	r1, #1
c0de6b1c:	2008      	movs	r0, #8
c0de6b1e:	e013      	b.n	c0de6b48 <buttonGenericCallback+0x58>
c0de6b20:	4c3a      	ldr	r4, [pc, #232]	@ (c0de6c0c <buttonGenericCallback+0x11c>)
c0de6b22:	eb09 0004 	add.w	r0, r9, r4
c0de6b26:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de6b28:	b338      	cbz	r0, c0de6b7a <buttonGenericCallback+0x8a>
c0de6b2a:	4780      	blx	r0
c0de6b2c:	e06b      	b.n	c0de6c06 <buttonGenericCallback+0x116>
c0de6b2e:	4837      	ldr	r0, [pc, #220]	@ (c0de6c0c <buttonGenericCallback+0x11c>)
c0de6b30:	eb09 0100 	add.w	r1, r9, r0
c0de6b34:	f991 0035 	ldrsb.w	r0, [r1, #53]	@ 0x35
c0de6b38:	f891 1034 	ldrb.w	r1, [r1, #52]	@ 0x34
c0de6b3c:	3901      	subs	r1, #1
c0de6b3e:	4281      	cmp	r1, r0
c0de6b40:	dd61      	ble.n	c0de6c06 <buttonGenericCallback+0x116>
c0de6b42:	b2c0      	uxtb	r0, r0
c0de6b44:	1c41      	adds	r1, r0, #1
c0de6b46:	2000      	movs	r0, #0
c0de6b48:	4a30      	ldr	r2, [pc, #192]	@ (c0de6c0c <buttonGenericCallback+0x11c>)
c0de6b4a:	444a      	add	r2, r9
c0de6b4c:	f882 1035 	strb.w	r1, [r2, #53]	@ 0x35
c0de6b50:	7020      	strb	r0, [r4, #0]
c0de6b52:	2001      	movs	r0, #1
c0de6b54:	e058      	b.n	c0de6c08 <buttonGenericCallback+0x118>
c0de6b56:	eb09 0100 	add.w	r1, r9, r0
c0de6b5a:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de6b5e:	2906      	cmp	r1, #6
c0de6b60:	d151      	bne.n	c0de6c06 <buttonGenericCallback+0x116>
c0de6b62:	eb09 0100 	add.w	r1, r9, r0
c0de6b66:	6d89      	ldr	r1, [r1, #88]	@ 0x58
c0de6b68:	2900      	cmp	r1, #0
c0de6b6a:	d04c      	beq.n	c0de6c06 <buttonGenericCallback+0x116>
c0de6b6c:	4448      	add	r0, r9
c0de6b6e:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de6b72:	2801      	cmp	r0, #1
c0de6b74:	d047      	beq.n	c0de6c06 <buttonGenericCallback+0x116>
c0de6b76:	2008      	movs	r0, #8
c0de6b78:	e7ea      	b.n	c0de6b50 <buttonGenericCallback+0x60>
c0de6b7a:	eb09 0004 	add.w	r0, r9, r4
c0de6b7e:	f890 102c 	ldrb.w	r1, [r0, #44]	@ 0x2c
c0de6b82:	2000      	movs	r0, #0
c0de6b84:	2910      	cmp	r1, #16
c0de6b86:	d83f      	bhi.n	c0de6c08 <buttonGenericCallback+0x118>
c0de6b88:	2201      	movs	r2, #1
c0de6b8a:	fa02 f101 	lsl.w	r1, r2, r1
c0de6b8e:	4a20      	ldr	r2, [pc, #128]	@ (c0de6c10 <buttonGenericCallback+0x120>)
c0de6b90:	4211      	tst	r1, r2
c0de6b92:	d039      	beq.n	c0de6c08 <buttonGenericCallback+0x118>
c0de6b94:	eb09 0004 	add.w	r0, r9, r4
c0de6b98:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de6b9c:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de6ba0:	aa01      	add	r2, sp, #4
c0de6ba2:	f7ff fe87 	bl	c0de68b4 <getContentElemAtIdx>
c0de6ba6:	b370      	cbz	r0, c0de6c06 <buttonGenericCallback+0x116>
c0de6ba8:	7801      	ldrb	r1, [r0, #0]
c0de6baa:	4602      	mov	r2, r0
c0de6bac:	2000      	movs	r0, #0
c0de6bae:	b359      	cbz	r1, c0de6c08 <buttonGenericCallback+0x118>
c0de6bb0:	290a      	cmp	r1, #10
c0de6bb2:	d009      	beq.n	c0de6bc8 <buttonGenericCallback+0xd8>
c0de6bb4:	2907      	cmp	r1, #7
c0de6bb6:	d00f      	beq.n	c0de6bd8 <buttonGenericCallback+0xe8>
c0de6bb8:	2909      	cmp	r1, #9
c0de6bba:	d011      	beq.n	c0de6be0 <buttonGenericCallback+0xf0>
c0de6bbc:	2903      	cmp	r1, #3
c0de6bbe:	f04f 0100 	mov.w	r1, #0
c0de6bc2:	d112      	bne.n	c0de6bea <buttonGenericCallback+0xfa>
c0de6bc4:	7c10      	ldrb	r0, [r2, #16]
c0de6bc6:	e005      	b.n	c0de6bd4 <buttonGenericCallback+0xe4>
c0de6bc8:	eb09 0004 	add.w	r0, r9, r4
c0de6bcc:	6891      	ldr	r1, [r2, #8]
c0de6bce:	f990 0035 	ldrsb.w	r0, [r0, #53]	@ 0x35
c0de6bd2:	5c08      	ldrb	r0, [r1, r0]
c0de6bd4:	2100      	movs	r1, #0
c0de6bd6:	e008      	b.n	c0de6bea <buttonGenericCallback+0xfa>
c0de6bd8:	6850      	ldr	r0, [r2, #4]
c0de6bda:	2100      	movs	r1, #0
c0de6bdc:	7a40      	ldrb	r0, [r0, #9]
c0de6bde:	e004      	b.n	c0de6bea <buttonGenericCallback+0xfa>
c0de6be0:	eb09 0004 	add.w	r0, r9, r4
c0de6be4:	f890 1035 	ldrb.w	r1, [r0, #53]	@ 0x35
c0de6be8:	7ad0      	ldrb	r0, [r2, #11]
c0de6bea:	6b53      	ldr	r3, [r2, #52]	@ 0x34
c0de6bec:	b133      	cbz	r3, c0de6bfc <buttonGenericCallback+0x10c>
c0de6bee:	eb09 0104 	add.w	r1, r9, r4
c0de6bf2:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de6bf6:	2100      	movs	r1, #0
c0de6bf8:	4798      	blx	r3
c0de6bfa:	e004      	b.n	c0de6c06 <buttonGenericCallback+0x116>
c0de6bfc:	eb09 0204 	add.w	r2, r9, r4
c0de6c00:	6d12      	ldr	r2, [r2, #80]	@ 0x50
c0de6c02:	b102      	cbz	r2, c0de6c06 <buttonGenericCallback+0x116>
c0de6c04:	4790      	blx	r2
c0de6c06:	2000      	movs	r0, #0
c0de6c08:	b010      	add	sp, #64	@ 0x40
c0de6c0a:	bdb0      	pop	{r4, r5, r7, pc}
c0de6c0c:	00001240 	.word	0x00001240
c0de6c10:	0001c008 	.word	0x0001c008

c0de6c14 <displayHomePage>:
c0de6c14:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de6c18:	4680      	mov	r8, r0
c0de6c1a:	4832      	ldr	r0, [pc, #200]	@ (c0de6ce4 <displayHomePage+0xd0>)
c0de6c1c:	2200      	movs	r2, #0
c0de6c1e:	eb09 0100 	add.w	r1, r9, r0
c0de6c22:	6c8f      	ldr	r7, [r1, #72]	@ 0x48
c0de6c24:	6d0d      	ldr	r5, [r1, #80]	@ 0x50
c0de6c26:	638a      	str	r2, [r1, #56]	@ 0x38
c0de6c28:	2202      	movs	r2, #2
c0de6c2a:	2d00      	cmp	r5, #0
c0de6c2c:	463e      	mov	r6, r7
c0de6c2e:	bf08      	it	eq
c0de6c30:	2201      	moveq	r2, #1
c0de6c32:	2f00      	cmp	r7, #0
c0de6c34:	bf18      	it	ne
c0de6c36:	2601      	movne	r6, #1
c0de6c38:	f991 3035 	ldrsb.w	r3, [r1, #53]	@ 0x35
c0de6c3c:	b183      	cbz	r3, c0de6c60 <displayHomePage+0x4c>
c0de6c3e:	2401      	movs	r4, #1
c0de6c40:	2d00      	cmp	r5, #0
c0de6c42:	bf08      	it	eq
c0de6c44:	24ff      	moveq	r4, #255	@ 0xff
c0de6c46:	429c      	cmp	r4, r3
c0de6c48:	d111      	bne.n	c0de6c6e <displayHomePage+0x5a>
c0de6c4a:	eb09 0400 	add.w	r4, r9, r0
c0de6c4e:	e9d5 0500 	ldrd	r0, r5, [r5]
c0de6c52:	f001 fc6d 	bl	c0de8530 <pic>
c0de6c56:	4602      	mov	r2, r0
c0de6c58:	6d20      	ldr	r0, [r4, #80]	@ 0x50
c0de6c5a:	6880      	ldr	r0, [r0, #8]
c0de6c5c:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de6c5e:	e004      	b.n	c0de6c6a <displayHomePage+0x56>
c0de6c60:	eb09 0100 	add.w	r1, r9, r0
c0de6c64:	e9d1 5210 	ldrd	r5, r2, [r1, #64]	@ 0x40
c0de6c68:	b312      	cbz	r2, c0de6cb0 <displayHomePage+0x9c>
c0de6c6a:	2300      	movs	r3, #0
c0de6c6c:	e02c      	b.n	c0de6cc8 <displayHomePage+0xb4>
c0de6c6e:	2f00      	cmp	r7, #0
c0de6c70:	4614      	mov	r4, r2
c0de6c72:	bf08      	it	eq
c0de6c74:	24ff      	moveq	r4, #255	@ 0xff
c0de6c76:	429c      	cmp	r4, r3
c0de6c78:	d109      	bne.n	c0de6c8e <displayHomePage+0x7a>
c0de6c7a:	491c      	ldr	r1, [pc, #112]	@ (c0de6cec <displayHomePage+0xd8>)
c0de6c7c:	4448      	add	r0, r9
c0de6c7e:	2300      	movs	r3, #0
c0de6c80:	4479      	add	r1, pc
c0de6c82:	6381      	str	r1, [r0, #56]	@ 0x38
c0de6c84:	4d1a      	ldr	r5, [pc, #104]	@ (c0de6cf0 <displayHomePage+0xdc>)
c0de6c86:	4a1b      	ldr	r2, [pc, #108]	@ (c0de6cf4 <displayHomePage+0xe0>)
c0de6c88:	447d      	add	r5, pc
c0de6c8a:	447a      	add	r2, pc
c0de6c8c:	e01c      	b.n	c0de6cc8 <displayHomePage+0xb4>
c0de6c8e:	6cc9      	ldr	r1, [r1, #76]	@ 0x4c
c0de6c90:	4432      	add	r2, r6
c0de6c92:	4448      	add	r0, r9
c0de6c94:	2900      	cmp	r1, #0
c0de6c96:	bf08      	it	eq
c0de6c98:	22ff      	moveq	r2, #255	@ 0xff
c0de6c9a:	429a      	cmp	r2, r3
c0de6c9c:	d10d      	bne.n	c0de6cba <displayHomePage+0xa6>
c0de6c9e:	4916      	ldr	r1, [pc, #88]	@ (c0de6cf8 <displayHomePage+0xe4>)
c0de6ca0:	2300      	movs	r3, #0
c0de6ca2:	4479      	add	r1, pc
c0de6ca4:	6381      	str	r1, [r0, #56]	@ 0x38
c0de6ca6:	4d15      	ldr	r5, [pc, #84]	@ (c0de6cfc <displayHomePage+0xe8>)
c0de6ca8:	4a15      	ldr	r2, [pc, #84]	@ (c0de6d00 <displayHomePage+0xec>)
c0de6caa:	447d      	add	r5, pc
c0de6cac:	447a      	add	r2, pc
c0de6cae:	e00b      	b.n	c0de6cc8 <displayHomePage+0xb4>
c0de6cb0:	4448      	add	r0, r9
c0de6cb2:	6bc2      	ldr	r2, [r0, #60]	@ 0x3c
c0de6cb4:	4b0c      	ldr	r3, [pc, #48]	@ (c0de6ce8 <displayHomePage+0xd4>)
c0de6cb6:	447b      	add	r3, pc
c0de6cb8:	e006      	b.n	c0de6cc8 <displayHomePage+0xb4>
c0de6cba:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de6cbc:	2300      	movs	r3, #0
c0de6cbe:	6381      	str	r1, [r0, #56]	@ 0x38
c0de6cc0:	4d10      	ldr	r5, [pc, #64]	@ (c0de6d04 <displayHomePage+0xf0>)
c0de6cc2:	4a11      	ldr	r2, [pc, #68]	@ (c0de6d08 <displayHomePage+0xf4>)
c0de6cc4:	447d      	add	r5, pc
c0de6cc6:	447a      	add	r2, pc
c0de6cc8:	4910      	ldr	r1, [pc, #64]	@ (c0de6d0c <displayHomePage+0xf8>)
c0de6cca:	2000      	movs	r0, #0
c0de6ccc:	9002      	str	r0, [sp, #8]
c0de6cce:	4479      	add	r1, pc
c0de6cd0:	e9cd 1000 	strd	r1, r0, [sp]
c0de6cd4:	4640      	mov	r0, r8
c0de6cd6:	4629      	mov	r1, r5
c0de6cd8:	f7ff f9b0 	bl	c0de603c <drawStep>
c0de6cdc:	e8bd 41ff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de6ce0:	f001 b897 	b.w	c0de7e12 <nbgl_refresh>
c0de6ce4:	00001240 	.word	0x00001240
c0de6ce8:	00002208 	.word	0x00002208
c0de6cec:	0000008d 	.word	0x0000008d
c0de6cf0:	00001e43 	.word	0x00001e43
c0de6cf4:	00002119 	.word	0x00002119
c0de6cf8:	00000073 	.word	0x00000073
c0de6cfc:	00001d8c 	.word	0x00001d8c
c0de6d00:	000021c3 	.word	0x000021c3
c0de6d04:	00001d95 	.word	0x00001d95
c0de6d08:	00002205 	.word	0x00002205
c0de6d0c:	0000006b 	.word	0x0000006b

c0de6d10 <startUseCaseSettings>:
c0de6d10:	2000      	movs	r0, #0
c0de6d12:	f7fe bf1f 	b.w	c0de5b54 <startUseCaseSettingsAtPage>
	...

c0de6d18 <startUseCaseInfo>:
c0de6d18:	4807      	ldr	r0, [pc, #28]	@ (c0de6d38 <startUseCaseInfo+0x20>)
c0de6d1a:	210d      	movs	r1, #13
c0de6d1c:	4448      	add	r0, r9
c0de6d1e:	f880 102c 	strb.w	r1, [r0, #44]	@ 0x2c
c0de6d22:	2100      	movs	r1, #0
c0de6d24:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de6d28:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de6d2a:	7b09      	ldrb	r1, [r1, #12]
c0de6d2c:	3101      	adds	r1, #1
c0de6d2e:	f880 1034 	strb.w	r1, [r0, #52]	@ 0x34
c0de6d32:	2000      	movs	r0, #0
c0de6d34:	f000 b810 	b.w	c0de6d58 <displayInfoPage>
c0de6d38:	00001240 	.word	0x00001240

c0de6d3c <homeCallback>:
c0de6d3c:	b5e0      	push	{r5, r6, r7, lr}
c0de6d3e:	4608      	mov	r0, r1
c0de6d40:	f10d 0107 	add.w	r1, sp, #7
c0de6d44:	f7ff fed4 	bl	c0de6af0 <buttonGenericCallback>
c0de6d48:	b128      	cbz	r0, c0de6d56 <homeCallback+0x1a>
c0de6d4a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de6d4e:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6d52:	f7ff bf5f 	b.w	c0de6c14 <displayHomePage>
c0de6d56:	bd8c      	pop	{r2, r3, r7, pc}

c0de6d58 <displayInfoPage>:
c0de6d58:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de6d5a:	4604      	mov	r4, r0
c0de6d5c:	4816      	ldr	r0, [pc, #88]	@ (c0de6db8 <displayInfoPage+0x60>)
c0de6d5e:	f000 fbd5 	bl	c0de750c <OUTLINED_FUNCTION_1>
c0de6d62:	dd11      	ble.n	c0de6d88 <displayInfoPage+0x30>
c0de6d64:	eb09 0700 	add.w	r7, r9, r0
c0de6d68:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
c0de6d6a:	6800      	ldr	r0, [r0, #0]
c0de6d6c:	4e13      	ldr	r6, [pc, #76]	@ (c0de6dbc <displayInfoPage+0x64>)
c0de6d6e:	447e      	add	r6, pc
c0de6d70:	47b0      	blx	r6
c0de6d72:	f000 fc04 	bl	c0de757e <OUTLINED_FUNCTION_10>
c0de6d76:	4605      	mov	r5, r0
c0de6d78:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
c0de6d7a:	6840      	ldr	r0, [r0, #4]
c0de6d7c:	47b0      	blx	r6
c0de6d7e:	f000 fbfe 	bl	c0de757e <OUTLINED_FUNCTION_10>
c0de6d82:	4603      	mov	r3, r0
c0de6d84:	2100      	movs	r1, #0
c0de6d86:	e008      	b.n	c0de6d9a <displayInfoPage+0x42>
c0de6d88:	490d      	ldr	r1, [pc, #52]	@ (c0de6dc0 <displayInfoPage+0x68>)
c0de6d8a:	4448      	add	r0, r9
c0de6d8c:	2300      	movs	r3, #0
c0de6d8e:	4479      	add	r1, pc
c0de6d90:	6381      	str	r1, [r0, #56]	@ 0x38
c0de6d92:	490c      	ldr	r1, [pc, #48]	@ (c0de6dc4 <displayInfoPage+0x6c>)
c0de6d94:	4d0c      	ldr	r5, [pc, #48]	@ (c0de6dc8 <displayInfoPage+0x70>)
c0de6d96:	4479      	add	r1, pc
c0de6d98:	447d      	add	r5, pc
c0de6d9a:	4e0c      	ldr	r6, [pc, #48]	@ (c0de6dcc <displayInfoPage+0x74>)
c0de6d9c:	2002      	movs	r0, #2
c0de6d9e:	2200      	movs	r2, #0
c0de6da0:	9002      	str	r0, [sp, #8]
c0de6da2:	4620      	mov	r0, r4
c0de6da4:	447e      	add	r6, pc
c0de6da6:	e9cd 6200 	strd	r6, r2, [sp]
c0de6daa:	462a      	mov	r2, r5
c0de6dac:	f7ff f946 	bl	c0de603c <drawStep>
c0de6db0:	e8bd 40fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, lr}
c0de6db4:	f001 b82d 	b.w	c0de7e12 <nbgl_refresh>
c0de6db8:	00001240 	.word	0x00001240
c0de6dbc:	000017bf 	.word	0x000017bf
c0de6dc0:	ffffee3b 	.word	0xffffee3b
c0de6dc4:	00001d12 	.word	0x00001d12
c0de6dc8:	0000209f 	.word	0x0000209f
c0de6dcc:	00000029 	.word	0x00000029

c0de6dd0 <infoCallback>:
c0de6dd0:	b5e0      	push	{r5, r6, r7, lr}
c0de6dd2:	4608      	mov	r0, r1
c0de6dd4:	f10d 0107 	add.w	r1, sp, #7
c0de6dd8:	f7ff fe8a 	bl	c0de6af0 <buttonGenericCallback>
c0de6ddc:	b128      	cbz	r0, c0de6dea <infoCallback+0x1a>
c0de6dde:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de6de2:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6de6:	f7ff bfb7 	b.w	c0de6d58 <displayInfoPage>
c0de6dea:	bd8c      	pop	{r2, r3, r7, pc}

c0de6dec <displayWarningStep>:
c0de6dec:	b510      	push	{r4, lr}
c0de6dee:	b088      	sub	sp, #32
c0de6df0:	2000      	movs	r0, #0
c0de6df2:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de6df6:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de6dfa:	4839      	ldr	r0, [pc, #228]	@ (c0de6ee0 <displayWarningStep+0xf4>)
c0de6dfc:	eb09 0200 	add.w	r2, r9, r0
c0de6e00:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de6e04:	69d2      	ldr	r2, [r2, #28]
c0de6e06:	6a94      	ldr	r4, [r2, #40]	@ 0x28
c0de6e08:	b18c      	cbz	r4, c0de6e2e <displayWarningStep+0x42>
c0de6e0a:	b981      	cbnz	r1, c0de6e2e <displayWarningStep+0x42>
c0de6e0c:	e9d4 3001 	ldrd	r3, r0, [r4, #4]
c0de6e10:	2100      	movs	r1, #0
c0de6e12:	2200      	movs	r2, #0
c0de6e14:	9102      	str	r1, [sp, #8]
c0de6e16:	e9cd 0100 	strd	r0, r1, [sp]
c0de6e1a:	2001      	movs	r0, #1
c0de6e1c:	4935      	ldr	r1, [pc, #212]	@ (c0de6ef4 <displayWarningStep+0x108>)
c0de6e1e:	4479      	add	r1, pc
c0de6e20:	f7fe fb42 	bl	c0de54a8 <nbgl_stepDrawText>
c0de6e24:	b008      	add	sp, #32
c0de6e26:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6e2a:	f000 bff2 	b.w	c0de7e12 <nbgl_refresh>
c0de6e2e:	6813      	ldr	r3, [r2, #0]
c0de6e30:	06dc      	lsls	r4, r3, #27
c0de6e32:	d411      	bmi.n	c0de6e58 <displayWarningStep+0x6c>
c0de6e34:	2b00      	cmp	r3, #0
c0de6e36:	d151      	bne.n	c0de6edc <displayWarningStep+0xf0>
c0de6e38:	69d3      	ldr	r3, [r2, #28]
c0de6e3a:	2b00      	cmp	r3, #0
c0de6e3c:	d04e      	beq.n	c0de6edc <displayWarningStep+0xf0>
c0de6e3e:	eb09 0400 	add.w	r4, r9, r0
c0de6e42:	f894 4028 	ldrb.w	r4, [r4, #40]	@ 0x28
c0de6e46:	42a1      	cmp	r1, r4
c0de6e48:	d128      	bne.n	c0de6e9c <displayWarningStep+0xb0>
c0de6e4a:	6858      	ldr	r0, [r3, #4]
c0de6e4c:	691a      	ldr	r2, [r3, #16]
c0de6e4e:	699b      	ldr	r3, [r3, #24]
c0de6e50:	9006      	str	r0, [sp, #24]
c0de6e52:	e9cd 2304 	strd	r2, r3, [sp, #16]
c0de6e56:	e00e      	b.n	c0de6e76 <displayWarningStep+0x8a>
c0de6e58:	eb09 0200 	add.w	r2, r9, r0
c0de6e5c:	f892 2028 	ldrb.w	r2, [r2, #40]	@ 0x28
c0de6e60:	4291      	cmp	r1, r2
c0de6e62:	d10d      	bne.n	c0de6e80 <displayWarningStep+0x94>
c0de6e64:	481f      	ldr	r0, [pc, #124]	@ (c0de6ee4 <displayWarningStep+0xf8>)
c0de6e66:	4478      	add	r0, pc
c0de6e68:	9005      	str	r0, [sp, #20]
c0de6e6a:	481f      	ldr	r0, [pc, #124]	@ (c0de6ee8 <displayWarningStep+0xfc>)
c0de6e6c:	4478      	add	r0, pc
c0de6e6e:	9004      	str	r0, [sp, #16]
c0de6e70:	481e      	ldr	r0, [pc, #120]	@ (c0de6eec <displayWarningStep+0x100>)
c0de6e72:	4478      	add	r0, pc
c0de6e74:	9006      	str	r0, [sp, #24]
c0de6e76:	2003      	movs	r0, #3
c0de6e78:	2900      	cmp	r1, #0
c0de6e7a:	bf08      	it	eq
c0de6e7c:	2001      	moveq	r0, #1
c0de6e7e:	e020      	b.n	c0de6ec2 <displayWarningStep+0xd6>
c0de6e80:	4448      	add	r0, r9
c0de6e82:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de6e86:	3801      	subs	r0, #1
c0de6e88:	4288      	cmp	r0, r1
c0de6e8a:	d119      	bne.n	c0de6ec0 <displayWarningStep+0xd4>
c0de6e8c:	aa04      	add	r2, sp, #16
c0de6e8e:	2000      	movs	r0, #0
c0de6e90:	f102 0108 	add.w	r1, r2, #8
c0de6e94:	f000 f876 	bl	c0de6f84 <getLastPageInfo>
c0de6e98:	200a      	movs	r0, #10
c0de6e9a:	e012      	b.n	c0de6ec2 <displayWarningStep+0xd6>
c0de6e9c:	4448      	add	r0, r9
c0de6e9e:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de6ea2:	3801      	subs	r0, #1
c0de6ea4:	4288      	cmp	r0, r1
c0de6ea6:	d10b      	bne.n	c0de6ec0 <displayWarningStep+0xd4>
c0de6ea8:	6950      	ldr	r0, [r2, #20]
c0de6eaa:	7901      	ldrb	r1, [r0, #4]
c0de6eac:	2901      	cmp	r1, #1
c0de6eae:	d115      	bne.n	c0de6edc <displayWarningStep+0xf0>
c0de6eb0:	68c1      	ldr	r1, [r0, #12]
c0de6eb2:	6982      	ldr	r2, [r0, #24]
c0de6eb4:	6a00      	ldr	r0, [r0, #32]
c0de6eb6:	e9cd 2004 	strd	r2, r0, [sp, #16]
c0de6eba:	2003      	movs	r0, #3
c0de6ebc:	9106      	str	r1, [sp, #24]
c0de6ebe:	e000      	b.n	c0de6ec2 <displayWarningStep+0xd6>
c0de6ec0:	2000      	movs	r0, #0
c0de6ec2:	2101      	movs	r1, #1
c0de6ec4:	2200      	movs	r2, #0
c0de6ec6:	f88d 101d 	strb.w	r1, [sp, #29]
c0de6eca:	2100      	movs	r1, #0
c0de6ecc:	9100      	str	r1, [sp, #0]
c0de6ece:	4908      	ldr	r1, [pc, #32]	@ (c0de6ef0 <displayWarningStep+0x104>)
c0de6ed0:	ab04      	add	r3, sp, #16
c0de6ed2:	4479      	add	r1, pc
c0de6ed4:	f7fe fc2e 	bl	c0de5734 <nbgl_stepDrawCenteredInfo>
c0de6ed8:	f000 ff9b 	bl	c0de7e12 <nbgl_refresh>
c0de6edc:	b008      	add	sp, #32
c0de6ede:	bd10      	pop	{r4, pc}
c0de6ee0:	00001240 	.word	0x00001240
c0de6ee4:	00001e31 	.word	0x00001e31
c0de6ee8:	00001f65 	.word	0x00001f65
c0de6eec:	00001cf8 	.word	0x00001cf8
c0de6ef0:	00000023 	.word	0x00000023
c0de6ef4:	000000d7 	.word	0x000000d7

c0de6ef8 <warningNavigate>:
c0de6ef8:	2904      	cmp	r1, #4
c0de6efa:	d009      	beq.n	c0de6f10 <warningNavigate+0x18>
c0de6efc:	2901      	cmp	r1, #1
c0de6efe:	d024      	beq.n	c0de6f4a <warningNavigate+0x52>
c0de6f00:	bb11      	cbnz	r1, c0de6f48 <warningNavigate+0x50>
c0de6f02:	481f      	ldr	r0, [pc, #124]	@ (c0de6f80 <warningNavigate+0x88>)
c0de6f04:	4448      	add	r0, r9
c0de6f06:	f890 0026 	ldrb.w	r0, [r0, #38]	@ 0x26
c0de6f0a:	b390      	cbz	r0, c0de6f72 <warningNavigate+0x7a>
c0de6f0c:	3801      	subs	r0, #1
c0de6f0e:	e027      	b.n	c0de6f60 <warningNavigate+0x68>
c0de6f10:	481b      	ldr	r0, [pc, #108]	@ (c0de6f80 <warningNavigate+0x88>)
c0de6f12:	eb09 0100 	add.w	r1, r9, r0
c0de6f16:	69c9      	ldr	r1, [r1, #28]
c0de6f18:	7809      	ldrb	r1, [r1, #0]
c0de6f1a:	06c9      	lsls	r1, r1, #27
c0de6f1c:	d514      	bpl.n	c0de6f48 <warningNavigate+0x50>
c0de6f1e:	eb09 0200 	add.w	r2, r9, r0
c0de6f22:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de6f26:	f892 2028 	ldrb.w	r2, [r2, #40]	@ 0x28
c0de6f2a:	4291      	cmp	r1, r2
c0de6f2c:	bf08      	it	eq
c0de6f2e:	f000 b8bd 	beq.w	c0de70ac <launchReviewAfterWarning>
c0de6f32:	eb09 0200 	add.w	r2, r9, r0
c0de6f36:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de6f3a:	3a01      	subs	r2, #1
c0de6f3c:	428a      	cmp	r2, r1
c0de6f3e:	d103      	bne.n	c0de6f48 <warningNavigate+0x50>
c0de6f40:	4448      	add	r0, r9
c0de6f42:	6a01      	ldr	r1, [r0, #32]
c0de6f44:	2000      	movs	r0, #0
c0de6f46:	4708      	bx	r1
c0de6f48:	4770      	bx	lr
c0de6f4a:	480d      	ldr	r0, [pc, #52]	@ (c0de6f80 <warningNavigate+0x88>)
c0de6f4c:	eb09 0200 	add.w	r2, r9, r0
c0de6f50:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de6f54:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de6f58:	3a01      	subs	r2, #1
c0de6f5a:	428a      	cmp	r2, r1
c0de6f5c:	dd05      	ble.n	c0de6f6a <warningNavigate+0x72>
c0de6f5e:	1c48      	adds	r0, r1, #1
c0de6f60:	4907      	ldr	r1, [pc, #28]	@ (c0de6f80 <warningNavigate+0x88>)
c0de6f62:	4449      	add	r1, r9
c0de6f64:	f881 0026 	strb.w	r0, [r1, #38]	@ 0x26
c0de6f68:	e003      	b.n	c0de6f72 <warningNavigate+0x7a>
c0de6f6a:	4448      	add	r0, r9
c0de6f6c:	69c0      	ldr	r0, [r0, #28]
c0de6f6e:	6801      	ldr	r1, [r0, #0]
c0de6f70:	b109      	cbz	r1, c0de6f76 <warningNavigate+0x7e>
c0de6f72:	f7ff bf3b 	b.w	c0de6dec <displayWarningStep>
c0de6f76:	69c0      	ldr	r0, [r0, #28]
c0de6f78:	2800      	cmp	r0, #0
c0de6f7a:	d0fa      	beq.n	c0de6f72 <warningNavigate+0x7a>
c0de6f7c:	f000 b896 	b.w	c0de70ac <launchReviewAfterWarning>
c0de6f80:	00001240 	.word	0x00001240

c0de6f84 <getLastPageInfo>:
c0de6f84:	b170      	cbz	r0, c0de6fa4 <getLastPageInfo+0x20>
c0de6f86:	4833      	ldr	r0, [pc, #204]	@ (c0de7054 <getLastPageInfo+0xd0>)
c0de6f88:	4478      	add	r0, pc
c0de6f8a:	6008      	str	r0, [r1, #0]
c0de6f8c:	4830      	ldr	r0, [pc, #192]	@ (c0de7050 <getLastPageInfo+0xcc>)
c0de6f8e:	eb09 0100 	add.w	r1, r9, r0
c0de6f92:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de6f96:	2904      	cmp	r1, #4
c0de6f98:	d113      	bne.n	c0de6fc2 <getLastPageInfo+0x3e>
c0de6f9a:	482f      	ldr	r0, [pc, #188]	@ (c0de7058 <getLastPageInfo+0xd4>)
c0de6f9c:	492f      	ldr	r1, [pc, #188]	@ (c0de705c <getLastPageInfo+0xd8>)
c0de6f9e:	4478      	add	r0, pc
c0de6fa0:	4479      	add	r1, pc
c0de6fa2:	e04f      	b.n	c0de7044 <getLastPageInfo+0xc0>
c0de6fa4:	4838      	ldr	r0, [pc, #224]	@ (c0de7088 <getLastPageInfo+0x104>)
c0de6fa6:	4478      	add	r0, pc
c0de6fa8:	6008      	str	r0, [r1, #0]
c0de6faa:	4829      	ldr	r0, [pc, #164]	@ (c0de7050 <getLastPageInfo+0xcc>)
c0de6fac:	eb09 0100 	add.w	r1, r9, r0
c0de6fb0:	f891 102c 	ldrb.w	r1, [r1, #44]	@ 0x2c
c0de6fb4:	2904      	cmp	r1, #4
c0de6fb6:	d10b      	bne.n	c0de6fd0 <getLastPageInfo+0x4c>
c0de6fb8:	4834      	ldr	r0, [pc, #208]	@ (c0de708c <getLastPageInfo+0x108>)
c0de6fba:	4935      	ldr	r1, [pc, #212]	@ (c0de7090 <getLastPageInfo+0x10c>)
c0de6fbc:	4478      	add	r0, pc
c0de6fbe:	4479      	add	r1, pc
c0de6fc0:	e040      	b.n	c0de7044 <getLastPageInfo+0xc0>
c0de6fc2:	eb09 0100 	add.w	r1, r9, r0
c0de6fc6:	6d09      	ldr	r1, [r1, #80]	@ 0x50
c0de6fc8:	b171      	cbz	r1, c0de6fe8 <getLastPageInfo+0x64>
c0de6fca:	4825      	ldr	r0, [pc, #148]	@ (c0de7060 <getLastPageInfo+0xdc>)
c0de6fcc:	4478      	add	r0, pc
c0de6fce:	e039      	b.n	c0de7044 <getLastPageInfo+0xc0>
c0de6fd0:	4448      	add	r0, r9
c0de6fd2:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de6fd4:	f010 0007 	ands.w	r0, r0, #7
c0de6fd8:	d017      	beq.n	c0de700a <getLastPageInfo+0x86>
c0de6fda:	2801      	cmp	r0, #1
c0de6fdc:	d11a      	bne.n	c0de7014 <getLastPageInfo+0x90>
c0de6fde:	482f      	ldr	r0, [pc, #188]	@ (c0de709c <getLastPageInfo+0x118>)
c0de6fe0:	492f      	ldr	r1, [pc, #188]	@ (c0de70a0 <getLastPageInfo+0x11c>)
c0de6fe2:	4478      	add	r0, pc
c0de6fe4:	4479      	add	r1, pc
c0de6fe6:	e02d      	b.n	c0de7044 <getLastPageInfo+0xc0>
c0de6fe8:	4448      	add	r0, r9
c0de6fea:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de6fec:	f000 0107 	and.w	r1, r0, #7
c0de6ff0:	2901      	cmp	r1, #1
c0de6ff2:	d014      	beq.n	c0de701e <getLastPageInfo+0x9a>
c0de6ff4:	b9e9      	cbnz	r1, c0de7032 <getLastPageInfo+0xae>
c0de6ff6:	0640      	lsls	r0, r0, #25
c0de6ff8:	481a      	ldr	r0, [pc, #104]	@ (c0de7064 <getLastPageInfo+0xe0>)
c0de6ffa:	491b      	ldr	r1, [pc, #108]	@ (c0de7068 <getLastPageInfo+0xe4>)
c0de6ffc:	4478      	add	r0, pc
c0de6ffe:	4479      	add	r1, pc
c0de7000:	bf58      	it	pl
c0de7002:	4601      	movpl	r1, r0
c0de7004:	4819      	ldr	r0, [pc, #100]	@ (c0de706c <getLastPageInfo+0xe8>)
c0de7006:	4478      	add	r0, pc
c0de7008:	e01c      	b.n	c0de7044 <getLastPageInfo+0xc0>
c0de700a:	4822      	ldr	r0, [pc, #136]	@ (c0de7094 <getLastPageInfo+0x110>)
c0de700c:	4922      	ldr	r1, [pc, #136]	@ (c0de7098 <getLastPageInfo+0x114>)
c0de700e:	4478      	add	r0, pc
c0de7010:	4479      	add	r1, pc
c0de7012:	e017      	b.n	c0de7044 <getLastPageInfo+0xc0>
c0de7014:	4823      	ldr	r0, [pc, #140]	@ (c0de70a4 <getLastPageInfo+0x120>)
c0de7016:	4924      	ldr	r1, [pc, #144]	@ (c0de70a8 <getLastPageInfo+0x124>)
c0de7018:	4478      	add	r0, pc
c0de701a:	4479      	add	r1, pc
c0de701c:	e012      	b.n	c0de7044 <getLastPageInfo+0xc0>
c0de701e:	0640      	lsls	r0, r0, #25
c0de7020:	4813      	ldr	r0, [pc, #76]	@ (c0de7070 <getLastPageInfo+0xec>)
c0de7022:	4914      	ldr	r1, [pc, #80]	@ (c0de7074 <getLastPageInfo+0xf0>)
c0de7024:	4478      	add	r0, pc
c0de7026:	4479      	add	r1, pc
c0de7028:	bf58      	it	pl
c0de702a:	4601      	movpl	r1, r0
c0de702c:	4812      	ldr	r0, [pc, #72]	@ (c0de7078 <getLastPageInfo+0xf4>)
c0de702e:	4478      	add	r0, pc
c0de7030:	e008      	b.n	c0de7044 <getLastPageInfo+0xc0>
c0de7032:	0640      	lsls	r0, r0, #25
c0de7034:	4811      	ldr	r0, [pc, #68]	@ (c0de707c <getLastPageInfo+0xf8>)
c0de7036:	4912      	ldr	r1, [pc, #72]	@ (c0de7080 <getLastPageInfo+0xfc>)
c0de7038:	4478      	add	r0, pc
c0de703a:	4479      	add	r1, pc
c0de703c:	bf58      	it	pl
c0de703e:	4601      	movpl	r1, r0
c0de7040:	4810      	ldr	r0, [pc, #64]	@ (c0de7084 <getLastPageInfo+0x100>)
c0de7042:	4478      	add	r0, pc
c0de7044:	6011      	str	r1, [r2, #0]
c0de7046:	4902      	ldr	r1, [pc, #8]	@ (c0de7050 <getLastPageInfo+0xcc>)
c0de7048:	4449      	add	r1, r9
c0de704a:	6388      	str	r0, [r1, #56]	@ 0x38
c0de704c:	4770      	bx	lr
c0de704e:	bf00      	nop
c0de7050:	00001240 	.word	0x00001240
c0de7054:	00001bbf 	.word	0x00001bbf
c0de7058:	00000143 	.word	0x00000143
c0de705c:	00001f34 	.word	0x00001f34
c0de7060:	00000115 	.word	0x00000115
c0de7064:	00001d0a 	.word	0x00001d0a
c0de7068:	00001db2 	.word	0x00001db2
c0de706c:	000000db 	.word	0x000000db
c0de7070:	00001cc6 	.word	0x00001cc6
c0de7074:	00001d0b 	.word	0x00001d0b
c0de7078:	000000b3 	.word	0x000000b3
c0de707c:	00001e40 	.word	0x00001e40
c0de7080:	00001dab 	.word	0x00001dab
c0de7084:	0000009f 	.word	0x0000009f
c0de7088:	00001b48 	.word	0x00001b48
c0de708c:	00000139 	.word	0x00000139
c0de7090:	00001db6 	.word	0x00001db6
c0de7094:	000000e7 	.word	0x000000e7
c0de7098:	00001d07 	.word	0x00001d07
c0de709c:	00000113 	.word	0x00000113
c0de70a0:	00001ea3 	.word	0x00001ea3
c0de70a4:	000000dd 	.word	0x000000dd
c0de70a8:	00001e7c 	.word	0x00001e7c

c0de70ac <launchReviewAfterWarning>:
c0de70ac:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de70ae:	480c      	ldr	r0, [pc, #48]	@ (c0de70e0 <launchReviewAfterWarning+0x34>)
c0de70b0:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de70b4:	2905      	cmp	r1, #5
c0de70b6:	d00d      	beq.n	c0de70d4 <launchReviewAfterWarning+0x28>
c0de70b8:	2902      	cmp	r1, #2
c0de70ba:	bf18      	it	ne
c0de70bc:	bd7f      	popne	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de70be:	4448      	add	r0, r9
c0de70c0:	1d06      	adds	r6, r0, #4
c0de70c2:	6a00      	ldr	r0, [r0, #32]
c0de70c4:	ce7e      	ldmia	r6, {r1, r2, r3, r4, r5, r6}
c0de70c6:	e88d 0070 	stmia.w	sp, {r4, r5, r6}
c0de70ca:	9003      	str	r0, [sp, #12]
c0de70cc:	2002      	movs	r0, #2
c0de70ce:	f7fe fdd3 	bl	c0de5c78 <useCaseReview>
c0de70d2:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de70d4:	2000      	movs	r0, #0
c0de70d6:	b004      	add	sp, #16
c0de70d8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de70dc:	f7ff b8ca 	b.w	c0de6274 <displayStreamingReviewPage>
c0de70e0:	00001240 	.word	0x00001240

c0de70e4 <onReviewAccept>:
c0de70e4:	4803      	ldr	r0, [pc, #12]	@ (c0de70f4 <onReviewAccept+0x10>)
c0de70e6:	4448      	add	r0, r9
c0de70e8:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de70ea:	b109      	cbz	r1, c0de70f0 <onReviewAccept+0xc>
c0de70ec:	2001      	movs	r0, #1
c0de70ee:	4708      	bx	r1
c0de70f0:	4770      	bx	lr
c0de70f2:	bf00      	nop
c0de70f4:	00001240 	.word	0x00001240

c0de70f8 <onReviewReject>:
c0de70f8:	4803      	ldr	r0, [pc, #12]	@ (c0de7108 <onReviewReject+0x10>)
c0de70fa:	4448      	add	r0, r9
c0de70fc:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de70fe:	b109      	cbz	r1, c0de7104 <onReviewReject+0xc>
c0de7100:	2000      	movs	r0, #0
c0de7102:	4708      	bx	r1
c0de7104:	4770      	bx	lr
c0de7106:	bf00      	nop
c0de7108:	00001240 	.word	0x00001240

c0de710c <buttonSkipCallback>:
c0de710c:	b5b0      	push	{r4, r5, r7, lr}
c0de710e:	2904      	cmp	r1, #4
c0de7110:	d00a      	beq.n	c0de7128 <buttonSkipCallback+0x1c>
c0de7112:	2901      	cmp	r1, #1
c0de7114:	d017      	beq.n	c0de7146 <buttonSkipCallback+0x3a>
c0de7116:	bbb9      	cbnz	r1, c0de7188 <buttonSkipCallback+0x7c>
c0de7118:	4829      	ldr	r0, [pc, #164]	@ (c0de71c0 <buttonSkipCallback+0xb4>)
c0de711a:	eb09 0100 	add.w	r1, r9, r0
c0de711e:	f891 105e 	ldrb.w	r1, [r1, #94]	@ 0x5e
c0de7122:	b391      	cbz	r1, c0de718a <buttonSkipCallback+0x7e>
c0de7124:	2008      	movs	r0, #8
c0de7126:	e02a      	b.n	c0de717e <buttonSkipCallback+0x72>
c0de7128:	4825      	ldr	r0, [pc, #148]	@ (c0de71c0 <buttonSkipCallback+0xb4>)
c0de712a:	eb09 0100 	add.w	r1, r9, r0
c0de712e:	4448      	add	r0, r9
c0de7130:	f891 1036 	ldrb.w	r1, [r1, #54]	@ 0x36
c0de7134:	2900      	cmp	r1, #0
c0de7136:	d03f      	beq.n	c0de71b8 <buttonSkipCallback+0xac>
c0de7138:	f890 1034 	ldrb.w	r1, [r0, #52]	@ 0x34
c0de713c:	3902      	subs	r1, #2
c0de713e:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de7142:	2000      	movs	r0, #0
c0de7144:	e030      	b.n	c0de71a8 <buttonSkipCallback+0x9c>
c0de7146:	4a1e      	ldr	r2, [pc, #120]	@ (c0de71c0 <buttonSkipCallback+0xb4>)
c0de7148:	eb09 0002 	add.w	r0, r9, r2
c0de714c:	f890 005e 	ldrb.w	r0, [r0, #94]	@ 0x5e
c0de7150:	2808      	cmp	r0, #8
c0de7152:	d113      	bne.n	c0de717c <buttonSkipCallback+0x70>
c0de7154:	eb09 0002 	add.w	r0, r9, r2
c0de7158:	f990 4036 	ldrsb.w	r4, [r0, #54]	@ 0x36
c0de715c:	f990 3035 	ldrsb.w	r3, [r0, #53]	@ 0x35
c0de7160:	f890 0034 	ldrb.w	r0, [r0, #52]	@ 0x34
c0de7164:	1e45      	subs	r5, r0, #1
c0de7166:	2000      	movs	r0, #0
c0de7168:	b2e1      	uxtb	r1, r4
c0de716a:	429d      	cmp	r5, r3
c0de716c:	bfc8      	it	gt
c0de716e:	42a3      	cmpgt	r3, r4
c0de7170:	dd19      	ble.n	c0de71a6 <buttonSkipCallback+0x9a>
c0de7172:	eb09 0002 	add.w	r0, r9, r2
c0de7176:	1c59      	adds	r1, r3, #1
c0de7178:	f880 1035 	strb.w	r1, [r0, #53]	@ 0x35
c0de717c:	2000      	movs	r0, #0
c0de717e:	4910      	ldr	r1, [pc, #64]	@ (c0de71c0 <buttonSkipCallback+0xb4>)
c0de7180:	4449      	add	r1, r9
c0de7182:	f891 1036 	ldrb.w	r1, [r1, #54]	@ 0x36
c0de7186:	e00e      	b.n	c0de71a6 <buttonSkipCallback+0x9a>
c0de7188:	bdb0      	pop	{r4, r5, r7, pc}
c0de718a:	eb09 0100 	add.w	r1, r9, r0
c0de718e:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de7192:	f991 3036 	ldrsb.w	r3, [r1, #54]	@ 0x36
c0de7196:	b2d9      	uxtb	r1, r3
c0de7198:	429a      	cmp	r2, r3
c0de719a:	dd03      	ble.n	c0de71a4 <buttonSkipCallback+0x98>
c0de719c:	4448      	add	r0, r9
c0de719e:	3a01      	subs	r2, #1
c0de71a0:	f880 2035 	strb.w	r2, [r0, #53]	@ 0x35
c0de71a4:	2008      	movs	r0, #8
c0de71a6:	b119      	cbz	r1, c0de71b0 <buttonSkipCallback+0xa4>
c0de71a8:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de71ac:	f7fe be5a 	b.w	c0de5e64 <displayReviewPage>
c0de71b0:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de71b4:	f7ff b85e 	b.w	c0de6274 <displayStreamingReviewPage>
c0de71b8:	6d80      	ldr	r0, [r0, #88]	@ 0x58
c0de71ba:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de71be:	4700      	bx	r0
c0de71c0:	00001240 	.word	0x00001240

c0de71c4 <displayAliasFullValue>:
c0de71c4:	b570      	push	{r4, r5, r6, lr}
c0de71c6:	b088      	sub	sp, #32
c0de71c8:	4c1a      	ldr	r4, [pc, #104]	@ (c0de7234 <displayAliasFullValue+0x70>)
c0de71ca:	f10d 0213 	add.w	r2, sp, #19
c0de71ce:	eb09 0504 	add.w	r5, r9, r4
c0de71d2:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de71d4:	f895 105f 	ldrb.w	r1, [r5, #95]	@ 0x5f
c0de71d8:	ab05      	add	r3, sp, #20
c0de71da:	f105 0664 	add.w	r6, r5, #100	@ 0x64
c0de71de:	9202      	str	r2, [sp, #8]
c0de71e0:	e9cd 6300 	strd	r6, r3, [sp]
c0de71e4:	aa07      	add	r2, sp, #28
c0de71e6:	ab06      	add	r3, sp, #24
c0de71e8:	f7ff fba8 	bl	c0de693c <getPairData>
c0de71ec:	6e68      	ldr	r0, [r5, #100]	@ 0x64
c0de71ee:	b178      	cbz	r0, c0de7210 <displayAliasFullValue+0x4c>
c0de71f0:	eb09 0104 	add.w	r1, r9, r4
c0de71f4:	2200      	movs	r2, #0
c0de71f6:	668a      	str	r2, [r1, #104]	@ 0x68
c0de71f8:	f881 2060 	strb.w	r2, [r1, #96]	@ 0x60
c0de71fc:	7d01      	ldrb	r1, [r0, #20]
c0de71fe:	2901      	cmp	r1, #1
c0de7200:	d008      	beq.n	c0de7214 <displayAliasFullValue+0x50>
c0de7202:	2905      	cmp	r1, #5
c0de7204:	d008      	beq.n	c0de7218 <displayAliasFullValue+0x54>
c0de7206:	2904      	cmp	r1, #4
c0de7208:	d102      	bne.n	c0de7210 <displayAliasFullValue+0x4c>
c0de720a:	6900      	ldr	r0, [r0, #16]
c0de720c:	300c      	adds	r0, #12
c0de720e:	e005      	b.n	c0de721c <displayAliasFullValue+0x58>
c0de7210:	b008      	add	sp, #32
c0de7212:	bd70      	pop	{r4, r5, r6, pc}
c0de7214:	2002      	movs	r0, #2
c0de7216:	e003      	b.n	c0de7220 <displayAliasFullValue+0x5c>
c0de7218:	6900      	ldr	r0, [r0, #16]
c0de721a:	3008      	adds	r0, #8
c0de721c:	7800      	ldrb	r0, [r0, #0]
c0de721e:	3001      	adds	r0, #1
c0de7220:	eb09 0104 	add.w	r1, r9, r4
c0de7224:	f881 0061 	strb.w	r0, [r1, #97]	@ 0x61
c0de7228:	2000      	movs	r0, #0
c0de722a:	b008      	add	sp, #32
c0de722c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de7230:	f000 b814 	b.w	c0de725c <displayExtensionStep>
c0de7234:	00001240 	.word	0x00001240

c0de7238 <reviewCallback>:
c0de7238:	b5e0      	push	{r5, r6, r7, lr}
c0de723a:	4608      	mov	r0, r1
c0de723c:	f10d 0107 	add.w	r1, sp, #7
c0de7240:	f7ff fc56 	bl	c0de6af0 <buttonGenericCallback>
c0de7244:	b130      	cbz	r0, c0de7254 <reviewCallback+0x1c>
c0de7246:	4804      	ldr	r0, [pc, #16]	@ (c0de7258 <reviewCallback+0x20>)
c0de7248:	f000 f98d 	bl	c0de7566 <OUTLINED_FUNCTION_8>
c0de724c:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de7250:	f7fe be08 	b.w	c0de5e64 <displayReviewPage>
c0de7254:	bd8c      	pop	{r2, r3, r7, pc}
c0de7256:	bf00      	nop
c0de7258:	00001240 	.word	0x00001240

c0de725c <displayExtensionStep>:
c0de725c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de7260:	b088      	sub	sp, #32
c0de7262:	4e36      	ldr	r6, [pc, #216]	@ (c0de733c <displayExtensionStep+0xe0>)
c0de7264:	4680      	mov	r8, r0
c0de7266:	2000      	movs	r0, #0
c0de7268:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de726c:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de7270:	eb09 0006 	add.w	r0, r9, r6
c0de7274:	6e80      	ldr	r0, [r0, #104]	@ 0x68
c0de7276:	b108      	cbz	r0, c0de727c <displayExtensionStep+0x20>
c0de7278:	f7fe fb82 	bl	c0de5980 <nbgl_stepRelease>
c0de727c:	eb09 0106 	add.w	r1, r9, r6
c0de7280:	f000 f96a 	bl	c0de7558 <OUTLINED_FUNCTION_7>
c0de7284:	dd10      	ble.n	c0de72a8 <displayExtensionStep+0x4c>
c0de7286:	2703      	movs	r7, #3
c0de7288:	eb09 0106 	add.w	r1, r9, r6
c0de728c:	2800      	cmp	r0, #0
c0de728e:	bf08      	it	eq
c0de7290:	2701      	moveq	r7, #1
c0de7292:	6e49      	ldr	r1, [r1, #100]	@ 0x64
c0de7294:	7d0a      	ldrb	r2, [r1, #20]
c0de7296:	2a05      	cmp	r2, #5
c0de7298:	d01a      	beq.n	c0de72d0 <displayExtensionStep+0x74>
c0de729a:	2a04      	cmp	r2, #4
c0de729c:	d028      	beq.n	c0de72f0 <displayExtensionStep+0x94>
c0de729e:	2a01      	cmp	r2, #1
c0de72a0:	d147      	bne.n	c0de7332 <displayExtensionStep+0xd6>
c0de72a2:	6808      	ldr	r0, [r1, #0]
c0de72a4:	688d      	ldr	r5, [r1, #8]
c0de72a6:	e033      	b.n	c0de7310 <displayExtensionStep+0xb4>
c0de72a8:	d143      	bne.n	c0de7332 <displayExtensionStep+0xd6>
c0de72aa:	2001      	movs	r0, #1
c0de72ac:	2200      	movs	r2, #0
c0de72ae:	f88d 001d 	strb.w	r0, [sp, #29]
c0de72b2:	4924      	ldr	r1, [pc, #144]	@ (c0de7344 <displayExtensionStep+0xe8>)
c0de72b4:	4479      	add	r1, pc
c0de72b6:	9104      	str	r1, [sp, #16]
c0de72b8:	4923      	ldr	r1, [pc, #140]	@ (c0de7348 <displayExtensionStep+0xec>)
c0de72ba:	9000      	str	r0, [sp, #0]
c0de72bc:	f048 0002 	orr.w	r0, r8, #2
c0de72c0:	4479      	add	r1, pc
c0de72c2:	9106      	str	r1, [sp, #24]
c0de72c4:	4921      	ldr	r1, [pc, #132]	@ (c0de734c <displayExtensionStep+0xf0>)
c0de72c6:	ab04      	add	r3, sp, #16
c0de72c8:	4479      	add	r1, pc
c0de72ca:	f7fe fa33 	bl	c0de5734 <nbgl_stepDrawCenteredInfo>
c0de72ce:	e02d      	b.n	c0de732c <displayExtensionStep+0xd0>
c0de72d0:	690c      	ldr	r4, [r1, #16]
c0de72d2:	0100      	lsls	r0, r0, #4
c0de72d4:	6821      	ldr	r1, [r4, #0]
c0de72d6:	5808      	ldr	r0, [r1, r0]
c0de72d8:	f001 f92a 	bl	c0de8530 <pic>
c0de72dc:	4605      	mov	r5, r0
c0de72de:	eb09 0006 	add.w	r0, r9, r6
c0de72e2:	6821      	ldr	r1, [r4, #0]
c0de72e4:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de72e8:	eb01 1000 	add.w	r0, r1, r0, lsl #4
c0de72ec:	6840      	ldr	r0, [r0, #4]
c0de72ee:	e00d      	b.n	c0de730c <displayExtensionStep+0xb0>
c0de72f0:	690c      	ldr	r4, [r1, #16]
c0de72f2:	6821      	ldr	r1, [r4, #0]
c0de72f4:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de72f8:	f001 f91a 	bl	c0de8530 <pic>
c0de72fc:	4605      	mov	r5, r0
c0de72fe:	eb09 0006 	add.w	r0, r9, r6
c0de7302:	6861      	ldr	r1, [r4, #4]
c0de7304:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de7308:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de730c:	f001 f910 	bl	c0de8530 <pic>
c0de7310:	b17d      	cbz	r5, c0de7332 <displayExtensionStep+0xd6>
c0de7312:	2101      	movs	r1, #1
c0de7314:	ea47 0208 	orr.w	r2, r7, r8
c0de7318:	462b      	mov	r3, r5
c0de731a:	e9cd 0100 	strd	r0, r1, [sp]
c0de731e:	9102      	str	r1, [sp, #8]
c0de7320:	4610      	mov	r0, r2
c0de7322:	2200      	movs	r2, #0
c0de7324:	4906      	ldr	r1, [pc, #24]	@ (c0de7340 <displayExtensionStep+0xe4>)
c0de7326:	4479      	add	r1, pc
c0de7328:	f7fe f8be 	bl	c0de54a8 <nbgl_stepDrawText>
c0de732c:	eb09 0106 	add.w	r1, r9, r6
c0de7330:	6688      	str	r0, [r1, #104]	@ 0x68
c0de7332:	f000 fd6e 	bl	c0de7e12 <nbgl_refresh>
c0de7336:	b008      	add	sp, #32
c0de7338:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de733c:	00001240 	.word	0x00001240
c0de7340:	00000027 	.word	0x00000027
c0de7344:	00001b83 	.word	0x00001b83
c0de7348:	000017e8 	.word	0x000017e8
c0de734c:	00000085 	.word	0x00000085

c0de7350 <extensionNavigate>:
c0de7350:	b580      	push	{r7, lr}
c0de7352:	2904      	cmp	r1, #4
c0de7354:	d00a      	beq.n	c0de736c <extensionNavigate+0x1c>
c0de7356:	2901      	cmp	r1, #1
c0de7358:	d01d      	beq.n	c0de7396 <extensionNavigate+0x46>
c0de735a:	b9d9      	cbnz	r1, c0de7394 <extensionNavigate+0x44>
c0de735c:	4818      	ldr	r0, [pc, #96]	@ (c0de73c0 <extensionNavigate+0x70>)
c0de735e:	4448      	add	r0, r9
c0de7360:	f890 0060 	ldrb.w	r0, [r0, #96]	@ 0x60
c0de7364:	b330      	cbz	r0, c0de73b4 <extensionNavigate+0x64>
c0de7366:	1e41      	subs	r1, r0, #1
c0de7368:	2008      	movs	r0, #8
c0de736a:	e01c      	b.n	c0de73a6 <extensionNavigate+0x56>
c0de736c:	4814      	ldr	r0, [pc, #80]	@ (c0de73c0 <extensionNavigate+0x70>)
c0de736e:	eb09 0100 	add.w	r1, r9, r0
c0de7372:	f891 2060 	ldrb.w	r2, [r1, #96]	@ 0x60
c0de7376:	f891 1061 	ldrb.w	r1, [r1, #97]	@ 0x61
c0de737a:	3901      	subs	r1, #1
c0de737c:	4291      	cmp	r1, r2
c0de737e:	d109      	bne.n	c0de7394 <extensionNavigate+0x44>
c0de7380:	4448      	add	r0, r9
c0de7382:	6e80      	ldr	r0, [r0, #104]	@ 0x68
c0de7384:	f7fe fafc 	bl	c0de5980 <nbgl_stepRelease>
c0de7388:	f000 fd5c 	bl	c0de7e44 <nbgl_screenRedraw>
c0de738c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de7390:	f000 bd3f 	b.w	c0de7e12 <nbgl_refresh>
c0de7394:	bd80      	pop	{r7, pc}
c0de7396:	480a      	ldr	r0, [pc, #40]	@ (c0de73c0 <extensionNavigate+0x70>)
c0de7398:	eb09 0100 	add.w	r1, r9, r0
c0de739c:	f000 f8dc 	bl	c0de7558 <OUTLINED_FUNCTION_7>
c0de73a0:	dd06      	ble.n	c0de73b0 <extensionNavigate+0x60>
c0de73a2:	1c41      	adds	r1, r0, #1
c0de73a4:	2000      	movs	r0, #0
c0de73a6:	4a06      	ldr	r2, [pc, #24]	@ (c0de73c0 <extensionNavigate+0x70>)
c0de73a8:	444a      	add	r2, r9
c0de73aa:	f882 1060 	strb.w	r1, [r2, #96]	@ 0x60
c0de73ae:	e002      	b.n	c0de73b6 <extensionNavigate+0x66>
c0de73b0:	2000      	movs	r0, #0
c0de73b2:	e000      	b.n	c0de73b6 <extensionNavigate+0x66>
c0de73b4:	2008      	movs	r0, #8
c0de73b6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de73ba:	f7ff bf4f 	b.w	c0de725c <displayExtensionStep>
c0de73be:	bf00      	nop
c0de73c0:	00001240 	.word	0x00001240

c0de73c4 <statusTickerCallback>:
c0de73c4:	4802      	ldr	r0, [pc, #8]	@ (c0de73d0 <statusTickerCallback+0xc>)
c0de73c6:	4448      	add	r0, r9
c0de73c8:	6b80      	ldr	r0, [r0, #56]	@ 0x38
c0de73ca:	b100      	cbz	r0, c0de73ce <statusTickerCallback+0xa>
c0de73cc:	4700      	bx	r0
c0de73ce:	4770      	bx	lr
c0de73d0:	00001240 	.word	0x00001240

c0de73d4 <getChoiceName>:
c0de73d4:	b5b0      	push	{r4, r5, r7, lr}
c0de73d6:	b090      	sub	sp, #64	@ 0x40
c0de73d8:	ad01      	add	r5, sp, #4
c0de73da:	f000 f8cb 	bl	c0de7574 <OUTLINED_FUNCTION_9>
c0de73de:	4814      	ldr	r0, [pc, #80]	@ (c0de7430 <getChoiceName+0x5c>)
c0de73e0:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de73e4:	462a      	mov	r2, r5
c0de73e6:	4448      	add	r0, r9
c0de73e8:	f000 f8ab 	bl	c0de7542 <OUTLINED_FUNCTION_4>
c0de73ec:	b150      	cbz	r0, c0de7404 <getChoiceName+0x30>
c0de73ee:	7801      	ldrb	r1, [r0, #0]
c0de73f0:	290a      	cmp	r1, #10
c0de73f2:	d009      	beq.n	c0de7408 <getChoiceName+0x34>
c0de73f4:	2909      	cmp	r1, #9
c0de73f6:	d105      	bne.n	c0de7404 <getChoiceName+0x30>
c0de73f8:	f000 f8a7 	bl	c0de754a <OUTLINED_FUNCTION_5>
c0de73fc:	4605      	mov	r5, r0
c0de73fe:	f855 0b05 	ldr.w	r0, [r5], #5
c0de7402:	e006      	b.n	c0de7412 <getChoiceName+0x3e>
c0de7404:	2000      	movs	r0, #0
c0de7406:	e010      	b.n	c0de742a <getChoiceName+0x56>
c0de7408:	f000 f89f 	bl	c0de754a <OUTLINED_FUNCTION_5>
c0de740c:	4605      	mov	r5, r0
c0de740e:	f855 0b08 	ldr.w	r0, [r5], #8
c0de7412:	f001 f88d 	bl	c0de8530 <pic>
c0de7416:	7829      	ldrb	r1, [r5, #0]
c0de7418:	42a1      	cmp	r1, r4
c0de741a:	d904      	bls.n	c0de7426 <getChoiceName+0x52>
c0de741c:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de7420:	f001 f886 	bl	c0de8530 <pic>
c0de7424:	e001      	b.n	c0de742a <getChoiceName+0x56>
c0de7426:	4803      	ldr	r0, [pc, #12]	@ (c0de7434 <getChoiceName+0x60>)
c0de7428:	4478      	add	r0, pc
c0de742a:	b010      	add	sp, #64	@ 0x40
c0de742c:	bdb0      	pop	{r4, r5, r7, pc}
c0de742e:	bf00      	nop
c0de7430:	00001240 	.word	0x00001240
c0de7434:	00001a0f 	.word	0x00001a0f

c0de7438 <onChoiceSelected>:
c0de7438:	b570      	push	{r4, r5, r6, lr}
c0de743a:	b090      	sub	sp, #64	@ 0x40
c0de743c:	ad01      	add	r5, sp, #4
c0de743e:	f000 f899 	bl	c0de7574 <OUTLINED_FUNCTION_9>
c0de7442:	4e17      	ldr	r6, [pc, #92]	@ (c0de74a0 <onChoiceSelected+0x68>)
c0de7444:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de7448:	462a      	mov	r2, r5
c0de744a:	eb09 0006 	add.w	r0, r9, r6
c0de744e:	f000 f878 	bl	c0de7542 <OUTLINED_FUNCTION_4>
c0de7452:	b318      	cbz	r0, c0de749c <onChoiceSelected+0x64>
c0de7454:	7801      	ldrb	r1, [r0, #0]
c0de7456:	290a      	cmp	r1, #10
c0de7458:	d008      	beq.n	c0de746c <onChoiceSelected+0x34>
c0de745a:	2909      	cmp	r1, #9
c0de745c:	d10f      	bne.n	c0de747e <onChoiceSelected+0x46>
c0de745e:	f000 f874 	bl	c0de754a <OUTLINED_FUNCTION_5>
c0de7462:	7941      	ldrb	r1, [r0, #5]
c0de7464:	42a1      	cmp	r1, r4
c0de7466:	d90a      	bls.n	c0de747e <onChoiceSelected+0x46>
c0de7468:	3007      	adds	r0, #7
c0de746a:	e006      	b.n	c0de747a <onChoiceSelected+0x42>
c0de746c:	f000 f86d 	bl	c0de754a <OUTLINED_FUNCTION_5>
c0de7470:	7a01      	ldrb	r1, [r0, #8]
c0de7472:	42a1      	cmp	r1, r4
c0de7474:	d903      	bls.n	c0de747e <onChoiceSelected+0x46>
c0de7476:	6840      	ldr	r0, [r0, #4]
c0de7478:	4420      	add	r0, r4
c0de747a:	7800      	ldrb	r0, [r0, #0]
c0de747c:	e000      	b.n	c0de7480 <onChoiceSelected+0x48>
c0de747e:	20ff      	movs	r0, #255	@ 0xff
c0de7480:	28ff      	cmp	r0, #255	@ 0xff
c0de7482:	d006      	beq.n	c0de7492 <onChoiceSelected+0x5a>
c0de7484:	eb09 0106 	add.w	r1, r9, r6
c0de7488:	6d0a      	ldr	r2, [r1, #80]	@ 0x50
c0de748a:	b112      	cbz	r2, c0de7492 <onChoiceSelected+0x5a>
c0de748c:	2100      	movs	r1, #0
c0de748e:	4790      	blx	r2
c0de7490:	e004      	b.n	c0de749c <onChoiceSelected+0x64>
c0de7492:	eb09 0006 	add.w	r0, r9, r6
c0de7496:	6d80      	ldr	r0, [r0, #88]	@ 0x58
c0de7498:	b100      	cbz	r0, c0de749c <onChoiceSelected+0x64>
c0de749a:	4780      	blx	r0
c0de749c:	b010      	add	sp, #64	@ 0x40
c0de749e:	bd70      	pop	{r4, r5, r6, pc}
c0de74a0:	00001240 	.word	0x00001240

c0de74a4 <streamingReviewCallback>:
c0de74a4:	b5e0      	push	{r5, r6, r7, lr}
c0de74a6:	4608      	mov	r0, r1
c0de74a8:	f10d 0107 	add.w	r1, sp, #7
c0de74ac:	f7ff fb20 	bl	c0de6af0 <buttonGenericCallback>
c0de74b0:	b130      	cbz	r0, c0de74c0 <streamingReviewCallback+0x1c>
c0de74b2:	4804      	ldr	r0, [pc, #16]	@ (c0de74c4 <streamingReviewCallback+0x20>)
c0de74b4:	f000 f857 	bl	c0de7566 <OUTLINED_FUNCTION_8>
c0de74b8:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de74bc:	f7fe beda 	b.w	c0de6274 <displayStreamingReviewPage>
c0de74c0:	bd8c      	pop	{r2, r3, r7, pc}
c0de74c2:	bf00      	nop
c0de74c4:	00001240 	.word	0x00001240

c0de74c8 <onChoiceAccept>:
c0de74c8:	4803      	ldr	r0, [pc, #12]	@ (c0de74d8 <onChoiceAccept+0x10>)
c0de74ca:	4448      	add	r0, r9
c0de74cc:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de74ce:	b109      	cbz	r1, c0de74d4 <onChoiceAccept+0xc>
c0de74d0:	2001      	movs	r0, #1
c0de74d2:	4708      	bx	r1
c0de74d4:	4770      	bx	lr
c0de74d6:	bf00      	nop
c0de74d8:	00001240 	.word	0x00001240

c0de74dc <onChoiceReject>:
c0de74dc:	4803      	ldr	r0, [pc, #12]	@ (c0de74ec <onChoiceReject+0x10>)
c0de74de:	4448      	add	r0, r9
c0de74e0:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de74e2:	b109      	cbz	r1, c0de74e8 <onChoiceReject+0xc>
c0de74e4:	2000      	movs	r0, #0
c0de74e6:	4708      	bx	r1
c0de74e8:	4770      	bx	lr
c0de74ea:	bf00      	nop
c0de74ec:	00001240 	.word	0x00001240

c0de74f0 <genericChoiceCallback>:
c0de74f0:	b5e0      	push	{r5, r6, r7, lr}
c0de74f2:	4608      	mov	r0, r1
c0de74f4:	f10d 0107 	add.w	r1, sp, #7
c0de74f8:	f7ff fafa 	bl	c0de6af0 <buttonGenericCallback>
c0de74fc:	b128      	cbz	r0, c0de750a <genericChoiceCallback+0x1a>
c0de74fe:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de7502:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de7506:	f7fe bfbd 	b.w	c0de6484 <displayChoicePage>
c0de750a:	bd8c      	pop	{r2, r3, r7, pc}

c0de750c <OUTLINED_FUNCTION_1>:
c0de750c:	2200      	movs	r2, #0
c0de750e:	eb09 0100 	add.w	r1, r9, r0
c0de7512:	638a      	str	r2, [r1, #56]	@ 0x38
c0de7514:	f991 2035 	ldrsb.w	r2, [r1, #53]	@ 0x35
c0de7518:	f891 1034 	ldrb.w	r1, [r1, #52]	@ 0x34
c0de751c:	3901      	subs	r1, #1
c0de751e:	4291      	cmp	r1, r2
c0de7520:	4770      	bx	lr

c0de7522 <OUTLINED_FUNCTION_2>:
c0de7522:	eb09 0600 	add.w	r6, r9, r0
c0de7526:	f106 002c 	add.w	r0, r6, #44	@ 0x2c
c0de752a:	f001 b9f1 	b.w	c0de8910 <__aeabi_memclr>

c0de752e <OUTLINED_FUNCTION_3>:
c0de752e:	460e      	mov	r6, r1
c0de7530:	2140      	movs	r1, #64	@ 0x40
c0de7532:	4698      	mov	r8, r3
c0de7534:	4615      	mov	r5, r2
c0de7536:	eb09 0400 	add.w	r4, r9, r0
c0de753a:	f104 002c 	add.w	r0, r4, #44	@ 0x2c
c0de753e:	f001 b9e7 	b.w	c0de8910 <__aeabi_memclr>

c0de7542 <OUTLINED_FUNCTION_4>:
c0de7542:	f890 0035 	ldrb.w	r0, [r0, #53]	@ 0x35
c0de7546:	f7ff b9b5 	b.w	c0de68b4 <getContentElemAtIdx>

c0de754a <OUTLINED_FUNCTION_5>:
c0de754a:	3004      	adds	r0, #4
c0de754c:	f000 bff0 	b.w	c0de8530 <pic>

c0de7550 <OUTLINED_FUNCTION_6>:
c0de7550:	e9cd 6500 	strd	r6, r5, [sp]
c0de7554:	f7fe bd72 	b.w	c0de603c <drawStep>

c0de7558 <OUTLINED_FUNCTION_7>:
c0de7558:	f891 0060 	ldrb.w	r0, [r1, #96]	@ 0x60
c0de755c:	f891 1061 	ldrb.w	r1, [r1, #97]	@ 0x61
c0de7560:	3901      	subs	r1, #1
c0de7562:	4281      	cmp	r1, r0
c0de7564:	4770      	bx	lr

c0de7566 <OUTLINED_FUNCTION_8>:
c0de7566:	eb09 0100 	add.w	r1, r9, r0
c0de756a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de756e:	f881 005e 	strb.w	r0, [r1, #94]	@ 0x5e
c0de7572:	4770      	bx	lr

c0de7574 <OUTLINED_FUNCTION_9>:
c0de7574:	4604      	mov	r4, r0
c0de7576:	2138      	movs	r1, #56	@ 0x38
c0de7578:	4628      	mov	r0, r5
c0de757a:	f001 b9c9 	b.w	c0de8910 <__aeabi_memclr>

c0de757e <OUTLINED_FUNCTION_10>:
c0de757e:	f997 1035 	ldrsb.w	r1, [r7, #53]	@ 0x35
c0de7582:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de7586:	4730      	bx	r6

c0de7588 <bip32_path_read>:
c0de7588:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de758c:	b10b      	cbz	r3, c0de7592 <bip32_path_read+0xa>
c0de758e:	2b0a      	cmp	r3, #10
c0de7590:	d902      	bls.n	c0de7598 <bip32_path_read+0x10>
c0de7592:	2000      	movs	r0, #0
c0de7594:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de7598:	4692      	mov	sl, r2
c0de759a:	460e      	mov	r6, r1
c0de759c:	4683      	mov	fp, r0
c0de759e:	425f      	negs	r7, r3
c0de75a0:	2500      	movs	r5, #0
c0de75a2:	f04f 0800 	mov.w	r8, #0
c0de75a6:	9301      	str	r3, [sp, #4]
c0de75a8:	42af      	cmp	r7, r5
c0de75aa:	d00c      	beq.n	c0de75c6 <bip32_path_read+0x3e>
c0de75ac:	f108 0404 	add.w	r4, r8, #4
c0de75b0:	42b4      	cmp	r4, r6
c0de75b2:	d808      	bhi.n	c0de75c6 <bip32_path_read+0x3e>
c0de75b4:	4658      	mov	r0, fp
c0de75b6:	4641      	mov	r1, r8
c0de75b8:	f000 faec 	bl	c0de7b94 <read_u32_be>
c0de75bc:	f84a 0008 	str.w	r0, [sl, r8]
c0de75c0:	3d01      	subs	r5, #1
c0de75c2:	46a0      	mov	r8, r4
c0de75c4:	e7f0      	b.n	c0de75a8 <bip32_path_read+0x20>
c0de75c6:	9a01      	ldr	r2, [sp, #4]
c0de75c8:	4269      	negs	r1, r5
c0de75ca:	2000      	movs	r0, #0
c0de75cc:	4291      	cmp	r1, r2
c0de75ce:	bf28      	it	cs
c0de75d0:	2001      	movcs	r0, #1
c0de75d2:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de75d6 <buffer_seek_cur>:
c0de75d6:	6882      	ldr	r2, [r0, #8]
c0de75d8:	1889      	adds	r1, r1, r2
c0de75da:	d205      	bcs.n	c0de75e8 <buffer_seek_cur+0x12>
c0de75dc:	6842      	ldr	r2, [r0, #4]
c0de75de:	4291      	cmp	r1, r2
c0de75e0:	bf9e      	ittt	ls
c0de75e2:	6081      	strls	r1, [r0, #8]
c0de75e4:	2001      	movls	r0, #1
c0de75e6:	4770      	bxls	lr
c0de75e8:	2000      	movs	r0, #0
c0de75ea:	4770      	bx	lr

c0de75ec <buffer_read_u8>:
c0de75ec:	b510      	push	{r4, lr}
c0de75ee:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0de75f2:	429a      	cmp	r2, r3
c0de75f4:	d00a      	beq.n	c0de760c <buffer_read_u8+0x20>
c0de75f6:	6804      	ldr	r4, [r0, #0]
c0de75f8:	5ce4      	ldrb	r4, [r4, r3]
c0de75fa:	700c      	strb	r4, [r1, #0]
c0de75fc:	6881      	ldr	r1, [r0, #8]
c0de75fe:	3101      	adds	r1, #1
c0de7600:	d206      	bcs.n	c0de7610 <buffer_read_u8+0x24>
c0de7602:	6844      	ldr	r4, [r0, #4]
c0de7604:	42a1      	cmp	r1, r4
c0de7606:	bf98      	it	ls
c0de7608:	6081      	strls	r1, [r0, #8]
c0de760a:	e001      	b.n	c0de7610 <buffer_read_u8+0x24>
c0de760c:	2000      	movs	r0, #0
c0de760e:	7008      	strb	r0, [r1, #0]
c0de7610:	1ad0      	subs	r0, r2, r3
c0de7612:	bf18      	it	ne
c0de7614:	2001      	movne	r0, #1
c0de7616:	bd10      	pop	{r4, pc}

c0de7618 <buffer_read_u64>:
c0de7618:	b570      	push	{r4, r5, r6, lr}
c0de761a:	f000 f87d 	bl	c0de7718 <OUTLINED_FUNCTION_0>
c0de761e:	2e07      	cmp	r6, #7
c0de7620:	d904      	bls.n	c0de762c <buffer_read_u64+0x14>
c0de7622:	6820      	ldr	r0, [r4, #0]
c0de7624:	b132      	cbz	r2, c0de7634 <buffer_read_u64+0x1c>
c0de7626:	f000 faec 	bl	c0de7c02 <read_u64_le>
c0de762a:	e005      	b.n	c0de7638 <buffer_read_u64+0x20>
c0de762c:	2000      	movs	r0, #0
c0de762e:	e9c5 0000 	strd	r0, r0, [r5]
c0de7632:	e00c      	b.n	c0de764e <buffer_read_u64+0x36>
c0de7634:	f000 faba 	bl	c0de7bac <read_u64_be>
c0de7638:	e9c5 0100 	strd	r0, r1, [r5]
c0de763c:	68a0      	ldr	r0, [r4, #8]
c0de763e:	f110 0f09 	cmn.w	r0, #9
c0de7642:	d804      	bhi.n	c0de764e <buffer_read_u64+0x36>
c0de7644:	6861      	ldr	r1, [r4, #4]
c0de7646:	3008      	adds	r0, #8
c0de7648:	4288      	cmp	r0, r1
c0de764a:	bf98      	it	ls
c0de764c:	60a0      	strls	r0, [r4, #8]
c0de764e:	2000      	movs	r0, #0
c0de7650:	2e07      	cmp	r6, #7
c0de7652:	bf88      	it	hi
c0de7654:	2001      	movhi	r0, #1
c0de7656:	bd70      	pop	{r4, r5, r6, pc}

c0de7658 <buffer_read_varint>:
c0de7658:	b5b0      	push	{r4, r5, r7, lr}
c0de765a:	4604      	mov	r4, r0
c0de765c:	460d      	mov	r5, r1
c0de765e:	6800      	ldr	r0, [r0, #0]
c0de7660:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de7664:	4410      	add	r0, r2
c0de7666:	1a89      	subs	r1, r1, r2
c0de7668:	462a      	mov	r2, r5
c0de766a:	f000 fae1 	bl	c0de7c30 <varint_read>
c0de766e:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de7672:	dd0a      	ble.n	c0de768a <buffer_read_varint+0x32>
c0de7674:	68a1      	ldr	r1, [r4, #8]
c0de7676:	1840      	adds	r0, r0, r1
c0de7678:	d205      	bcs.n	c0de7686 <buffer_read_varint+0x2e>
c0de767a:	6861      	ldr	r1, [r4, #4]
c0de767c:	4288      	cmp	r0, r1
c0de767e:	bf9e      	ittt	ls
c0de7680:	60a0      	strls	r0, [r4, #8]
c0de7682:	2001      	movls	r0, #1
c0de7684:	bdb0      	popls	{r4, r5, r7, pc}
c0de7686:	2000      	movs	r0, #0
c0de7688:	bdb0      	pop	{r4, r5, r7, pc}
c0de768a:	2000      	movs	r0, #0
c0de768c:	e9c5 0000 	strd	r0, r0, [r5]
c0de7690:	bdb0      	pop	{r4, r5, r7, pc}

c0de7692 <buffer_read_bip32_path>:
c0de7692:	b5b0      	push	{r4, r5, r7, lr}
c0de7694:	4604      	mov	r4, r0
c0de7696:	4615      	mov	r5, r2
c0de7698:	460a      	mov	r2, r1
c0de769a:	6800      	ldr	r0, [r0, #0]
c0de769c:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0de76a0:	4418      	add	r0, r3
c0de76a2:	1ac9      	subs	r1, r1, r3
c0de76a4:	462b      	mov	r3, r5
c0de76a6:	f7ff ff6f 	bl	c0de7588 <bip32_path_read>
c0de76aa:	b140      	cbz	r0, c0de76be <buffer_read_bip32_path+0x2c>
c0de76ac:	68a2      	ldr	r2, [r4, #8]
c0de76ae:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0de76b2:	4291      	cmp	r1, r2
c0de76b4:	d303      	bcc.n	c0de76be <buffer_read_bip32_path+0x2c>
c0de76b6:	6862      	ldr	r2, [r4, #4]
c0de76b8:	4291      	cmp	r1, r2
c0de76ba:	bf98      	it	ls
c0de76bc:	60a1      	strls	r1, [r4, #8]
c0de76be:	bdb0      	pop	{r4, r5, r7, pc}

c0de76c0 <buffer_copy>:
c0de76c0:	b5b0      	push	{r4, r5, r7, lr}
c0de76c2:	4614      	mov	r4, r2
c0de76c4:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0de76c8:	1a9d      	subs	r5, r3, r2
c0de76ca:	42a5      	cmp	r5, r4
c0de76cc:	d806      	bhi.n	c0de76dc <buffer_copy+0x1c>
c0de76ce:	6800      	ldr	r0, [r0, #0]
c0de76d0:	4402      	add	r2, r0
c0de76d2:	4608      	mov	r0, r1
c0de76d4:	4611      	mov	r1, r2
c0de76d6:	462a      	mov	r2, r5
c0de76d8:	f001 f912 	bl	c0de8900 <__aeabi_memmove>
c0de76dc:	2000      	movs	r0, #0
c0de76de:	42a5      	cmp	r5, r4
c0de76e0:	bf98      	it	ls
c0de76e2:	2001      	movls	r0, #1
c0de76e4:	bdb0      	pop	{r4, r5, r7, pc}

c0de76e6 <buffer_move>:
c0de76e6:	b5b0      	push	{r4, r5, r7, lr}
c0de76e8:	4615      	mov	r5, r2
c0de76ea:	4604      	mov	r4, r0
c0de76ec:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0de76f0:	1a12      	subs	r2, r2, r0
c0de76f2:	42aa      	cmp	r2, r5
c0de76f4:	bf84      	itt	hi
c0de76f6:	2000      	movhi	r0, #0
c0de76f8:	bdb0      	pophi	{r4, r5, r7, pc}
c0de76fa:	6823      	ldr	r3, [r4, #0]
c0de76fc:	4403      	add	r3, r0
c0de76fe:	4608      	mov	r0, r1
c0de7700:	4619      	mov	r1, r3
c0de7702:	f001 f8fd 	bl	c0de8900 <__aeabi_memmove>
c0de7706:	68a0      	ldr	r0, [r4, #8]
c0de7708:	1940      	adds	r0, r0, r5
c0de770a:	d203      	bcs.n	c0de7714 <buffer_move+0x2e>
c0de770c:	6861      	ldr	r1, [r4, #4]
c0de770e:	4288      	cmp	r0, r1
c0de7710:	bf98      	it	ls
c0de7712:	60a0      	strls	r0, [r4, #8]
c0de7714:	2001      	movs	r0, #1
c0de7716:	bdb0      	pop	{r4, r5, r7, pc}

c0de7718 <OUTLINED_FUNCTION_0>:
c0de7718:	4604      	mov	r4, r0
c0de771a:	460d      	mov	r5, r1
c0de771c:	6840      	ldr	r0, [r0, #4]
c0de771e:	68a1      	ldr	r1, [r4, #8]
c0de7720:	1a46      	subs	r6, r0, r1
c0de7722:	4770      	bx	lr

c0de7724 <bip32_derive_with_seed_init_privkey_256>:
c0de7724:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de7728:	b095      	sub	sp, #84	@ 0x54
c0de772a:	460d      	mov	r5, r1
c0de772c:	4607      	mov	r7, r0
c0de772e:	a904      	add	r1, sp, #16
c0de7730:	469a      	mov	sl, r3
c0de7732:	4614      	mov	r4, r2
c0de7734:	4628      	mov	r0, r5
c0de7736:	f000 ff35 	bl	c0de85a4 <cx_ecdomain_parameters_length>
c0de773a:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0de773e:	4606      	mov	r6, r0
c0de7740:	b9e0      	cbnz	r0, c0de777c <bip32_derive_with_seed_init_privkey_256+0x58>
c0de7742:	9804      	ldr	r0, [sp, #16]
c0de7744:	2820      	cmp	r0, #32
c0de7746:	d117      	bne.n	c0de7778 <bip32_derive_with_seed_init_privkey_256+0x54>
c0de7748:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0de774a:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0de774e:	ab05      	add	r3, sp, #20
c0de7750:	e9cd 3200 	strd	r3, r2, [sp]
c0de7754:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de7758:	4638      	mov	r0, r7
c0de775a:	4629      	mov	r1, r5
c0de775c:	4622      	mov	r2, r4
c0de775e:	4653      	mov	r3, sl
c0de7760:	f000 f818 	bl	c0de7794 <os_derive_bip32_with_seed_no_throw>
c0de7764:	4606      	mov	r6, r0
c0de7766:	b948      	cbnz	r0, c0de777c <bip32_derive_with_seed_init_privkey_256+0x58>
c0de7768:	9a04      	ldr	r2, [sp, #16]
c0de776a:	a905      	add	r1, sp, #20
c0de776c:	4628      	mov	r0, r5
c0de776e:	4643      	mov	r3, r8
c0de7770:	f000 fb2f 	bl	c0de7dd2 <cx_ecfp_init_private_key_no_throw>
c0de7774:	4606      	mov	r6, r0
c0de7776:	e001      	b.n	c0de777c <bip32_derive_with_seed_init_privkey_256+0x58>
c0de7778:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0de777c:	a805      	add	r0, sp, #20
c0de777e:	2140      	movs	r1, #64	@ 0x40
c0de7780:	f001 f8d4 	bl	c0de892c <explicit_bzero>
c0de7784:	b116      	cbz	r6, c0de778c <bip32_derive_with_seed_init_privkey_256+0x68>
c0de7786:	4640      	mov	r0, r8
c0de7788:	f000 f89f 	bl	c0de78ca <OUTLINED_FUNCTION_0>
c0de778c:	4630      	mov	r0, r6
c0de778e:	b015      	add	sp, #84	@ 0x54
c0de7790:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de7794 <os_derive_bip32_with_seed_no_throw>:
c0de7794:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7798:	b090      	sub	sp, #64	@ 0x40
c0de779a:	f10d 0810 	add.w	r8, sp, #16
c0de779e:	4607      	mov	r7, r0
c0de77a0:	469b      	mov	fp, r3
c0de77a2:	4616      	mov	r6, r2
c0de77a4:	460c      	mov	r4, r1
c0de77a6:	4640      	mov	r0, r8
c0de77a8:	f001 f8f6 	bl	c0de8998 <setjmp>
c0de77ac:	b285      	uxth	r5, r0
c0de77ae:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0de77b2:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de77b6:	b155      	cbz	r5, c0de77ce <os_derive_bip32_with_seed_no_throw+0x3a>
c0de77b8:	2000      	movs	r0, #0
c0de77ba:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de77be:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de77c0:	f000 ff8c 	bl	c0de86dc <try_context_set>
c0de77c4:	2140      	movs	r1, #64	@ 0x40
c0de77c6:	4650      	mov	r0, sl
c0de77c8:	f001 f8b0 	bl	c0de892c <explicit_bzero>
c0de77cc:	e012      	b.n	c0de77f4 <os_derive_bip32_with_seed_no_throw+0x60>
c0de77ce:	a804      	add	r0, sp, #16
c0de77d0:	f000 ff84 	bl	c0de86dc <try_context_set>
c0de77d4:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0de77d6:	900e      	str	r0, [sp, #56]	@ 0x38
c0de77d8:	4668      	mov	r0, sp
c0de77da:	4632      	mov	r2, r6
c0de77dc:	465b      	mov	r3, fp
c0de77de:	f8c0 a000 	str.w	sl, [r0]
c0de77e2:	6041      	str	r1, [r0, #4]
c0de77e4:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0de77e6:	6081      	str	r1, [r0, #8]
c0de77e8:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0de77ea:	60c1      	str	r1, [r0, #12]
c0de77ec:	4638      	mov	r0, r7
c0de77ee:	4621      	mov	r1, r4
c0de77f0:	f000 fee2 	bl	c0de85b8 <os_perso_derive_node_with_seed_key>
c0de77f4:	f000 ff6a 	bl	c0de86cc <try_context_get>
c0de77f8:	4540      	cmp	r0, r8
c0de77fa:	d102      	bne.n	c0de7802 <os_derive_bip32_with_seed_no_throw+0x6e>
c0de77fc:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de77fe:	f000 ff6d 	bl	c0de86dc <try_context_set>
c0de7802:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0de7806:	b918      	cbnz	r0, c0de7810 <os_derive_bip32_with_seed_no_throw+0x7c>
c0de7808:	4628      	mov	r0, r5
c0de780a:	b010      	add	sp, #64	@ 0x40
c0de780c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de7810:	f000 fb69 	bl	c0de7ee6 <os_longjmp>

c0de7814 <bip32_derive_with_seed_get_pubkey_256>:
c0de7814:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7816:	b0a1      	sub	sp, #132	@ 0x84
c0de7818:	460e      	mov	r6, r1
c0de781a:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de781c:	9103      	str	r1, [sp, #12]
c0de781e:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0de7820:	9102      	str	r1, [sp, #8]
c0de7822:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0de7824:	9101      	str	r1, [sp, #4]
c0de7826:	a917      	add	r1, sp, #92	@ 0x5c
c0de7828:	9100      	str	r1, [sp, #0]
c0de782a:	4631      	mov	r1, r6
c0de782c:	f7ff ff7a 	bl	c0de7724 <bip32_derive_with_seed_init_privkey_256>
c0de7830:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0de7832:	4605      	mov	r5, r0
c0de7834:	b9b8      	cbnz	r0, c0de7866 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de7836:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0de7838:	2301      	movs	r3, #1
c0de783a:	9000      	str	r0, [sp, #0]
c0de783c:	af04      	add	r7, sp, #16
c0de783e:	aa17      	add	r2, sp, #92	@ 0x5c
c0de7840:	4630      	mov	r0, r6
c0de7842:	4639      	mov	r1, r7
c0de7844:	f000 fac0 	bl	c0de7dc8 <cx_ecfp_generate_pair2_no_throw>
c0de7848:	4605      	mov	r5, r0
c0de784a:	b960      	cbnz	r0, c0de7866 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de784c:	9805      	ldr	r0, [sp, #20]
c0de784e:	2841      	cmp	r0, #65	@ 0x41
c0de7850:	d107      	bne.n	c0de7862 <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0de7852:	f107 0108 	add.w	r1, r7, #8
c0de7856:	4620      	mov	r0, r4
c0de7858:	2241      	movs	r2, #65	@ 0x41
c0de785a:	f001 f84f 	bl	c0de88fc <__aeabi_memcpy>
c0de785e:	2500      	movs	r5, #0
c0de7860:	e001      	b.n	c0de7866 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de7862:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0de7866:	a817      	add	r0, sp, #92	@ 0x5c
c0de7868:	f000 f82f 	bl	c0de78ca <OUTLINED_FUNCTION_0>
c0de786c:	b11d      	cbz	r5, c0de7876 <bip32_derive_with_seed_get_pubkey_256+0x62>
c0de786e:	4620      	mov	r0, r4
c0de7870:	2141      	movs	r1, #65	@ 0x41
c0de7872:	f001 f85b 	bl	c0de892c <explicit_bzero>
c0de7876:	4628      	mov	r0, r5
c0de7878:	b021      	add	sp, #132	@ 0x84
c0de787a:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de787c <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0de787c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de787e:	b08f      	sub	sp, #60	@ 0x3c
c0de7880:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0de7882:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0de7884:	683c      	ldr	r4, [r7, #0]
c0de7886:	9503      	str	r5, [sp, #12]
c0de7888:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0de788a:	9502      	str	r5, [sp, #8]
c0de788c:	2500      	movs	r5, #0
c0de788e:	9501      	str	r5, [sp, #4]
c0de7890:	ad05      	add	r5, sp, #20
c0de7892:	9500      	str	r5, [sp, #0]
c0de7894:	f7ff ff46 	bl	c0de7724 <bip32_derive_with_seed_init_privkey_256>
c0de7898:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0de789a:	4606      	mov	r6, r0
c0de789c:	b950      	cbnz	r0, c0de78b4 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0de789e:	ae14      	add	r6, sp, #80	@ 0x50
c0de78a0:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de78a2:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0de78a4:	e9cd 6500 	strd	r6, r5, [sp]
c0de78a8:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0de78ac:	a805      	add	r0, sp, #20
c0de78ae:	f000 fa86 	bl	c0de7dbe <cx_ecdsa_sign_no_throw>
c0de78b2:	4606      	mov	r6, r0
c0de78b4:	a805      	add	r0, sp, #20
c0de78b6:	f000 f808 	bl	c0de78ca <OUTLINED_FUNCTION_0>
c0de78ba:	b11e      	cbz	r6, c0de78c4 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0de78bc:	4628      	mov	r0, r5
c0de78be:	4621      	mov	r1, r4
c0de78c0:	f001 f834 	bl	c0de892c <explicit_bzero>
c0de78c4:	4630      	mov	r0, r6
c0de78c6:	b00f      	add	sp, #60	@ 0x3c
c0de78c8:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de78ca <OUTLINED_FUNCTION_0>:
c0de78ca:	2128      	movs	r1, #40	@ 0x28
c0de78cc:	f001 b82e 	b.w	c0de892c <explicit_bzero>

c0de78d0 <format_u64>:
c0de78d0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de78d4:	b1f9      	cbz	r1, c0de7916 <format_u64+0x46>
c0de78d6:	4615      	mov	r5, r2
c0de78d8:	4604      	mov	r4, r0
c0de78da:	f1a1 0801 	sub.w	r8, r1, #1
c0de78de:	2700      	movs	r7, #0
c0de78e0:	2600      	movs	r6, #0
c0de78e2:	f1b5 000a 	subs.w	r0, r5, #10
c0de78e6:	f173 0000 	sbcs.w	r0, r3, #0
c0de78ea:	d316      	bcc.n	c0de791a <format_u64+0x4a>
c0de78ec:	4619      	mov	r1, r3
c0de78ee:	4628      	mov	r0, r5
c0de78f0:	220a      	movs	r2, #10
c0de78f2:	2300      	movs	r3, #0
c0de78f4:	f001 f810 	bl	c0de8918 <__aeabi_uldivmod>
c0de78f8:	460b      	mov	r3, r1
c0de78fa:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de78fe:	1cba      	adds	r2, r7, #2
c0de7900:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
c0de7904:	4605      	mov	r5, r0
c0de7906:	f041 0130 	orr.w	r1, r1, #48	@ 0x30
c0de790a:	55e1      	strb	r1, [r4, r7]
c0de790c:	1c79      	adds	r1, r7, #1
c0de790e:	4542      	cmp	r2, r8
c0de7910:	460f      	mov	r7, r1
c0de7912:	d9e6      	bls.n	c0de78e2 <format_u64+0x12>
c0de7914:	e012      	b.n	c0de793c <format_u64+0x6c>
c0de7916:	2600      	movs	r6, #0
c0de7918:	e010      	b.n	c0de793c <format_u64+0x6c>
c0de791a:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de791e:	19e1      	adds	r1, r4, r7
c0de7920:	55e0      	strb	r0, [r4, r7]
c0de7922:	2000      	movs	r0, #0
c0de7924:	7048      	strb	r0, [r1, #1]
c0de7926:	b2c1      	uxtb	r1, r0
c0de7928:	428f      	cmp	r7, r1
c0de792a:	d906      	bls.n	c0de793a <format_u64+0x6a>
c0de792c:	5c62      	ldrb	r2, [r4, r1]
c0de792e:	5de3      	ldrb	r3, [r4, r7]
c0de7930:	3001      	adds	r0, #1
c0de7932:	5463      	strb	r3, [r4, r1]
c0de7934:	55e2      	strb	r2, [r4, r7]
c0de7936:	3f01      	subs	r7, #1
c0de7938:	e7f5      	b.n	c0de7926 <format_u64+0x56>
c0de793a:	2601      	movs	r6, #1
c0de793c:	4630      	mov	r0, r6
c0de793e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de7942 <format_fpu64>:
c0de7942:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de7946:	b086      	sub	sp, #24
c0de7948:	466c      	mov	r4, sp
c0de794a:	4688      	mov	r8, r1
c0de794c:	4605      	mov	r5, r0
c0de794e:	2115      	movs	r1, #21
c0de7950:	461e      	mov	r6, r3
c0de7952:	4617      	mov	r7, r2
c0de7954:	4620      	mov	r0, r4
c0de7956:	f000 ffdb 	bl	c0de8910 <__aeabi_memclr>
c0de795a:	4620      	mov	r0, r4
c0de795c:	2115      	movs	r1, #21
c0de795e:	463a      	mov	r2, r7
c0de7960:	4633      	mov	r3, r6
c0de7962:	f7ff ffb5 	bl	c0de78d0 <format_u64>
c0de7966:	b340      	cbz	r0, c0de79ba <format_fpu64+0x78>
c0de7968:	466f      	mov	r7, sp
c0de796a:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de796c:	4638      	mov	r0, r7
c0de796e:	f001 f82b 	bl	c0de89c8 <strlen>
c0de7972:	42b0      	cmp	r0, r6
c0de7974:	d910      	bls.n	c0de7998 <format_fpu64+0x56>
c0de7976:	1831      	adds	r1, r6, r0
c0de7978:	3101      	adds	r1, #1
c0de797a:	4541      	cmp	r1, r8
c0de797c:	d21d      	bcs.n	c0de79ba <format_fpu64+0x78>
c0de797e:	1b84      	subs	r4, r0, r6
c0de7980:	4628      	mov	r0, r5
c0de7982:	4639      	mov	r1, r7
c0de7984:	4622      	mov	r2, r4
c0de7986:	f000 ffb9 	bl	c0de88fc <__aeabi_memcpy>
c0de798a:	1928      	adds	r0, r5, r4
c0de798c:	212e      	movs	r1, #46	@ 0x2e
c0de798e:	4632      	mov	r2, r6
c0de7990:	f800 1b01 	strb.w	r1, [r0], #1
c0de7994:	1939      	adds	r1, r7, r4
c0de7996:	e015      	b.n	c0de79c4 <format_fpu64+0x82>
c0de7998:	1a32      	subs	r2, r6, r0
c0de799a:	1c91      	adds	r1, r2, #2
c0de799c:	4541      	cmp	r1, r8
c0de799e:	d20c      	bcs.n	c0de79ba <format_fpu64+0x78>
c0de79a0:	202e      	movs	r0, #46	@ 0x2e
c0de79a2:	2330      	movs	r3, #48	@ 0x30
c0de79a4:	2400      	movs	r4, #0
c0de79a6:	7068      	strb	r0, [r5, #1]
c0de79a8:	1ca8      	adds	r0, r5, #2
c0de79aa:	702b      	strb	r3, [r5, #0]
c0de79ac:	b2a5      	uxth	r5, r4
c0de79ae:	42aa      	cmp	r2, r5
c0de79b0:	d905      	bls.n	c0de79be <format_fpu64+0x7c>
c0de79b2:	f800 3b01 	strb.w	r3, [r0], #1
c0de79b6:	3401      	adds	r4, #1
c0de79b8:	e7f8      	b.n	c0de79ac <format_fpu64+0x6a>
c0de79ba:	2000      	movs	r0, #0
c0de79bc:	e005      	b.n	c0de79ca <format_fpu64+0x88>
c0de79be:	eba8 0201 	sub.w	r2, r8, r1
c0de79c2:	4669      	mov	r1, sp
c0de79c4:	f001 f808 	bl	c0de89d8 <strncpy>
c0de79c8:	2001      	movs	r0, #1
c0de79ca:	b006      	add	sp, #24
c0de79cc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de79d0 <format_hex>:
c0de79d0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de79d2:	4604      	mov	r4, r0
c0de79d4:	0048      	lsls	r0, r1, #1
c0de79d6:	f100 0c01 	add.w	ip, r0, #1
c0de79da:	459c      	cmp	ip, r3
c0de79dc:	d902      	bls.n	c0de79e4 <format_hex+0x14>
c0de79de:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0de79e2:	e018      	b.n	c0de7a16 <format_hex+0x46>
c0de79e4:	480d      	ldr	r0, [pc, #52]	@ (c0de7a1c <format_hex+0x4c>)
c0de79e6:	2500      	movs	r5, #0
c0de79e8:	4478      	add	r0, pc
c0de79ea:	b191      	cbz	r1, c0de7a12 <format_hex+0x42>
c0de79ec:	1cef      	adds	r7, r5, #3
c0de79ee:	429f      	cmp	r7, r3
c0de79f0:	d80d      	bhi.n	c0de7a0e <format_hex+0x3e>
c0de79f2:	7827      	ldrb	r7, [r4, #0]
c0de79f4:	3901      	subs	r1, #1
c0de79f6:	093f      	lsrs	r7, r7, #4
c0de79f8:	5dc7      	ldrb	r7, [r0, r7]
c0de79fa:	5557      	strb	r7, [r2, r5]
c0de79fc:	1957      	adds	r7, r2, r5
c0de79fe:	3502      	adds	r5, #2
c0de7a00:	f814 6b01 	ldrb.w	r6, [r4], #1
c0de7a04:	f006 060f 	and.w	r6, r6, #15
c0de7a08:	5d86      	ldrb	r6, [r0, r6]
c0de7a0a:	707e      	strb	r6, [r7, #1]
c0de7a0c:	e7ed      	b.n	c0de79ea <format_hex+0x1a>
c0de7a0e:	f105 0c01 	add.w	ip, r5, #1
c0de7a12:	2000      	movs	r0, #0
c0de7a14:	5550      	strb	r0, [r2, r5]
c0de7a16:	4660      	mov	r0, ip
c0de7a18:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de7a1a:	bf00      	nop
c0de7a1c:	0000142d 	.word	0x0000142d

c0de7a20 <app_ticker_event_callback>:
c0de7a20:	4770      	bx	lr
	...

c0de7a24 <io_event>:
c0de7a24:	b580      	push	{r7, lr}
c0de7a26:	480a      	ldr	r0, [pc, #40]	@ (c0de7a50 <io_event+0x2c>)
c0de7a28:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de7a2c:	290e      	cmp	r1, #14
c0de7a2e:	d005      	beq.n	c0de7a3c <io_event+0x18>
c0de7a30:	2905      	cmp	r1, #5
c0de7a32:	d108      	bne.n	c0de7a46 <io_event+0x22>
c0de7a34:	4448      	add	r0, r9
c0de7a36:	f000 f92f 	bl	c0de7c98 <ux_process_button_event>
c0de7a3a:	e006      	b.n	c0de7a4a <io_event+0x26>
c0de7a3c:	f7ff fff0 	bl	c0de7a20 <app_ticker_event_callback>
c0de7a40:	f000 f96e 	bl	c0de7d20 <ux_process_ticker_event>
c0de7a44:	e001      	b.n	c0de7a4a <io_event+0x26>
c0de7a46:	f000 f983 	bl	c0de7d50 <ux_process_default_event>
c0de7a4a:	2001      	movs	r0, #1
c0de7a4c:	bd80      	pop	{r7, pc}
c0de7a4e:	bf00      	nop
c0de7a50:	000012ac 	.word	0x000012ac

c0de7a54 <io_init>:
c0de7a54:	4802      	ldr	r0, [pc, #8]	@ (c0de7a60 <io_init+0xc>)
c0de7a56:	2101      	movs	r1, #1
c0de7a58:	f809 1000 	strb.w	r1, [r9, r0]
c0de7a5c:	4770      	bx	lr
c0de7a5e:	bf00      	nop
c0de7a60:	000013bc 	.word	0x000013bc

c0de7a64 <io_recv_command>:
c0de7a64:	b510      	push	{r4, lr}
c0de7a66:	4c09      	ldr	r4, [pc, #36]	@ (c0de7a8c <io_recv_command+0x28>)
c0de7a68:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de7a6c:	2801      	cmp	r0, #1
c0de7a6e:	d104      	bne.n	c0de7a7a <io_recv_command+0x16>
c0de7a70:	f000 fe0a 	bl	c0de8688 <os_io_start>
c0de7a74:	2000      	movs	r0, #0
c0de7a76:	f809 0004 	strb.w	r0, [r9, r4]
c0de7a7a:	2000      	movs	r0, #0
c0de7a7c:	2800      	cmp	r0, #0
c0de7a7e:	dc03      	bgt.n	c0de7a88 <io_recv_command+0x24>
c0de7a80:	2001      	movs	r0, #1
c0de7a82:	f7fc fe53 	bl	c0de472c <io_legacy_apdu_rx>
c0de7a86:	e7f9      	b.n	c0de7a7c <io_recv_command+0x18>
c0de7a88:	bd10      	pop	{r4, pc}
c0de7a8a:	bf00      	nop
c0de7a8c:	000013bc 	.word	0x000013bc

c0de7a90 <io_send_response_buffers>:
c0de7a90:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de7a94:	f8df a060 	ldr.w	sl, [pc, #96]	@ c0de7af8 <io_send_response_buffers+0x68>
c0de7a98:	4690      	mov	r8, r2
c0de7a9a:	460f      	mov	r7, r1
c0de7a9c:	4605      	mov	r5, r0
c0de7a9e:	f240 140f 	movw	r4, #271	@ 0x10f
c0de7aa2:	2600      	movs	r6, #0
c0de7aa4:	b1b5      	cbz	r5, c0de7ad4 <io_send_response_buffers+0x44>
c0de7aa6:	b1af      	cbz	r7, c0de7ad4 <io_send_response_buffers+0x44>
c0de7aa8:	2600      	movs	r6, #0
c0de7aaa:	b19f      	cbz	r7, c0de7ad4 <io_send_response_buffers+0x44>
c0de7aac:	eb09 000a 	add.w	r0, r9, sl
c0de7ab0:	1ba2      	subs	r2, r4, r6
c0de7ab2:	1981      	adds	r1, r0, r6
c0de7ab4:	4628      	mov	r0, r5
c0de7ab6:	f7ff fe03 	bl	c0de76c0 <buffer_copy>
c0de7aba:	b130      	cbz	r0, c0de7aca <io_send_response_buffers+0x3a>
c0de7abc:	e9d5 0101 	ldrd	r0, r1, [r5, #4]
c0de7ac0:	350c      	adds	r5, #12
c0de7ac2:	3f01      	subs	r7, #1
c0de7ac4:	4430      	add	r0, r6
c0de7ac6:	1a46      	subs	r6, r0, r1
c0de7ac8:	e7ef      	b.n	c0de7aaa <io_send_response_buffers+0x1a>
c0de7aca:	f646 2884 	movw	r8, #27268	@ 0x6a84
c0de7ace:	2500      	movs	r5, #0
c0de7ad0:	2700      	movs	r7, #0
c0de7ad2:	e7e6      	b.n	c0de7aa2 <io_send_response_buffers+0x12>
c0de7ad4:	eb09 050a 	add.w	r5, r9, sl
c0de7ad8:	fa1f f288 	uxth.w	r2, r8
c0de7adc:	4631      	mov	r1, r6
c0de7ade:	4628      	mov	r0, r5
c0de7ae0:	f000 f8d4 	bl	c0de7c8c <write_u16_be>
c0de7ae4:	1cb0      	adds	r0, r6, #2
c0de7ae6:	b281      	uxth	r1, r0
c0de7ae8:	4628      	mov	r0, r5
c0de7aea:	f7fc fe0b 	bl	c0de4704 <io_legacy_apdu_tx>
c0de7aee:	ea40 70e0 	orr.w	r0, r0, r0, asr #31
c0de7af2:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de7af6:	bf00      	nop
c0de7af8:	00000f01 	.word	0x00000f01

c0de7afc <app_exit>:
c0de7afc:	20ff      	movs	r0, #255	@ 0xff
c0de7afe:	f000 fdaf 	bl	c0de8660 <os_sched_exit>

c0de7b02 <common_app_init>:
c0de7b02:	b580      	push	{r7, lr}
c0de7b04:	f000 f98a 	bl	c0de7e1c <nbgl_objInit>
c0de7b08:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de7b0c:	f7fc beea 	b.w	c0de48e4 <io_seproxyhal_init>

c0de7b10 <standalone_app_main>:
c0de7b10:	b510      	push	{r4, lr}
c0de7b12:	b08c      	sub	sp, #48	@ 0x30
c0de7b14:	466c      	mov	r4, sp
c0de7b16:	4620      	mov	r0, r4
c0de7b18:	f000 ff3e 	bl	c0de8998 <setjmp>
c0de7b1c:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de7b20:	0400      	lsls	r0, r0, #16
c0de7b22:	d108      	bne.n	c0de7b36 <standalone_app_main+0x26>
c0de7b24:	4668      	mov	r0, sp
c0de7b26:	f000 fdd9 	bl	c0de86dc <try_context_set>
c0de7b2a:	900a      	str	r0, [sp, #40]	@ 0x28
c0de7b2c:	f7ff ffe9 	bl	c0de7b02 <common_app_init>
c0de7b30:	f7f8 fb6e 	bl	c0de0210 <app_main>
c0de7b34:	e005      	b.n	c0de7b42 <standalone_app_main+0x32>
c0de7b36:	2000      	movs	r0, #0
c0de7b38:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de7b3c:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de7b3e:	f000 fdcd 	bl	c0de86dc <try_context_set>
c0de7b42:	f000 fdc3 	bl	c0de86cc <try_context_get>
c0de7b46:	42a0      	cmp	r0, r4
c0de7b48:	d102      	bne.n	c0de7b50 <standalone_app_main+0x40>
c0de7b4a:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de7b4c:	f000 fdc6 	bl	c0de86dc <try_context_set>
c0de7b50:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de7b54:	b908      	cbnz	r0, c0de7b5a <standalone_app_main+0x4a>
c0de7b56:	f7ff ffd1 	bl	c0de7afc <app_exit>
c0de7b5a:	f000 f9c4 	bl	c0de7ee6 <os_longjmp>

c0de7b5e <apdu_parser>:
c0de7b5e:	2a04      	cmp	r2, #4
c0de7b60:	d316      	bcc.n	c0de7b90 <apdu_parser+0x32>
c0de7b62:	d102      	bne.n	c0de7b6a <apdu_parser+0xc>
c0de7b64:	2300      	movs	r3, #0
c0de7b66:	7103      	strb	r3, [r0, #4]
c0de7b68:	e004      	b.n	c0de7b74 <apdu_parser+0x16>
c0de7b6a:	790b      	ldrb	r3, [r1, #4]
c0de7b6c:	3a05      	subs	r2, #5
c0de7b6e:	429a      	cmp	r2, r3
c0de7b70:	7103      	strb	r3, [r0, #4]
c0de7b72:	d10d      	bne.n	c0de7b90 <apdu_parser+0x32>
c0de7b74:	780a      	ldrb	r2, [r1, #0]
c0de7b76:	2b00      	cmp	r3, #0
c0de7b78:	7002      	strb	r2, [r0, #0]
c0de7b7a:	784a      	ldrb	r2, [r1, #1]
c0de7b7c:	7042      	strb	r2, [r0, #1]
c0de7b7e:	788a      	ldrb	r2, [r1, #2]
c0de7b80:	7082      	strb	r2, [r0, #2]
c0de7b82:	bf18      	it	ne
c0de7b84:	1d4b      	addne	r3, r1, #5
c0de7b86:	78c9      	ldrb	r1, [r1, #3]
c0de7b88:	6083      	str	r3, [r0, #8]
c0de7b8a:	70c1      	strb	r1, [r0, #3]
c0de7b8c:	2001      	movs	r0, #1
c0de7b8e:	4770      	bx	lr
c0de7b90:	2000      	movs	r0, #0
c0de7b92:	4770      	bx	lr

c0de7b94 <read_u32_be>:
c0de7b94:	5c42      	ldrb	r2, [r0, r1]
c0de7b96:	4408      	add	r0, r1
c0de7b98:	7841      	ldrb	r1, [r0, #1]
c0de7b9a:	7883      	ldrb	r3, [r0, #2]
c0de7b9c:	78c0      	ldrb	r0, [r0, #3]
c0de7b9e:	0409      	lsls	r1, r1, #16
c0de7ba0:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0de7ba4:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de7ba8:	4408      	add	r0, r1
c0de7baa:	4770      	bx	lr

c0de7bac <read_u64_be>:
c0de7bac:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7bae:	1842      	adds	r2, r0, r1
c0de7bb0:	5c40      	ldrb	r0, [r0, r1]
c0de7bb2:	7917      	ldrb	r7, [r2, #4]
c0de7bb4:	7953      	ldrb	r3, [r2, #5]
c0de7bb6:	7854      	ldrb	r4, [r2, #1]
c0de7bb8:	7895      	ldrb	r5, [r2, #2]
c0de7bba:	78d6      	ldrb	r6, [r2, #3]
c0de7bbc:	063f      	lsls	r7, r7, #24
c0de7bbe:	0421      	lsls	r1, r4, #16
c0de7bc0:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0de7bc4:	7997      	ldrb	r7, [r2, #6]
c0de7bc6:	79d2      	ldrb	r2, [r2, #7]
c0de7bc8:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de7bcc:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de7bd0:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0de7bd4:	1981      	adds	r1, r0, r6
c0de7bd6:	441a      	add	r2, r3
c0de7bd8:	4610      	mov	r0, r2
c0de7bda:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de7bdc <read_u16_le>:
c0de7bdc:	5c42      	ldrb	r2, [r0, r1]
c0de7bde:	4408      	add	r0, r1
c0de7be0:	7840      	ldrb	r0, [r0, #1]
c0de7be2:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de7be6:	b280      	uxth	r0, r0
c0de7be8:	4770      	bx	lr

c0de7bea <read_u32_le>:
c0de7bea:	5c42      	ldrb	r2, [r0, r1]
c0de7bec:	4408      	add	r0, r1
c0de7bee:	7841      	ldrb	r1, [r0, #1]
c0de7bf0:	7883      	ldrb	r3, [r0, #2]
c0de7bf2:	78c0      	ldrb	r0, [r0, #3]
c0de7bf4:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de7bf8:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de7bfc:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de7c00:	4770      	bx	lr

c0de7c02 <read_u64_le>:
c0de7c02:	b5b0      	push	{r4, r5, r7, lr}
c0de7c04:	5c42      	ldrb	r2, [r0, r1]
c0de7c06:	4401      	add	r1, r0
c0de7c08:	7848      	ldrb	r0, [r1, #1]
c0de7c0a:	788b      	ldrb	r3, [r1, #2]
c0de7c0c:	790d      	ldrb	r5, [r1, #4]
c0de7c0e:	78cc      	ldrb	r4, [r1, #3]
c0de7c10:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de7c14:	794a      	ldrb	r2, [r1, #5]
c0de7c16:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de7c1a:	798b      	ldrb	r3, [r1, #6]
c0de7c1c:	79c9      	ldrb	r1, [r1, #7]
c0de7c1e:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de7c22:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0de7c26:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de7c2a:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0de7c2e:	bdb0      	pop	{r4, r5, r7, pc}

c0de7c30 <varint_read>:
c0de7c30:	b510      	push	{r4, lr}
c0de7c32:	b1d9      	cbz	r1, c0de7c6c <varint_read+0x3c>
c0de7c34:	4614      	mov	r4, r2
c0de7c36:	4602      	mov	r2, r0
c0de7c38:	7800      	ldrb	r0, [r0, #0]
c0de7c3a:	28ff      	cmp	r0, #255	@ 0xff
c0de7c3c:	d00c      	beq.n	c0de7c58 <varint_read+0x28>
c0de7c3e:	28fe      	cmp	r0, #254	@ 0xfe
c0de7c40:	d012      	beq.n	c0de7c68 <varint_read+0x38>
c0de7c42:	28fd      	cmp	r0, #253	@ 0xfd
c0de7c44:	d115      	bne.n	c0de7c72 <varint_read+0x42>
c0de7c46:	2903      	cmp	r1, #3
c0de7c48:	d310      	bcc.n	c0de7c6c <varint_read+0x3c>
c0de7c4a:	4610      	mov	r0, r2
c0de7c4c:	2101      	movs	r1, #1
c0de7c4e:	f7ff ffc5 	bl	c0de7bdc <read_u16_le>
c0de7c52:	2100      	movs	r1, #0
c0de7c54:	2203      	movs	r2, #3
c0de7c56:	e015      	b.n	c0de7c84 <varint_read+0x54>
c0de7c58:	2909      	cmp	r1, #9
c0de7c5a:	d307      	bcc.n	c0de7c6c <varint_read+0x3c>
c0de7c5c:	4610      	mov	r0, r2
c0de7c5e:	2101      	movs	r1, #1
c0de7c60:	f7ff ffcf 	bl	c0de7c02 <read_u64_le>
c0de7c64:	2209      	movs	r2, #9
c0de7c66:	e00d      	b.n	c0de7c84 <varint_read+0x54>
c0de7c68:	2905      	cmp	r1, #5
c0de7c6a:	d205      	bcs.n	c0de7c78 <varint_read+0x48>
c0de7c6c:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de7c70:	e00a      	b.n	c0de7c88 <varint_read+0x58>
c0de7c72:	2100      	movs	r1, #0
c0de7c74:	2201      	movs	r2, #1
c0de7c76:	e005      	b.n	c0de7c84 <varint_read+0x54>
c0de7c78:	4610      	mov	r0, r2
c0de7c7a:	2101      	movs	r1, #1
c0de7c7c:	f7ff ffb5 	bl	c0de7bea <read_u32_le>
c0de7c80:	2100      	movs	r1, #0
c0de7c82:	2205      	movs	r2, #5
c0de7c84:	e9c4 0100 	strd	r0, r1, [r4]
c0de7c88:	4610      	mov	r0, r2
c0de7c8a:	bd10      	pop	{r4, pc}

c0de7c8c <write_u16_be>:
c0de7c8c:	0a13      	lsrs	r3, r2, #8
c0de7c8e:	5443      	strb	r3, [r0, r1]
c0de7c90:	4408      	add	r0, r1
c0de7c92:	7042      	strb	r2, [r0, #1]
c0de7c94:	4770      	bx	lr
	...

c0de7c98 <ux_process_button_event>:
c0de7c98:	b5b0      	push	{r4, r5, r7, lr}
c0de7c9a:	4604      	mov	r4, r0
c0de7c9c:	2001      	movs	r0, #1
c0de7c9e:	f000 f815 	bl	c0de7ccc <ux_forward_event>
c0de7ca2:	4605      	mov	r5, r0
c0de7ca4:	f000 f8bf 	bl	c0de7e26 <nbgl_objAllowDrawing>
c0de7ca8:	b165      	cbz	r5, c0de7cc4 <ux_process_button_event+0x2c>
c0de7caa:	4807      	ldr	r0, [pc, #28]	@ (c0de7cc8 <ux_process_button_event+0x30>)
c0de7cac:	2164      	movs	r1, #100	@ 0x64
c0de7cae:	f859 0000 	ldr.w	r0, [r9, r0]
c0de7cb2:	4341      	muls	r1, r0
c0de7cb4:	78e0      	ldrb	r0, [r4, #3]
c0de7cb6:	0840      	lsrs	r0, r0, #1
c0de7cb8:	f000 f905 	bl	c0de7ec6 <nbgl_buttonsHandler>
c0de7cbc:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de7cc0:	f000 b8a7 	b.w	c0de7e12 <nbgl_refresh>
c0de7cc4:	bdb0      	pop	{r4, r5, r7, pc}
c0de7cc6:	bf00      	nop
c0de7cc8:	000013cc 	.word	0x000013cc

c0de7ccc <ux_forward_event>:
c0de7ccc:	b5b0      	push	{r4, r5, r7, lr}
c0de7cce:	4604      	mov	r4, r0
c0de7cd0:	4812      	ldr	r0, [pc, #72]	@ (c0de7d1c <ux_forward_event+0x50>)
c0de7cd2:	2101      	movs	r1, #1
c0de7cd4:	f809 1000 	strb.w	r1, [r9, r0]
c0de7cd8:	eb09 0500 	add.w	r5, r9, r0
c0de7cdc:	2000      	movs	r0, #0
c0de7cde:	6068      	str	r0, [r5, #4]
c0de7ce0:	4628      	mov	r0, r5
c0de7ce2:	f000 fc9f 	bl	c0de8624 <os_ux>
c0de7ce6:	2004      	movs	r0, #4
c0de7ce8:	f000 fd02 	bl	c0de86f0 <os_sched_last_status>
c0de7cec:	2869      	cmp	r0, #105	@ 0x69
c0de7cee:	6068      	str	r0, [r5, #4]
c0de7cf0:	d108      	bne.n	c0de7d04 <ux_forward_event+0x38>
c0de7cf2:	2001      	movs	r0, #1
c0de7cf4:	f000 f897 	bl	c0de7e26 <nbgl_objAllowDrawing>
c0de7cf8:	f000 f8a4 	bl	c0de7e44 <nbgl_screenRedraw>
c0de7cfc:	f000 f889 	bl	c0de7e12 <nbgl_refresh>
c0de7d00:	2000      	movs	r0, #0
c0de7d02:	bdb0      	pop	{r4, r5, r7, pc}
c0de7d04:	b144      	cbz	r4, c0de7d18 <ux_forward_event+0x4c>
c0de7d06:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0de7d0a:	bf18      	it	ne
c0de7d0c:	2101      	movne	r1, #1
c0de7d0e:	2800      	cmp	r0, #0
c0de7d10:	bf18      	it	ne
c0de7d12:	2001      	movne	r0, #1
c0de7d14:	4008      	ands	r0, r1
c0de7d16:	bdb0      	pop	{r4, r5, r7, pc}
c0de7d18:	2001      	movs	r0, #1
c0de7d1a:	bdb0      	pop	{r4, r5, r7, pc}
c0de7d1c:	000013c0 	.word	0x000013c0

c0de7d20 <ux_process_ticker_event>:
c0de7d20:	b510      	push	{r4, lr}
c0de7d22:	480a      	ldr	r0, [pc, #40]	@ (c0de7d4c <ux_process_ticker_event+0x2c>)
c0de7d24:	f859 1000 	ldr.w	r1, [r9, r0]
c0de7d28:	3101      	adds	r1, #1
c0de7d2a:	f849 1000 	str.w	r1, [r9, r0]
c0de7d2e:	2001      	movs	r0, #1
c0de7d30:	f7ff ffcc 	bl	c0de7ccc <ux_forward_event>
c0de7d34:	4604      	mov	r4, r0
c0de7d36:	f000 f876 	bl	c0de7e26 <nbgl_objAllowDrawing>
c0de7d3a:	b134      	cbz	r4, c0de7d4a <ux_process_ticker_event+0x2a>
c0de7d3c:	2064      	movs	r0, #100	@ 0x64
c0de7d3e:	f000 f88b 	bl	c0de7e58 <nbgl_screenHandler>
c0de7d42:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de7d46:	f000 b864 	b.w	c0de7e12 <nbgl_refresh>
c0de7d4a:	bd10      	pop	{r4, pc}
c0de7d4c:	000013cc 	.word	0x000013cc

c0de7d50 <ux_process_default_event>:
c0de7d50:	2000      	movs	r0, #0
c0de7d52:	f7ff bfbb 	b.w	c0de7ccc <ux_forward_event>

c0de7d56 <hash_iovec_ex>:
c0de7d56:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de7d5a:	468a      	mov	sl, r1
c0de7d5c:	4611      	mov	r1, r2
c0de7d5e:	461a      	mov	r2, r3
c0de7d60:	4605      	mov	r5, r0
c0de7d62:	f000 f840 	bl	c0de7de6 <cx_hash_init_ex>
c0de7d66:	4607      	mov	r7, r0
c0de7d68:	b9a8      	cbnz	r0, c0de7d96 <hash_iovec_ex+0x40>
c0de7d6a:	f10d 0820 	add.w	r8, sp, #32
c0de7d6e:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0de7d72:	1d04      	adds	r4, r0, #4
c0de7d74:	b156      	cbz	r6, c0de7d8c <hash_iovec_ex+0x36>
c0de7d76:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de7d7a:	f854 2b08 	ldr.w	r2, [r4], #8
c0de7d7e:	4628      	mov	r0, r5
c0de7d80:	f000 f836 	bl	c0de7df0 <cx_hash_update>
c0de7d84:	3e01      	subs	r6, #1
c0de7d86:	2800      	cmp	r0, #0
c0de7d88:	d0f4      	beq.n	c0de7d74 <hash_iovec_ex+0x1e>
c0de7d8a:	e003      	b.n	c0de7d94 <hash_iovec_ex+0x3e>
c0de7d8c:	4628      	mov	r0, r5
c0de7d8e:	4641      	mov	r1, r8
c0de7d90:	f000 f824 	bl	c0de7ddc <cx_hash_final>
c0de7d94:	4607      	mov	r7, r0
c0de7d96:	4628      	mov	r0, r5
c0de7d98:	4651      	mov	r1, sl
c0de7d9a:	f000 fdc7 	bl	c0de892c <explicit_bzero>
c0de7d9e:	4638      	mov	r0, r7
c0de7da0:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de7da4 <cx_keccak_256_hash_iovec>:
c0de7da4:	b580      	push	{r7, lr}
c0de7da6:	b0ee      	sub	sp, #440	@ 0x1b8
c0de7da8:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de7dac:	a804      	add	r0, sp, #16
c0de7dae:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0de7db2:	2206      	movs	r2, #6
c0de7db4:	2320      	movs	r3, #32
c0de7db6:	f7ff ffce 	bl	c0de7d56 <hash_iovec_ex>
c0de7dba:	b06e      	add	sp, #440	@ 0x1b8
c0de7dbc:	bd80      	pop	{r7, pc}

c0de7dbe <cx_ecdsa_sign_no_throw>:
c0de7dbe:	b403      	push	{r0, r1}
c0de7dc0:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0de7dc4:	f000 b81e 	b.w	c0de7e04 <cx_trampoline_helper>

c0de7dc8 <cx_ecfp_generate_pair2_no_throw>:
c0de7dc8:	b403      	push	{r0, r1}
c0de7dca:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0de7dce:	f000 b819 	b.w	c0de7e04 <cx_trampoline_helper>

c0de7dd2 <cx_ecfp_init_private_key_no_throw>:
c0de7dd2:	b403      	push	{r0, r1}
c0de7dd4:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de7dd8:	f000 b814 	b.w	c0de7e04 <cx_trampoline_helper>

c0de7ddc <cx_hash_final>:
c0de7ddc:	b403      	push	{r0, r1}
c0de7dde:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0de7de2:	f000 b80f 	b.w	c0de7e04 <cx_trampoline_helper>

c0de7de6 <cx_hash_init_ex>:
c0de7de6:	b403      	push	{r0, r1}
c0de7de8:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0de7dec:	f000 b80a 	b.w	c0de7e04 <cx_trampoline_helper>

c0de7df0 <cx_hash_update>:
c0de7df0:	b403      	push	{r0, r1}
c0de7df2:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0de7df6:	f000 b805 	b.w	c0de7e04 <cx_trampoline_helper>
	...

c0de7dfc <cx_aes_siv_reset>:
c0de7dfc:	b403      	push	{r0, r1}
c0de7dfe:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de7e02:	e7ff      	b.n	c0de7e04 <cx_trampoline_helper>

c0de7e04 <cx_trampoline_helper>:
c0de7e04:	4900      	ldr	r1, [pc, #0]	@ (c0de7e08 <cx_trampoline_helper+0x4>)
c0de7e06:	4708      	bx	r1
c0de7e08:	00808001 	.word	0x00808001

c0de7e0c <assert_exit>:
c0de7e0c:	20ff      	movs	r0, #255	@ 0xff
c0de7e0e:	f000 fc27 	bl	c0de8660 <os_sched_exit>

c0de7e12 <nbgl_refresh>:
c0de7e12:	b403      	push	{r0, r1}
c0de7e14:	f04f 0091 	mov.w	r0, #145	@ 0x91
c0de7e18:	f000 b85e 	b.w	c0de7ed8 <nbgl_trampoline_helper>

c0de7e1c <nbgl_objInit>:
c0de7e1c:	b403      	push	{r0, r1}
c0de7e1e:	f04f 0096 	mov.w	r0, #150	@ 0x96
c0de7e22:	f000 b859 	b.w	c0de7ed8 <nbgl_trampoline_helper>

c0de7e26 <nbgl_objAllowDrawing>:
c0de7e26:	b403      	push	{r0, r1}
c0de7e28:	f04f 0098 	mov.w	r0, #152	@ 0x98
c0de7e2c:	f000 b854 	b.w	c0de7ed8 <nbgl_trampoline_helper>

c0de7e30 <nbgl_screenSet>:
c0de7e30:	b403      	push	{r0, r1}
c0de7e32:	f04f 009b 	mov.w	r0, #155	@ 0x9b
c0de7e36:	f000 b84f 	b.w	c0de7ed8 <nbgl_trampoline_helper>

c0de7e3a <nbgl_screenPush>:
c0de7e3a:	b403      	push	{r0, r1}
c0de7e3c:	f04f 009c 	mov.w	r0, #156	@ 0x9c
c0de7e40:	f000 b84a 	b.w	c0de7ed8 <nbgl_trampoline_helper>

c0de7e44 <nbgl_screenRedraw>:
c0de7e44:	b403      	push	{r0, r1}
c0de7e46:	f04f 009d 	mov.w	r0, #157	@ 0x9d
c0de7e4a:	f000 b845 	b.w	c0de7ed8 <nbgl_trampoline_helper>

c0de7e4e <nbgl_screenPop>:
c0de7e4e:	b403      	push	{r0, r1}
c0de7e50:	f04f 009e 	mov.w	r0, #158	@ 0x9e
c0de7e54:	f000 b840 	b.w	c0de7ed8 <nbgl_trampoline_helper>

c0de7e58 <nbgl_screenHandler>:
c0de7e58:	b403      	push	{r0, r1}
c0de7e5a:	f04f 00a7 	mov.w	r0, #167	@ 0xa7
c0de7e5e:	f000 b83b 	b.w	c0de7ed8 <nbgl_trampoline_helper>

c0de7e62 <nbgl_objPoolGet>:
c0de7e62:	b403      	push	{r0, r1}
c0de7e64:	f04f 00a8 	mov.w	r0, #168	@ 0xa8
c0de7e68:	f000 b836 	b.w	c0de7ed8 <nbgl_trampoline_helper>

c0de7e6c <nbgl_containerPoolGet>:
c0de7e6c:	b403      	push	{r0, r1}
c0de7e6e:	f04f 00aa 	mov.w	r0, #170	@ 0xaa
c0de7e72:	f000 b831 	b.w	c0de7ed8 <nbgl_trampoline_helper>

c0de7e76 <nbgl_getFont>:
c0de7e76:	b403      	push	{r0, r1}
c0de7e78:	f04f 00ac 	mov.w	r0, #172	@ 0xac
c0de7e7c:	f000 b82c 	b.w	c0de7ed8 <nbgl_trampoline_helper>

c0de7e80 <nbgl_getFontLineHeight>:
c0de7e80:	b403      	push	{r0, r1}
c0de7e82:	f04f 00ae 	mov.w	r0, #174	@ 0xae
c0de7e86:	f000 b827 	b.w	c0de7ed8 <nbgl_trampoline_helper>

c0de7e8a <nbgl_getTextMaxLenAndWidth>:
c0de7e8a:	b403      	push	{r0, r1}
c0de7e8c:	f04f 00b3 	mov.w	r0, #179	@ 0xb3
c0de7e90:	f000 b822 	b.w	c0de7ed8 <nbgl_trampoline_helper>

c0de7e94 <nbgl_getTextNbLinesInWidth>:
c0de7e94:	b403      	push	{r0, r1}
c0de7e96:	f04f 00b4 	mov.w	r0, #180	@ 0xb4
c0de7e9a:	f000 b81d 	b.w	c0de7ed8 <nbgl_trampoline_helper>

c0de7e9e <nbgl_getTextNbPagesInWidth>:
c0de7e9e:	b403      	push	{r0, r1}
c0de7ea0:	f04f 00b5 	mov.w	r0, #181	@ 0xb5
c0de7ea4:	f000 b818 	b.w	c0de7ed8 <nbgl_trampoline_helper>

c0de7ea8 <nbgl_getTextWidth>:
c0de7ea8:	b403      	push	{r0, r1}
c0de7eaa:	f04f 00b6 	mov.w	r0, #182	@ 0xb6
c0de7eae:	f000 b813 	b.w	c0de7ed8 <nbgl_trampoline_helper>

c0de7eb2 <nbgl_getTextMaxLenInNbLines>:
c0de7eb2:	b403      	push	{r0, r1}
c0de7eb4:	f04f 00b7 	mov.w	r0, #183	@ 0xb7
c0de7eb8:	f000 b80e 	b.w	c0de7ed8 <nbgl_trampoline_helper>

c0de7ebc <nbgl_textReduceOnNbLines>:
c0de7ebc:	b403      	push	{r0, r1}
c0de7ebe:	f04f 00b8 	mov.w	r0, #184	@ 0xb8
c0de7ec2:	f000 b809 	b.w	c0de7ed8 <nbgl_trampoline_helper>

c0de7ec6 <nbgl_buttonsHandler>:
c0de7ec6:	b403      	push	{r0, r1}
c0de7ec8:	f04f 00be 	mov.w	r0, #190	@ 0xbe
c0de7ecc:	f000 b804 	b.w	c0de7ed8 <nbgl_trampoline_helper>

c0de7ed0 <pic_init>:
c0de7ed0:	b403      	push	{r0, r1}
c0de7ed2:	f04f 00c4 	mov.w	r0, #196	@ 0xc4
c0de7ed6:	e7ff      	b.n	c0de7ed8 <nbgl_trampoline_helper>

c0de7ed8 <nbgl_trampoline_helper>:
c0de7ed8:	4900      	ldr	r1, [pc, #0]	@ (c0de7edc <nbgl_trampoline_helper+0x4>)
c0de7eda:	4708      	bx	r1
c0de7edc:	00808001 	.word	0x00808001

c0de7ee0 <os_boot>:
c0de7ee0:	2000      	movs	r0, #0
c0de7ee2:	f000 bbfb 	b.w	c0de86dc <try_context_set>

c0de7ee6 <os_longjmp>:
c0de7ee6:	4604      	mov	r4, r0
c0de7ee8:	f000 fbf0 	bl	c0de86cc <try_context_get>
c0de7eec:	4621      	mov	r1, r4
c0de7eee:	f000 fd59 	bl	c0de89a4 <longjmp>
	...

c0de7ef4 <snprintf>:
c0de7ef4:	b081      	sub	sp, #4
c0de7ef6:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7efa:	b095      	sub	sp, #84	@ 0x54
c0de7efc:	2800      	cmp	r0, #0
c0de7efe:	931d      	str	r3, [sp, #116]	@ 0x74
c0de7f00:	f000 8287 	beq.w	c0de8412 <snprintf+0x51e>
c0de7f04:	460e      	mov	r6, r1
c0de7f06:	2900      	cmp	r1, #0
c0de7f08:	f000 8283 	beq.w	c0de8412 <snprintf+0x51e>
c0de7f0c:	4631      	mov	r1, r6
c0de7f0e:	4690      	mov	r8, r2
c0de7f10:	4605      	mov	r5, r0
c0de7f12:	f000 fcfd 	bl	c0de8910 <__aeabi_memclr>
c0de7f16:	2000      	movs	r0, #0
c0de7f18:	f10d 0a2c 	add.w	sl, sp, #44	@ 0x2c
c0de7f1c:	9009      	str	r0, [sp, #36]	@ 0x24
c0de7f1e:	1e70      	subs	r0, r6, #1
c0de7f20:	e9cd 5007 	strd	r5, r0, [sp, #28]
c0de7f24:	a81d      	add	r0, sp, #116	@ 0x74
c0de7f26:	9004      	str	r0, [sp, #16]
c0de7f28:	900a      	str	r0, [sp, #40]	@ 0x28
c0de7f2a:	f898 0000 	ldrb.w	r0, [r8]
c0de7f2e:	2800      	cmp	r0, #0
c0de7f30:	f000 8276 	beq.w	c0de8420 <snprintf+0x52c>
c0de7f34:	2700      	movs	r7, #0
c0de7f36:	b130      	cbz	r0, c0de7f46 <snprintf+0x52>
c0de7f38:	2825      	cmp	r0, #37	@ 0x25
c0de7f3a:	d004      	beq.n	c0de7f46 <snprintf+0x52>
c0de7f3c:	eb08 0007 	add.w	r0, r8, r7
c0de7f40:	3701      	adds	r7, #1
c0de7f42:	7840      	ldrb	r0, [r0, #1]
c0de7f44:	e7f7      	b.n	c0de7f36 <snprintf+0x42>
c0de7f46:	eb08 0407 	add.w	r4, r8, r7
c0de7f4a:	b19f      	cbz	r7, c0de7f74 <snprintf+0x80>
c0de7f4c:	e9dd 6008 	ldrd	r6, r0, [sp, #32]
c0de7f50:	4438      	add	r0, r7
c0de7f52:	9009      	str	r0, [sp, #36]	@ 0x24
c0de7f54:	b16e      	cbz	r6, c0de7f72 <snprintf+0x7e>
c0de7f56:	42be      	cmp	r6, r7
c0de7f58:	bf88      	it	hi
c0de7f5a:	463e      	movhi	r6, r7
c0de7f5c:	9807      	ldr	r0, [sp, #28]
c0de7f5e:	4641      	mov	r1, r8
c0de7f60:	4632      	mov	r2, r6
c0de7f62:	f000 fccd 	bl	c0de8900 <__aeabi_memmove>
c0de7f66:	e9dd 0107 	ldrd	r0, r1, [sp, #28]
c0de7f6a:	4430      	add	r0, r6
c0de7f6c:	9007      	str	r0, [sp, #28]
c0de7f6e:	1b88      	subs	r0, r1, r6
c0de7f70:	9008      	str	r0, [sp, #32]
c0de7f72:	7820      	ldrb	r0, [r4, #0]
c0de7f74:	2825      	cmp	r0, #37	@ 0x25
c0de7f76:	46a0      	mov	r8, r4
c0de7f78:	d1d7      	bne.n	c0de7f2a <snprintf+0x36>
c0de7f7a:	f04f 0e00 	mov.w	lr, #0
c0de7f7e:	f104 0801 	add.w	r8, r4, #1
c0de7f82:	f04f 0c20 	mov.w	ip, #32
c0de7f86:	2400      	movs	r4, #0
c0de7f88:	2200      	movs	r2, #0
c0de7f8a:	f8cd e04c 	str.w	lr, [sp, #76]	@ 0x4c
c0de7f8e:	f108 0801 	add.w	r8, r8, #1
c0de7f92:	f818 3c01 	ldrb.w	r3, [r8, #-1]
c0de7f96:	4611      	mov	r1, r2
c0de7f98:	2200      	movs	r2, #0
c0de7f9a:	f108 0801 	add.w	r8, r8, #1
c0de7f9e:	2b2d      	cmp	r3, #45	@ 0x2d
c0de7fa0:	d0f7      	beq.n	c0de7f92 <snprintf+0x9e>
c0de7fa2:	f1a3 0230 	sub.w	r2, r3, #48	@ 0x30
c0de7fa6:	2a0a      	cmp	r2, #10
c0de7fa8:	d314      	bcc.n	c0de7fd4 <snprintf+0xe0>
c0de7faa:	2b25      	cmp	r3, #37	@ 0x25
c0de7fac:	d045      	beq.n	c0de803a <snprintf+0x146>
c0de7fae:	2b2a      	cmp	r3, #42	@ 0x2a
c0de7fb0:	d021      	beq.n	c0de7ff6 <snprintf+0x102>
c0de7fb2:	2b2e      	cmp	r3, #46	@ 0x2e
c0de7fb4:	d129      	bne.n	c0de800a <snprintf+0x116>
c0de7fb6:	f818 0c01 	ldrb.w	r0, [r8, #-1]
c0de7fba:	282a      	cmp	r0, #42	@ 0x2a
c0de7fbc:	f040 8229 	bne.w	c0de8412 <snprintf+0x51e>
c0de7fc0:	f898 1000 	ldrb.w	r1, [r8]
c0de7fc4:	2201      	movs	r2, #1
c0de7fc6:	2948      	cmp	r1, #72	@ 0x48
c0de7fc8:	d01b      	beq.n	c0de8002 <snprintf+0x10e>
c0de7fca:	2968      	cmp	r1, #104	@ 0x68
c0de7fcc:	d019      	beq.n	c0de8002 <snprintf+0x10e>
c0de7fce:	2973      	cmp	r1, #115	@ 0x73
c0de7fd0:	d017      	beq.n	c0de8002 <snprintf+0x10e>
c0de7fd2:	e21e      	b.n	c0de8412 <snprintf+0x51e>
c0de7fd4:	f083 0230 	eor.w	r2, r3, #48	@ 0x30
c0de7fd8:	f1a8 0801 	sub.w	r8, r8, #1
c0de7fdc:	ea52 020e 	orrs.w	r2, r2, lr
c0de7fe0:	bf08      	it	eq
c0de7fe2:	f04f 0c30 	moveq.w	ip, #48	@ 0x30
c0de7fe6:	eb0e 028e 	add.w	r2, lr, lr, lsl #2
c0de7fea:	eb03 0242 	add.w	r2, r3, r2, lsl #1
c0de7fee:	f1a2 0e30 	sub.w	lr, r2, #48	@ 0x30
c0de7ff2:	460a      	mov	r2, r1
c0de7ff4:	e7cb      	b.n	c0de7f8e <snprintf+0x9a>
c0de7ff6:	f818 0d01 	ldrb.w	r0, [r8, #-1]!
c0de7ffa:	2873      	cmp	r0, #115	@ 0x73
c0de7ffc:	f040 8209 	bne.w	c0de8412 <snprintf+0x51e>
c0de8000:	2202      	movs	r2, #2
c0de8002:	9804      	ldr	r0, [sp, #16]
c0de8004:	c810      	ldmia	r0!, {r4}
c0de8006:	9004      	str	r0, [sp, #16]
c0de8008:	e7c1      	b.n	c0de7f8e <snprintf+0x9a>
c0de800a:	2b48      	cmp	r3, #72	@ 0x48
c0de800c:	d022      	beq.n	c0de8054 <snprintf+0x160>
c0de800e:	2b58      	cmp	r3, #88	@ 0x58
c0de8010:	d023      	beq.n	c0de805a <snprintf+0x166>
c0de8012:	2b63      	cmp	r3, #99	@ 0x63
c0de8014:	d02b      	beq.n	c0de806e <snprintf+0x17a>
c0de8016:	2b64      	cmp	r3, #100	@ 0x64
c0de8018:	d03a      	beq.n	c0de8090 <snprintf+0x19c>
c0de801a:	2b68      	cmp	r3, #104	@ 0x68
c0de801c:	d048      	beq.n	c0de80b0 <snprintf+0x1bc>
c0de801e:	2b6c      	cmp	r3, #108	@ 0x6c
c0de8020:	d04a      	beq.n	c0de80b8 <snprintf+0x1c4>
c0de8022:	2b70      	cmp	r3, #112	@ 0x70
c0de8024:	d007      	beq.n	c0de8036 <snprintf+0x142>
c0de8026:	2b73      	cmp	r3, #115	@ 0x73
c0de8028:	d07a      	beq.n	c0de8120 <snprintf+0x22c>
c0de802a:	2b75      	cmp	r3, #117	@ 0x75
c0de802c:	f000 809a 	beq.w	c0de8164 <snprintf+0x270>
c0de8030:	2b78      	cmp	r3, #120	@ 0x78
c0de8032:	f040 81ee 	bne.w	c0de8412 <snprintf+0x51e>
c0de8036:	2000      	movs	r0, #0
c0de8038:	e010      	b.n	c0de805c <snprintf+0x168>
c0de803a:	e9dd 0108 	ldrd	r0, r1, [sp, #32]
c0de803e:	f1a8 0801 	sub.w	r8, r8, #1
c0de8042:	3101      	adds	r1, #1
c0de8044:	2800      	cmp	r0, #0
c0de8046:	9109      	str	r1, [sp, #36]	@ 0x24
c0de8048:	f43f af6f 	beq.w	c0de7f2a <snprintf+0x36>
c0de804c:	9807      	ldr	r0, [sp, #28]
c0de804e:	2125      	movs	r1, #37	@ 0x25
c0de8050:	7001      	strb	r1, [r0, #0]
c0de8052:	e017      	b.n	c0de8084 <snprintf+0x190>
c0de8054:	4de5      	ldr	r5, [pc, #916]	@ (c0de83ec <snprintf+0x4f8>)
c0de8056:	447d      	add	r5, pc
c0de8058:	e02c      	b.n	c0de80b4 <snprintf+0x1c0>
c0de805a:	2001      	movs	r0, #1
c0de805c:	9a04      	ldr	r2, [sp, #16]
c0de805e:	9006      	str	r0, [sp, #24]
c0de8060:	2000      	movs	r0, #0
c0de8062:	2710      	movs	r7, #16
c0de8064:	f8d2 b000 	ldr.w	fp, [r2]
c0de8068:	e9cd 0013 	strd	r0, r0, [sp, #76]	@ 0x4c
c0de806c:	e083      	b.n	c0de8176 <snprintf+0x282>
c0de806e:	9904      	ldr	r1, [sp, #16]
c0de8070:	f1a8 0801 	sub.w	r8, r8, #1
c0de8074:	c901      	ldmia	r1!, {r0}
c0de8076:	9104      	str	r1, [sp, #16]
c0de8078:	f000 fa4d 	bl	c0de8516 <OUTLINED_FUNCTION_1>
c0de807c:	f43f af55 	beq.w	c0de7f2a <snprintf+0x36>
c0de8080:	9907      	ldr	r1, [sp, #28]
c0de8082:	7008      	strb	r0, [r1, #0]
c0de8084:	9807      	ldr	r0, [sp, #28]
c0de8086:	9908      	ldr	r1, [sp, #32]
c0de8088:	3001      	adds	r0, #1
c0de808a:	9007      	str	r0, [sp, #28]
c0de808c:	1e48      	subs	r0, r1, #1
c0de808e:	e0d2      	b.n	c0de8236 <snprintf+0x342>
c0de8090:	9a04      	ldr	r2, [sp, #16]
c0de8092:	2100      	movs	r1, #0
c0de8094:	2000      	movs	r0, #0
c0de8096:	9006      	str	r0, [sp, #24]
c0de8098:	f8d2 b000 	ldr.w	fp, [r2]
c0de809c:	9114      	str	r1, [sp, #80]	@ 0x50
c0de809e:	ea4f 71db 	mov.w	r1, fp, lsr #31
c0de80a2:	f1bb 0f00 	cmp.w	fp, #0
c0de80a6:	9113      	str	r1, [sp, #76]	@ 0x4c
c0de80a8:	bf48      	it	mi
c0de80aa:	f1cb 0b00 	rsbmi	fp, fp, #0
c0de80ae:	e061      	b.n	c0de8174 <snprintf+0x280>
c0de80b0:	4de2      	ldr	r5, [pc, #904]	@ (c0de843c <snprintf+0x548>)
c0de80b2:	447d      	add	r5, pc
c0de80b4:	2001      	movs	r0, #1
c0de80b6:	e036      	b.n	c0de8126 <snprintf+0x232>
c0de80b8:	f818 1c01 	ldrb.w	r1, [r8, #-1]
c0de80bc:	296c      	cmp	r1, #108	@ 0x6c
c0de80be:	f040 81a8 	bne.w	c0de8412 <snprintf+0x51e>
c0de80c2:	f898 1000 	ldrb.w	r1, [r8]
c0de80c6:	f1a1 0264 	sub.w	r2, r1, #100	@ 0x64
c0de80ca:	2a14      	cmp	r2, #20
c0de80cc:	d805      	bhi.n	c0de80da <snprintf+0x1e6>
c0de80ce:	2001      	movs	r0, #1
c0de80d0:	fa00 f202 	lsl.w	r2, r0, r2
c0de80d4:	48d3      	ldr	r0, [pc, #844]	@ (c0de8424 <snprintf+0x530>)
c0de80d6:	4202      	tst	r2, r0
c0de80d8:	d102      	bne.n	c0de80e0 <snprintf+0x1ec>
c0de80da:	2958      	cmp	r1, #88	@ 0x58
c0de80dc:	f040 8199 	bne.w	c0de8412 <snprintf+0x51e>
c0de80e0:	2000      	movs	r0, #0
c0de80e2:	9014      	str	r0, [sp, #80]	@ 0x50
c0de80e4:	9804      	ldr	r0, [sp, #16]
c0de80e6:	f898 1000 	ldrb.w	r1, [r8]
c0de80ea:	1dc2      	adds	r2, r0, #7
c0de80ec:	f022 0007 	bic.w	r0, r2, #7
c0de80f0:	2958      	cmp	r1, #88	@ 0x58
c0de80f2:	6846      	ldr	r6, [r0, #4]
c0de80f4:	f850 2b08 	ldr.w	r2, [r0], #8
c0de80f8:	9206      	str	r2, [sp, #24]
c0de80fa:	9004      	str	r0, [sp, #16]
c0de80fc:	f000 80f9 	beq.w	c0de82f2 <snprintf+0x3fe>
c0de8100:	2964      	cmp	r1, #100	@ 0x64
c0de8102:	f000 80fe 	beq.w	c0de8302 <snprintf+0x40e>
c0de8106:	2000      	movs	r0, #0
c0de8108:	2975      	cmp	r1, #117	@ 0x75
c0de810a:	f000 8102 	beq.w	c0de8312 <snprintf+0x41e>
c0de810e:	2978      	cmp	r1, #120	@ 0x78
c0de8110:	f040 8103 	bne.w	c0de831a <snprintf+0x426>
c0de8114:	9013      	str	r0, [sp, #76]	@ 0x4c
c0de8116:	f108 0801 	add.w	r8, r8, #1
c0de811a:	48c5      	ldr	r0, [pc, #788]	@ (c0de8430 <snprintf+0x53c>)
c0de811c:	4478      	add	r0, pc
c0de811e:	e0ee      	b.n	c0de82fe <snprintf+0x40a>
c0de8120:	4dc5      	ldr	r5, [pc, #788]	@ (c0de8438 <snprintf+0x544>)
c0de8122:	2000      	movs	r0, #0
c0de8124:	447d      	add	r5, pc
c0de8126:	9a04      	ldr	r2, [sp, #16]
c0de8128:	b2c9      	uxtb	r1, r1
c0de812a:	f1a8 0801 	sub.w	r8, r8, #1
c0de812e:	2900      	cmp	r1, #0
c0de8130:	ca40      	ldmia	r2!, {r6}
c0de8132:	9204      	str	r2, [sp, #16]
c0de8134:	f000 8081 	beq.w	c0de823a <snprintf+0x346>
c0de8138:	2901      	cmp	r1, #1
c0de813a:	f000 8086 	beq.w	c0de824a <snprintf+0x356>
c0de813e:	2902      	cmp	r1, #2
c0de8140:	f040 8082 	bne.w	c0de8248 <snprintf+0x354>
c0de8144:	7830      	ldrb	r0, [r6, #0]
c0de8146:	2800      	cmp	r0, #0
c0de8148:	f040 8163 	bne.w	c0de8412 <snprintf+0x51e>
c0de814c:	4620      	mov	r0, r4
c0de814e:	2320      	movs	r3, #32
c0de8150:	2800      	cmp	r0, #0
c0de8152:	f000 80bc 	beq.w	c0de82ce <snprintf+0x3da>
c0de8156:	f000 f9de 	bl	c0de8516 <OUTLINED_FUNCTION_1>
c0de815a:	d001      	beq.n	c0de8160 <snprintf+0x26c>
c0de815c:	f000 f9d2 	bl	c0de8504 <OUTLINED_FUNCTION_0>
c0de8160:	3801      	subs	r0, #1
c0de8162:	e7f5      	b.n	c0de8150 <snprintf+0x25c>
c0de8164:	9a04      	ldr	r2, [sp, #16]
c0de8166:	2000      	movs	r0, #0
c0de8168:	2100      	movs	r1, #0
c0de816a:	9006      	str	r0, [sp, #24]
c0de816c:	f8d2 b000 	ldr.w	fp, [r2]
c0de8170:	9113      	str	r1, [sp, #76]	@ 0x4c
c0de8172:	9114      	str	r1, [sp, #80]	@ 0x50
c0de8174:	270a      	movs	r7, #10
c0de8176:	4db2      	ldr	r5, [pc, #712]	@ (c0de8440 <snprintf+0x54c>)
c0de8178:	4eb2      	ldr	r6, [pc, #712]	@ (c0de8444 <snprintf+0x550>)
c0de817a:	3204      	adds	r2, #4
c0de817c:	f1a8 0801 	sub.w	r8, r8, #1
c0de8180:	2401      	movs	r4, #1
c0de8182:	2101      	movs	r1, #1
c0de8184:	9204      	str	r2, [sp, #16]
c0de8186:	447d      	add	r5, pc
c0de8188:	447e      	add	r6, pc
c0de818a:	fba7 2304 	umull	r2, r3, r7, r4
c0de818e:	2b00      	cmp	r3, #0
c0de8190:	bf18      	it	ne
c0de8192:	2301      	movne	r3, #1
c0de8194:	455a      	cmp	r2, fp
c0de8196:	d803      	bhi.n	c0de81a0 <snprintf+0x2ac>
c0de8198:	b913      	cbnz	r3, c0de81a0 <snprintf+0x2ac>
c0de819a:	3101      	adds	r1, #1
c0de819c:	4614      	mov	r4, r2
c0de819e:	e7f4      	b.n	c0de818a <snprintf+0x296>
c0de81a0:	fa5f f08c 	uxtb.w	r0, ip
c0de81a4:	f10d 0a2c 	add.w	sl, sp, #44	@ 0x2c
c0de81a8:	4672      	mov	r2, lr
c0de81aa:	e9cd 0100 	strd	r0, r1, [sp]
c0de81ae:	a807      	add	r0, sp, #28
c0de81b0:	9002      	str	r0, [sp, #8]
c0de81b2:	a914      	add	r1, sp, #80	@ 0x50
c0de81b4:	4650      	mov	r0, sl
c0de81b6:	ab13      	add	r3, sp, #76	@ 0x4c
c0de81b8:	f000 f95d 	bl	c0de8476 <apply_padding_output>
c0de81bc:	9806      	ldr	r0, [sp, #24]
c0de81be:	2800      	cmp	r0, #0
c0de81c0:	bf08      	it	eq
c0de81c2:	462e      	moveq	r6, r5
c0de81c4:	9814      	ldr	r0, [sp, #80]	@ 0x50
c0de81c6:	b1f4      	cbz	r4, c0de8206 <snprintf+0x312>
c0de81c8:	2820      	cmp	r0, #32
c0de81ca:	d30f      	bcc.n	c0de81ec <snprintf+0x2f8>
c0de81cc:	e9dd 5108 	ldrd	r5, r1, [sp, #32]
c0de81d0:	4401      	add	r1, r0
c0de81d2:	9109      	str	r1, [sp, #36]	@ 0x24
c0de81d4:	b14d      	cbz	r5, c0de81ea <snprintf+0x2f6>
c0de81d6:	4285      	cmp	r5, r0
c0de81d8:	bf88      	it	hi
c0de81da:	4605      	movhi	r5, r0
c0de81dc:	9807      	ldr	r0, [sp, #28]
c0de81de:	4651      	mov	r1, sl
c0de81e0:	462a      	mov	r2, r5
c0de81e2:	f000 fb8b 	bl	c0de88fc <__aeabi_memcpy>
c0de81e6:	f000 f99c 	bl	c0de8522 <OUTLINED_FUNCTION_2>
c0de81ea:	2000      	movs	r0, #0
c0de81ec:	fbbb f1f4 	udiv	r1, fp, r4
c0de81f0:	fbb4 f4f7 	udiv	r4, r4, r7
c0de81f4:	fbb1 f2f7 	udiv	r2, r1, r7
c0de81f8:	fb02 1117 	mls	r1, r2, r7, r1
c0de81fc:	5c71      	ldrb	r1, [r6, r1]
c0de81fe:	f80a 1000 	strb.w	r1, [sl, r0]
c0de8202:	3001      	adds	r0, #1
c0de8204:	e7df      	b.n	c0de81c6 <snprintf+0x2d2>
c0de8206:	9014      	str	r0, [sp, #80]	@ 0x50
c0de8208:	2800      	cmp	r0, #0
c0de820a:	f43f ae8e 	beq.w	c0de7f2a <snprintf+0x36>
c0de820e:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de8210:	9e08      	ldr	r6, [sp, #32]
c0de8212:	4401      	add	r1, r0
c0de8214:	2e00      	cmp	r6, #0
c0de8216:	9109      	str	r1, [sp, #36]	@ 0x24
c0de8218:	f43f ae87 	beq.w	c0de7f2a <snprintf+0x36>
c0de821c:	4286      	cmp	r6, r0
c0de821e:	bf88      	it	hi
c0de8220:	4606      	movhi	r6, r0
c0de8222:	9807      	ldr	r0, [sp, #28]
c0de8224:	4651      	mov	r1, sl
c0de8226:	4632      	mov	r2, r6
c0de8228:	f000 fb68 	bl	c0de88fc <__aeabi_memcpy>
c0de822c:	9807      	ldr	r0, [sp, #28]
c0de822e:	9908      	ldr	r1, [sp, #32]
c0de8230:	4430      	add	r0, r6
c0de8232:	9007      	str	r0, [sp, #28]
c0de8234:	1b88      	subs	r0, r1, r6
c0de8236:	9008      	str	r0, [sp, #32]
c0de8238:	e677      	b.n	c0de7f2a <snprintf+0x36>
c0de823a:	2100      	movs	r1, #0
c0de823c:	5c72      	ldrb	r2, [r6, r1]
c0de823e:	3101      	adds	r1, #1
c0de8240:	2a00      	cmp	r2, #0
c0de8242:	d1fb      	bne.n	c0de823c <snprintf+0x348>
c0de8244:	1e4c      	subs	r4, r1, #1
c0de8246:	e000      	b.n	c0de824a <snprintf+0x356>
c0de8248:	463c      	mov	r4, r7
c0de824a:	b350      	cbz	r0, c0de82a2 <snprintf+0x3ae>
c0de824c:	2000      	movs	r0, #0
c0de824e:	2c00      	cmp	r4, #0
c0de8250:	d0da      	beq.n	c0de8208 <snprintf+0x314>
c0de8252:	7831      	ldrb	r1, [r6, #0]
c0de8254:	090a      	lsrs	r2, r1, #4
c0de8256:	f001 010f 	and.w	r1, r1, #15
c0de825a:	5caa      	ldrb	r2, [r5, r2]
c0de825c:	5c69      	ldrb	r1, [r5, r1]
c0de825e:	f80a 2000 	strb.w	r2, [sl, r0]
c0de8262:	eb0a 0200 	add.w	r2, sl, r0
c0de8266:	7051      	strb	r1, [r2, #1]
c0de8268:	1c81      	adds	r1, r0, #2
c0de826a:	381d      	subs	r0, #29
c0de826c:	f110 0f21 	cmn.w	r0, #33	@ 0x21
c0de8270:	4608      	mov	r0, r1
c0de8272:	d813      	bhi.n	c0de829c <snprintf+0x3a8>
c0de8274:	e9dd 7008 	ldrd	r7, r0, [sp, #32]
c0de8278:	4408      	add	r0, r1
c0de827a:	9009      	str	r0, [sp, #36]	@ 0x24
c0de827c:	b16f      	cbz	r7, c0de829a <snprintf+0x3a6>
c0de827e:	428f      	cmp	r7, r1
c0de8280:	bf88      	it	hi
c0de8282:	460f      	movhi	r7, r1
c0de8284:	9807      	ldr	r0, [sp, #28]
c0de8286:	4651      	mov	r1, sl
c0de8288:	463a      	mov	r2, r7
c0de828a:	f000 fb37 	bl	c0de88fc <__aeabi_memcpy>
c0de828e:	e9dd 0107 	ldrd	r0, r1, [sp, #28]
c0de8292:	4438      	add	r0, r7
c0de8294:	9007      	str	r0, [sp, #28]
c0de8296:	1bc8      	subs	r0, r1, r7
c0de8298:	9008      	str	r0, [sp, #32]
c0de829a:	2000      	movs	r0, #0
c0de829c:	3c01      	subs	r4, #1
c0de829e:	3601      	adds	r6, #1
c0de82a0:	e7d5      	b.n	c0de824e <snprintf+0x35a>
c0de82a2:	e9dd 7008 	ldrd	r7, r0, [sp, #32]
c0de82a6:	4420      	add	r0, r4
c0de82a8:	9009      	str	r0, [sp, #36]	@ 0x24
c0de82aa:	b197      	cbz	r7, c0de82d2 <snprintf+0x3de>
c0de82ac:	42a7      	cmp	r7, r4
c0de82ae:	bf88      	it	hi
c0de82b0:	4627      	movhi	r7, r4
c0de82b2:	9807      	ldr	r0, [sp, #28]
c0de82b4:	4631      	mov	r1, r6
c0de82b6:	463a      	mov	r2, r7
c0de82b8:	4675      	mov	r5, lr
c0de82ba:	f000 fb21 	bl	c0de8900 <__aeabi_memmove>
c0de82be:	e9dd 0107 	ldrd	r0, r1, [sp, #28]
c0de82c2:	46ae      	mov	lr, r5
c0de82c4:	4438      	add	r0, r7
c0de82c6:	9007      	str	r0, [sp, #28]
c0de82c8:	1bc8      	subs	r0, r1, r7
c0de82ca:	9008      	str	r0, [sp, #32]
c0de82cc:	e001      	b.n	c0de82d2 <snprintf+0x3de>
c0de82ce:	46a6      	mov	lr, r4
c0de82d0:	463c      	mov	r4, r7
c0de82d2:	45a6      	cmp	lr, r4
c0de82d4:	f67f ae29 	bls.w	c0de7f2a <snprintf+0x36>
c0de82d8:	eba4 000e 	sub.w	r0, r4, lr
c0de82dc:	2320      	movs	r3, #32
c0de82de:	2800      	cmp	r0, #0
c0de82e0:	f43f ae23 	beq.w	c0de7f2a <snprintf+0x36>
c0de82e4:	f000 f917 	bl	c0de8516 <OUTLINED_FUNCTION_1>
c0de82e8:	d001      	beq.n	c0de82ee <snprintf+0x3fa>
c0de82ea:	f000 f90b 	bl	c0de8504 <OUTLINED_FUNCTION_0>
c0de82ee:	3001      	adds	r0, #1
c0de82f0:	e7f5      	b.n	c0de82de <snprintf+0x3ea>
c0de82f2:	2000      	movs	r0, #0
c0de82f4:	f108 0801 	add.w	r8, r8, #1
c0de82f8:	9013      	str	r0, [sp, #76]	@ 0x4c
c0de82fa:	484e      	ldr	r0, [pc, #312]	@ (c0de8434 <snprintf+0x540>)
c0de82fc:	4478      	add	r0, pc
c0de82fe:	2410      	movs	r4, #16
c0de8300:	e01d      	b.n	c0de833e <snprintf+0x44a>
c0de8302:	f108 0801 	add.w	r8, r8, #1
c0de8306:	f1b6 3fff 	cmp.w	r6, #4294967295	@ 0xffffffff
c0de830a:	dd0c      	ble.n	c0de8326 <snprintf+0x432>
c0de830c:	2000      	movs	r0, #0
c0de830e:	9013      	str	r0, [sp, #76]	@ 0x4c
c0de8310:	e012      	b.n	c0de8338 <snprintf+0x444>
c0de8312:	9013      	str	r0, [sp, #76]	@ 0x4c
c0de8314:	f108 0801 	add.w	r8, r8, #1
c0de8318:	e00e      	b.n	c0de8338 <snprintf+0x444>
c0de831a:	9006      	str	r0, [sp, #24]
c0de831c:	240a      	movs	r4, #10
c0de831e:	2600      	movs	r6, #0
c0de8320:	4841      	ldr	r0, [pc, #260]	@ (c0de8428 <snprintf+0x534>)
c0de8322:	4478      	add	r0, pc
c0de8324:	e00b      	b.n	c0de833e <snprintf+0x44a>
c0de8326:	2001      	movs	r0, #1
c0de8328:	9013      	str	r0, [sp, #76]	@ 0x4c
c0de832a:	9806      	ldr	r0, [sp, #24]
c0de832c:	4240      	negs	r0, r0
c0de832e:	9006      	str	r0, [sp, #24]
c0de8330:	f04f 0000 	mov.w	r0, #0
c0de8334:	eb60 0606 	sbc.w	r6, r0, r6
c0de8338:	483c      	ldr	r0, [pc, #240]	@ (c0de842c <snprintf+0x538>)
c0de833a:	240a      	movs	r4, #10
c0de833c:	4478      	add	r0, pc
c0de833e:	9005      	str	r0, [sp, #20]
c0de8340:	f04f 0a00 	mov.w	sl, #0
c0de8344:	2101      	movs	r1, #1
c0de8346:	f04f 0b01 	mov.w	fp, #1
c0de834a:	fba4 230b 	umull	r2, r3, r4, fp
c0de834e:	fbaa 7504 	umull	r7, r5, sl, r4
c0de8352:	2000      	movs	r0, #0
c0de8354:	19db      	adds	r3, r3, r7
c0de8356:	f140 0700 	adc.w	r7, r0, #0
c0de835a:	2d00      	cmp	r5, #0
c0de835c:	bf18      	it	ne
c0de835e:	2501      	movne	r5, #1
c0de8360:	9806      	ldr	r0, [sp, #24]
c0de8362:	1a80      	subs	r0, r0, r2
c0de8364:	eb76 0003 	sbcs.w	r0, r6, r3
c0de8368:	d306      	bcc.n	c0de8378 <snprintf+0x484>
c0de836a:	ea55 0007 	orrs.w	r0, r5, r7
c0de836e:	d103      	bne.n	c0de8378 <snprintf+0x484>
c0de8370:	3101      	adds	r1, #1
c0de8372:	4693      	mov	fp, r2
c0de8374:	469a      	mov	sl, r3
c0de8376:	e7e8      	b.n	c0de834a <snprintf+0x456>
c0de8378:	fa5f f08c 	uxtb.w	r0, ip
c0de837c:	4672      	mov	r2, lr
c0de837e:	e9cd 0100 	strd	r0, r1, [sp]
c0de8382:	a807      	add	r0, sp, #28
c0de8384:	9002      	str	r0, [sp, #8]
c0de8386:	a80b      	add	r0, sp, #44	@ 0x2c
c0de8388:	a914      	add	r1, sp, #80	@ 0x50
c0de838a:	ab13      	add	r3, sp, #76	@ 0x4c
c0de838c:	f000 f873 	bl	c0de8476 <apply_padding_output>
c0de8390:	9f14      	ldr	r7, [sp, #80]	@ 0x50
c0de8392:	ea5b 000a 	orrs.w	r0, fp, sl
c0de8396:	d02b      	beq.n	c0de83f0 <snprintf+0x4fc>
c0de8398:	2f20      	cmp	r7, #32
c0de839a:	d30f      	bcc.n	c0de83bc <snprintf+0x4c8>
c0de839c:	e9dd 5008 	ldrd	r5, r0, [sp, #32]
c0de83a0:	4438      	add	r0, r7
c0de83a2:	9009      	str	r0, [sp, #36]	@ 0x24
c0de83a4:	b14d      	cbz	r5, c0de83ba <snprintf+0x4c6>
c0de83a6:	42bd      	cmp	r5, r7
c0de83a8:	bf88      	it	hi
c0de83aa:	463d      	movhi	r5, r7
c0de83ac:	9807      	ldr	r0, [sp, #28]
c0de83ae:	a90b      	add	r1, sp, #44	@ 0x2c
c0de83b0:	462a      	mov	r2, r5
c0de83b2:	f000 faa3 	bl	c0de88fc <__aeabi_memcpy>
c0de83b6:	f000 f8b4 	bl	c0de8522 <OUTLINED_FUNCTION_2>
c0de83ba:	2700      	movs	r7, #0
c0de83bc:	9806      	ldr	r0, [sp, #24]
c0de83be:	4631      	mov	r1, r6
c0de83c0:	465a      	mov	r2, fp
c0de83c2:	4653      	mov	r3, sl
c0de83c4:	f000 faa8 	bl	c0de8918 <__aeabi_uldivmod>
c0de83c8:	4622      	mov	r2, r4
c0de83ca:	2300      	movs	r3, #0
c0de83cc:	f000 faa4 	bl	c0de8918 <__aeabi_uldivmod>
c0de83d0:	9805      	ldr	r0, [sp, #20]
c0de83d2:	2300      	movs	r3, #0
c0de83d4:	5c80      	ldrb	r0, [r0, r2]
c0de83d6:	a90b      	add	r1, sp, #44	@ 0x2c
c0de83d8:	4622      	mov	r2, r4
c0de83da:	55c8      	strb	r0, [r1, r7]
c0de83dc:	4658      	mov	r0, fp
c0de83de:	4651      	mov	r1, sl
c0de83e0:	f000 fa9a 	bl	c0de8918 <__aeabi_uldivmod>
c0de83e4:	4683      	mov	fp, r0
c0de83e6:	468a      	mov	sl, r1
c0de83e8:	3701      	adds	r7, #1
c0de83ea:	e7d2      	b.n	c0de8392 <snprintf+0x49e>
c0de83ec:	00001556 	.word	0x00001556
c0de83f0:	2f00      	cmp	r7, #0
c0de83f2:	f10d 0a2c 	add.w	sl, sp, #44	@ 0x2c
c0de83f6:	9714      	str	r7, [sp, #80]	@ 0x50
c0de83f8:	f43f ad97 	beq.w	c0de7f2a <snprintf+0x36>
c0de83fc:	e9dd 6008 	ldrd	r6, r0, [sp, #32]
c0de8400:	4438      	add	r0, r7
c0de8402:	2e00      	cmp	r6, #0
c0de8404:	9009      	str	r0, [sp, #36]	@ 0x24
c0de8406:	f43f ad90 	beq.w	c0de7f2a <snprintf+0x36>
c0de840a:	42be      	cmp	r6, r7
c0de840c:	bf88      	it	hi
c0de840e:	463e      	movhi	r6, r7
c0de8410:	e707      	b.n	c0de8222 <snprintf+0x32e>
c0de8412:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de8416:	b015      	add	sp, #84	@ 0x54
c0de8418:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de841c:	b001      	add	sp, #4
c0de841e:	4770      	bx	lr
c0de8420:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de8422:	e7f8      	b.n	c0de8416 <snprintf+0x522>
c0de8424:	00120001 	.word	0x00120001
c0de8428:	0000127a 	.word	0x0000127a
c0de842c:	00001260 	.word	0x00001260
c0de8430:	00001480 	.word	0x00001480
c0de8434:	000012b0 	.word	0x000012b0
c0de8438:	00001478 	.word	0x00001478
c0de843c:	000014ea 	.word	0x000014ea
c0de8440:	00001416 	.word	0x00001416
c0de8444:	00001424 	.word	0x00001424

c0de8448 <sprintf_output>:
c0de8448:	b5b0      	push	{r4, r5, r7, lr}
c0de844a:	4614      	mov	r4, r2
c0de844c:	4602      	mov	r2, r0
c0de844e:	e9d4 5001 	ldrd	r5, r0, [r4, #4]
c0de8452:	4408      	add	r0, r1
c0de8454:	60a0      	str	r0, [r4, #8]
c0de8456:	b16d      	cbz	r5, c0de8474 <sprintf_output+0x2c>
c0de8458:	428d      	cmp	r5, r1
c0de845a:	bf88      	it	hi
c0de845c:	460d      	movhi	r5, r1
c0de845e:	6820      	ldr	r0, [r4, #0]
c0de8460:	4611      	mov	r1, r2
c0de8462:	462a      	mov	r2, r5
c0de8464:	f000 fa4c 	bl	c0de8900 <__aeabi_memmove>
c0de8468:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de846c:	4428      	add	r0, r5
c0de846e:	1b49      	subs	r1, r1, r5
c0de8470:	e9c4 0100 	strd	r0, r1, [r4]
c0de8474:	bdb0      	pop	{r4, r5, r7, pc}

c0de8476 <apply_padding_output>:
c0de8476:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de847a:	4604      	mov	r4, r0
c0de847c:	6818      	ldr	r0, [r3, #0]
c0de847e:	460d      	mov	r5, r1
c0de8480:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de8482:	9e08      	ldr	r6, [sp, #32]
c0de8484:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de8488:	469a      	mov	sl, r3
c0de848a:	2800      	cmp	r0, #0
c0de848c:	bf18      	it	ne
c0de848e:	3101      	addne	r1, #1
c0de8490:	1a57      	subs	r7, r2, r1
c0de8492:	bf38      	it	cc
c0de8494:	2700      	movcc	r7, #0
c0de8496:	2e30      	cmp	r6, #48	@ 0x30
c0de8498:	d108      	bne.n	c0de84ac <apply_padding_output+0x36>
c0de849a:	b138      	cbz	r0, c0de84ac <apply_padding_output+0x36>
c0de849c:	6828      	ldr	r0, [r5, #0]
c0de849e:	1c41      	adds	r1, r0, #1
c0de84a0:	6029      	str	r1, [r5, #0]
c0de84a2:	212d      	movs	r1, #45	@ 0x2d
c0de84a4:	5421      	strb	r1, [r4, r0]
c0de84a6:	4650      	mov	r0, sl
c0de84a8:	2100      	movs	r1, #0
c0de84aa:	6001      	str	r1, [r0, #0]
c0de84ac:	b1cf      	cbz	r7, c0de84e2 <apply_padding_output+0x6c>
c0de84ae:	6828      	ldr	r0, [r5, #0]
c0de84b0:	f1c0 0020 	rsb	r0, r0, #32
c0de84b4:	4287      	cmp	r7, r0
c0de84b6:	bf98      	it	ls
c0de84b8:	4638      	movls	r0, r7
c0de84ba:	4601      	mov	r1, r0
c0de84bc:	b129      	cbz	r1, c0de84ca <apply_padding_output+0x54>
c0de84be:	682a      	ldr	r2, [r5, #0]
c0de84c0:	3901      	subs	r1, #1
c0de84c2:	1c53      	adds	r3, r2, #1
c0de84c4:	602b      	str	r3, [r5, #0]
c0de84c6:	54a6      	strb	r6, [r4, r2]
c0de84c8:	e7f8      	b.n	c0de84bc <apply_padding_output+0x46>
c0de84ca:	6829      	ldr	r1, [r5, #0]
c0de84cc:	1a3f      	subs	r7, r7, r0
c0de84ce:	2920      	cmp	r1, #32
c0de84d0:	d3ec      	bcc.n	c0de84ac <apply_padding_output+0x36>
c0de84d2:	2f00      	cmp	r7, #0
c0de84d4:	d0ea      	beq.n	c0de84ac <apply_padding_output+0x36>
c0de84d6:	4620      	mov	r0, r4
c0de84d8:	4642      	mov	r2, r8
c0de84da:	f7ff ffb5 	bl	c0de8448 <sprintf_output>
c0de84de:	4628      	mov	r0, r5
c0de84e0:	e7e2      	b.n	c0de84a8 <apply_padding_output+0x32>
c0de84e2:	f8da 0000 	ldr.w	r0, [sl]
c0de84e6:	b158      	cbz	r0, c0de8500 <apply_padding_output+0x8a>
c0de84e8:	6829      	ldr	r1, [r5, #0]
c0de84ea:	2920      	cmp	r1, #32
c0de84ec:	d304      	bcc.n	c0de84f8 <apply_padding_output+0x82>
c0de84ee:	4620      	mov	r0, r4
c0de84f0:	4642      	mov	r2, r8
c0de84f2:	f7ff ffa9 	bl	c0de8448 <sprintf_output>
c0de84f6:	2100      	movs	r1, #0
c0de84f8:	1c48      	adds	r0, r1, #1
c0de84fa:	6028      	str	r0, [r5, #0]
c0de84fc:	202d      	movs	r0, #45	@ 0x2d
c0de84fe:	5460      	strb	r0, [r4, r1]
c0de8500:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de8504 <OUTLINED_FUNCTION_0>:
c0de8504:	9907      	ldr	r1, [sp, #28]
c0de8506:	700b      	strb	r3, [r1, #0]
c0de8508:	e9dd 1207 	ldrd	r1, r2, [sp, #28]
c0de850c:	3101      	adds	r1, #1
c0de850e:	9107      	str	r1, [sp, #28]
c0de8510:	1e51      	subs	r1, r2, #1
c0de8512:	9108      	str	r1, [sp, #32]
c0de8514:	4770      	bx	lr

c0de8516 <OUTLINED_FUNCTION_1>:
c0de8516:	e9dd 1208 	ldrd	r1, r2, [sp, #32]
c0de851a:	3201      	adds	r2, #1
c0de851c:	2900      	cmp	r1, #0
c0de851e:	9209      	str	r2, [sp, #36]	@ 0x24
c0de8520:	4770      	bx	lr

c0de8522 <OUTLINED_FUNCTION_2>:
c0de8522:	e9dd 0107 	ldrd	r0, r1, [sp, #28]
c0de8526:	4428      	add	r0, r5
c0de8528:	9007      	str	r0, [sp, #28]
c0de852a:	1b48      	subs	r0, r1, r5
c0de852c:	9008      	str	r0, [sp, #32]
c0de852e:	4770      	bx	lr

c0de8530 <pic>:
c0de8530:	4a0a      	ldr	r2, [pc, #40]	@ (c0de855c <pic+0x2c>)
c0de8532:	4282      	cmp	r2, r0
c0de8534:	490a      	ldr	r1, [pc, #40]	@ (c0de8560 <pic+0x30>)
c0de8536:	d806      	bhi.n	c0de8546 <pic+0x16>
c0de8538:	4281      	cmp	r1, r0
c0de853a:	d304      	bcc.n	c0de8546 <pic+0x16>
c0de853c:	b580      	push	{r7, lr}
c0de853e:	f000 f815 	bl	c0de856c <pic_internal>
c0de8542:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de8546:	4907      	ldr	r1, [pc, #28]	@ (c0de8564 <pic+0x34>)
c0de8548:	4288      	cmp	r0, r1
c0de854a:	4a07      	ldr	r2, [pc, #28]	@ (c0de8568 <pic+0x38>)
c0de854c:	d304      	bcc.n	c0de8558 <pic+0x28>
c0de854e:	4290      	cmp	r0, r2
c0de8550:	d802      	bhi.n	c0de8558 <pic+0x28>
c0de8552:	1a40      	subs	r0, r0, r1
c0de8554:	4649      	mov	r1, r9
c0de8556:	4408      	add	r0, r1
c0de8558:	4770      	bx	lr
c0de855a:	0000      	movs	r0, r0
c0de855c:	c0de0000 	.word	0xc0de0000
c0de8560:	c0de985f 	.word	0xc0de985f
c0de8564:	da7a0000 	.word	0xda7a0000
c0de8568:	da7aa000 	.word	0xda7aa000

c0de856c <pic_internal>:
c0de856c:	467a      	mov	r2, pc
c0de856e:	4902      	ldr	r1, [pc, #8]	@ (c0de8578 <pic_internal+0xc>)
c0de8570:	1cc9      	adds	r1, r1, #3
c0de8572:	1a89      	subs	r1, r1, r2
c0de8574:	1a40      	subs	r0, r0, r1
c0de8576:	4770      	bx	lr
c0de8578:	c0de856d 	.word	0xc0de856d

c0de857c <SVC_Call>:
c0de857c:	df01      	svc	1
c0de857e:	2900      	cmp	r1, #0
c0de8580:	d100      	bne.n	c0de8584 <exception>
c0de8582:	4770      	bx	lr

c0de8584 <exception>:
c0de8584:	4608      	mov	r0, r1
c0de8586:	f7ff fcae 	bl	c0de7ee6 <os_longjmp>
	...

c0de858c <SVC_cx_call>:
c0de858c:	df01      	svc	1
c0de858e:	4770      	bx	lr

c0de8590 <nvm_write>:
c0de8590:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de8592:	ab01      	add	r3, sp, #4
c0de8594:	c307      	stmia	r3!, {r0, r1, r2}
c0de8596:	4802      	ldr	r0, [pc, #8]	@ (c0de85a0 <nvm_write+0x10>)
c0de8598:	a901      	add	r1, sp, #4
c0de859a:	f7ff ffef 	bl	c0de857c <SVC_Call>
c0de859e:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0de85a0:	03000003 	.word	0x03000003

c0de85a4 <cx_ecdomain_parameters_length>:
c0de85a4:	b5e0      	push	{r5, r6, r7, lr}
c0de85a6:	e9cd 0100 	strd	r0, r1, [sp]
c0de85aa:	4802      	ldr	r0, [pc, #8]	@ (c0de85b4 <cx_ecdomain_parameters_length+0x10>)
c0de85ac:	4669      	mov	r1, sp
c0de85ae:	f7ff ffed 	bl	c0de858c <SVC_cx_call>
c0de85b2:	bd8c      	pop	{r2, r3, r7, pc}
c0de85b4:	0200012f 	.word	0x0200012f

c0de85b8 <os_perso_derive_node_with_seed_key>:
c0de85b8:	b510      	push	{r4, lr}
c0de85ba:	b088      	sub	sp, #32
c0de85bc:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de85be:	9407      	str	r4, [sp, #28]
c0de85c0:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0de85c2:	9406      	str	r4, [sp, #24]
c0de85c4:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de85c6:	9405      	str	r4, [sp, #20]
c0de85c8:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de85ca:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de85ce:	4803      	ldr	r0, [pc, #12]	@ (c0de85dc <os_perso_derive_node_with_seed_key+0x24>)
c0de85d0:	4669      	mov	r1, sp
c0de85d2:	f7ff ffd3 	bl	c0de857c <SVC_Call>
c0de85d6:	b008      	add	sp, #32
c0de85d8:	bd10      	pop	{r4, pc}
c0de85da:	bf00      	nop
c0de85dc:	080000a6 	.word	0x080000a6

c0de85e0 <os_pki_load_certificate>:
c0de85e0:	b510      	push	{r4, lr}
c0de85e2:	b086      	sub	sp, #24
c0de85e4:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de85e6:	9405      	str	r4, [sp, #20]
c0de85e8:	9c08      	ldr	r4, [sp, #32]
c0de85ea:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de85ee:	4803      	ldr	r0, [pc, #12]	@ (c0de85fc <os_pki_load_certificate+0x1c>)
c0de85f0:	4669      	mov	r1, sp
c0de85f2:	f7ff ffc3 	bl	c0de857c <SVC_Call>
c0de85f6:	b006      	add	sp, #24
c0de85f8:	bd10      	pop	{r4, pc}
c0de85fa:	bf00      	nop
c0de85fc:	060000aa 	.word	0x060000aa

c0de8600 <os_perso_is_pin_set>:
c0de8600:	b5e0      	push	{r5, r6, r7, lr}
c0de8602:	2000      	movs	r0, #0
c0de8604:	4669      	mov	r1, sp
c0de8606:	9001      	str	r0, [sp, #4]
c0de8608:	209e      	movs	r0, #158	@ 0x9e
c0de860a:	f7ff ffb7 	bl	c0de857c <SVC_Call>
c0de860e:	b2c0      	uxtb	r0, r0
c0de8610:	bd8c      	pop	{r2, r3, r7, pc}

c0de8612 <os_global_pin_is_validated>:
c0de8612:	b5e0      	push	{r5, r6, r7, lr}
c0de8614:	2000      	movs	r0, #0
c0de8616:	4669      	mov	r1, sp
c0de8618:	9001      	str	r0, [sp, #4]
c0de861a:	20a0      	movs	r0, #160	@ 0xa0
c0de861c:	f7ff ffae 	bl	c0de857c <SVC_Call>
c0de8620:	b2c0      	uxtb	r0, r0
c0de8622:	bd8c      	pop	{r2, r3, r7, pc}

c0de8624 <os_ux>:
c0de8624:	b5e0      	push	{r5, r6, r7, lr}
c0de8626:	f000 f86f 	bl	c0de8708 <OUTLINED_FUNCTION_0>
c0de862a:	4802      	ldr	r0, [pc, #8]	@ (c0de8634 <os_ux+0x10>)
c0de862c:	4669      	mov	r1, sp
c0de862e:	f7ff ffa5 	bl	c0de857c <SVC_Call>
c0de8632:	bd8c      	pop	{r2, r3, r7, pc}
c0de8634:	01000064 	.word	0x01000064

c0de8638 <os_flags>:
c0de8638:	b5e0      	push	{r5, r6, r7, lr}
c0de863a:	2000      	movs	r0, #0
c0de863c:	4669      	mov	r1, sp
c0de863e:	9001      	str	r0, [sp, #4]
c0de8640:	206a      	movs	r0, #106	@ 0x6a
c0de8642:	f7ff ff9b 	bl	c0de857c <SVC_Call>
c0de8646:	bd8c      	pop	{r2, r3, r7, pc}

c0de8648 <os_registry_get_current_app_tag>:
c0de8648:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de864a:	ab01      	add	r3, sp, #4
c0de864c:	c307      	stmia	r3!, {r0, r1, r2}
c0de864e:	4803      	ldr	r0, [pc, #12]	@ (c0de865c <os_registry_get_current_app_tag+0x14>)
c0de8650:	a901      	add	r1, sp, #4
c0de8652:	f7ff ff93 	bl	c0de857c <SVC_Call>
c0de8656:	b004      	add	sp, #16
c0de8658:	bd80      	pop	{r7, pc}
c0de865a:	bf00      	nop
c0de865c:	03000074 	.word	0x03000074

c0de8660 <os_sched_exit>:
c0de8660:	b082      	sub	sp, #8
c0de8662:	f000 f851 	bl	c0de8708 <OUTLINED_FUNCTION_0>
c0de8666:	4802      	ldr	r0, [pc, #8]	@ (c0de8670 <os_sched_exit+0x10>)
c0de8668:	4669      	mov	r1, sp
c0de866a:	f7ff ff87 	bl	c0de857c <SVC_Call>
c0de866e:	deff      	udf	#255	@ 0xff
c0de8670:	0100009a 	.word	0x0100009a

c0de8674 <os_io_init>:
c0de8674:	b5e0      	push	{r5, r6, r7, lr}
c0de8676:	9001      	str	r0, [sp, #4]
c0de8678:	4802      	ldr	r0, [pc, #8]	@ (c0de8684 <os_io_init+0x10>)
c0de867a:	a901      	add	r1, sp, #4
c0de867c:	f7ff ff7e 	bl	c0de857c <SVC_Call>
c0de8680:	bd8c      	pop	{r2, r3, r7, pc}
c0de8682:	bf00      	nop
c0de8684:	01000084 	.word	0x01000084

c0de8688 <os_io_start>:
c0de8688:	b5e0      	push	{r5, r6, r7, lr}
c0de868a:	2000      	movs	r0, #0
c0de868c:	4669      	mov	r1, sp
c0de868e:	9001      	str	r0, [sp, #4]
c0de8690:	4801      	ldr	r0, [pc, #4]	@ (c0de8698 <os_io_start+0x10>)
c0de8692:	f7ff ff73 	bl	c0de857c <SVC_Call>
c0de8696:	bd8c      	pop	{r2, r3, r7, pc}
c0de8698:	01000085 	.word	0x01000085

c0de869c <os_io_tx_cmd>:
c0de869c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de869e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de86a2:	4803      	ldr	r0, [pc, #12]	@ (c0de86b0 <os_io_tx_cmd+0x14>)
c0de86a4:	4669      	mov	r1, sp
c0de86a6:	f7ff ff69 	bl	c0de857c <SVC_Call>
c0de86aa:	b004      	add	sp, #16
c0de86ac:	bd80      	pop	{r7, pc}
c0de86ae:	bf00      	nop
c0de86b0:	04000088 	.word	0x04000088

c0de86b4 <os_io_rx_evt>:
c0de86b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de86b6:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de86ba:	4803      	ldr	r0, [pc, #12]	@ (c0de86c8 <os_io_rx_evt+0x14>)
c0de86bc:	4669      	mov	r1, sp
c0de86be:	f7ff ff5d 	bl	c0de857c <SVC_Call>
c0de86c2:	b004      	add	sp, #16
c0de86c4:	bd80      	pop	{r7, pc}
c0de86c6:	bf00      	nop
c0de86c8:	03000089 	.word	0x03000089

c0de86cc <try_context_get>:
c0de86cc:	b5e0      	push	{r5, r6, r7, lr}
c0de86ce:	2000      	movs	r0, #0
c0de86d0:	4669      	mov	r1, sp
c0de86d2:	9001      	str	r0, [sp, #4]
c0de86d4:	2087      	movs	r0, #135	@ 0x87
c0de86d6:	f7ff ff51 	bl	c0de857c <SVC_Call>
c0de86da:	bd8c      	pop	{r2, r3, r7, pc}

c0de86dc <try_context_set>:
c0de86dc:	b5e0      	push	{r5, r6, r7, lr}
c0de86de:	f000 f813 	bl	c0de8708 <OUTLINED_FUNCTION_0>
c0de86e2:	4802      	ldr	r0, [pc, #8]	@ (c0de86ec <try_context_set+0x10>)
c0de86e4:	4669      	mov	r1, sp
c0de86e6:	f7ff ff49 	bl	c0de857c <SVC_Call>
c0de86ea:	bd8c      	pop	{r2, r3, r7, pc}
c0de86ec:	0100010b 	.word	0x0100010b

c0de86f0 <os_sched_last_status>:
c0de86f0:	b5e0      	push	{r5, r6, r7, lr}
c0de86f2:	f000 f809 	bl	c0de8708 <OUTLINED_FUNCTION_0>
c0de86f6:	4803      	ldr	r0, [pc, #12]	@ (c0de8704 <os_sched_last_status+0x14>)
c0de86f8:	4669      	mov	r1, sp
c0de86fa:	f7ff ff3f 	bl	c0de857c <SVC_Call>
c0de86fe:	b2c0      	uxtb	r0, r0
c0de8700:	bd8c      	pop	{r2, r3, r7, pc}
c0de8702:	bf00      	nop
c0de8704:	0100009c 	.word	0x0100009c

c0de8708 <OUTLINED_FUNCTION_0>:
c0de8708:	2100      	movs	r1, #0
c0de870a:	e9cd 0100 	strd	r0, r1, [sp]
c0de870e:	4770      	bx	lr

c0de8710 <__aeabi_llsr>:
c0de8710:	0693      	lsls	r3, r2, #26
c0de8712:	d408      	bmi.n	c0de8726 <__aeabi_llsr+0x16>
c0de8714:	b132      	cbz	r2, c0de8724 <__aeabi_llsr+0x14>
c0de8716:	f1c2 0320 	rsb	r3, r2, #32
c0de871a:	40d0      	lsrs	r0, r2
c0de871c:	fa01 f303 	lsl.w	r3, r1, r3
c0de8720:	40d1      	lsrs	r1, r2
c0de8722:	4318      	orrs	r0, r3
c0de8724:	4770      	bx	lr
c0de8726:	f1a2 0020 	sub.w	r0, r2, #32
c0de872a:	fa21 f000 	lsr.w	r0, r1, r0
c0de872e:	2100      	movs	r1, #0
c0de8730:	4770      	bx	lr
	...

c0de8734 <__udivmoddi4>:
c0de8734:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8738:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de873c:	4604      	mov	r4, r0
c0de873e:	b179      	cbz	r1, c0de8760 <__udivmoddi4+0x2c>
c0de8740:	b1ba      	cbz	r2, c0de8772 <__udivmoddi4+0x3e>
c0de8742:	b35b      	cbz	r3, c0de879c <__udivmoddi4+0x68>
c0de8744:	fab1 f581 	clz	r5, r1
c0de8748:	fab3 f683 	clz	r6, r3
c0de874c:	1b75      	subs	r5, r6, r5
c0de874e:	2d20      	cmp	r5, #32
c0de8750:	d34a      	bcc.n	c0de87e8 <__udivmoddi4+0xb4>
c0de8752:	f1bc 0f00 	cmp.w	ip, #0
c0de8756:	bf18      	it	ne
c0de8758:	e9cc 4100 	strdne	r4, r1, [ip]
c0de875c:	2400      	movs	r4, #0
c0de875e:	e066      	b.n	c0de882e <__udivmoddi4+0xfa>
c0de8760:	b3cb      	cbz	r3, c0de87d6 <__udivmoddi4+0xa2>
c0de8762:	2100      	movs	r1, #0
c0de8764:	f1bc 0f00 	cmp.w	ip, #0
c0de8768:	bf18      	it	ne
c0de876a:	e9cc 4100 	strdne	r4, r1, [ip]
c0de876e:	2400      	movs	r4, #0
c0de8770:	e0a6      	b.n	c0de88c0 <__udivmoddi4+0x18c>
c0de8772:	2b00      	cmp	r3, #0
c0de8774:	d03e      	beq.n	c0de87f4 <__udivmoddi4+0xc0>
c0de8776:	2800      	cmp	r0, #0
c0de8778:	d04f      	beq.n	c0de881a <__udivmoddi4+0xe6>
c0de877a:	1e5d      	subs	r5, r3, #1
c0de877c:	422b      	tst	r3, r5
c0de877e:	d158      	bne.n	c0de8832 <__udivmoddi4+0xfe>
c0de8780:	f1bc 0f00 	cmp.w	ip, #0
c0de8784:	bf1c      	itt	ne
c0de8786:	ea05 0001 	andne.w	r0, r5, r1
c0de878a:	e9cc 4000 	strdne	r4, r0, [ip]
c0de878e:	fa93 f0a3 	rbit	r0, r3
c0de8792:	fab0 f080 	clz	r0, r0
c0de8796:	fa21 f400 	lsr.w	r4, r1, r0
c0de879a:	e048      	b.n	c0de882e <__udivmoddi4+0xfa>
c0de879c:	1e55      	subs	r5, r2, #1
c0de879e:	422a      	tst	r2, r5
c0de87a0:	d129      	bne.n	c0de87f6 <__udivmoddi4+0xc2>
c0de87a2:	f1bc 0f00 	cmp.w	ip, #0
c0de87a6:	bf1e      	ittt	ne
c0de87a8:	2300      	movne	r3, #0
c0de87aa:	4005      	andne	r5, r0
c0de87ac:	e9cc 5300 	strdne	r5, r3, [ip]
c0de87b0:	2a01      	cmp	r2, #1
c0de87b2:	f000 8085 	beq.w	c0de88c0 <__udivmoddi4+0x18c>
c0de87b6:	fa92 f2a2 	rbit	r2, r2
c0de87ba:	004c      	lsls	r4, r1, #1
c0de87bc:	fab2 f282 	clz	r2, r2
c0de87c0:	f002 031f 	and.w	r3, r2, #31
c0de87c4:	40d1      	lsrs	r1, r2
c0de87c6:	40d8      	lsrs	r0, r3
c0de87c8:	231f      	movs	r3, #31
c0de87ca:	4393      	bics	r3, r2
c0de87cc:	fa04 f303 	lsl.w	r3, r4, r3
c0de87d0:	ea43 0400 	orr.w	r4, r3, r0
c0de87d4:	e074      	b.n	c0de88c0 <__udivmoddi4+0x18c>
c0de87d6:	fbb0 f4f2 	udiv	r4, r0, r2
c0de87da:	f1bc 0f00 	cmp.w	ip, #0
c0de87de:	d026      	beq.n	c0de882e <__udivmoddi4+0xfa>
c0de87e0:	fb04 0012 	mls	r0, r4, r2, r0
c0de87e4:	2100      	movs	r1, #0
c0de87e6:	e020      	b.n	c0de882a <__udivmoddi4+0xf6>
c0de87e8:	f105 0e01 	add.w	lr, r5, #1
c0de87ec:	f1be 0f20 	cmp.w	lr, #32
c0de87f0:	d00b      	beq.n	c0de880a <__udivmoddi4+0xd6>
c0de87f2:	e028      	b.n	c0de8846 <__udivmoddi4+0x112>
c0de87f4:	e064      	b.n	c0de88c0 <__udivmoddi4+0x18c>
c0de87f6:	fab1 f481 	clz	r4, r1
c0de87fa:	fab2 f582 	clz	r5, r2
c0de87fe:	1b2c      	subs	r4, r5, r4
c0de8800:	f104 0e21 	add.w	lr, r4, #33	@ 0x21
c0de8804:	f1be 0f20 	cmp.w	lr, #32
c0de8808:	d15d      	bne.n	c0de88c6 <__udivmoddi4+0x192>
c0de880a:	f04f 0e20 	mov.w	lr, #32
c0de880e:	f04f 0a00 	mov.w	sl, #0
c0de8812:	f04f 0b00 	mov.w	fp, #0
c0de8816:	460e      	mov	r6, r1
c0de8818:	e021      	b.n	c0de885e <__udivmoddi4+0x12a>
c0de881a:	fbb1 f4f3 	udiv	r4, r1, r3
c0de881e:	f1bc 0f00 	cmp.w	ip, #0
c0de8822:	d004      	beq.n	c0de882e <__udivmoddi4+0xfa>
c0de8824:	2000      	movs	r0, #0
c0de8826:	fb04 1113 	mls	r1, r4, r3, r1
c0de882a:	e9cc 0100 	strd	r0, r1, [ip]
c0de882e:	2100      	movs	r1, #0
c0de8830:	e046      	b.n	c0de88c0 <__udivmoddi4+0x18c>
c0de8832:	fab1 f581 	clz	r5, r1
c0de8836:	fab3 f683 	clz	r6, r3
c0de883a:	1b75      	subs	r5, r6, r5
c0de883c:	2d1f      	cmp	r5, #31
c0de883e:	f4bf af88 	bcs.w	c0de8752 <__udivmoddi4+0x1e>
c0de8842:	f105 0e01 	add.w	lr, r5, #1
c0de8846:	fa20 f40e 	lsr.w	r4, r0, lr
c0de884a:	f1c5 051f 	rsb	r5, r5, #31
c0de884e:	fa01 f605 	lsl.w	r6, r1, r5
c0de8852:	fa21 fb0e 	lsr.w	fp, r1, lr
c0de8856:	40a8      	lsls	r0, r5
c0de8858:	f04f 0a00 	mov.w	sl, #0
c0de885c:	4326      	orrs	r6, r4
c0de885e:	f04f 0800 	mov.w	r8, #0
c0de8862:	f1be 0f00 	cmp.w	lr, #0
c0de8866:	d01c      	beq.n	c0de88a2 <__udivmoddi4+0x16e>
c0de8868:	ea4f 014b 	mov.w	r1, fp, lsl #1
c0de886c:	f1ae 0e01 	sub.w	lr, lr, #1
c0de8870:	ea41 71d6 	orr.w	r1, r1, r6, lsr #31
c0de8874:	0076      	lsls	r6, r6, #1
c0de8876:	ea46 75d0 	orr.w	r5, r6, r0, lsr #31
c0de887a:	1aae      	subs	r6, r5, r2
c0de887c:	eb61 0b03 	sbc.w	fp, r1, r3
c0de8880:	43cf      	mvns	r7, r1
c0de8882:	43ec      	mvns	r4, r5
c0de8884:	18a4      	adds	r4, r4, r2
c0de8886:	eb57 0403 	adcs.w	r4, r7, r3
c0de888a:	bf5c      	itt	pl
c0de888c:	468b      	movpl	fp, r1
c0de888e:	462e      	movpl	r6, r5
c0de8890:	0040      	lsls	r0, r0, #1
c0de8892:	0fe1      	lsrs	r1, r4, #31
c0de8894:	ea48 044a 	orr.w	r4, r8, sl, lsl #1
c0de8898:	ea40 70da 	orr.w	r0, r0, sl, lsr #31
c0de889c:	46a2      	mov	sl, r4
c0de889e:	4688      	mov	r8, r1
c0de88a0:	e7df      	b.n	c0de8862 <__udivmoddi4+0x12e>
c0de88a2:	ea4f 71da 	mov.w	r1, sl, lsr #31
c0de88a6:	f1bc 0f00 	cmp.w	ip, #0
c0de88aa:	bf18      	it	ne
c0de88ac:	e9cc 6b00 	strdne	r6, fp, [ip]
c0de88b0:	ea41 0140 	orr.w	r1, r1, r0, lsl #1
c0de88b4:	ea4f 004a 	mov.w	r0, sl, lsl #1
c0de88b8:	f020 0001 	bic.w	r0, r0, #1
c0de88bc:	ea40 0408 	orr.w	r4, r0, r8
c0de88c0:	4620      	mov	r0, r4
c0de88c2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de88c6:	f1be 0f1f 	cmp.w	lr, #31
c0de88ca:	d804      	bhi.n	c0de88d6 <__udivmoddi4+0x1a2>
c0de88cc:	fa20 f40e 	lsr.w	r4, r0, lr
c0de88d0:	f1ce 0520 	rsb	r5, lr, #32
c0de88d4:	e7bb      	b.n	c0de884e <__udivmoddi4+0x11a>
c0de88d6:	f1ce 0740 	rsb	r7, lr, #64	@ 0x40
c0de88da:	f1ae 0420 	sub.w	r4, lr, #32
c0de88de:	f04f 0b00 	mov.w	fp, #0
c0de88e2:	fa20 f504 	lsr.w	r5, r0, r4
c0de88e6:	fa01 f607 	lsl.w	r6, r1, r7
c0de88ea:	fa00 fa07 	lsl.w	sl, r0, r7
c0de88ee:	ea46 0805 	orr.w	r8, r6, r5
c0de88f2:	fa21 f604 	lsr.w	r6, r1, r4
c0de88f6:	4640      	mov	r0, r8
c0de88f8:	e7b1      	b.n	c0de885e <__udivmoddi4+0x12a>
	...

c0de88fc <__aeabi_memcpy>:
c0de88fc:	f000 b81c 	b.w	c0de8938 <memcpy>

c0de8900 <__aeabi_memmove>:
c0de8900:	f000 b828 	b.w	c0de8954 <memmove>

c0de8904 <__aeabi_memset>:
c0de8904:	460b      	mov	r3, r1
c0de8906:	4611      	mov	r1, r2
c0de8908:	461a      	mov	r2, r3
c0de890a:	f000 b83d 	b.w	c0de8988 <memset>
c0de890e:	bf00      	nop

c0de8910 <__aeabi_memclr>:
c0de8910:	460a      	mov	r2, r1
c0de8912:	2100      	movs	r1, #0
c0de8914:	f000 b838 	b.w	c0de8988 <memset>

c0de8918 <__aeabi_uldivmod>:
c0de8918:	b540      	push	{r6, lr}
c0de891a:	b084      	sub	sp, #16
c0de891c:	ae02      	add	r6, sp, #8
c0de891e:	9600      	str	r6, [sp, #0]
c0de8920:	f7ff ff08 	bl	c0de8734 <__udivmoddi4>
c0de8924:	9a02      	ldr	r2, [sp, #8]
c0de8926:	9b03      	ldr	r3, [sp, #12]
c0de8928:	b004      	add	sp, #16
c0de892a:	bd40      	pop	{r6, pc}

c0de892c <explicit_bzero>:
c0de892c:	f000 b800 	b.w	c0de8930 <bzero>

c0de8930 <bzero>:
c0de8930:	460a      	mov	r2, r1
c0de8932:	2100      	movs	r1, #0
c0de8934:	f000 b828 	b.w	c0de8988 <memset>

c0de8938 <memcpy>:
c0de8938:	440a      	add	r2, r1
c0de893a:	4291      	cmp	r1, r2
c0de893c:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
c0de8940:	d100      	bne.n	c0de8944 <memcpy+0xc>
c0de8942:	4770      	bx	lr
c0de8944:	b510      	push	{r4, lr}
c0de8946:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de894a:	4291      	cmp	r1, r2
c0de894c:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de8950:	d1f9      	bne.n	c0de8946 <memcpy+0xe>
c0de8952:	bd10      	pop	{r4, pc}

c0de8954 <memmove>:
c0de8954:	4288      	cmp	r0, r1
c0de8956:	b510      	push	{r4, lr}
c0de8958:	eb01 0402 	add.w	r4, r1, r2
c0de895c:	d902      	bls.n	c0de8964 <memmove+0x10>
c0de895e:	4284      	cmp	r4, r0
c0de8960:	4623      	mov	r3, r4
c0de8962:	d807      	bhi.n	c0de8974 <memmove+0x20>
c0de8964:	1e43      	subs	r3, r0, #1
c0de8966:	42a1      	cmp	r1, r4
c0de8968:	d008      	beq.n	c0de897c <memmove+0x28>
c0de896a:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de896e:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de8972:	e7f8      	b.n	c0de8966 <memmove+0x12>
c0de8974:	4601      	mov	r1, r0
c0de8976:	4402      	add	r2, r0
c0de8978:	428a      	cmp	r2, r1
c0de897a:	d100      	bne.n	c0de897e <memmove+0x2a>
c0de897c:	bd10      	pop	{r4, pc}
c0de897e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de8982:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de8986:	e7f7      	b.n	c0de8978 <memmove+0x24>

c0de8988 <memset>:
c0de8988:	4603      	mov	r3, r0
c0de898a:	4402      	add	r2, r0
c0de898c:	4293      	cmp	r3, r2
c0de898e:	d100      	bne.n	c0de8992 <memset+0xa>
c0de8990:	4770      	bx	lr
c0de8992:	f803 1b01 	strb.w	r1, [r3], #1
c0de8996:	e7f9      	b.n	c0de898c <memset+0x4>

c0de8998 <setjmp>:
c0de8998:	46ec      	mov	ip, sp
c0de899a:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de899e:	f04f 0000 	mov.w	r0, #0
c0de89a2:	4770      	bx	lr

c0de89a4 <longjmp>:
c0de89a4:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de89a8:	46e5      	mov	sp, ip
c0de89aa:	0008      	movs	r0, r1
c0de89ac:	bf08      	it	eq
c0de89ae:	2001      	moveq	r0, #1
c0de89b0:	4770      	bx	lr
c0de89b2:	bf00      	nop

c0de89b4 <strcmp>:
c0de89b4:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de89b8:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de89bc:	2a01      	cmp	r2, #1
c0de89be:	bf28      	it	cs
c0de89c0:	429a      	cmpcs	r2, r3
c0de89c2:	d0f7      	beq.n	c0de89b4 <strcmp>
c0de89c4:	1ad0      	subs	r0, r2, r3
c0de89c6:	4770      	bx	lr

c0de89c8 <strlen>:
c0de89c8:	4603      	mov	r3, r0
c0de89ca:	f813 2b01 	ldrb.w	r2, [r3], #1
c0de89ce:	2a00      	cmp	r2, #0
c0de89d0:	d1fb      	bne.n	c0de89ca <strlen+0x2>
c0de89d2:	1a18      	subs	r0, r3, r0
c0de89d4:	3801      	subs	r0, #1
c0de89d6:	4770      	bx	lr

c0de89d8 <strncpy>:
c0de89d8:	4603      	mov	r3, r0
c0de89da:	b510      	push	{r4, lr}
c0de89dc:	3901      	subs	r1, #1
c0de89de:	b132      	cbz	r2, c0de89ee <strncpy+0x16>
c0de89e0:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de89e4:	3a01      	subs	r2, #1
c0de89e6:	f803 4b01 	strb.w	r4, [r3], #1
c0de89ea:	2c00      	cmp	r4, #0
c0de89ec:	d1f7      	bne.n	c0de89de <strncpy+0x6>
c0de89ee:	2100      	movs	r1, #0
c0de89f0:	441a      	add	r2, r3
c0de89f2:	4293      	cmp	r3, r2
c0de89f4:	d100      	bne.n	c0de89f8 <strncpy+0x20>
c0de89f6:	bd10      	pop	{r4, pc}
c0de89f8:	f803 1b01 	strb.w	r1, [r3], #1
c0de89fc:	e7f9      	b.n	c0de89f2 <strncpy+0x1a>

c0de89fe <C_home_boilerplate_14px_bitmap>:
c0de89fe:	e11f e4ff b70f b1bf ad7e 705a 5f6f 7fbf     ........~.Zpo_..
c0de8a0e:	fc7b df0f 7ffe 7ff8                          {........

c0de8a17 <C_home_boilerplate_14px>:
c0de8a17:	000e 000e 0000 89fe c0de                    ..........

c0de8a21 <C_Information_circle_14px_bitmap>:
c0de8a21:	8007 837f 1fff 7ffe fffb 81fc 07f2 fdfb     ................
c0de8a31:	e7ff 8fff 1ffc 1ee0                          .........

c0de8a3a <C_Information_circle_14px>:
c0de8a3a:	000e 000e 0000 8a21 c0de                    ......!...

c0de8a44 <C_Quit_14px_bitmap>:
c0de8a44:	0003 001e 00fc 03c0 cc01 33e7 c698 1963     ...........3..c.
c0de8a54:	6680 9801 7f06 fff9                          .f.......

c0de8a5d <C_Quit_14px>:
c0de8a5d:	000e 000e 0000 8a44 c0de                    ......D...

c0de8a67 <C_Switch_Off_8px_bitmap>:
c0de8a67:	423c 8181 8181 bd99 99bd 3c42               <B........B<

c0de8a73 <C_Switch_Off_8px>:
c0de8a73:	000c 0008 0000 8a67 c0de                    ......g...

c0de8a7d <C_Switch_On_8px_bitmap>:
c0de8a7d:	7e3c c3e7 e7c3 ffff ffff 3c7e               <~........~<

c0de8a89 <C_Switch_On_8px>:
c0de8a89:	000c 0008 0000 8a7d c0de                    ......}...

c0de8a93 <C_icon_back_x_bitmap>:
c0de8a93:	0000 0000 0030 03c0 0c00 3303 dc0e e01f     ....0......3....
c0de8aa3:	003f 0078 00c0 0000                          ?.x......

c0de8aac <C_icon_back_x>:
c0de8aac:	000e 000e 0000 8a93 c0de                    ..........

c0de8ab6 <C_icon_coggle_bitmap>:
c0de8ab6:	0000 0000 0230 1fd0 3fe0 cf03 3c0f c00f     ....0....?...<..
c0de8ac6:	807f 00b4 00c0 0000                          .........

c0de8acf <C_icon_coggle>:
c0de8acf:	000e 000e 0000 8ab6 c0de                    ..........

c0de8ad9 <C_icon_crossmark_bitmap>:
c0de8ad9:	0100 6780 8e03 1c1c 3fe0 7800 e001 c00f     ...g.....?.x....
c0de8ae9:	8373 1c87 600e 0018                          s....`...

c0de8af2 <C_icon_crossmark>:
c0de8af2:	000e 000e 0000 8ad9 c0de                    ..........

c0de8afc <C_icon_down_bitmap>:
c0de8afc:	2184 8024                                   .!$.

c0de8b00 <C_icon_down>:
c0de8b00:	0007 0004 0000 8afc c0de                    ..........

c0de8b0a <C_icon_left_bitmap>:
c0de8b0a:	8882 80a0                                   ....

c0de8b0e <C_icon_left>:
c0de8b0e:	0004 0007 0000 8b0a c0de                    ..........

c0de8b18 <C_icon_right_bitmap>:
c0de8b18:	5110 1014                                   .Q..

c0de8b1c <C_icon_right>:
c0de8b1c:	0004 0007 0000 8b18 c0de                    ..........

c0de8b26 <C_icon_up_bitmap>:
c0de8b26:	4812 1042                                   .HB.

c0de8b2a <C_icon_up>:
c0de8b2a:	0007 0004 0000 8b26 c0de                    ......&...

c0de8b34 <C_icon_validate_14_bitmap>:
c0de8b34:	000e 000e 0f02 0000 c332 c3c3 c3c3 c3c3     ........2.......
c0de8b44:	a3b3 a3a3 f0b2                               ......P

c0de8b4b <C_icon_validate_14>:
c0de8b4b:	000e 000e 0100 8b34 c0de                    ......4...

c0de8b55 <C_icon_warning_bitmap>:
c0de8b55:	0000 6000 8007 077e 7ff8 04e7 129c f81f     ...`..~.........
c0de8b65:	e01f 801f 001e 0018                          .........

c0de8b6e <C_icon_warning>:
c0de8b6e:	000e 000e 0000 8b55 c0de                    ......U...

c0de8b78 <C_app_boilerplate_14px_bitmap>:
c0de8b78:	0000 0300 08f0 4e40 5281 8fa5 a090 8040     ......@N.R....@.
c0de8b88:	0384 00f0 0000 0000                          .........

c0de8b91 <C_app_boilerplate_14px>:
c0de8b91:	000e 000e 0000 8b78 c0de 7544 6d6d 2079     ......x...Dummy 
c0de8ba1:	0032 6552 6976 7765 7420 6172 736e 6361     2.Review transac
c0de8bb1:	6974 6e6f 740a 206f 6573 646e 4220 4c4f     tion.to send BOL
c0de8bc1:	2500 2073 2528 2f64 6425 0029 704f 7265     .%s (%d/%d).Oper
c0de8bd1:	7461 6f69 206e 6973 6e67 6465 4200 696c     ation signed.Bli
c0de8be1:	646e 732d 6769 006e 2e30 2e30 0031 704f     nd-sign.0.0.1.Op
c0de8bf1:	7265 7461 6f69 206e 6572 656a 7463 6465     eration rejected
c0de8c01:	5000 6572 7373 7220 6769 7468 6220 7475     .Press right but
c0de8c11:	6f74 206e 6f74 6320 6e6f 6974 756e 2065     ton to continue 
c0de8c21:	656d 7373 6761 2065 726f 0820 7270 7365     message or .pres
c0de8c31:	2073 6f62 6874 7420 206f 6b73 7069 0008     s both to skip..
c0de8c41:	6d41 756f 746e 4100 6464 6572 7373 7620     Amount.Address v
c0de8c51:	7265 6669 6569 0064 7241 2065 6f79 2075     erified.Are you 
c0de8c61:	7573 6572 7420 0a6f 6c61 6f6c 2077 7564     sure to.allow du
c0de8c71:	6d6d 2079 0a32 6e69 7420 6172 736e 6361     mmy 2.in transac
c0de8c81:	6974 6e6f 3f73 5400 6172 736e 6361 6974     tions?.Transacti
c0de8c91:	6e6f 7320 6769 656e 0064 6f54 6120 6363     on signed.To acc
c0de8ca1:	7065 2074 6972 6b73 202c 7270 7365 2073     ept risk, press 
c0de8cb1:	6f62 6874 6220 7475 6f74 736e 4400 7665     both buttons.Dev
c0de8cc1:	6c65 706f 7265 4500 616e 6c62 6465 4100     eloper.Enabled.A
c0de8cd1:	6c6c 776f 6420 6d75 796d 3120 690a 206e     llow dummy 1.in 
c0de8ce1:	7274 6e61 6173 7463 6f69 736e 5300 6769     transactions.Sig
c0de8cf1:	206e 656d 7373 6761 0065 654d 7373 6761     n message.Messag
c0de8d01:	2065 6973 6e67 6465 5300 6769 206e 7274     e signed.Sign tr
c0de8d11:	6e61 6173 7463 6f69 006e 6552 656a 7463     ansaction.Reject
c0de8d21:	7420 6172 736e 6361 6974 6e6f 4c00 6465      transaction.Led
c0de8d31:	6567 0072 6341 6563 7470 7220 7369 206b     ger.Accept risk 
c0de8d41:	6e61 2064 6973 6e67 6d20 7365 6173 6567     and sign message
c0de8d51:	4100 6c6c 776f 6420 6d75 796d 3220 690a     .Allow dummy 2.i
c0de8d61:	206e 7274 6e61 6173 7463 6f69 736e 5600     n transactions.V
c0de8d71:	7265 6973 6e6f 4300 6e61 6563 006c 6441     ersion.Cancel.Ad
c0de8d81:	7264 7365 2073 6576 6972 6966 6163 6974     dress verificati
c0de8d91:	6e6f 6320 6e61 6563 6c6c 6465 4400 7369     on cancelled.Dis
c0de8da1:	6261 656c 0064 7041 2070 6573 7474 6e69     abled.App settin
c0de8db1:	7367 4100 6363 7065 2074 6972 6b73 6120     gs.Accept risk a
c0de8dc1:	646e 7320 6769 206e 7274 6e61 6173 7463     nd sign transact
c0de8dd1:	6f69 006e 6c42 6e69 2064 6973 6e67 6e69     ion.Blind signin
c0de8de1:	2067 6861 6165 0064 6341 6563 7470 7220     g ahead.Accept r
c0de8df1:	7369 206b 6e61 2064 6973 6e67 6f20 6570     isk and sign ope
c0de8e01:	6172 6974 6e6f 4d00 7365 6173 6567 7220     ration.Message r
c0de8e11:	6a65 6365 6574 0064 3130 3332 3534 3736     ejected.01234567
c0de8e21:	3938 4241 4443 4645 4200 4c4f 2520 2a2e     89ABCDEF.BOL %.*
c0de8e31:	0073 6441 7264 7365 0073 6142 6b63 4400     s.Address.Back.D
c0de8e41:	6d75 796d 3120 4900 7520 646e 7265 7473     ummy 1.I underst
c0de8e51:	6e61 2c64 6320 6e6f 6966 6d72 5400 6172     and, confirm.Tra
c0de8e61:	736e 6361 6974 6e6f 7220 6a65 6365 6574     nsaction rejecte
c0de8e71:	0064 7041 2070 6e69 6f66 5300 6769 206e     d.App info.Sign 
c0de8e81:	706f 7265 7461 6f69 006e 6552 656a 7463     operation.Reject
c0de8e91:	6d20 7365 6173 6567 5200 6a65 6365 2074      message.Reject 
c0de8ea1:	706f 7265 7461 6f69 006e 4b5a 0050 6556     operation.ZKP.Ve
c0de8eb1:	6972 7966 4220 4c4f 6120 6464 6572 7373     rify BOL address
c0de8ec1:	6100 7070 6920 2073 6572 6461 0079 7551     .app is ready.Qu
c0de8ed1:	7469 6120 7070 4300 6e6f 6966 6d72           it app.Confirm.

c0de8ee0 <settingContents>:
c0de8ee0:	0000 0000 8efc c0de 0001 0000               ............

c0de8eec <infoList>:
c0de8eec:	8f34 c0de 8f3c c0de 0000 0000 0002 0000     4...<...........

c0de8efc <contents>:
c0de8efc:	0007 0000 0804 da7a 0002 0000 0000 0000     ......z.........
	...
c0de8f30:	0e3d c0de                                   =...

c0de8f34 <INFO_TYPES>:
c0de8f34:	8d70 c0de 8cbe c0de                         p.......

c0de8f3c <INFO_CONTENTS>:
c0de8f3c:	8be9 c0de 8d2e c0de                         ........

c0de8f44 <G1_GEN_X_BE>:
c0de8f44:	f117 a7d3 9731 94d7 9526 8c63 a94f 0fac     ....1...&.c.O...
c0de8f54:	68c3 4f8c 7497 05b9 4ea1 3f3a 1b17 58ac     .h.O.t...N:?...X
c0de8f64:	556c 3fe8 7af9 ef1a 3afb 0af0 22db bbc6     lU.?.z...:..."..

c0de8f74 <G1_GEN_Y_BE>:
c0de8f74:	b308 81f4 aae3 f1a0 9ea0 ed30 1d74 e48a     ..........0.t...
c0de8f84:	f5fc 95e0 d0d5 f60a db00 cb18 042c edb3     ............,...
c0de8f94:	3cd0 44c7 88a2 e48a aa0c 2923 c546 e1e7     .<.D......#)F...

c0de8fa4 <G2_GEN_X0_BE>:
c0de8fa4:	4a02 b2a2 8ff0 910a 0826 2705 c52d 5110     .J......&..'-..Q
c0de8fb4:	e4c6 d47a 40fa 023b 51b4 640b e37a 77d1     ..z..@;..Q.dz..w
c0de8fc4:	ac0b 2603 05a8 efbb 80d4 c856 21c1 b8bd     ...&......V..!..

c0de8fd4 <G2_GEN_X1_BE>:
c0de8fd4:	e013 602b 7152 609f ac7d a0d3 2788 654f     ..+`Rq.`}....'Oe
c0de8fe4:	6b59 d0d0 2099 1ab6 dab5 bb61 7fdc 4950     Yk... ....a...PI
c0de8ff4:	4c33 12f1 9413 575d ace5 057d 045d 7e2b     3L....]W..}.].+~

c0de9004 <G2_GEN_Y0_BE>:
c0de9004:	e50c 27d5 7d72 116e c98c c6cd 2eda 1a35     ...'r}n.......5.
c0de9014:	fdad aa9b bd8c a7d3 426d 699a 6051 2cd1     ........mB.iQ`.,
c0de9024:	3a92 ccc9 ac3b 89a2 93e1 8654 b808 0128     .:..;.....T...(.

c0de9034 <G2_GEN_Y1_BE>:
c0de9034:	0606 a0c4 a72e cc34 ac32 b0d2 c22b 998b     ......4.2...+...
c0de9044:	3ecb 7e28 a785 af63 7426 ab92 2e57 ab99     .>(~..c.&t..W...
c0de9054:	373f 270d ec5c a11d a9aa 5f07 5ff0 be79     ?7.'\......_._y.

c0de9064 <VK_IC0_X>:
c0de9064:	3714 9d1a 74e2 5f87 4971 f8f5 6e5a 5cfe     .7...t._qI..Zn.\
c0de9074:	2d39 3827 2f56 8921 4dec b171 8651 5cb2     9-'8V/!..Mq.Q..\
c0de9084:	6060 ebab 9ece 7981 9150 3ad3 64f5 2b26     ``.....yP..:.d&+

c0de9094 <VK_IC0_Y>:
c0de9094:	8818 2624 28b3 9fe5 b1b5 3cb7 73b4 0046     ..$&.(.....<.sF.
c0de90a4:	7e91 835d 2c20 d0bc fa5b 29c7 779b b2f4     .~]. ,..[..).w..
c0de90b4:	7094 6fbd c1e3 1445 d80c bf6b e75f 1014     .p.o..E...k._...

c0de90c4 <VK_IC1_X>:
c0de90c4:	7914 2219 f5d5 2472 6461 9957 fb26 d987     .y."..r$adW.&...
c0de90d4:	3964 ebbd 15b2 631d bfe0 ddd0 c105 1314     d9.....c........
c0de90e4:	433f 6936 54ef ad7d 2953 e11f ba6d e248     ?C6i.T}.S)..m.H.

c0de90f4 <VK_IC1_Y>:
c0de90f4:	6c03 6a2e 160b 9d60 00da cece 0370 d300     .l.j..`.....p...
c0de9104:	b8c7 0c75 d7a6 1d50 c6a7 903a 6d55 5f01     ..u...P...:.Um._
c0de9114:	20d3 a929 c8d5 71cd 7f65 2ac9 416b c43f     . )....qe..*kA?.

c0de9124 <VK_IC2_X>:
c0de9124:	fc15 e226 f61d 9f0b 9c06 ef04 1871 d1bc     ..&.........q...
c0de9134:	0dec 7a8a 61c5 a2df decf 8b2a da32 1e10     ...z.a....*.2...
c0de9144:	d6a1 83ff 9f32 ed6d 13c3 c646 f4af 28de     ....2.m...F....(

c0de9154 <VK_IC2_Y>:
c0de9154:	d410 7578 bd2f de09 026c dcff cfb5 175a     ..xu/...l.....Z.
c0de9164:	3250 700c 1221 fa61 bdf7 c670 46d4 8a87     P2.p!.a...p..F..
c0de9174:	2609 ee52 62ff 48a4 e060 d88d e79e 9573     .&R..b.H`.....s.

c0de9184 <VK_GAMMA_X0>:
c0de9184:	4a02 b2a2 8ff0 910a 0826 2705 c52d 5110     .J......&..'-..Q
c0de9194:	e4c6 d47a 40fa 023b 51b4 640b e37a 77d1     ..z..@;..Q.dz..w
c0de91a4:	ac0b 2603 05a8 efbb 80d4 c856 21c1 b8bd     ...&......V..!..

c0de91b4 <VK_GAMMA_X1>:
c0de91b4:	e013 602b 7152 609f ac7d a0d3 2788 654f     ..+`Rq.`}....'Oe
c0de91c4:	6b59 d0d0 2099 1ab6 dab5 bb61 7fdc 4950     Yk... ....a...PI
c0de91d4:	4c33 12f1 9413 575d ace5 057d 045d 7e2b     3L....]W..}.].+~

c0de91e4 <VK_GAMMA_Y0>:
c0de91e4:	e50c 27d5 7d72 116e c98c c6cd 2eda 1a35     ...'r}n.......5.
c0de91f4:	fdad aa9b bd8c a7d3 426d 699a 6051 2cd1     ........mB.iQ`.,
c0de9204:	3a92 ccc9 ac3b 89a2 93e1 8654 b808 0128     .:..;.....T...(.

c0de9214 <VK_GAMMA_Y1>:
c0de9214:	0606 a0c4 a72e cc34 ac32 b0d2 c22b 998b     ......4.2...+...
c0de9224:	3ecb 7e28 a785 af63 7426 ab92 2e57 ab99     .>(~..c.&t..W...
c0de9234:	373f 270d ec5c a11d a9aa 5f07 5ff0 be79     ?7.'\......_._y.

c0de9244 <VK_DELTA_X0>:
c0de9244:	5310 8968 6045 0fbd 2b9d d862 3d85 b007     .Sh.E`...+b..=..
c0de9254:	d3c4 fe64 aaf4 a3cc d9d6 cbdd ed87 5c41     ..d...........A\
c0de9264:	25df 251b 16ff d59b 8a78 08b9 0584 6ef4     .%.%....x......n

c0de9274 <VK_DELTA_X1>:
c0de9274:	7505 146a 89cc 386c d180 50b1 c731 6afb     .uj...l8...P1..j
c0de9284:	e69d e4dd ab83 3a62 fb5e 608a b123 3091     ......b:^..`#..0
c0de9294:	356d f3f0 da06 856b 8030 7cb4 4780 82fa     m5....k.0..|.G..

c0de92a4 <VK_DELTA_Y0>:
c0de92a4:	270a 497d 13d6 585a b629 36bd 4115 659a     .'}I..ZX)..6.A.e
c0de92b4:	7978 e819 9798 a847 645e 92a6 e425 304d     xy....G.^d..%.M0
c0de92c4:	c078 209c 5ee1 df8c 5676 c7f5 038b 9aab     x.. .^..vV......

c0de92d4 <VK_DELTA_Y1>:
c0de92d4:	5608 4fac 0043 9f2f 6917 dfeb 1555 03ea     .V.OC./..i..U...
c0de92e4:	a2c4 4256 e11d ba77 a88f 2883 6bb8 5bbf     ..VB..w....(.k.[
c0de92f4:	a954 1559 f092 0d61 4161 3836 aac8 2d1f     T.Y...a.aA68...-

c0de9304 <VK_ALPHA_BETA>:
c0de9304:	0c18 40c5 2808 6b39 5307 9073 8617 fb60     ...@.(9k.Ss...`.
c0de9314:	3fa4 c8ee 9920 292e 438b e88b cceb 977c     .?.. ..).C....|.
c0de9324:	45f6 c238 ca93 f5bb 1290 36e9 078e d466     .E8........6..f.
c0de9334:	cd15 2649 4036 7396 d9bd 77e8 a2f6 425d     ..I&6@.s...w..]B
c0de9344:	b46d 39a3 3dfa a0eb 2156 d395 6513 7bc0     m..9.=..V!...e.{
c0de9354:	38a0 be56 e743 7a88 5680 0bff 2b6f 00ae     .8V.C..z.V..o+..
c0de9364:	8118 4ad0 21bd 5747 efe2 f3c1 0f6b 198a     ...J.!GW....k...
c0de9374:	86db ca56 3dee 6773 705c d005 a569 51b4     ..V..=sg\p..i..Q
c0de9384:	8252 89f3 2016 7157 e4ab fa94 7479 aacd     R.... Wq....yt..
c0de9394:	0900 8ede e00c d48c f9ba 321c c5ba f006     ...........2....
c0de93a4:	c448 816f 761e cdd6 a730 0588 9ada 3b10     H.o..v..0......;
c0de93b4:	fcb0 02ba cac0 cfa3 3747 1242 c5d8 6977     ........G7B...wi
c0de93c4:	3a12 ec75 ef25 2a8c 9fe7 926b 5e39 c2a8     .:u.%..*..k.9^..
c0de93d4:	4029 0729 0bd4 378a 0b89 2fda c005 4304     )@)....7.../...C
c0de93e4:	40b5 5846 b932 f6cf b010 0c1a 8295 4d4b     .@FX2.........KM
c0de93f4:	6b01 5f78 538e 52f5 991b 4620 03de a938     .kx_.S.R.. F..8.
c0de9404:	ac50 4f23 512c 7c0b e6cd a125 e2a3 c1ba     P.#O,Q.|..%.....
c0de9414:	42e2 7a01 1187 25a6 717d 7e2e 300b d0e8     .B.z...%}q.~.0..
c0de9424:	fd16 f554 15aa c843 5a7d 4521 6199 4fc7     ..T...C.}Z!E.a.O
c0de9434:	f48d f924 04d5 0713 10d4 d263 29c2 e0f0     ..$.......c..)..
c0de9444:	b50f 3f22 2bc0 d86c 23e7 5be5 9aab 767d     .."?.+l..#.[..}v
c0de9454:	fc11 31d8 430d 1cb2 6dfb 72c7 fbe6 9d98     ...1.C...m.r....
c0de9464:	270b 9feb 8de0 87cf 13d3 0034 0b8c 522c     .'........4...,R
c0de9474:	9aa8 eb76 a506 cd0f 313f 4055 7aab e1f9     ..v.....?1U@.z..
c0de9484:	0f11 130b c967 c650 bbee a9b0 96b3 c2fc     ....g.P.........
c0de9494:	6789 e5c2 5668 2004 a3db 678d 77ea 13a7     .g..hV. ...g.w..
c0de94a4:	e8eb c9e4 9abc dbdd eb33 0ebd ad3d e6a2     ........3...=...
c0de94b4:	2419 2c77 7a5d 515a e571 42db b6d8 6d79     .$w,]zZQq..B..ym
c0de94c4:	f3df fd21 e2ba de81 e449 8b09 e3f7 0a8e     ..!.....I.......
c0de94d4:	d6b2 8648 0e56 601f 4b49 3f24 4124 55d1     ..H.V..`IK$?$A.U
c0de94e4:	4e0b fb26 0546 955b 3eca ff4d e356 213c     .N&.F.[..>M.V.<!
c0de94f4:	cf09 7179 056e 3153 3dee 8b3e 1e64 a55f     ..yqn.S1.=>.d._.
c0de9504:	fbbe b62c af0a 6d93 5823 b921 8133 4b88     ..,....m#X!.3..K
c0de9514:	d806 0d2d df39 264c 58bb ff8b 9fdc f731     ..-.9.L&.X....1.
c0de9524:	88ac e7ba 8084 38cf 27ac abb9 18ed 7e1b     .......8.'.....~
c0de9534:	daff e88b 0cc5 183c e63c ce50 3786 e298     ......<.<.P..7..

c0de9544 <BLS12_381_P>:
c0de9544:	aaab ffff ffff b9fe ffff b153 fffe 1eab     ..........S.....
c0de9554:	f624 f6b0 d2a0 6730 12bf f385 4b84 6477     $.....0g.....Kwd
c0de9564:	acd7 434b a7b6 4b1b e69a 397f 11ea 1a01     ..KC...K...9....

c0de9574 <blindSigningWarning>:
c0de9574:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...

c0de95a0 <g_pcHex>:
c0de95a0:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0de95b0 <g_pcHex_cap>:
c0de95b0:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0de95c0 <_etext>:
	...

c0de9600 <N_storage_real>:
	...

c0de9800 <install_parameters>:
c0de9800:	0301 4b5a 0250 3005 302e 312e 2103 000e     ..ZKP..0.0.1.!..
c0de9810:	000e 1900 0000 0000 0300 08f0 4e40 5281     ............@N.R
c0de9820:	8fa5 a090 8040 0384 00f0 0000 0000 0400     ....@...........
c0de9830:	052e 8002 0000 802c 2300 022c 0080 2c00     ......,..#,....,
c0de9840:	0080 3c00 8002 0000 802c 2300 022b 0080     ...<....,..#+...
c0de9850:	2c00 0080 c007 8002 0100 80a4 0700           .,.............
