	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_817E0B8
sub_817E0B8: @ 817E0B8
	push {r4-r6,lr}
	lsls r0, 16
	lsrs r5, r0, 16
	movs r3, 0
	ldr r4, =gUnknown_0860A8A4
	ldr r6, =0x0000ffff
	adds r2, r4, 0
	adds r1, r4, 0
_0817E0C8:
	ldrh r0, [r1]
	cmp r0, r5
	beq _0817E0DA
	adds r2, 0x2
	adds r1, 0x2
	adds r3, 0x1
	ldrh r0, [r2]
	cmp r0, r6
	bne _0817E0C8
_0817E0DA:
	lsls r0, r3, 1
	adds r0, r4
	ldrh r1, [r0]
	ldr r0, =0x0000ffff
	cmp r1, r0
	beq _0817E0F4
	movs r0, 0
	b _0817E0F6
	.pool
_0817E0F4:
	movs r0, 0x1
_0817E0F6:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_817E0B8

	thumb_func_start sub_817E0FC
sub_817E0FC: @ 817E0FC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	str r2, [sp, 0x4]
	lsls r0, 16
	lsrs r7, r0, 16
	lsls r1, 16
	lsrs r1, 16
	str r1, [sp]
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0817E122
	b _0817E310
_0817E122:
	ldr r0, =gBattleStruct
	ldr r0, [r0]
	movs r1, 0x81
	lsls r1, 2
	adds r1, r0, r1
	str r1, [sp, 0x8]
	ldr r2, =gBattlerAttacker
	mov r10, r2
	ldrb r0, [r2]
	bl GetBattlerSide
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	ldr r0, =gBattlerTarget
	ldrb r0, [r0]
	bl GetBattlerSide
	lsls r0, 24
	lsrs r4, r0, 24
	mov r1, r10
	ldrb r0, [r1]
	adds r1, r7, 0
	bl GetBattlerMoveSlotId
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x3
	bls _0817E184
	mov r2, r9
	lsls r0, r2, 1
	add r0, r9
	lsls r0, 2
	ldr r1, [sp, 0x8]
	adds r0, r1, r0
	adds r0, 0x57
	ldrb r1, [r0]
	movs r2, 0x1E
	orrs r1, r2
	strb r1, [r0]
	b _0817E310
	.pool
_0817E184:
	mov r2, r10
	ldrb r0, [r2]
	bl GetBattlerPosition
	lsls r0, 24
	lsrs r0, 25
	lsls r0, 3
	lsls r4, 4
	adds r0, r4
	ldr r1, [sp, 0x8]
	adds r0, r1, r0
	mov r2, r10
	ldrb r1, [r2]
	lsls r1, 1
	ldr r2, =gBattlerPartyIndexes
	adds r1, r2
	ldrh r2, [r1]
	adds r2, 0x1
	adds r0, 0x35
	lsls r2, 5
	ldrb r3, [r0]
	movs r1, 0x1F
	ands r1, r3
	orrs r1, r2
	strb r1, [r0]
	mov r1, r10
	ldrb r0, [r1]
	bl GetBattlerPosition
	lsls r0, 24
	lsrs r0, 25
	lsls r0, 3
	adds r0, r4
	ldr r2, [sp, 0x8]
	adds r0, r2, r0
	adds r0, 0x36
	movs r1, 0x3
	mov r8, r6
	mov r2, r8
	ands r2, r1
	mov r8, r2
	ldrb r2, [r0]
	movs r1, 0x4
	negs r1, r1
	ands r1, r2
	mov r2, r8
	orrs r1, r2
	strb r1, [r0]
	mov r1, r9
	lsls r0, r1, 1
	add r0, r9
	lsls r0, 2
	ldr r2, [sp, 0x8]
	adds r0, r2, r0
	str r0, [sp, 0xC]
	adds r5, r0, 0
	adds r5, 0x53
	lsls r2, r6, 6
	ldrb r1, [r5]
	movs r0, 0x3F
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	ldr r1, =gBattleMoves
	lsls r4, r7, 1
	adds r0, r4, r7
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0]
	movs r0, 0
	adds r1, r6, 0
	movs r3, 0
	bl sub_817E684
	ldr r0, [sp]
	adds r1, r7, 0
	adds r2, r6, 0
	bl sub_817F394
	ldr r0, [sp, 0x4]
	ldrb r1, [r0, 0x12]
	movs r0, 0xF
	ands r0, r1
	str r4, [sp, 0x10]
	cmp r0, 0
	beq _0817E23C
	movs r0, 0x7
	adds r1, r7, 0
	adds r2, r6, 0
	movs r3, 0
	bl sub_817E684
_0817E23C:
	ldr r0, =0x00000111
	cmp r7, r0
	bne _0817E272
	mov r1, r10
	ldrb r0, [r1]
	lsls r0, 1
	ldr r2, =gBattlerPartyIndexes
	adds r0, r2
	ldrh r1, [r0]
	adds r1, 0x1
	movs r0, 0x7
	ands r1, r0
	ldrb r2, [r5]
	movs r0, 0x8
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	ldr r2, [sp, 0xC]
	adds r2, 0x56
	ldrb r1, [r2]
	movs r0, 0x4
	negs r0, r0
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r2]
_0817E272:
	cmp r7, 0x78
	beq _0817E27A
	cmp r7, 0x99
	bne _0817E2D2
_0817E27A:
	movs r0, 0x1
	mov r2, r9
	eors r0, r2
	lsls r2, r0, 1
	adds r2, r0
	lsls r2, 2
	ldr r0, [sp, 0x8]
	adds r2, r0, r2
	mov r1, r10
	ldrb r0, [r1]
	lsls r0, 1
	ldr r1, =gBattlerPartyIndexes
	adds r0, r1
	ldrh r1, [r0]
	adds r1, 0x1
	adds r4, r2, 0
	adds r4, 0x58
	movs r0, 0x7
	ands r1, r0
	lsls r1, 3
	ldrb r3, [r4]
	movs r0, 0x39
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	mov r1, r8
	lsls r3, r1, 1
	movs r1, 0x7
	negs r1, r1
	ands r0, r1
	orrs r0, r3
	strb r0, [r4]
	adds r2, 0x57
	ldrb r1, [r2]
	movs r0, 0x1F
	negs r0, r0
	ands r0, r1
	movs r1, 0x1A
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r4]
_0817E2D2:
	ldr r1, =gBattleMoves
	ldr r2, [sp, 0x10]
	adds r0, r2, r7
	lsls r0, 2
	adds r0, r1
	ldrb r4, [r0, 0x2]
	ldrb r5, [r0, 0x1]
	movs r0, 0xD
	adds r1, r4, 0
	adds r2, r5, 0
	movs r3, 0
	bl sub_817E684
	movs r0, 0xE
	adds r1, r4, 0
	adds r2, r5, 0
	movs r3, 0
	bl sub_817E684
	movs r0, 0xB
	adds r1, r4, 0
	movs r2, 0
	movs r3, 0
	bl sub_817E684
	movs r0, 0xC
	adds r1, r4, 0
	movs r2, 0
	movs r3, 0
	bl sub_817E684
