.class A2I
.method a2i
    push $fp
    mov $fp, $sp
    pop s
    jal length
    mov $r2, $r1
    mov $r4, 0
    mov $r3, $r4
    mov $r4, 0
    cmp null, $r2, $r4
    mov $r5, 0
    beq null, L65a223a1f65842ef8deb053b24be7b5c
    j La39fb7f0028d4efabe81d08357de6303
    L65a223a1f65842ef8deb053b24be7b5c:
    mov $r5, 1
    La39fb7f0028d4efabe81d08357de6303:
    bne $r5, L60
    j L61
    L60:
    mov $r4, 0
    mov $r6, $r4
    mov $r4, 0
    mov $r7, $r4
    j L62
    L61:
    mov $r4, 0
    mov $r8, $r4
    mov $r10, 1
    mov $r9, $r10
    push $r8
    push $r9
    push $r8
    push $r9
    jal substr
    mov $r11, $r1
    pop null
    mov $r13, "-"
    mov $r12, $r13
    mov $r13, "-"
    cmp null, $r11, $r13
    mov $r14, 0
    beq null, L994776df15cb477195099ea70f8ce5d7
    j L5b917d6974fa4ad5b8f2b4ed90a3b1bf
    L994776df15cb477195099ea70f8ce5d7:
    mov $r14, 1
    L5b917d6974fa4ad5b8f2b4ed90a3b1bf:
    bne $r14, L63
    j L64
    L63:
    mov $r10, 1
    mov $r15, $r10
    sw t95, 4($fp)
    jal length
    mov 4($fp), $r1
    sw t96, 8($fp)
    mov $r10, 1
    mov 8($fp), $r10
    sw t97, 12($fp)
    sw t95, 16($fp)
    mov $r10, 1
    sub 12($fp), 16($fp), $r10
    push $r15
    sw t97, 20($fp)
    push 20($fp)
    sw t98, 24($fp)
    push $r15
    push 20($fp)
    jal substr
    mov 24($fp), $r1
    pop null
    sw t98, 28($fp)
    push 28($fp)
    sw t99, 32($fp)
    push 28($fp)
    jal A2I.a2i_aux
    mov 32($fp), $r1
    pop null
    sw t100, 36($fp)
    sw t99, 40($fp)
    neg 36($fp), 40($fp)
    sw t101, 44($fp)
    sw t100, 48($fp)
    mov 44($fp), 48($fp)
    j L65
    L64:
    sw t102, 52($fp)
    mov $r4, 0
    mov 52($fp), $r4
    sw t103, 56($fp)
    mov $r10, 1
    mov 56($fp), $r10
    sw t102, 60($fp)
    push 60($fp)
    sw t103, 64($fp)
    push 64($fp)
    sw t104, 68($fp)
    push 60($fp)
    push 64($fp)
    jal substr
    mov 68($fp), $r1
    pop null
    sw t105, 72($fp)
    sw const34041, 76($fp)
    mov 76($fp), "+"
    mov 72($fp), 76($fp)
    sw t106, 80($fp)
    sw t104, 84($fp)
    sw const34041, 88($fp)
    mov 88($fp), "+"
    cmp null, 84($fp), 88($fp)
    mov 80($fp), 0
    beq null, L41b448f728d24efca3e84afb0684106d
    j L570334618a854231958a5aba0e34255c
    L41b448f728d24efca3e84afb0684106d:
    mov 80($fp), 1
    L570334618a854231958a5aba0e34255c:
    sw t106, 92($fp)
    bne 92($fp), L66
    j L67
    L66:
    sw t107, 96($fp)
    mov $r10, 1
    mov 96($fp), $r10
    sw t108, 100($fp)
    jal length
    mov 100($fp), $r1
    sw t109, 104($fp)
    mov $r10, 1
    mov 104($fp), $r10
    sw t110, 108($fp)
    sw t108, 112($fp)
    mov $r10, 1
    sub 108($fp), 112($fp), $r10
    sw t107, 116($fp)
    push 116($fp)
    sw t110, 120($fp)
    push 120($fp)
    sw t111, 124($fp)
    push 116($fp)
    push 120($fp)
    jal substr
    mov 124($fp), $r1
    pop null
    sw t111, 128($fp)
    push 128($fp)
    sw t112, 132($fp)
    push 128($fp)
    jal A2I.a2i_aux
    mov 132($fp), $r1
    pop null
    sw t113, 136($fp)
    sw t112, 140($fp)
    mov 136($fp), 140($fp)
    j L68
    L67:
    push s
    sw t114, 144($fp)
    push s
    jal A2I.a2i_aux
    mov 144($fp), $r1
    pop null
    sw t113, 148($fp)
    sw t114, 152($fp)
    mov 148($fp), 152($fp)
    L68:
    sw t101, 156($fp)
    sw t113, 160($fp)
    mov 156($fp), 160($fp)
    L65:
    sw t101, 164($fp)
    mov $r7, 164($fp)
    L62:
    mov $sp, $fp
    pop $fp
    mov $r1, $r7
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method i2a
    push $fp
    mov $fp, $sp
    pop i
    sw t127, 4($fp)
    mov $r4, 0
    mov 4($fp), $r4
    sw t128, 8($fp)
    mov $r4, 0
    cmp null, i, $r4
    mov 8($fp), 0
    beq null, L240fc2084cd34354a99ee2342b84c355
    j L7a569f33c62944dbacb58976ac0969ee
    L240fc2084cd34354a99ee2342b84c355:
    mov 8($fp), 1
    L7a569f33c62944dbacb58976ac0969ee:
    sw t128, 12($fp)
    bne 12($fp), L72
    j L73
    L72:
    sw t129, 16($fp)
    sw const34196, 20($fp)
    mov 20($fp), "0"
    mov 16($fp), 20($fp)
    sw t130, 24($fp)
    sw const34196, 28($fp)
    mov 28($fp), "0"
    mov 24($fp), 28($fp)
    j L74
    L73:
    sw t131, 32($fp)
    mov $r4, 0
    mov 32($fp), $r4
    sw t132, 36($fp)
    mov $r4, 0
    cmp null, $r4, i
    mov 36($fp), 0
    blt null, L678970a4f14b4d678e9e1eda97ef0a5c
    j Lb14605a0c8414ac8be896d12746193f2
    L678970a4f14b4d678e9e1eda97ef0a5c:
    mov 36($fp), 1
    Lb14605a0c8414ac8be896d12746193f2:
    sw t132, 40($fp)
    bne 40($fp), L75
    j L76
    L75:
    push i
    sw t133, 44($fp)
    push i
    jal A2I.i2a_aux
    mov 44($fp), $r1
    pop null
    sw t134, 48($fp)
    sw t133, 52($fp)
    mov 48($fp), 52($fp)
    j L77
    L76:
    sw t135, 56($fp)
    mov $r13, "-"
    mov 56($fp), $r13
    sw t136, 60($fp)
    mov $r10, 1
    mov 60($fp), $r10
    sw t137, 64($fp)
    sw t136, 68($fp)
    neg 64($fp), 68($fp)
    sw t138, 72($fp)
    sw t137, 76($fp)
    mul 72($fp), i, 76($fp)
    sw t138, 80($fp)
    push 80($fp)
    sw t139, 84($fp)
    push 80($fp)
    jal A2I.i2a_aux
    mov 84($fp), $r1
    pop null
    sw t139, 88($fp)
    push 88($fp)
    sw t140, 92($fp)
    push 88($fp)
    jal concat
    mov 92($fp), $r1
    pop null
    sw t134, 96($fp)
    sw t140, 100($fp)
    mov 96($fp), 100($fp)
    L77:
    sw t130, 104($fp)
    sw t134, 108($fp)
    mov 104($fp), 108($fp)
    L74:
    mov $sp, $fp
    pop $fp
    sw t130, 112($fp)
    mov $r1, 112($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method i2a_aux
    push $fp
    mov $fp, $sp
    pop i
    sw t141, 4($fp)
    mov $r4, 0
    mov 4($fp), $r4
    sw t142, 8($fp)
    mov $r4, 0
    cmp null, i, $r4
    mov 8($fp), 0
    beq null, L314dcf215f474f2983db2487b42dfe67
    j L2f216d256c7f4afbafa01e44d67da751
    L314dcf215f474f2983db2487b42dfe67:
    mov 8($fp), 1
    L2f216d256c7f4afbafa01e44d67da751:
    sw t142, 12($fp)
    bne 12($fp), L78
    j L79
    L78:
    sw t143, 16($fp)
    sw const1088, 20($fp)
    mov 20($fp), ""
    mov 16($fp), 20($fp)
    sw t144, 24($fp)
    sw const1088, 28($fp)
    mov 28($fp), ""
    mov 24($fp), 28($fp)
    j L80
    L79:
    sw t145, 32($fp)
    sw const1567, 36($fp)
    mov 36($fp), 10
    mov 32($fp), 36($fp)
    sw t146, 40($fp)
    sw const1567, 44($fp)
    mov 44($fp), 10
    div 40($fp), i, 44($fp)
    sw t146, 48($fp)
    mov next, 48($fp)
    push next
    sw t147, 52($fp)
    push next
    jal A2I.i2a_aux
    mov 52($fp), $r1
    pop null
    sw t148, 56($fp)
    sw const1567, 60($fp)
    mov 60($fp), 10
    mov 56($fp), 60($fp)
    sw t149, 64($fp)
    sw const1567, 68($fp)
    mov 68($fp), 10
    mul 64($fp), next, 68($fp)
    sw t150, 72($fp)
    sw t149, 76($fp)
    sub 72($fp), i, 76($fp)
    sw t150, 80($fp)
    push 80($fp)
    sw t151, 84($fp)
    push 80($fp)
    jal A2I.i2c
    mov 84($fp), $r1
    pop null
    sw t151, 88($fp)
    push 88($fp)
    sw t152, 92($fp)
    push 88($fp)
    jal concat
    mov 92($fp), $r1
    pop null
    sw t144, 96($fp)
    sw t152, 100($fp)
    mov 96($fp), 100($fp)
    L80:
    mov $sp, $fp
    pop $fp
    sw t144, 104($fp)
    mov $r1, 104($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method c2i
    push $fp
    mov $fp, $sp
    pop char
    sw t0, 4($fp)
    sw const34196, 8($fp)
    mov 8($fp), "0"
    mov 4($fp), 8($fp)
    sw t1, 12($fp)
    sw const34196, 16($fp)
    mov 16($fp), "0"
    cmp null, char, 16($fp)
    mov 12($fp), 0
    beq null, Led5dbe4a4b7c454aa8cb1fbfe6d5fb21
    j La07f231e3673495ea29fc2c4fa926fd8
    Led5dbe4a4b7c454aa8cb1fbfe6d5fb21:
    mov 12($fp), 1
    La07f231e3673495ea29fc2c4fa926fd8:
    sw t1, 20($fp)
    bne 20($fp), L0
    j L1
    L0:
    sw t2, 24($fp)
    mov $r4, 0
    mov 24($fp), $r4
    sw t3, 28($fp)
    mov $r4, 0
    mov 28($fp), $r4
    j L2
    L1:
    sw t4, 32($fp)
    sw const34227, 36($fp)
    mov 36($fp), "1"
    mov 32($fp), 36($fp)
    sw t5, 40($fp)
    sw const34227, 44($fp)
    mov 44($fp), "1"
    cmp null, char, 44($fp)
    mov 40($fp), 0
    beq null, L361dd91b2b0f4a3fa4930354c83e1bd6
    j La09f7d8965654d3692b7347d9b68dd2d
    L361dd91b2b0f4a3fa4930354c83e1bd6:
    mov 40($fp), 1
    La09f7d8965654d3692b7347d9b68dd2d:
    sw t5, 48($fp)
    bne 48($fp), L3
    j L4
    L3:
    sw t6, 52($fp)
    mov $r10, 1
    mov 52($fp), $r10
    sw t7, 56($fp)
    mov $r10, 1
    mov 56($fp), $r10
    j L5
    L4:
    sw t8, 60($fp)
    sw const34258, 64($fp)
    mov 64($fp), "2"
    mov 60($fp), 64($fp)
    sw t9, 68($fp)
    sw const34258, 72($fp)
    mov 72($fp), "2"
    cmp null, char, 72($fp)
    mov 68($fp), 0
    beq null, L3b2e47a0d64f445292edd74a358d2453
    j L07076bb0f7e047528e540e62d761e7aa
    L3b2e47a0d64f445292edd74a358d2453:
    mov 68($fp), 1
    L07076bb0f7e047528e540e62d761e7aa:
    sw t9, 76($fp)
    bne 76($fp), L6
    j L7
    L6:
    sw t10, 80($fp)
    sw const50, 84($fp)
    mov 84($fp), 2
    mov 80($fp), 84($fp)
    sw t11, 88($fp)
    sw const50, 92($fp)
    mov 92($fp), 2
    mov 88($fp), 92($fp)
    j L8
    L7:
    sw t12, 96($fp)
    sw const34289, 100($fp)
    mov 100($fp), "3"
    mov 96($fp), 100($fp)
    sw t13, 104($fp)
    sw const34289, 108($fp)
    mov 108($fp), "3"
    cmp null, char, 108($fp)
    mov 104($fp), 0
    beq null, Lf24be052a4b84c29b086be59d64e7486
    j L7a9ac8f30abe4ea1a8bf937649f5163a
    Lf24be052a4b84c29b086be59d64e7486:
    mov 104($fp), 1
    L7a9ac8f30abe4ea1a8bf937649f5163a:
    sw t13, 112($fp)
    bne 112($fp), L9
    j L10
    L9:
    sw t14, 116($fp)
    sw const51, 120($fp)
    mov 120($fp), 3
    mov 116($fp), 120($fp)
    sw t15, 124($fp)
    sw const51, 128($fp)
    mov 128($fp), 3
    mov 124($fp), 128($fp)
    j L11
    L10:
    sw t16, 132($fp)
    sw const34320, 136($fp)
    mov 136($fp), "4"
    mov 132($fp), 136($fp)
    sw t17, 140($fp)
    sw const34320, 144($fp)
    mov 144($fp), "4"
    cmp null, char, 144($fp)
    mov 140($fp), 0
    beq null, L8f9a4f415dd44a3982b51704f303ba52
    j Lf77601a2c8254fed9d4773cfe2473001
    L8f9a4f415dd44a3982b51704f303ba52:
    mov 140($fp), 1
    Lf77601a2c8254fed9d4773cfe2473001:
    sw t17, 148($fp)
    bne 148($fp), L12
    j L13
    L12:
    sw t18, 152($fp)
    sw const52, 156($fp)
    mov 156($fp), 4
    mov 152($fp), 156($fp)
    sw t19, 160($fp)
    sw const52, 164($fp)
    mov 164($fp), 4
    mov 160($fp), 164($fp)
    j L14
    L13:
    sw t20, 168($fp)
    sw const34351, 172($fp)
    mov 172($fp), "5"
    mov 168($fp), 172($fp)
    sw t21, 176($fp)
    sw const34351, 180($fp)
    mov 180($fp), "5"
    cmp null, char, 180($fp)
    mov 176($fp), 0
    beq null, L83a4e60deef54c3496be541c398364ba
    j L927ac8b7f82e41e7833d2e0c4b0eb2fc
    L83a4e60deef54c3496be541c398364ba:
    mov 176($fp), 1
    L927ac8b7f82e41e7833d2e0c4b0eb2fc:
    sw t21, 184($fp)
    bne 184($fp), L15
    j L16
    L15:
    sw t22, 188($fp)
    sw const53, 192($fp)
    mov 192($fp), 5
    mov 188($fp), 192($fp)
    sw t23, 196($fp)
    sw const53, 200($fp)
    mov 200($fp), 5
    mov 196($fp), 200($fp)
    j L17
    L16:
    sw t24, 204($fp)
    sw const34382, 208($fp)
    mov 208($fp), "6"
    mov 204($fp), 208($fp)
    sw t25, 212($fp)
    sw const34382, 216($fp)
    mov 216($fp), "6"
    cmp null, char, 216($fp)
    mov 212($fp), 0
    beq null, Lf2443220c2694c25a568662713d177ca
    j Lc63060ebb3934011af0abde4ab1482db
    Lf2443220c2694c25a568662713d177ca:
    mov 212($fp), 1
    Lc63060ebb3934011af0abde4ab1482db:
    sw t25, 220($fp)
    bne 220($fp), L18
    j L19
    L18:
    sw t26, 224($fp)
    sw const54, 228($fp)
    mov 228($fp), 6
    mov 224($fp), 228($fp)
    sw t27, 232($fp)
    sw const54, 236($fp)
    mov 236($fp), 6
    mov 232($fp), 236($fp)
    j L20
    L19:
    sw t28, 240($fp)
    sw const34413, 244($fp)
    mov 244($fp), "7"
    mov 240($fp), 244($fp)
    sw t29, 248($fp)
    sw const34413, 252($fp)
    mov 252($fp), "7"
    cmp null, char, 252($fp)
    mov 248($fp), 0
    beq null, Le7978476fd814484a83c183731c5e86b
    j L27f29f4069ad42b3bf34134d599967ff
    Le7978476fd814484a83c183731c5e86b:
    mov 248($fp), 1
    L27f29f4069ad42b3bf34134d599967ff:
    sw t29, 256($fp)
    bne 256($fp), L21
    j L22
    L21:
    sw t30, 260($fp)
    sw const55, 264($fp)
    mov 264($fp), 7
    mov 260($fp), 264($fp)
    sw t31, 268($fp)
    sw const55, 272($fp)
    mov 272($fp), 7
    mov 268($fp), 272($fp)
    j L23
    L22:
    sw t32, 276($fp)
    sw const34444, 280($fp)
    mov 280($fp), "8"
    mov 276($fp), 280($fp)
    sw t33, 284($fp)
    sw const34444, 288($fp)
    mov 288($fp), "8"
    cmp null, char, 288($fp)
    mov 284($fp), 0
    beq null, Ldfc1a44af5cf4eeb9da28f2b637a1dcb
    j L7b74f744350f4964bfe69c72313541ec
    Ldfc1a44af5cf4eeb9da28f2b637a1dcb:
    mov 284($fp), 1
    L7b74f744350f4964bfe69c72313541ec:
    sw t33, 292($fp)
    bne 292($fp), L24
    j L25
    L24:
    sw t34, 296($fp)
    sw const56, 300($fp)
    mov 300($fp), 8
    mov 296($fp), 300($fp)
    sw t35, 304($fp)
    sw const56, 308($fp)
    mov 308($fp), 8
    mov 304($fp), 308($fp)
    j L26
    L25:
    sw t36, 312($fp)
    sw const34475, 316($fp)
    mov 316($fp), "9"
    mov 312($fp), 316($fp)
    sw t37, 320($fp)
    sw const34475, 324($fp)
    mov 324($fp), "9"
    cmp null, char, 324($fp)
    mov 320($fp), 0
    beq null, L6925000c86d14d4a8b844677f4dd5f6a
    j L3109923973474baea16ff5ad32f3cd72
    L6925000c86d14d4a8b844677f4dd5f6a:
    mov 320($fp), 1
    L3109923973474baea16ff5ad32f3cd72:
    sw t37, 328($fp)
    bne 328($fp), L27
    j L28
    L27:
    sw t38, 332($fp)
    sw const57, 336($fp)
    mov 336($fp), 9
    mov 332($fp), 336($fp)
    sw t39, 340($fp)
    sw const57, 344($fp)
    mov 344($fp), 9
    mov 340($fp), 344($fp)
    j L29
    L28:
    sw t40, 348($fp)
    jal A2I.abort
    mov 348($fp), $r1
    sw t41, 352($fp)
    mov $r4, 0
    mov 352($fp), $r4
    sw t39, 356($fp)
    mov $r4, 0
    mov 356($fp), $r4
    L29:
    sw t35, 360($fp)
    mov $r4, 0
    mov 360($fp), $r4
    L26:
    sw t31, 364($fp)
    sw const56, 368($fp)
    mov 368($fp), 8
    mov 364($fp), 368($fp)
    L23:
    sw t27, 372($fp)
    sw const55, 376($fp)
    mov 376($fp), 7
    mov 372($fp), 376($fp)
    L20:
    sw t23, 380($fp)
    sw const54, 384($fp)
    mov 384($fp), 6
    mov 380($fp), 384($fp)
    L17:
    sw t19, 388($fp)
    sw const53, 392($fp)
    mov 392($fp), 5
    mov 388($fp), 392($fp)
    L14:
    sw t15, 396($fp)
    sw const52, 400($fp)
    mov 400($fp), 4
    mov 396($fp), 400($fp)
    L11:
    sw t11, 404($fp)
    sw const51, 408($fp)
    mov 408($fp), 3
    mov 404($fp), 408($fp)
    L8:
    sw t7, 412($fp)
    sw const50, 416($fp)
    mov 416($fp), 2
    mov 412($fp), 416($fp)
    L5:
    sw t3, 420($fp)
    mov $r10, 1
    mov 420($fp), $r10
    L2:
    mov $sp, $fp
    pop $fp
    sw t3, 424($fp)
    mov $r1, 424($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method i2c
    push $fp
    mov $fp, $sp
    pop i
    sw t42, 4($fp)
    mov $r4, 0
    mov 4($fp), $r4
    sw t43, 8($fp)
    mov $r4, 0
    cmp null, i, $r4
    mov 8($fp), 0
    beq null, Laa49dd5b8c254afe81d0a7ca1ca2cad7
    j L635f1ef5069b4a1aa475d156a8af7b11
    Laa49dd5b8c254afe81d0a7ca1ca2cad7:
    mov 8($fp), 1
    L635f1ef5069b4a1aa475d156a8af7b11:
    sw t43, 12($fp)
    bne 12($fp), L30
    j L31
    L30:
    sw t44, 16($fp)
    sw const34196, 20($fp)
    mov 20($fp), "0"
    mov 16($fp), 20($fp)
    sw t45, 24($fp)
    sw const34196, 28($fp)
    mov 28($fp), "0"
    mov 24($fp), 28($fp)
    j L32
    L31:
    sw t46, 32($fp)
    mov $r10, 1
    mov 32($fp), $r10
    sw t47, 36($fp)
    mov $r10, 1
    cmp null, i, $r10
    mov 36($fp), 0
    beq null, L164be677157b40bfa9f37763e1a1d981
    j Leff837d5f7ee4891bc426eeced897a2a
    L164be677157b40bfa9f37763e1a1d981:
    mov 36($fp), 1
    Leff837d5f7ee4891bc426eeced897a2a:
    sw t47, 40($fp)
    bne 40($fp), L33
    j L34
    L33:
    sw t48, 44($fp)
    sw const34227, 48($fp)
    mov 48($fp), "1"
    mov 44($fp), 48($fp)
    sw t49, 52($fp)
    sw const34227, 56($fp)
    mov 56($fp), "1"
    mov 52($fp), 56($fp)
    j L35
    L34:
    sw t50, 60($fp)
    sw const50, 64($fp)
    mov 64($fp), 2
    mov 60($fp), 64($fp)
    sw t51, 68($fp)
    sw const50, 72($fp)
    mov 72($fp), 2
    cmp null, i, 72($fp)
    mov 68($fp), 0
    beq null, Lb132cebffd804e4886491b9b1fd71b24
    j L395500dda55a41d5af046a878fe3624c
    Lb132cebffd804e4886491b9b1fd71b24:
    mov 68($fp), 1
    L395500dda55a41d5af046a878fe3624c:
    sw t51, 76($fp)
    bne 76($fp), L36
    j L37
    L36:
    sw t52, 80($fp)
    sw const34258, 84($fp)
    mov 84($fp), "2"
    mov 80($fp), 84($fp)
    sw t53, 88($fp)
    sw const34258, 92($fp)
    mov 92($fp), "2"
    mov 88($fp), 92($fp)
    j L38
    L37:
    sw t54, 96($fp)
    sw const51, 100($fp)
    mov 100($fp), 3
    mov 96($fp), 100($fp)
    sw t55, 104($fp)
    sw const51, 108($fp)
    mov 108($fp), 3
    cmp null, i, 108($fp)
    mov 104($fp), 0
    beq null, Lbfd2aaf48542498cb6bb1dcd7fb81516
    j L99905fe024164d73a8cb9e8b83ce75c3
    Lbfd2aaf48542498cb6bb1dcd7fb81516:
    mov 104($fp), 1
    L99905fe024164d73a8cb9e8b83ce75c3:
    sw t55, 112($fp)
    bne 112($fp), L39
    j L40
    L39:
    sw t56, 116($fp)
    sw const34289, 120($fp)
    mov 120($fp), "3"
    mov 116($fp), 120($fp)
    sw t57, 124($fp)
    sw const34289, 128($fp)
    mov 128($fp), "3"
    mov 124($fp), 128($fp)
    j L41
    L40:
    sw t58, 132($fp)
    sw const52, 136($fp)
    mov 136($fp), 4
    mov 132($fp), 136($fp)
    sw t59, 140($fp)
    sw const52, 144($fp)
    mov 144($fp), 4
    cmp null, i, 144($fp)
    mov 140($fp), 0
    beq null, La1d8f3df362c42af9f70f7db73777018
    j Le6fc89005fc743c4a430be59b629197b
    La1d8f3df362c42af9f70f7db73777018:
    mov 140($fp), 1
    Le6fc89005fc743c4a430be59b629197b:
    sw t59, 148($fp)
    bne 148($fp), L42
    j L43
    L42:
    sw t60, 152($fp)
    sw const34320, 156($fp)
    mov 156($fp), "4"
    mov 152($fp), 156($fp)
    sw t61, 160($fp)
    sw const34320, 164($fp)
    mov 164($fp), "4"
    mov 160($fp), 164($fp)
    j L44
    L43:
    sw t62, 168($fp)
    sw const53, 172($fp)
    mov 172($fp), 5
    mov 168($fp), 172($fp)
    sw t63, 176($fp)
    sw const53, 180($fp)
    mov 180($fp), 5
    cmp null, i, 180($fp)
    mov 176($fp), 0
    beq null, Lac81418040114f0bb8f6d4975e0f89e4
    j L5a9c4fe544474fdea7970afc537ec02a
    Lac81418040114f0bb8f6d4975e0f89e4:
    mov 176($fp), 1
    L5a9c4fe544474fdea7970afc537ec02a:
    sw t63, 184($fp)
    bne 184($fp), L45
    j L46
    L45:
    sw t64, 188($fp)
    sw const34351, 192($fp)
    mov 192($fp), "5"
    mov 188($fp), 192($fp)
    sw t65, 196($fp)
    sw const34351, 200($fp)
    mov 200($fp), "5"
    mov 196($fp), 200($fp)
    j L47
    L46:
    sw t66, 204($fp)
    sw const54, 208($fp)
    mov 208($fp), 6
    mov 204($fp), 208($fp)
    sw t67, 212($fp)
    sw const54, 216($fp)
    mov 216($fp), 6
    cmp null, i, 216($fp)
    mov 212($fp), 0
    beq null, L8f860d55585849908d4e09e1d3858ef9
    j L9ecfa2183d144bcaaa16c69139cc1f85
    L8f860d55585849908d4e09e1d3858ef9:
    mov 212($fp), 1
    L9ecfa2183d144bcaaa16c69139cc1f85:
    sw t67, 220($fp)
    bne 220($fp), L48
    j L49
    L48:
    sw t68, 224($fp)
    sw const34382, 228($fp)
    mov 228($fp), "6"
    mov 224($fp), 228($fp)
    sw t69, 232($fp)
    sw const34382, 236($fp)
    mov 236($fp), "6"
    mov 232($fp), 236($fp)
    j L50
    L49:
    sw t70, 240($fp)
    sw const55, 244($fp)
    mov 244($fp), 7
    mov 240($fp), 244($fp)
    sw t71, 248($fp)
    sw const55, 252($fp)
    mov 252($fp), 7
    cmp null, i, 252($fp)
    mov 248($fp), 0
    beq null, Lfb75a2774175456daee27b3d816b911b
    j L9b712da4875f46a5aab9449a49cdad02
    Lfb75a2774175456daee27b3d816b911b:
    mov 248($fp), 1
    L9b712da4875f46a5aab9449a49cdad02:
    sw t71, 256($fp)
    bne 256($fp), L51
    j L52
    L51:
    sw t72, 260($fp)
    sw const34413, 264($fp)
    mov 264($fp), "7"
    mov 260($fp), 264($fp)
    sw t73, 268($fp)
    sw const34413, 272($fp)
    mov 272($fp), "7"
    mov 268($fp), 272($fp)
    j L53
    L52:
    sw t74, 276($fp)
    sw const56, 280($fp)
    mov 280($fp), 8
    mov 276($fp), 280($fp)
    sw t75, 284($fp)
    sw const56, 288($fp)
    mov 288($fp), 8
    cmp null, i, 288($fp)
    mov 284($fp), 0
    beq null, L79c20cb6a8d34d36a606f4f66a97b12e
    j L389c2bbda8b64a3f97bb7de4b0208c2b
    L79c20cb6a8d34d36a606f4f66a97b12e:
    mov 284($fp), 1
    L389c2bbda8b64a3f97bb7de4b0208c2b:
    sw t75, 292($fp)
    bne 292($fp), L54
    j L55
    L54:
    sw t76, 296($fp)
    sw const34444, 300($fp)
    mov 300($fp), "8"
    mov 296($fp), 300($fp)
    sw t77, 304($fp)
    sw const34444, 308($fp)
    mov 308($fp), "8"
    mov 304($fp), 308($fp)
    j L56
    L55:
    sw t78, 312($fp)
    sw const57, 316($fp)
    mov 316($fp), 9
    mov 312($fp), 316($fp)
    sw t79, 320($fp)
    sw const57, 324($fp)
    mov 324($fp), 9
    cmp null, i, 324($fp)
    mov 320($fp), 0
    beq null, L5999a418e75148d9861602d9683326ed
    j L9aac64ac11ab4bef8b5940c31a49211a
    L5999a418e75148d9861602d9683326ed:
    mov 320($fp), 1
    L9aac64ac11ab4bef8b5940c31a49211a:
    sw t79, 328($fp)
    bne 328($fp), L57
    j L58
    L57:
    sw t80, 332($fp)
    sw const34475, 336($fp)
    mov 336($fp), "9"
    mov 332($fp), 336($fp)
    sw t81, 340($fp)
    sw const34475, 344($fp)
    mov 344($fp), "9"
    mov 340($fp), 344($fp)
    j L59
    L58:
    sw t82, 348($fp)
    jal A2I.abort
    mov 348($fp), $r1
    sw t83, 352($fp)
    sw const1088, 356($fp)
    mov 356($fp), ""
    mov 352($fp), 356($fp)
    sw t81, 360($fp)
    sw const1088, 364($fp)
    mov 364($fp), ""
    mov 360($fp), 364($fp)
    L59:
    sw t77, 368($fp)
    sw const1088, 372($fp)
    mov 372($fp), ""
    mov 368($fp), 372($fp)
    L56:
    sw t73, 376($fp)
    sw const34444, 380($fp)
    mov 380($fp), "8"
    mov 376($fp), 380($fp)
    L53:
    sw t69, 384($fp)
    sw const34413, 388($fp)
    mov 388($fp), "7"
    mov 384($fp), 388($fp)
    L50:
    sw t65, 392($fp)
    sw const34382, 396($fp)
    mov 396($fp), "6"
    mov 392($fp), 396($fp)
    L47:
    sw t61, 400($fp)
    sw const34351, 404($fp)
    mov 404($fp), "5"
    mov 400($fp), 404($fp)
    L44:
    sw t57, 408($fp)
    sw const34320, 412($fp)
    mov 412($fp), "4"
    mov 408($fp), 412($fp)
    L41:
    sw t53, 416($fp)
    sw const34289, 420($fp)
    mov 420($fp), "3"
    mov 416($fp), 420($fp)
    L38:
    sw t49, 424($fp)
    sw const34258, 428($fp)
    mov 428($fp), "2"
    mov 424($fp), 428($fp)
    L35:
    sw t45, 432($fp)
    sw const34227, 436($fp)
    mov 436($fp), "1"
    mov 432($fp), 436($fp)
    L32:
    mov $sp, $fp
    pop $fp
    sw t45, 440($fp)
    mov $r1, 440($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method a2i_aux
    push $fp
    mov $fp, $sp
    pop s
    sw t115, 4($fp)
    mov $r4, 0
    mov 4($fp), $r4
    mov $r4, 0
    mov int, $r4
    sw t116, 8($fp)
    jal length
    mov 8($fp), $r1
    sw t116, 12($fp)
    mov j, 12($fp)
    sw t117, 16($fp)
    mov $r4, 0
    mov 16($fp), $r4
    mov $r4, 0
    mov i, $r4
    L_preheader_afee742a79bc4bd6a344850766990821:
    sw t119, 20($fp)
    sw const1567, 24($fp)
    mov 24($fp), 10
    mov 20($fp), 24($fp)
    sw t121, 28($fp)
    mov $r10, 1
    mov 28($fp), $r10
    sw t125, 32($fp)
    mov $r10, 1
    mov 32($fp), $r10
    j L69
    L69:
    sw t118, 36($fp)
    mov $r4, 0
    cmp null, $r4, j
    mov 36($fp), 0
    blt null, L60bfe9c4c0ac4585bc5b99a38aa38ea1
    j L917fe3c66a4b4407b6a3b7e01b1884bb
    L60bfe9c4c0ac4585bc5b99a38aa38ea1:
    mov 36($fp), 1
    L917fe3c66a4b4407b6a3b7e01b1884bb:
    sw t118, 40($fp)
    bne 40($fp), L70
    j L71
    L70:
    sw t120, 44($fp)
    mov $r4, 0
    mov 44($fp), $r4
    push i
    sw t121, 48($fp)
    push 48($fp)
    sw t122, 52($fp)
    push i
    push 48($fp)
    jal substr
    mov 52($fp), $r1
    pop null
    sw t122, 56($fp)
    push 56($fp)
    sw t123, 60($fp)
    push 56($fp)
    jal A2I.c2i
    mov 60($fp), $r1
    pop null
    sw t124, 64($fp)
    mov $r4, 0
    sw t123, 68($fp)
    add 64($fp), $r4, 68($fp)
    sw t124, 72($fp)
    mov int, 72($fp)
    sw t126, 76($fp)
    mov $r10, 1
    mov 76($fp), $r10
    mov $r10, 1
    mov i, $r10
    j L_preheader_afee742a79bc4bd6a344850766990821
    L71:
    mov $sp, $fp
    pop $fp
    mov $r1, int
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class