_0817E310:
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817E0FC

	thumb_func_start sub_817E32C
sub_817E32C: @ 817E32C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0817E3EE
	ldr r0, =gBattleStruct
	ldr r0, [r0]
	movs r1, 0x81
	lsls r1, 2
	adds r4, r0, r1
	ldr r0, =gBattlerAttacker
	ldrb r0, [r0]
	bl GetBattlerSide
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r5, 0x12
	beq _0817E36C
	cmp r5, 0x13
	beq _0817E3AA
	b _0817E3EE
	.pool
_0817E36C:
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r4, r0
	ldr r0, [r4, 0x50]
	lsls r0, 14
	lsrs r0, 29
	cmp r0, 0
	beq _0817E3EE
	subs r0, 0x1
	lsls r0, 2
	adds r1, r4, 0
	adds r1, 0x55
	ldrb r3, [r1]
	lsls r3, 28
	lsrs r3, 30
	adds r3, r0
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x2
	movs r1, 0
	bl sub_817E684
	adds r2, r4, 0
	adds r2, 0x57
	ldrb r1, [r2]
	movs r0, 0x1F
	negs r0, r0
	ands r0, r1
	movs r1, 0x10
	b _0817E3EA
_0817E3AA:
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r4, r0
	adds r0, r4, 0
	adds r0, 0x52
	ldrb r0, [r0]
	lsls r0, 27
	lsrs r0, 29
	cmp r0, 0
	beq _0817E3EE
	subs r0, 0x1
	lsls r0, 2
	adds r1, r4, 0
	adds r1, 0x55
	ldrb r3, [r1]
	lsls r3, 26
	lsrs r3, 30
	adds r3, r0
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x2
	movs r1, 0x1
	bl sub_817E684
	adds r2, r4, 0
	adds r2, 0x57
	ldrb r1, [r2]
	movs r0, 0x1F
	negs r0, r0
	ands r0, r1
	movs r1, 0x12
_0817E3EA:
	orrs r0, r1
	strb r0, [r2]
_0817E3EE:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_817E32C

	thumb_func_start sub_817E3F4
sub_817E3F4: @ 817E3F4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	movs r0, 0
	str r0, [sp]
	movs r1, 0
	str r1, [sp, 0x4]
	movs r2, 0
	str r2, [sp, 0x8]
	ldr r3, =0x00007fff
	str r3, [sp, 0xC]
	movs r4, 0
	str r4, [sp, 0x10]
	movs r7, 0
	str r7, [sp, 0x14]
	mov r8, r0
	ldr r0, =gBattleStruct
	ldr r1, [r0]
	adds r0, r1, 0
	adds r0, 0xB3
	ldrb r0, [r0]
	cmp r0, 0
	beq _0817E42A
	b _0817E670
_0817E42A:
	movs r2, 0xD2
	lsls r2, 1
	adds r2, r1
	mov r10, r2
	movs r6, 0
_0817E434:
	movs r0, 0x64
	adds r4, r6, 0
	muls r4, r0
	ldr r0, =gPlayerParty
	adds r0, r4, r0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	cmp r0, 0
	beq _0817E454
	mov r0, r8
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
_0817E454:
	ldr r5, =gEnemyParty
	adds r0, r4, r5
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	cmp r0, 0
	beq _0817E46A
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
_0817E46A:
	adds r6, 0x1
	cmp r6, 0x5
	ble _0817E434
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0817E47E
	b _0817E670
_0817E47E:
	cmp r8, r7
	beq _0817E484
	b _0817E670
_0817E484:
	movs r6, 0
	lsls r3, r6, 1
	str r3, [sp, 0x18]
	movs r4, 0x64
	mov r8, r4
_0817E48E:
	mov r1, r8
	muls r1, r6
	ldr r0, =gPlayerParty
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r7, r0, 16
	adds r0, r6, 0x1
	mov r9, r0
	cmp r7, 0
	beq _0817E4EE
	adds r0, r4, 0
	movs r1, 0x2D
	movs r2, 0
	bl GetMonData
	cmp r0, 0
	bne _0817E4EE
	movs r4, 0
	lsls r0, r6, 3
	mov r2, r10
	adds r1, r0, r2
	movs r3, 0x3
_0817E4C4:
	lsls r0, r4, 16
	asrs r0, 16
	ldrh r4, [r1]
	adds r0, r4
	lsls r0, 16
	lsrs r4, r0, 16
	adds r1, 0x2
	subs r3, 0x1
	cmp r3, 0
	bge _0817E4C4
	ldr r1, [sp, 0x8]
	lsls r0, r1, 16
	lsls r1, r4, 16
	cmp r0, r1
	bge _0817E4EE
	lsls r0, r6, 24
	lsrs r0, 24
	str r0, [sp, 0x10]
	lsrs r1, 16
	str r1, [sp, 0x8]
	str r7, [sp]
_0817E4EE:
	mov r0, r8
	muls r0, r6
	ldr r2, =gEnemyParty
	adds r4, r0, r2
	adds r0, r4, 0
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r7, r0, 16
	ldr r3, [sp, 0x8]
	lsls r3, 16
	str r3, [sp, 0x1C]
	cmp r7, 0
	beq _0817E5A0
	adds r0, r4, 0
	movs r1, 0x2D
	movs r2, 0
	bl GetMonData
	cmp r0, 0
	bne _0817E5A0
	movs r4, 0
	ldr r0, [sp, 0xC]
	lsls r2, r0, 16
	movs r3, 0x1
	lsls r1, r3, 1
	adds r1, 0x1
	lsls r1, 4
	lsls r0, r6, 3
	adds r0, r1
	mov r3, r10
	adds r1, r0, r3
	movs r3, 0x3
_0817E534:
	lsls r0, r4, 16
	asrs r0, 16
	ldrh r4, [r1]
	adds r0, r4
	lsls r0, 16
	lsrs r4, r0, 16
	adds r1, 0x2
	subs r3, 0x1
	cmp r3, 0
	bge _0817E534
	asrs r1, r2, 16
	lsls r5, r4, 16
	asrs r0, r5, 16
	cmp r1, r0
	bne _0817E590
	mov r0, r8
	muls r0, r6
	ldr r1, =gEnemyParty
	adds r0, r1
	movs r1, 0x19
	movs r2, 0
	bl GetMonData
	adds r4, r0, 0
	ldr r2, [sp, 0x14]
	mov r0, r8
	muls r0, r2
	ldr r3, =gEnemyParty
	adds r0, r3
	movs r1, 0x19
	movs r2, 0
	bl GetMonData
	cmp r4, r0
	bls _0817E5A0
	b _0817E594
	.pool
_0817E590:
	cmp r1, r0
	ble _0817E5A0
_0817E594:
	lsls r0, r6, 24
	lsrs r0, 24
	str r0, [sp, 0x14]
	lsrs r5, 16
	str r5, [sp, 0xC]
	str r7, [sp, 0x4]
_0817E5A0:
	mov r6, r9
	cmp r6, 0x5
	bgt _0817E5A8
	b _0817E48E
_0817E5A8:
	movs r4, 0
	movs r6, 0
	movs r3, 0
	ldr r5, =gPlayerParty
	ldr r7, [sp, 0x10]
	lsls r0, r7, 3
	mov r1, r10
	adds r2, r0, r1
_0817E5B8:
	lsls r0, r4, 16
	asrs r0, 16
	movs r7, 0
	ldrsh r1, [r2, r7]
	cmp r0, r1
	bge _0817E5C8
	ldrh r4, [r2]
	adds r6, r3, 0
_0817E5C8:
	adds r2, 0x2
	adds r3, 0x1
	cmp r3, 0x3
	ble _0817E5B8
	movs r0, 0x64
	ldr r1, [sp, 0x10]
	muls r0, r1
	adds r0, r5
	adds r1, r6, 0
	adds r1, 0xD
	movs r2, 0
	bl GetMonData
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r2, [sp, 0x1C]
	cmp r2, 0
	beq _0817E670
	cmp r4, 0
	beq _0817E670
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0817E65C
	ldr r3, [sp, 0x10]
	cmp r3, 0x2
	bhi _0817E620
	ldr r0, =gBattleScripting
	adds r0, 0x25
	ldrb r0, [r0]
	bl sub_806D82C
	lsls r0, 16
	cmp r0, 0
	beq _0817E630
	b _0817E670
	.pool
_0817E620:
	ldr r0, =gBattleScripting
	adds r0, 0x25
	ldrb r0, [r0]
	bl sub_806D82C
	lsls r0, 16
	cmp r0, 0
	beq _0817E670
_0817E630:
	movs r3, 0
	ldr r7, [sp, 0x14]
	cmp r7, 0x2
	bls _0817E63A
	movs r3, 0x1
_0817E63A:
	lsls r0, r3, 24
	lsrs r0, 24
	ldr r1, =gBattleScripting
	adds r1, 0x25
	ldrb r1, [r1]
	bl sub_806EF84
	lsls r0, 24
	lsrs r0, 24
	adds r1, r4, 0
	ldr r2, [sp]
	ldr r3, [sp, 0x4]
	bl PutBattleUpdateOnTheAir
	b _0817E670
	.pool
_0817E65C:
	ldr r0, =gBattleScripting
	adds r0, 0x25
	ldrb r1, [r0]
	movs r0, 0x1
	eors r0, r1
	adds r1, r4, 0
	ldr r2, [sp]
	ldr r3, [sp, 0x4]
	bl PutBattleUpdateOnTheAir
_0817E670:
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817E3F4

	thumb_func_start sub_817E684
sub_817E684: @ 817E684
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	lsls r1, 16
	lsrs r6, r1, 16
	lsls r2, 24
	lsrs r5, r2, 24
	lsls r3, 24
	lsrs r3, 24
	mov r9, r3
	ldr r0, =gBattleStruct
	ldr r0, [r0]
	movs r1, 0xD2
	lsls r1, 1
	adds r1, r0
	mov r8, r1
	movs r2, 0x81
	lsls r2, 2
	adds r7, r0, r2
	ldr r0, =gBattlerAttacker
	ldrb r0, [r0]
	bl GetBattlerSide
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, =gBattlerTarget
	ldrb r0, [r0]
	bl GetBattlerSide
	lsls r0, 24
	lsrs r3, r0, 24
	mov r0, r10
	cmp r0, 0x1B
	bls _0817E6D4
	b _0817EA6C
_0817E6D4:
	lsls r0, 2
	ldr r1, =_0817E6F0
	adds r1, r0, r1
	ldr r1, [r1]
	mov r12, r0
	mov pc, r1
	.pool
	.align 2, 0
_0817E6F0:
	.4byte _0817E760
	.4byte _0817E760
	.4byte _0817E85C
	.4byte _0817E79C
	.4byte _0817E79C
	.4byte _0817E79C
	.4byte _0817E79C
	.4byte _0817E79C
	.4byte _0817E8A0
	.4byte _0817E8A0
	.4byte _0817E8CC
	.4byte _0817E8F0
	.4byte _0817E978
	.4byte _0817E9E0
	.4byte _0817EA28
	.4byte _0817E8A0
	.4byte _0817E8A0
	.4byte _0817E880
	.4byte _0817E760
	.4byte _0817E80A
	.4byte _0817E848
	.4byte _0817E8A0
	.4byte _0817E760
	.4byte _0817E760
	.4byte _0817E760
	.4byte _0817E760
	.4byte _0817E760
	.4byte _0817E760
_0817E760:
	ldr r1, =gBattlerPartyIndexes
	ldr r0, =gBattlerAttacker
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	lsls r1, 2
	adds r1, r6
	lsls r1, 1
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 4
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r2, [r0]
	lsls r0, r5, 1
	adds r0, r2
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r2
	b _0817EA6A
	.pool
_0817E79C:
	ldr r1, =gUnknown_0860A834
	add r1, r12
	ldr r7, =gBattlerPartyIndexes
	lsls r0, r4, 1
	adds r0, r4
	lsls r2, r0, 4
	ldr r4, =0x0000ffff
	ldr r1, [r1]
	ldr r3, =gBattlerAttacker
	ldrh r0, [r1]
	cmp r6, r0
	bne _0817E7E0
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r7
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r5
	lsls r0, 1
	adds r0, r2
	add r0, r8
	ldrh r1, [r1, 0x2]
	ldrh r2, [r0]
	adds r1, r2
	strh r1, [r0]
	b _0817EA6C
	.pool
_0817E7E0:
	adds r1, 0x4
	ldrh r0, [r1]
	cmp r0, r4
	bne _0817E7EA
	b _0817EA6C
_0817E7EA:
	cmp r6, r0
	bne _0817E7E0
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r7
	ldrh r0, [r0]
	lsls r0, 2
	adds r0, r5
	lsls r0, 1
	adds r0, r2
	add r0, r8
	ldrh r1, [r1, 0x2]
	ldrh r5, [r0]
	adds r1, r5
	strh r1, [r0]
	b _0817EA6C
_0817E80A:
	movs r0, 0x1
	adds r1, r5, 0
	eors r1, r0
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r7, r0
	adds r0, 0x57
	ldrb r2, [r0]
	movs r1, 0x1F
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
	mov r0, r9
	lsls r1, r0, 1
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 4
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r2, [r0]
	lsls r0, r6, 1
	adds r0, r2
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r2
	b _0817EA6A
	.pool
_0817E848:
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 2
	adds r0, r7, r0
	adds r0, 0x57
	ldrb r2, [r0]
	movs r1, 0x1F
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
_0817E85C:
	mov r0, r9
	lsls r1, r0, 1
	lsls r0, r5, 1
	adds r0, r5
	lsls r0, 4
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r2, [r0]
	lsls r0, r6, 1
	adds r0, r2
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r2
	b _0817EA6A
	.pool
_0817E880:
	lsls r1, r5, 2
	add r1, r9
	lsls r1, 1
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 4
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r2, [r0]
	lsls r0, r6, 1
	adds r0, r2
	b _0817EA64
	.pool
_0817E8A0:
	lsls r2, r5, 2
	add r2, r9
	lsls r2, 1
	movs r1, 0x1
	eors r1, r4
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 4
	adds r2, r0
	add r2, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r1, [r0]
	lsls r0, r6, 1
	adds r0, r1
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r1
	strh r0, [r2]
	b _0817EA6C
	.pool
_0817E8CC:
	lsls r1, r5, 2
	add r1, r9
	lsls r1, 1
	lsls r0, r6, 1
	adds r0, r6
	lsls r0, 4
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r0, [r0]
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r2
	b _0817EA6A
	.pool
_0817E8F0:
	lsls r0, r3, 4
	adds r2, r7, r0
	adds r0, r2, 0
	adds r0, 0x34
	ldrb r0, [r0]
	lsls r0, 29
	lsrs r1, r0, 29
	adds r4, r2, 0
	adds r4, 0x3C
	ldrb r0, [r4]
	lsls r0, 29
	lsrs r0, 29
	cmn r1, r0
	bne _0817E90E
	b _0817EA6C
_0817E90E:
	cmp r6, 0xA
	beq _0817E914
	b _0817EA6C
_0817E914:
	cmp r1, 0
	beq _0817E940
	subs r1, 0x1
	lsls r1, 2
	adds r0, r2, 0
	adds r0, 0x33
	ldrb r0, [r0]
	lsrs r0, 6
	adds r1, r0
	lsls r1, 1
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 4
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r0, [r0]
	ldrh r0, [r0]
	ldrh r5, [r1]
	adds r0, r5
	strh r0, [r1]
_0817E940:
	ldrb r0, [r4]
	lsls r0, 29
	lsrs r0, 29
	cmp r0, 0
	bne _0817E94C
	b _0817EA6C
_0817E94C:
	subs r1, r0, 0x1
	lsls r1, 2
	adds r0, r2, 0
	adds r0, 0x3B
	ldrb r0, [r0]
	lsrs r0, 6
	adds r1, r0
	lsls r1, 1
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 4
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r0, [r0]
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r2
	b _0817EA6A
	.pool
_0817E978:
	lsls r1, r3, 4
	adds r1, r7, r1
	adds r0, r1, 0
	adds r0, 0x34
	ldrb r4, [r0]
	lsls r0, r4, 26
	lsrs r2, r0, 29
	adds r5, r1, 0
	adds r5, 0x3C
	ldrb r0, [r5]
	lsls r0, 26
	lsrs r0, 29
	cmn r2, r0
	beq _0817EA6C
	cmp r6, 0xD
	bne _0817EA6C
	cmp r2, 0
	beq _0817E9BE
	subs r1, r2, 0x1
	lsls r1, 2
	lsrs r0, r4, 6
	adds r1, r0
	lsls r1, 1
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 4
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r0, [r0]
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r2
	strh r0, [r1]
_0817E9BE:
	ldrb r2, [r5]
	lsls r0, r2, 26
	lsrs r0, 29
	cmp r0, 0
	beq _0817EA6C
	subs r1, r0, 0x1
	lsls r1, 2
	lsrs r0, r2, 6
	adds r1, r0
	lsls r1, 1
	lsls r0, r3, 1
	adds r0, r3
	lsls r0, 4
	b _0817EA5A
	.pool
_0817E9E0:
	cmp r6, 0x8
	bhi _0817EA6C
	cmp r5, 0
	beq _0817EA6C
	lsls r0, r3, 1
	adds r3, r0, r3
	lsls r0, r3, 2
	adds r2, r7, r0
	adds r0, r2, 0
	adds r0, 0x50
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 29
	cmp r0, 0
	beq _0817EA6C
	subs r1, r0, 0x1
	lsls r1, 2
	adds r0, r2, 0
	adds r0, 0x54
	ldrb r0, [r0]
	lsls r0, 28
	lsrs r0, 30
	adds r1, r0
	lsls r1, 1
	lsls r0, r3, 4
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r0, [r0]
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r2
	b _0817EA6A
	.pool
_0817EA28:
	cmp r6, 0x8
	bls _0817EA6C
	cmp r5, 0
	beq _0817EA6C
	lsls r0, r3, 1
	adds r3, r0, r3
	lsls r0, r3, 2
	adds r2, r7, r0
	adds r0, r2, 0
	adds r0, 0x50
	ldrh r0, [r0]
	lsls r0, 23
	lsrs r0, 29
	cmp r0, 0
	beq _0817EA6C
	subs r1, r0, 0x1
	lsls r1, 2
	adds r0, r2, 0
	adds r0, 0x54
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r0, 30
	adds r1, r0
	lsls r1, 1
	lsls r0, r3, 4
_0817EA5A:
	adds r1, r0
	add r1, r8
	ldr r0, =gUnknown_0860A834
	add r0, r12
	ldr r0, [r0]
_0817EA64:
	ldrh r0, [r0]
	ldrh r5, [r1]
	adds r0, r5
_0817EA6A:
	strh r0, [r1]
_0817EA6C:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817E684

	thumb_func_start sub_817EA80
sub_817EA80: @ 817EA80
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r0, =gBattleStruct
	ldr r0, [r0]
	movs r1, 0x81
	lsls r1, 2
	adds r5, r0, r1
	ldr r3, =gBattlerAttacker
	mov r8, r3
	ldrb r0, [r3]
	bl GetBattlerSide
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, =gBattlerTarget
	ldrb r0, [r0]
	bl GetBattlerSide
	lsls r0, 24
	lsrs r2, r0, 24
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r6, r5, r0
	adds r0, r6, 0
	adds r0, 0x57
	ldrb r0, [r0]
	lsrs r3, r0, 5
	lsls r0, 27
	lsrs r0, 28
	cmp r0, 0
	bne _0817EAC8
	b _0817EE50
_0817EAC8:
	subs r0, 0x1
	cmp r0, 0xE
	bls _0817EAD0
	b _0817EEBC
_0817EAD0:
	lsls r0, 2
	ldr r1, =_0817EAEC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0817EAEC:
	.4byte _0817EB28
	.4byte _0817EB54
	.4byte _0817EB80
	.4byte _0817EBD4
	.4byte _0817EBFE
	.4byte _0817EC26
	.4byte _0817EC4E
	.4byte _0817EC6C
	.4byte _0817EC9A
	.4byte _0817ECCC
	.4byte _0817ED54
	.4byte _0817ED82
	.4byte _0817EDC2
	.4byte _0817EE1C
	.4byte _0817EEBC
_0817EB28:
	lsls r0, r3, 3
	lsls r1, r4, 4
	adds r0, r1
	adds r3, r5, r0
	adds r0, r3, 0
	adds r0, 0x30
	ldrb r0, [r0]
	lsls r0, 29
	lsrs r1, r0, 29
	cmp r1, 0
	bne _0817EB40
	b _0817EEBC
_0817EB40:
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	subs r1, 0x1
	lsls r1, 2
	adds r0, r3, 0
	adds r0, 0x32
	ldrb r3, [r0]
	lsls r3, 28
	b _0817EE84
_0817EB54:
	lsls r0, r3, 3
	lsls r1, r4, 4
	adds r0, r1
	adds r3, r5, r0
	adds r0, r3, 0
	adds r0, 0x30
	ldrb r0, [r0]
	lsls r0, 26
	lsrs r1, r0, 29
	cmp r1, 0
	bne _0817EB6C
	b _0817EEBC
_0817EB6C:
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	subs r1, 0x1
	lsls r1, 2
	adds r0, r3, 0
	adds r0, 0x32
	ldrb r3, [r0]
	lsls r3, 26
	b _0817EE84
_0817EB80:
	lsls r0, r3, 2
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 3
	adds r0, r1
	adds r5, r0
	ldrb r0, [r5]
	lsls r0, 29
	lsrs r1, r0, 29
	cmp r1, 0
	beq _0817EBB4
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	subs r0, r1, 0x1
	lsls r0, 2
	ldrb r3, [r5, 0x2]
	lsls r3, 28
	lsrs r3, 30
	adds r3, r0
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x13
	movs r1, 0
	bl sub_817E684
_0817EBB4:
	ldrb r0, [r5]
	lsls r0, 26
	lsrs r1, r0, 29
	cmp r1, 0
	bne _0817EBC0
	b _0817EEBC
_0817EBC0:
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	subs r0, r1, 0x1
	lsls r0, 2
	ldrb r3, [r5, 0x2]
	lsls r3, 26
	lsrs r3, 30
	adds r3, r0
	b _0817EE88
_0817EBD4:
	lsls r0, r3, 2
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 3
	adds r0, r1
	adds r1, r5, r0
	ldrh r0, [r1]
	lsls r0, 23
	lsrs r3, r0, 29
	cmp r3, 0
	bne _0817EBEC
	b _0817EEBC
_0817EBEC:
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	subs r0, r3, 0x1
	lsls r0, 2
	ldrb r3, [r1, 0x2]
	lsrs r3, 6
	adds r3, r0
	b _0817EE88
_0817EBFE:
	lsls r0, r3, 3
	lsls r1, r4, 4
	adds r0, r1
	adds r3, r5, r0
	ldrh r0, [r3, 0x30]
	lsls r0, 23
	lsrs r1, r0, 29
	cmp r1, 0
	bne _0817EC12
	b _0817EEBC
_0817EC12:
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	subs r1, 0x1
	lsls r1, 2
	adds r0, r3, 0
	adds r0, 0x32
	ldrb r3, [r0]
	lsrs r3, 6
	b _0817EE86
_0817EC26:
	lsls r0, r3, 3
	lsls r1, r4, 4
	adds r0, r1
	adds r3, r5, r0
	adds r0, r3, 0
	adds r0, 0x31
	ldrb r0, [r0]
	lsls r0, 28
	lsrs r1, r0, 29
	cmp r1, 0
	bne _0817EC3E
	b _0817EEBC
_0817EC3E:
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	subs r1, 0x1
	lsls r1, 2
	adds r0, r3, 0
	adds r0, 0x33
	b _0817EE80
_0817EC4E:
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r3, r5, r0
	adds r0, r3, 0
	adds r0, 0x50
	ldrb r0, [r0]
	lsls r0, 29
	lsrs r1, r0, 29
	cmp r1, 0
	bne _0817EC66
	b _0817EEBC
_0817EC66:
	movs r0, 0x1
	adds r2, r4, 0
	b _0817EE76
_0817EC6C:
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r3, r5, r0
	ldr r0, [r3, 0x50]
	lsls r0, 14
	lsrs r0, 29
	cmp r0, 0
	bne _0817EC80
	b _0817EEBC
_0817EC80:
	adds r2, r4, 0
	subs r1, r0, 0x1
	lsls r1, 2
	adds r0, r3, 0
	adds r0, 0x55
	ldrb r3, [r0]
	lsls r3, 28
	lsrs r3, 30
	adds r3, r1
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x14
	b _0817EE8E
_0817EC9A:
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r3, r5, r0
	adds r0, r3, 0
	adds r0, 0x52
	ldrb r0, [r0]
	lsls r0, 27
	lsrs r0, 29
	cmp r0, 0
	bne _0817ECB2
	b _0817EEBC
_0817ECB2:
	adds r2, r4, 0
	subs r1, r0, 0x1
	lsls r1, 2
	adds r0, r3, 0
	adds r0, 0x55
	ldrb r3, [r0]
	lsls r3, 26
	lsrs r3, 30
	adds r3, r1
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x14
	b _0817EE8E
_0817ECCC:
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r3, r5, r0
	adds r0, r3, 0
	adds r0, 0x58
	ldrb r0, [r0]
	lsls r0, 25
	cmp r0, 0
	bge _0817ED14
	adds r0, r3, 0
	adds r0, 0x52
	ldrb r0, [r0]
	lsrs r0, 5
	subs r6, r0, 0x1
	ldr r1, =gBattlerPartyIndexes
	ldr r0, =gBattlerAttacker
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r0, [r0]
	cmp r6, r0
	beq _0817ED14
	adds r2, r4, 0
	lsls r1, r6, 2
	adds r0, r3, 0
	adds r0, 0x55
	ldrb r3, [r0]
	lsrs r3, 6
	adds r3, r1
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x13
	movs r1, 0
	bl sub_817E684
_0817ED14:
	movs r1, 0x1
	eors r1, r4
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r1, r5, r0
	adds r0, r1, 0
	adds r0, 0x58
	ldrb r0, [r0]
	lsls r0, 25
	cmp r0, 0
	blt _0817ED2E
	b _0817EEBC
_0817ED2E:
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	adds r0, r1, 0
	adds r0, 0x52
	ldrb r0, [r0]
	lsrs r0, 5
	subs r0, 0x1
	lsls r0, 2
	adds r1, 0x55
	ldrb r3, [r1]
	lsrs r3, 6
	adds r3, r0
	b _0817EE88
	.pool
_0817ED54:
	movs r0, 0x1
	eors r0, r4
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r1, r5, r1
	adds r1, 0x56
	ldrb r0, [r1]
	lsls r0, 25
	lsrs r5, r0, 29
	cmp r5, 0
	bne _0817ED6E
	b _0817EEBC
_0817ED6E:
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	subs r0, r5, 0x1
	lsls r0, 2
	ldrh r3, [r1]
	lsls r3, 23
	lsrs r3, 30
	adds r3, r0
	b _0817EE88
_0817ED82:
	lsls r2, r4, 4
	movs r1, 0x1
	adds r0, r4, 0
	eors r0, r1
	lsls r6, r0, 24
	adds r0, r5, 0
	adds r0, 0x30
	adds r4, r2, r0
	movs r5, 0x1
_0817ED94:
	ldr r0, [r4]
	lsls r0, 14
	lsrs r0, 29
	cmp r0, 0
	beq _0817EDB8
	subs r0, 0x1
	lsls r0, 2
	ldrb r3, [r4, 0x3]
	lsls r3, 26
	lsrs r3, 30
	adds r3, r0
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x13
	movs r1, 0
	lsrs r2, r6, 24
	bl sub_817E684
_0817EDB8:
	adds r4, 0x8
	subs r5, 0x1
	cmp r5, 0
	bge _0817ED94
	b _0817EEBC
_0817EDC2:
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 2
	adds r0, r5, r0
	adds r0, 0x58
	ldrb r3, [r0]
	lsls r0, r3, 31
	cmp r0, 0
	beq _0817EDF0
	adds r2, r4, 0
	lsls r0, r3, 26
	lsrs r0, 29
	subs r0, 0x1
	lsls r0, 2
	lsls r3, 29
	lsrs r3, 30
	adds r3, r0
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x13
	movs r1, 0
	bl sub_817E684
_0817EDF0:
	movs r0, 0x1
	eors r0, r4
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	adds r1, r5, r1
	adds r1, 0x58
	ldrb r1, [r1]
	lsls r0, r1, 31
	cmp r0, 0
	beq _0817EEBC
	movs r0, 0x1
	adds r2, r4, 0
	eors r2, r0
	lsls r0, r1, 26
	lsrs r0, 29
	subs r0, 0x1
	lsls r0, 2
	lsls r3, r1, 29
	lsrs r3, 30
	adds r3, r0
	b _0817EE88
_0817EE1C:
	cmp r7, 0x1
	bne _0817EEBC
	adds r2, r4, 0
	ldr r1, =gBattlerPartyIndexes
	ldr r0, =gBattlerAttacker
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	lsls r1, 2
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r5, r0
	adds r0, 0x53
	ldrb r3, [r0]
	lsrs r3, 6
	adds r3, r1
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x14
	b _0817EE8E
	.pool
_0817EE50:
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r3, r5, r0
	adds r0, r3, 0
	adds r0, 0x57
	ldrb r0, [r0]
	lsls r0, 27
	lsrs r0, 28
	cmp r0, 0x7
	bne _0817EE96
	adds r0, r3, 0
	adds r0, 0x50
	ldrb r0, [r0]
	lsls r0, 29
	lsrs r1, r0, 29
	cmp r1, 0
	beq _0817EEBC
	movs r0, 0x1
_0817EE76:
	eors r2, r0
	subs r1, 0x1
	lsls r1, 2
	adds r0, r3, 0
	adds r0, 0x54
_0817EE80:
	ldrb r3, [r0]
	lsls r3, 30
_0817EE84:
	lsrs r3, 30
_0817EE86:
	adds r3, r1
_0817EE88:
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x13
_0817EE8E:
	movs r1, 0
	bl sub_817E684
	b _0817EEBC
_0817EE96:
	adds r2, r4, 0
	ldr r1, =gBattlerPartyIndexes
	mov r3, r8
	ldrb r0, [r3]
	lsls r0, 1
	adds r0, r1
	ldrh r1, [r0]
	lsls r1, 2
	adds r0, r6, 0
	adds r0, 0x53
	ldrb r3, [r0]
	lsrs r3, 6
	adds r3, r1
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x14
	movs r1, 0
	bl sub_817E684
_0817EEBC:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817EA80

	thumb_func_start sub_817EECC
sub_817EECC: @ 817EECC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x28
	ldr r7, =gBattleTypeFlags
	ldr r0, [r7]
	ldr r1, =0x02000003
	ands r0, r1
	cmp r0, 0
	beq _0817EEE6
	b _0817F1FA
_0817EEE6:
	ldr r4, =gBattlerAttacker
	ldrb r0, [r4]
	bl GetBattlerSide
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0817EEF8
	b _0817F1FA
_0817EEF8:
	ldr r5, =gBattleMons
	ldrb r4, [r4]
	movs r1, 0x58
	adds r6, r4, 0
	muls r6, r1
	adds r0, r6, r5
	ldrb r0, [r0, 0x1E]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x5
	bgt _0817EF10
	b _0817F1FA
_0817EF10:
	ldr r0, =gBattlerTarget
	ldrb r0, [r0]
	muls r0, r1
	adds r0, r5
	ldrb r0, [r0, 0x1F]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x6
	ble _0817EF24
	b _0817F1FA
_0817EF24:
	ldr r0, =gCurrentMove
	ldrh r1, [r0]
	cmp r1, 0xED
	bne _0817EF2E
	b _0817F1FA
_0817EF2E:
	ldr r0, =0x00000137
	cmp r1, r0
	bne _0817EF36
	b _0817F1FA
_0817EF36:
	ldr r0, [r7]
	movs r1, 0xC8
	lsls r1, 14
	ands r0, r1
	cmp r0, 0
	beq _0817EF44
	b _0817F1FA
_0817EF44:
	ldr r3, =gBattleMoves
	ldr r2, =gMoveSelectionCursor
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r6
	adds r1, r5, 0
	adds r1, 0xC
	adds r0, r1
	ldrh r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrb r0, [r0, 0x1]
	adds r6, r2, 0
	cmp r0, 0
	bne _0817EF6A
	b _0817F1FA
_0817EF6A:
	movs r5, 0
	str r1, [sp, 0x24]
	ldr r1, =gUnknown_0860A4AC
	ldr r4, =0x0000ffff
	adds r3, r1, 0
	adds r2, r1, 0
_0817EF76:
	ldr r0, [sp, 0x24]
	ldrh r7, [r2]
	cmp r0, r7
	beq _0817EF8A
	adds r3, 0x2
	adds r2, 0x2
	adds r5, 0x1
	ldrh r0, [r3]
	cmp r0, r4
	bne _0817EF76
_0817EF8A:
	lsls r0, r5, 1
	adds r0, r1
	ldrh r1, [r0]
	ldr r0, =0x0000ffff
	cmp r1, r0
	beq _0817EF98
	b _0817F1FA
_0817EF98:
	ldr r2, =gBattlerAttacker
	ldrb r0, [r2]
	adds r0, r6
	ldrb r0, [r0]
	lsls r0, 2
	mov r1, sp
	adds r1, r0
	adds r1, 0x10
	ldr r0, =gBattleMoveDamage
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, =gCurrentMove
	ldrh r1, [r0]
	str r1, [sp, 0x24]
	movs r5, 0
	add r3, sp, 0x20
	mov r10, r3
	mov r8, r0
	add r7, sp, 0x10
	ldr r4, =gBattlerTarget
	mov r9, r4
_0817EFC2:
	lsls r1, r5, 1
	ldr r6, =gBattlerAttacker
	ldrb r0, [r6]
	movs r2, 0x58
	muls r0, r2
	adds r1, r0
	ldr r0, =gBattleMons
	adds r0, 0xC
	adds r1, r0
	ldrh r0, [r1]
	mov r3, r8
	strh r0, [r3]
	movs r6, 0
	mov r4, r10
	strh r6, [r4]
	ldrh r0, [r3]
	adds r1, r7, 0
	mov r2, r10
	bl sub_817F21C
	lsls r0, 24
	cmp r0, 0
	beq _0817F0B4
	ldr r4, =gSideStatuses
	mov r1, r9
	ldrb r0, [r1]
	bl GetBattlerPosition
	movs r1, 0x1
	ands r1, r0
	lsls r1, 1
	adds r1, r4
	ldrh r3, [r1]
	ldr r2, =gBattlerAttacker
	ldrb r0, [r2]
	movs r4, 0x58
	muls r0, r4
	ldr r6, =gBattleMons
	adds r0, r6
	mov r2, r9
	ldrb r1, [r2]
	muls r1, r4
	adds r1, r6
	mov r4, r8
	ldrh r2, [r4]
	mov r6, r10
	ldrh r4, [r6]
	str r4, [sp]
	movs r4, 0
	str r4, [sp, 0x4]
	ldr r6, =gBattlerAttacker
	ldrb r4, [r6]
	str r4, [sp, 0x8]
	mov r6, r9
	ldrb r4, [r6]
	str r4, [sp, 0xC]
	bl CalculateBaseDamage
	adds r3, r0, 0
	ldr r4, =gBattleMoveDamage
	str r3, [r4]
	ldr r1, =gStatuses3
	ldr r2, =gBattlerAttacker
	ldrb r0, [r2]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x80
	lsls r1, 2
	ands r0, r1
	cmp r0, 0
	beq _0817F06A
	ldr r2, =gBattleMoves
	mov r6, r8
	ldrh r1, [r6]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x2]
	cmp r0, 0xD
	bne _0817F06A
	lsls r0, r3, 1
	str r0, [r4]
_0817F06A:
	ldr r0, =gProtectStructs
	ldr r6, =gBattlerAttacker
	ldrb r1, [r6]
	lsls r1, 4
	adds r1, r0
	ldrb r0, [r1]
	lsls r0, 28
	cmp r0, 0
	bge _0817F08C
	ldr r4, =gBattleMoveDamage
	ldr r1, [r4]
	lsls r0, r1, 4
	subs r0, r1
	movs r1, 0xA
	bl __divsi3
	str r0, [r4]
_0817F08C:
	mov r1, r8
	ldrh r0, [r1]
	ldrb r1, [r6]
	mov r3, r9
	ldrb r2, [r3]
	bl TypeCalc
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r0, =gBattleMoveDamage
	ldr r0, [r0]
	str r0, [r7]
	cmp r0, 0
	bne _0817F0B4
	movs r0, 0x29
	ands r0, r1
	cmp r0, 0
	bne _0817F0B4
	movs r0, 0x1
	str r0, [r7]
_0817F0B4:
	adds r7, 0x4
	adds r5, 0x1
	cmp r5, 0x3
	ble _0817EFC2
	movs r5, 0
	ldr r3, =gBattlerAttacker
	ldr r6, =gMoveSelectionCursor
	ldr r4, =gBattlerPartyIndexes
	mov r8, r4
	movs r7, 0x64
	mov r9, r7
	mov r10, r6
_0817F0CC:
	ldrb r0, [r3]
	adds r0, r6
	ldrb r2, [r0]
	cmp r5, r2
	bne _0817F0D8
	b _0817F1D4
_0817F0D8:
	lsls r0, r5, 2
	mov r1, sp
	adds r1, r0
	adds r1, 0x10
	lsls r0, r2, 2
	add r0, sp
	adds r0, 0x10
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	ble _0817F1D4
	movs r7, 0x1
	cmp r2, 0
	beq _0817F0F6
	movs r7, 0
_0817F0F6:
	movs r5, 0
	ldr r4, =gBattlerTarget
	ldr r6, =gEnemyParty
	ldr r0, =gBattlerAttacker
	ldrb r0, [r0]
	add r0, r10
	ldrb r3, [r0]
	add r2, sp, 0x10
_0817F106:
	cmp r5, r3
	beq _0817F11A
	lsls r0, r7, 2
	add r0, sp
	adds r0, 0x10
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	ble _0817F11A
	adds r7, r5, 0
_0817F11A:
	adds r2, 0x4
	adds r5, 0x1
	cmp r5, 0x3
	ble _0817F106
	ldrb r0, [r4]
	lsls r0, 1
	add r0, r8
	ldrh r0, [r0]
	mov r1, r9
	muls r1, r0
	adds r0, r1, 0
	adds r0, r6
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r6, r0, 0
	lsls r6, 16
	lsrs r6, 16
	ldr r2, =gBattlerAttacker
	ldrb r0, [r2]
	lsls r0, 1
	add r0, r8
	ldrh r0, [r0]
	mov r3, r9
	muls r3, r0
	adds r0, r3, 0
	ldr r1, =gPlayerParty
	adds r0, r1
	movs r1, 0xB
	movs r2, 0
	bl GetMonData
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	ldr r4, =gBattlerAttacker
	ldrb r3, [r4]
	mov r2, r10
	adds r0, r3, r2
	ldrb r2, [r0]
	movs r0, 0x58
	adds r4, r3, 0
	muls r4, r0
	ldr r5, =gBattleMons + 0xC
	adds r3, r4, r5
	lsls r0, r7, 1
	adds r0, r4
	adds r0, r5
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r6, 0
	bl sub_80EE35C
	b _0817F1DC
	.pool
_0817F1D4:
	adds r5, 0x1
	cmp r5, 0x3
	bgt _0817F1DC
	b _0817F0CC
_0817F1DC:
	ldr r2, =gBattleMoveDamage
	ldr r1, =gMoveSelectionCursor
	ldr r0, =gBattlerAttacker
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 2
	add r0, sp
	adds r0, 0x10
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, =gCurrentMove
	mov r3, sp
	ldrh r3, [r3, 0x24]
	strh r3, [r0]
_0817F1FA:
	add sp, 0x28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817EECC

	thumb_func_start sub_817F21C
sub_817F21C: @ 817F21C
	push {r4-r7,lr}
	adds r6, r1, 0
	mov r12, r2
	lsls r0, 16
	lsrs r2, r0, 16
	ldr r1, =gBattleMoves
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	beq _0817F286
	movs r4, 0
	ldr r5, =gUnknown_0860A4AC
	ldr r7, =0x0000ffff
	adds r3, r5, 0
	adds r1, r5, 0
_0817F240:
	ldrh r0, [r1]
	cmp r2, r0
	beq _0817F252
	adds r3, 0x2
	adds r1, 0x2
	adds r4, 0x1
	ldrh r0, [r3]
	cmp r0, r7
	bne _0817F240
_0817F252:
	lsls r0, r4, 1
	adds r0, r5
	ldrh r1, [r0]
	ldr r0, =0x0000ffff
	cmp r1, r0
	beq _0817F270
	movs r0, 0
	str r0, [r6]
	b _0817F2A0
	.pool
_0817F270:
	cmp r2, 0x95
	bne _0817F294
	ldr r2, =gBattleMons
	ldr r0, =gBattlerAttacker
	ldrb r1, [r0]
	movs r0, 0x58
	muls r0, r1
	adds r0, r2
	adds r0, 0x2A
	ldrb r0, [r0]
	asrs r0, 1
_0817F286:
	str r0, [r6]
	movs r0, 0
	b _0817F2A0
	.pool
_0817F294:
	cmp r2, 0xDE
	bne _0817F29E
	movs r0, 0xA
	mov r1, r12
	strh r0, [r1]
_0817F29E:
	movs r0, 0x1
_0817F2A0:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_817F21C

	thumb_func_start sub_817F2A8
sub_817F2A8: @ 817F2A8
	push {r4,r5,lr}
	ldr r0, =gBattleTypeFlags
	ldr r0, [r0]
	movs r1, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0817F324
	ldr r0, =gBattleStruct
	ldr r3, [r0]
	ldr r0, =0x0000025b
	adds r4, r3, r0
	ldrb r2, [r4]
	subs r1, 0x21
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r4]
	ldr r0, =0x00000267
	adds r2, r3, r0
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
	ldrb r5, [r4]
	movs r1, 0x1F
	adds r0, r1, 0
	ands r0, r5
	strb r0, [r4]
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
	movs r0, 0x97
	lsls r0, 2
	adds r4, r3, r0
	ldrb r2, [r4]
	movs r1, 0x39
	negs r1, r1
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r4]
	movs r0, 0x9A
	lsls r0, 2
	adds r3, r0
	ldrb r0, [r3]
	ands r1, r0
	strb r1, [r3]
	ldrb r2, [r4]
	movs r1, 0x7
	negs r1, r1
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r4]
	ldrb r0, [r3]
	ands r1, r0
	strb r1, [r3]
	ldrb r2, [r4]
	movs r1, 0x2
	negs r1, r1
	adds r0, r1, 0
	ands r0, r2
	strb r0, [r4]
	ldrb r0, [r3]
	ands r1, r0
	strb r1, [r3]
_0817F324:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_817F2A8

	thumb_func_start GetBattlerMoveSlotId
GetBattlerMoveSlotId: @ 817F33C
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 16
	lsrs r7, r1, 16
	adds r0, r5, 0
	bl GetBattlerSide
	lsls r0, 24
	ldr r6, =gEnemyParty
	cmp r0, 0
	bne _0817F356
	ldr r6, =gPlayerParty
_0817F356:
	movs r4, 0
	ldr r1, =gBattlerPartyIndexes
	lsls r0, r5, 1
	adds r5, r0, r1
	b _0817F36E
	.pool
_0817F36C:
	adds r4, 0x1
_0817F36E:
	cmp r4, 0x3
	bgt _0817F388
	ldrh r1, [r5]
	movs r0, 0x64
	muls r0, r1
	adds r0, r6, r0
	adds r1, r4, 0
	adds r1, 0xD
	movs r2, 0
	bl GetMonData
	cmp r0, r7
	bne _0817F36C
_0817F388:
	lsls r0, r4, 24
	lsrs r0, 24
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end GetBattlerMoveSlotId

	thumb_func_start sub_817F394
sub_817F394: @ 817F394
	push {r4-r6,lr}
	lsls r0, 16
	lsrs r3, r0, 16
	adds r4, r3, 0
	lsls r1, 16
	lsrs r1, 16
	adds r6, r1, 0
	lsls r2, 24
	lsrs r2, 24
	adds r5, r2, 0
	movs r0, 0x7
	ands r0, r3
	cmp r0, 0
	beq _0817F3B4
	movs r0, 0x3
	b _0817F3CA
_0817F3B4:
	movs r0, 0x60
	ands r0, r3
	cmp r0, 0
	beq _0817F3C0
	movs r0, 0x4
	b _0817F3CA
_0817F3C0:
	movs r0, 0x18
	ands r0, r3
	cmp r0, 0
	beq _0817F3D2
	movs r0, 0x5
_0817F3CA:
	movs r3, 0
	bl sub_817E684
	b _0817F3E6
_0817F3D2:
	movs r0, 0x80
	ands r4, r0
	cmp r4, 0
	beq _0817F3E6
	movs r0, 0x6
	adds r1, r6, 0
	adds r2, r5, 0
	movs r3, 0
	bl sub_817E684
_0817F3E6:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_817F394

	.align 2, 0 @ Don't pad with nop.
