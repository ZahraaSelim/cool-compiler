.class EList
.method head
    push $fp
    mov $fp, $sp
    jal EList.abort
    mov $r11, $r1
    lw $r12, car($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, $r12
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method print
    push $fp
    mov $fp, $sp
    mov $r14, "\n"
    mov $r13, $r14
    push $r13
    push $r13
    jal EList.out_string
    mov $r15, $r1
    pop null
    mov $sp, $fp
    pop $fp
    mov $r1, $r15
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method tail
    push $fp
    mov $fp, $sp
    sw t32, 4($fp)
    jal EList.abort
    mov 4($fp), $r1
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method isNil
    push $fp
    mov $fp, $sp
    sw t29, 4($fp)
    mov 4($fp), true
    mov $sp, $fp
    pop $fp
    sw t29, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method append
    push $fp
    mov $fp, $sp
    pop l
    sw t35, 4($fp)
    jal isNil
    mov 4($fp), $r1
    sw t35, 8($fp)
    bne 8($fp), L0
    j L1
    L0:
    sw t36, 12($fp)
    mov 12($fp), l
    j L2
    L1:
    sw t37, 16($fp)
    jal EList.tail
    mov 16($fp), $r1
    push l
    sw t38, 20($fp)
    push l
    jal append
    mov 20($fp), $r1
    pop null
    sw t39, 24($fp)
    jal EList.head
    mov 24($fp), $r1
    sw t39, 28($fp)
    push 28($fp)
    sw t40, 32($fp)
    push 28($fp)
    jal cons
    mov 32($fp), $r1
    pop null
    sw t36, 36($fp)
    sw t40, 40($fp)
    mov 36($fp), 40($fp)
    L2:
    mov $sp, $fp
    pop $fp
    sw t36, 44($fp)
    mov $r1, 44($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method cons
    push $fp
    mov $fp, $sp
    pop e
    sw t33, 4($fp)
    jal new ECons
    mov 4($fp), $r1
    push e
    push self
    sw t34, 8($fp)
    push e
    push self
    jal init
    mov 8($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    sw t34, 12($fp)
    mov $r1, 12($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class Graph
.method add_vertice
    push $fp
    mov $fp, $sp
    pop v
    jal outgoing
    mov $r2, $r1
    lw $r3, edges($fp)
    push $r3
    push $r3
    jal append
    mov $r4, $r1
    pop null
    sw $r4, edges($fp)
    lw $r5, vertices($fp)
    push v
    push v
    jal cons
    mov $r6, $r1
    pop null
    sw $r6, vertices($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, $r6
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method print_V
    push $fp
    mov $fp, $sp
    lw $r7, vertices($fp)
    jal print
    mov $r8, $r1
    mov $sp, $fp
    pop $fp
    mov $r1, $r8
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method print_E
    push $fp
    mov $fp, $sp
    lw $r9, edges($fp)
    jal print
    mov $r10, $r1
    mov $sp, $fp
    pop $fp
    mov $r1, $r10
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class VList
.method head
    push $fp
    mov $fp, $sp
    sw t51, 4($fp)
    jal VList.abort
    mov 4($fp), $r1
    sw t52, 8($fp)
    lw 8($fp), car($fp)
    mov $sp, $fp
    pop $fp
    sw t52, 12($fp)
    mov $r1, 12($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method print
    push $fp
    mov $fp, $sp
    sw t56, 4($fp)
    mov $r14, "\n"
    mov 4($fp), $r14
    sw t56, 8($fp)
    push 8($fp)
    sw t57, 12($fp)
    push 8($fp)
    jal VList.out_string
    mov 12($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    sw t57, 16($fp)
    mov $r1, 16($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method tail
    push $fp
    mov $fp, $sp
    sw t53, 4($fp)
    jal VList.abort
    mov 4($fp), $r1
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method isNil
    push $fp
    mov $fp, $sp
    sw t50, 4($fp)
    mov 4($fp), true
    mov $sp, $fp
    pop $fp
    sw t50, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method cons
    push $fp
    mov $fp, $sp
    pop v
    sw t54, 4($fp)
    jal new VCons
    mov 4($fp), $r1
    push v
    push self
    sw t55, 8($fp)
    push v
    push self
    jal init
    mov 8($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    sw t55, 12($fp)
    mov $r1, 12($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class Vertice
.method outgoing
    push $fp
    mov $fp, $sp
    sw t9, 4($fp)
    lw 4($fp), out($fp)
    mov $sp, $fp
    pop $fp
    sw t9, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method number
    push $fp
    mov $fp, $sp
    sw t10, 4($fp)
    lw 4($fp), num($fp)
    mov $sp, $fp
    pop $fp
    sw t10, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method init
    push $fp
    mov $fp, $sp
    pop n
    sw n, num($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method print
    push $fp
    mov $fp, $sp
    sw t13, 4($fp)
    lw 4($fp), num($fp)
    sw t13, 8($fp)
    push 8($fp)
    sw t14, 12($fp)
    push 8($fp)
    jal Vertice.out_int
    mov 12($fp), $r1
    pop null
    sw t15, 16($fp)
    lw 16($fp), out($fp)
    sw t16, 20($fp)
    jal print
    mov 20($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t16, 24($fp)
    mov $r1, 24($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method add_out
    push $fp
    mov $fp, $sp
    pop s
    sw t11, 4($fp)
    lw 4($fp), out($fp)
    push s
    sw t12, 8($fp)
    push s
    jal cons
    mov 8($fp), $r1
    pop null
    sw t12, 12($fp)
    sw 12($fp), out($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class Parse
.method parse_line
    push $fp
    mov $fp, $sp
    pop s
    sw t78, 4($fp)
    jal new Vertice
    mov 4($fp), $r1
    push s
    sw t79, 8($fp)
    push s
    jal Parse.a2i
    mov 8($fp), $r1
    pop null
    sw t79, 12($fp)
    push 12($fp)
    sw t80, 16($fp)
    push 12($fp)
    jal init
    mov 16($fp), $r1
    pop null
    sw t80, 20($fp)
    mov v, 20($fp)
    L_preheader_3588dd609c964381886c26cdb30c26f3:
    sw t83, 24($fp)
    sw const48, 28($fp)
    mov 28($fp), 0
    mov 24($fp), 28($fp)
    j L6
    L6:
    sw t81, 32($fp)
    lw 32($fp), rest($fp)
    sw t82, 36($fp)
    jal length
    mov 36($fp), $r1
    sw t84, 40($fp)
    sw t82, 44($fp)
    sw const48, 48($fp)
    mov 48($fp), 0
    cmp null, 44($fp), 48($fp)
    mov 40($fp), 0
    beq null, Laf667910f02b46319ec3494d9bedacb6
    j Lae250508c61541d68aede02398f2802c
    Laf667910f02b46319ec3494d9bedacb6:
    mov 40($fp), 1
    Lae250508c61541d68aede02398f2802c:
    sw t85, 52($fp)
    sw t84, 56($fp)
    not 52($fp), 56($fp)
    sw t85, 60($fp)
    bne 60($fp), L7
    j L8
    L7:
    sw t86, 64($fp)
    lw 64($fp), rest($fp)
    sw t86, 68($fp)
    push 68($fp)
    sw t87, 72($fp)
    push 68($fp)
    jal Parse.a2i
    mov 72($fp), $r1
    pop null
    sw t87, 76($fp)
    mov succ, 76($fp)
    sw t88, 80($fp)
    lw 80($fp), rest($fp)
    sw t88, 84($fp)
    push 84($fp)
    sw t89, 88($fp)
    push 84($fp)
    jal Parse.a2i
    mov 88($fp), $r1
    pop null
    sw t89, 92($fp)
    mov weight, 92($fp)
    sw t90, 96($fp)
    jal new Edge
    mov 96($fp), $r1
    sw t91, 100($fp)
    jal number
    mov 100($fp), $r1
    sw t91, 104($fp)
    push 104($fp)
    push succ
    push weight
    sw t92, 108($fp)
    push 104($fp)
    push succ
    push weight
    jal init
    mov 108($fp), $r1
    pop null
    sw t92, 112($fp)
    push 112($fp)
    sw t93, 116($fp)
    push 112($fp)
    jal add_out
    mov 116($fp), $r1
    pop null
    j L_preheader_3588dd609c964381886c26cdb30c26f3
    L8:
    mov $sp, $fp
    pop $fp
    mov $r1, v
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method a2i
    push $fp
    mov $fp, $sp
    pop s
    sw t136, 4($fp)
    jal length
    mov 4($fp), $r1
    sw t137, 8($fp)
    sw const48, 12($fp)
    mov 12($fp), 0
    mov 8($fp), 12($fp)
    sw t138, 16($fp)
    sw t136, 20($fp)
    sw const48, 24($fp)
    mov 24($fp), 0
    cmp null, 20($fp), 24($fp)
    mov 16($fp), 0
    beq null, L7a748e0906154963ba47e3e332db20b8
    j L9673ab312b3747edb7622c45feea70f1
    L7a748e0906154963ba47e3e332db20b8:
    mov 16($fp), 1
    L9673ab312b3747edb7622c45feea70f1:
    sw t138, 28($fp)
    bne 28($fp), L39
    j L40
    L39:
    sw t139, 32($fp)
    sw const48, 36($fp)
    mov 36($fp), 0
    mov 32($fp), 36($fp)
    sw t140, 40($fp)
    sw const48, 44($fp)
    mov 44($fp), 0
    mov 40($fp), 44($fp)
    j L41
    L40:
    sw t141, 48($fp)
    sw const48, 52($fp)
    mov 52($fp), 0
    mov 48($fp), 52($fp)
    sw t142, 56($fp)
    sw const49, 60($fp)
    mov 60($fp), 1
    mov 56($fp), 60($fp)
    sw t141, 64($fp)
    push 64($fp)
    sw t142, 68($fp)
    push 68($fp)
    sw t143, 72($fp)
    push 64($fp)
    push 68($fp)
    jal substr
    mov 72($fp), $r1
    pop null
    sw t144, 76($fp)
    sw const34103, 80($fp)
    mov 80($fp), "-"
    mov 76($fp), 80($fp)
    sw t145, 84($fp)
    sw t143, 88($fp)
    sw const34103, 92($fp)
    mov 92($fp), "-"
    cmp null, 88($fp), 92($fp)
    mov 84($fp), 0
    beq null, L3eddaa00810a47008a91840140ff7b00
    j Lfb681ee8603e49bca732e7bd30c1e356
    L3eddaa00810a47008a91840140ff7b00:
    mov 84($fp), 1
    Lfb681ee8603e49bca732e7bd30c1e356:
    sw t145, 96($fp)
    bne 96($fp), L42
    j L43
    L42:
    sw t146, 100($fp)
    sw const49, 104($fp)
    mov 104($fp), 1
    mov 100($fp), 104($fp)
    sw t147, 108($fp)
    jal length
    mov 108($fp), $r1
    sw t148, 112($fp)
    sw const49, 116($fp)
    mov 116($fp), 1
    mov 112($fp), 116($fp)
    sw t149, 120($fp)
    sw t147, 124($fp)
    sw const49, 128($fp)
    mov 128($fp), 1
    sub 120($fp), 124($fp), 128($fp)
    sw t146, 132($fp)
    push 132($fp)
    sw t149, 136($fp)
    push 136($fp)
    sw t150, 140($fp)
    push 132($fp)
    push 136($fp)
    jal substr
    mov 140($fp), $r1
    pop null
    sw t150, 144($fp)
    push 144($fp)
    sw t151, 148($fp)
    push 144($fp)
    jal Parse.a2i_aux
    mov 148($fp), $r1
    pop null
    sw t152, 152($fp)
    sw t151, 156($fp)
    neg 152($fp), 156($fp)
    sw t153, 160($fp)
    sw t152, 164($fp)
    mov 160($fp), 164($fp)
    j L44
    L43:
    sw t154, 168($fp)
    sw const48, 172($fp)
    mov 172($fp), 0
    mov 168($fp), 172($fp)
    sw t155, 176($fp)
    sw const49, 180($fp)
    mov 180($fp), 1
    mov 176($fp), 180($fp)
    sw t154, 184($fp)
    push 184($fp)
    sw t155, 188($fp)
    push 188($fp)
    sw t156, 192($fp)
    push 184($fp)
    push 188($fp)
    jal substr
    mov 192($fp), $r1
    pop null
    sw t157, 196($fp)
    sw const33700, 200($fp)
    mov 200($fp), " "
    mov 196($fp), 200($fp)
    sw t158, 204($fp)
    sw t156, 208($fp)
    sw const33700, 212($fp)
    mov 212($fp), " "
    cmp null, 208($fp), 212($fp)
    mov 204($fp), 0
    beq null, L3dcfffa09c59453d953f5663c2ff2516
    j L4209a488fff24fbc8dba895ae58b3895
    L3dcfffa09c59453d953f5663c2ff2516:
    mov 204($fp), 1
    L4209a488fff24fbc8dba895ae58b3895:
    sw t158, 216($fp)
    bne 216($fp), L45
    j L46
    L45:
    sw t159, 220($fp)
    sw const49, 224($fp)
    mov 224($fp), 1
    mov 220($fp), 224($fp)
    sw t160, 228($fp)
    jal length
    mov 228($fp), $r1
    sw t161, 232($fp)
    sw const49, 236($fp)
    mov 236($fp), 1
    mov 232($fp), 236($fp)
    sw t162, 240($fp)
    sw t160, 244($fp)
    sw const49, 248($fp)
    mov 248($fp), 1
    sub 240($fp), 244($fp), 248($fp)
    sw t159, 252($fp)
    push 252($fp)
    sw t162, 256($fp)
    push 256($fp)
    sw t163, 260($fp)
    push 252($fp)
    push 256($fp)
    jal substr
    mov 260($fp), $r1
    pop null
    sw t163, 264($fp)
    push 264($fp)
    sw t164, 268($fp)
    push 264($fp)
    jal Parse.a2i
    mov 268($fp), $r1
    pop null
    sw t165, 272($fp)
    sw t164, 276($fp)
    mov 272($fp), 276($fp)
    j L47
    L46:
    push s
    sw t166, 280($fp)
    push s
    jal Parse.a2i_aux
    mov 280($fp), $r1
    pop null
    sw t165, 284($fp)
    sw t166, 288($fp)
    mov 284($fp), 288($fp)
    L47:
    sw t153, 292($fp)
    sw t165, 296($fp)
    mov 292($fp), 296($fp)
    L44:
    sw t140, 300($fp)
    sw t153, 304($fp)
    mov 300($fp), 304($fp)
    L41:
    mov $sp, $fp
    pop $fp
    sw t140, 308($fp)
    mov $r1, 308($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method c2i
    push $fp
    mov $fp, $sp
    pop char
    sw t94, 4($fp)
    sw const34196, 8($fp)
    mov 8($fp), "0"
    mov 4($fp), 8($fp)
    sw t95, 12($fp)
    sw const34196, 16($fp)
    mov 16($fp), "0"
    cmp null, char, 16($fp)
    mov 12($fp), 0
    beq null, L381b9b9657af403bb1468e4791a0435c
    j L1efdc61c427641f1953341e7200be913
    L381b9b9657af403bb1468e4791a0435c:
    mov 12($fp), 1
    L1efdc61c427641f1953341e7200be913:
    sw t95, 20($fp)
    bne 20($fp), L9
    j L10
    L9:
    sw t96, 24($fp)
    sw const48, 28($fp)
    mov 28($fp), 0
    mov 24($fp), 28($fp)
    sw t97, 32($fp)
    sw const48, 36($fp)
    mov 36($fp), 0
    mov 32($fp), 36($fp)
    j L11
    L10:
    sw t98, 40($fp)
    sw const34227, 44($fp)
    mov 44($fp), "1"
    mov 40($fp), 44($fp)
    sw t99, 48($fp)
    sw const34227, 52($fp)
    mov 52($fp), "1"
    cmp null, char, 52($fp)
    mov 48($fp), 0
    beq null, Lfaf81fd6938644f0a0877637efbbef28
    j L4b0a992f28df4dbcbe0d836549ba7edd
    Lfaf81fd6938644f0a0877637efbbef28:
    mov 48($fp), 1
    L4b0a992f28df4dbcbe0d836549ba7edd:
    sw t99, 56($fp)
    bne 56($fp), L12
    j L13
    L12:
    sw t100, 60($fp)
    sw const49, 64($fp)
    mov 64($fp), 1
    mov 60($fp), 64($fp)
    sw t101, 68($fp)
    sw const49, 72($fp)
    mov 72($fp), 1
    mov 68($fp), 72($fp)
    j L14
    L13:
    sw t102, 76($fp)
    sw const34258, 80($fp)
    mov 80($fp), "2"
    mov 76($fp), 80($fp)
    sw t103, 84($fp)
    sw const34258, 88($fp)
    mov 88($fp), "2"
    cmp null, char, 88($fp)
    mov 84($fp), 0
    beq null, Lae2b887577014acf9d803ec52989339a
    j Lcdf2a437e0f3415c87389bb7e51a9b08
    Lae2b887577014acf9d803ec52989339a:
    mov 84($fp), 1
    Lcdf2a437e0f3415c87389bb7e51a9b08:
    sw t103, 92($fp)
    bne 92($fp), L15
    j L16
    L15:
    sw t104, 96($fp)
    sw const50, 100($fp)
    mov 100($fp), 2
    mov 96($fp), 100($fp)
    sw t105, 104($fp)
    sw const50, 108($fp)
    mov 108($fp), 2
    mov 104($fp), 108($fp)
    j L17
    L16:
    sw t106, 112($fp)
    sw const34289, 116($fp)
    mov 116($fp), "3"
    mov 112($fp), 116($fp)
    sw t107, 120($fp)
    sw const34289, 124($fp)
    mov 124($fp), "3"
    cmp null, char, 124($fp)
    mov 120($fp), 0
    beq null, L617c89be389f4de2988248b583e7880f
    j Le170b40fb67d436f958f444a2d1be4d9
    L617c89be389f4de2988248b583e7880f:
    mov 120($fp), 1
    Le170b40fb67d436f958f444a2d1be4d9:
    sw t107, 128($fp)
    bne 128($fp), L18
    j L19
    L18:
    sw t108, 132($fp)
    sw const51, 136($fp)
    mov 136($fp), 3
    mov 132($fp), 136($fp)
    sw t109, 140($fp)
    sw const51, 144($fp)
    mov 144($fp), 3
    mov 140($fp), 144($fp)
    j L20
    L19:
    sw t110, 148($fp)
    sw const34320, 152($fp)
    mov 152($fp), "4"
    mov 148($fp), 152($fp)
    sw t111, 156($fp)
    sw const34320, 160($fp)
    mov 160($fp), "4"
    cmp null, char, 160($fp)
    mov 156($fp), 0
    beq null, Lec3f69a632864156ab5a680f50617bb5
    j L0e6ab4f6af964251a53566d32e6254af
    Lec3f69a632864156ab5a680f50617bb5:
    mov 156($fp), 1
    L0e6ab4f6af964251a53566d32e6254af:
    sw t111, 164($fp)
    bne 164($fp), L21
    j L22
    L21:
    sw t112, 168($fp)
    sw const52, 172($fp)
    mov 172($fp), 4
    mov 168($fp), 172($fp)
    sw t113, 176($fp)
    sw const52, 180($fp)
    mov 180($fp), 4
    mov 176($fp), 180($fp)
    j L23
    L22:
    sw t114, 184($fp)
    sw const34351, 188($fp)
    mov 188($fp), "5"
    mov 184($fp), 188($fp)
    sw t115, 192($fp)
    sw const34351, 196($fp)
    mov 196($fp), "5"
    cmp null, char, 196($fp)
    mov 192($fp), 0
    beq null, Lc615ca347a2942bb87dd6de9c9182a76
    j L1826cfc1864d4ec384371a6c7633e1fa
    Lc615ca347a2942bb87dd6de9c9182a76:
    mov 192($fp), 1
    L1826cfc1864d4ec384371a6c7633e1fa:
    sw t115, 200($fp)
    bne 200($fp), L24
    j L25
    L24:
    sw t116, 204($fp)
    sw const53, 208($fp)
    mov 208($fp), 5
    mov 204($fp), 208($fp)
    sw t117, 212($fp)
    sw const53, 216($fp)
    mov 216($fp), 5
    mov 212($fp), 216($fp)
    j L26
    L25:
    sw t118, 220($fp)
    sw const34382, 224($fp)
    mov 224($fp), "6"
    mov 220($fp), 224($fp)
    sw t119, 228($fp)
    sw const34382, 232($fp)
    mov 232($fp), "6"
    cmp null, char, 232($fp)
    mov 228($fp), 0
    beq null, L53a5a4312f964a46bbaa3d393bf9c58f
    j L5898fe5571204f64a1d0653e9f31f31c
    L53a5a4312f964a46bbaa3d393bf9c58f:
    mov 228($fp), 1
    L5898fe5571204f64a1d0653e9f31f31c:
    sw t119, 236($fp)
    bne 236($fp), L27
    j L28
    L27:
    sw t120, 240($fp)
    sw const54, 244($fp)
    mov 244($fp), 6
    mov 240($fp), 244($fp)
    sw t121, 248($fp)
    sw const54, 252($fp)
    mov 252($fp), 6
    mov 248($fp), 252($fp)
    j L29
    L28:
    sw t122, 256($fp)
    sw const34413, 260($fp)
    mov 260($fp), "7"
    mov 256($fp), 260($fp)
    sw t123, 264($fp)
    sw const34413, 268($fp)
    mov 268($fp), "7"
    cmp null, char, 268($fp)
    mov 264($fp), 0
    beq null, L9469a2fb38e44f13aab5fd98b37a4440
    j Le93ec6eca90846f6a75bd6640c317e05
    L9469a2fb38e44f13aab5fd98b37a4440:
    mov 264($fp), 1
    Le93ec6eca90846f6a75bd6640c317e05:
    sw t123, 272($fp)
    bne 272($fp), L30
    j L31
    L30:
    sw t124, 276($fp)
    sw const55, 280($fp)
    mov 280($fp), 7
    mov 276($fp), 280($fp)
    sw t125, 284($fp)
    sw const55, 288($fp)
    mov 288($fp), 7
    mov 284($fp), 288($fp)
    j L32
    L31:
    sw t126, 292($fp)
    sw const34444, 296($fp)
    mov 296($fp), "8"
    mov 292($fp), 296($fp)
    sw t127, 300($fp)
    sw const34444, 304($fp)
    mov 304($fp), "8"
    cmp null, char, 304($fp)
    mov 300($fp), 0
    beq null, Lfdb96a7435ee4eab8095cec691a4537e
    j Le605d33043694505b5c42bb9aefe54be
    Lfdb96a7435ee4eab8095cec691a4537e:
    mov 300($fp), 1
    Le605d33043694505b5c42bb9aefe54be:
    sw t127, 308($fp)
    bne 308($fp), L33
    j L34
    L33:
    sw t128, 312($fp)
    sw const56, 316($fp)
    mov 316($fp), 8
    mov 312($fp), 316($fp)
    sw t129, 320($fp)
    sw const56, 324($fp)
    mov 324($fp), 8
    mov 320($fp), 324($fp)
    j L35
    L34:
    sw t130, 328($fp)
    sw const34475, 332($fp)
    mov 332($fp), "9"
    mov 328($fp), 332($fp)
    sw t131, 336($fp)
    sw const34475, 340($fp)
    mov 340($fp), "9"
    cmp null, char, 340($fp)
    mov 336($fp), 0
    beq null, L9a62862d2e424c23b4017671e265e723
    j L41256979cf9246d1a5cd27143556af90
    L9a62862d2e424c23b4017671e265e723:
    mov 336($fp), 1
    L41256979cf9246d1a5cd27143556af90:
    sw t131, 344($fp)
    bne 344($fp), L36
    j L37
    L36:
    sw t132, 348($fp)
    sw const57, 352($fp)
    mov 352($fp), 9
    mov 348($fp), 352($fp)
    sw t133, 356($fp)
    sw const57, 360($fp)
    mov 360($fp), 9
    mov 356($fp), 360($fp)
    j L38
    L37:
    sw t134, 364($fp)
    jal Parse.abort
    mov 364($fp), $r1
    sw t135, 368($fp)
    sw const48, 372($fp)
    mov 372($fp), 0
    mov 368($fp), 372($fp)
    sw t133, 376($fp)
    sw const48, 380($fp)
    mov 380($fp), 0
    mov 376($fp), 380($fp)
    L38:
    sw t129, 384($fp)
    sw const48, 388($fp)
    mov 388($fp), 0
    mov 384($fp), 388($fp)
    L35:
    sw t125, 392($fp)
    sw const56, 396($fp)
    mov 396($fp), 8
    mov 392($fp), 396($fp)
    L32:
    sw t121, 400($fp)
    sw const55, 404($fp)
    mov 404($fp), 7
    mov 400($fp), 404($fp)
    L29:
    sw t117, 408($fp)
    sw const54, 412($fp)
    mov 412($fp), 6
    mov 408($fp), 412($fp)
    L26:
    sw t113, 416($fp)
    sw const53, 420($fp)
    mov 420($fp), 5
    mov 416($fp), 420($fp)
    L23:
    sw t109, 424($fp)
    sw const52, 428($fp)
    mov 428($fp), 4
    mov 424($fp), 428($fp)
    L20:
    sw t105, 432($fp)
    sw const51, 436($fp)
    mov 436($fp), 3
    mov 432($fp), 436($fp)
    L17:
    sw t101, 440($fp)
    sw const50, 444($fp)
    mov 444($fp), 2
    mov 440($fp), 444($fp)
    L14:
    sw t97, 448($fp)
    sw const49, 452($fp)
    mov 452($fp), 1
    mov 448($fp), 452($fp)
    L11:
    mov $sp, $fp
    pop $fp
    sw t97, 456($fp)
    mov $r1, 456($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method read_input
    push $fp
    mov $fp, $sp
    sw t65, 4($fp)
    jal new Graph
    mov 4($fp), $r1
    sw t65, 8($fp)
    mov g, 8($fp)
    sw t66, 12($fp)
    jal Parse.in_string
    mov 12($fp), $r1
    sw t66, 16($fp)
    mov line, 16($fp)
    L_preheader_f49767502d4d464baa44419198b2ddef:
    sw t68, 20($fp)
    mov $r14, "\n"
    mov 20($fp), $r14
    sw t71, 24($fp)
    sw const1088, 28($fp)
    mov 28($fp), ""
    mov 24($fp), 28($fp)
    j L3
    L3:
    sw t67, 32($fp)
    lw 32($fp), boolop($fp)
    sw t69, 36($fp)
    mov $r14, "\n"
    cmp null, line, $r14
    mov 36($fp), 0
    beq null, L9779f99ee6a6475d982b6a066da884ae
    j L96d34ef873e54fc2b0b2255abb8f633e
    L9779f99ee6a6475d982b6a066da884ae:
    mov 36($fp), 1
    L96d34ef873e54fc2b0b2255abb8f633e:
    sw t70, 40($fp)
    sw t69, 44($fp)
    not 40($fp), 44($fp)
    sw t72, 48($fp)
    sw const1088, 52($fp)
    mov 52($fp), ""
    cmp null, line, 52($fp)
    mov 48($fp), 0
    beq null, Lc73a35b3313743c8b570977fb2640879
    j Ld73d7474da0748ecb4aa953c98b9e4ca
    Lc73a35b3313743c8b570977fb2640879:
    mov 48($fp), 1
    Ld73d7474da0748ecb4aa953c98b9e4ca:
    sw t73, 56($fp)
    sw t72, 60($fp)
    not 56($fp), 60($fp)
    sw t70, 64($fp)
    push 64($fp)
    sw t73, 68($fp)
    push 68($fp)
    sw t74, 72($fp)
    push 64($fp)
    push 68($fp)
    jal and
    mov 72($fp), $r1
    pop null
    sw t74, 76($fp)
    bne 76($fp), L4
    j L5
    L4:
    push line
    sw t75, 80($fp)
    push line
    jal Parse.parse_line
    mov 80($fp), $r1
    pop null
    sw t75, 84($fp)
    push 84($fp)
    sw t76, 88($fp)
    push 84($fp)
    jal add_vertice
    mov 88($fp), $r1
    pop null
    sw t77, 92($fp)
    jal Parse.in_string
    mov 92($fp), $r1
    sw t77, 96($fp)
    mov line, 96($fp)
    j L_preheader_f49767502d4d464baa44419198b2ddef
    L5:
    mov $sp, $fp
    pop $fp
    mov $r1, g
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method a2i_aux
    push $fp
    mov $fp, $sp
    pop s
    sw t167, 4($fp)
    sw const48, 8($fp)
    mov 8($fp), 0
    mov 4($fp), 8($fp)
    sw const48, 12($fp)
    mov 12($fp), 0
    mov int, 12($fp)
    sw t168, 16($fp)
    jal length
    mov 16($fp), $r1
    sw t168, 20($fp)
    mov j, 20($fp)
    sw t169, 24($fp)
    sw const48, 28($fp)
    mov 28($fp), 0
    mov 24($fp), 28($fp)
    sw const48, 32($fp)
    mov 32($fp), 0
    mov i, 32($fp)
    L_preheader_465fcaef754145038d57ae853f22c5aa:
    sw t171, 36($fp)
    sw const49, 40($fp)
    mov 40($fp), 1
    mov 36($fp), 40($fp)
    sw t173, 44($fp)
    sw const33700, 48($fp)
    mov 48($fp), " "
    mov 44($fp), 48($fp)
    sw t175, 52($fp)
    sw const49, 56($fp)
    mov 56($fp), 1
    mov 52($fp), 56($fp)
    sw t179, 60($fp)
    sw const49, 64($fp)
    mov 64($fp), 1
    mov 60($fp), 64($fp)
    mov i, j
    sw t182, 68($fp)
    mov 68($fp), j
    sw t183, 72($fp)
    sw const34072, 76($fp)
    mov 76($fp), ","
    mov 72($fp), 76($fp)
    sw t185, 80($fp)
    sw const49, 84($fp)
    mov 84($fp), 1
    mov 80($fp), 84($fp)
    sw t189, 88($fp)
    sw const49, 92($fp)
    mov 92($fp), 1
    mov 88($fp), 92($fp)
    mov i, j
    sw t192, 96($fp)
    mov 96($fp), j
    sw t193, 100($fp)
    sw const1567, 104($fp)
    mov 104($fp), 10
    mov 100($fp), 104($fp)
    sw t195, 108($fp)
    sw const49, 112($fp)
    mov 112($fp), 1
    mov 108($fp), 112($fp)
    sw t199, 116($fp)
    sw const49, 120($fp)
    mov 120($fp), 1
    mov 116($fp), 120($fp)
    sw t202, 124($fp)
    sw const1088, 128($fp)
    mov 128($fp), ""
    mov 124($fp), 128($fp)
    sw t203, 132($fp)
    sw const1088, 136($fp)
    mov 136($fp), ""
    mov 132($fp), 136($fp)
    sw t204, 140($fp)
    sw const1088, 144($fp)
    mov 144($fp), ""
    mov 140($fp), 144($fp)
    sw t203, 148($fp)
    sw const1088, 152($fp)
    mov 152($fp), ""
    mov 148($fp), 152($fp)
    j L48
    L48:
    sw t170, 156($fp)
    sw const48, 160($fp)
    mov 160($fp), 0
    cmp null, 160($fp), j
    mov 156($fp), 0
    blt null, L4dcb1da6a9ba4b02b8fe4831e739aa51
    j Lcd239f97642242de88a063b43e345efe
    L4dcb1da6a9ba4b02b8fe4831e739aa51:
    mov 156($fp), 1
    Lcd239f97642242de88a063b43e345efe:
    sw t170, 164($fp)
    bne 164($fp), L49
    j L50
    L49:
    push i
    sw t171, 168($fp)
    push 168($fp)
    sw t172, 172($fp)
    push i
    push 168($fp)
    jal substr
    mov 172($fp), $r1
    pop null
    sw t172, 176($fp)
    mov c, 176($fp)
    sw t174, 180($fp)
    sw const33700, 184($fp)
    mov 184($fp), " "
    cmp null, c, 184($fp)
    mov 180($fp), 0
    beq null, L2e81216f14424a9cb49c3489a60f8733
    j L2d49745ab7814f18a1e3fcdce3e414ac
    L2e81216f14424a9cb49c3489a60f8733:
    mov 180($fp), 1
    L2d49745ab7814f18a1e3fcdce3e414ac:
    sw t174, 188($fp)
    bne 188($fp), L51
    j L52
    L51:
    sw t176, 192($fp)
    sw const49, 196($fp)
    mov 196($fp), 1
    mov 192($fp), 196($fp)
    sw t177, 200($fp)
    jal length
    mov 200($fp), $r1
    sw t178, 204($fp)
    sw t177, 208($fp)
    sw const48, 212($fp)
    mov 212($fp), 0
    sub 204($fp), 208($fp), 212($fp)
    sw t180, 216($fp)
    sw t178, 220($fp)
    sw const49, 224($fp)
    mov 224($fp), 1
    sub 216($fp), 220($fp), 224($fp)
    sw t176, 228($fp)
    push 228($fp)
    sw t180, 232($fp)
    push 232($fp)
    sw t181, 236($fp)
    push 228($fp)
    push 232($fp)
    jal substr
    mov 236($fp), $r1
    pop null
    sw t181, 240($fp)
    sw 240($fp), rest($fp)
    j L53
    L52:
    sw t184, 244($fp)
    sw const34072, 248($fp)
    mov 248($fp), ","
    cmp null, c, 248($fp)
    mov 244($fp), 0
    beq null, Lea51763663e14d21a9c8adc284f5971a
    j L08ba3a9b76344441ab7b6872a5b3f65c
    Lea51763663e14d21a9c8adc284f5971a:
    mov 244($fp), 1
    L08ba3a9b76344441ab7b6872a5b3f65c:
    sw t184, 252($fp)
    bne 252($fp), L54
    j L55
    L54:
    sw t186, 256($fp)
    sw const49, 260($fp)
    mov 260($fp), 1
    mov 256($fp), 260($fp)
    sw t187, 264($fp)
    jal length
    mov 264($fp), $r1
    sw t188, 268($fp)
    sw t187, 272($fp)
    sw const48, 276($fp)
    mov 276($fp), 0
    sub 268($fp), 272($fp), 276($fp)
    sw t190, 280($fp)
    sw t188, 284($fp)
    sw const49, 288($fp)
    mov 288($fp), 1
    sub 280($fp), 284($fp), 288($fp)
    sw t186, 292($fp)
    push 292($fp)
    sw t190, 296($fp)
    push 296($fp)
    sw t191, 300($fp)
    push 292($fp)
    push 296($fp)
    jal substr
    mov 300($fp), $r1
    pop null
    sw t191, 304($fp)
    sw 304($fp), rest($fp)
    j L56
    L55:
    sw t194, 308($fp)
    sw const48, 312($fp)
    mov 312($fp), 0
    mov 308($fp), 312($fp)
    push i
    sw t195, 316($fp)
    push 316($fp)
    sw t196, 320($fp)
    push i
    push 316($fp)
    jal substr
    mov 320($fp), $r1
    pop null
    sw t196, 324($fp)
    push 324($fp)
    sw t197, 328($fp)
    push 324($fp)
    jal Parse.c2i
    mov 328($fp), $r1
    pop null
    sw t198, 332($fp)
    sw const48, 336($fp)
    mov 336($fp), 0
    sw t197, 340($fp)
    add 332($fp), 336($fp), 340($fp)
    sw t198, 344($fp)
    mov int, 344($fp)
    sw t200, 348($fp)
    sw const49, 352($fp)
    mov 352($fp), 1
    mov 348($fp), 352($fp)
    sw const49, 356($fp)
    mov 356($fp), 1
    mov i, 356($fp)
    sw t201, 360($fp)
    sw const48, 364($fp)
    mov 364($fp), 0
    cmp null, 364($fp), j
    mov 360($fp), 0
    beq null, L7b718d68e8434ff9af9ff5ec489cbd53
    j L1fbfa9229ef94b51b5bceca40738726f
    L7b718d68e8434ff9af9ff5ec489cbd53:
    mov 360($fp), 1
    L1fbfa9229ef94b51b5bceca40738726f:
    sw t201, 368($fp)
    bne 368($fp), L57
    j L58
    L57:
    sw t202, 372($fp)
    sw 372($fp), rest($fp)
    j L59
    L58:
    L59:
    sw t192, 376($fp)
    sw const1088, 380($fp)
    mov 380($fp), ""
    mov 376($fp), 380($fp)
    L56:
    sw t182, 384($fp)
    sw t192, 388($fp)
    mov 384($fp), 388($fp)
    L53:
    j L_preheader_465fcaef754145038d57ae853f22c5aa
    L50:
    mov $sp, $fp
    pop $fp
    mov $r1, int
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class ECons
.method head
    push $fp
    mov $fp, $sp
    sw t44, 4($fp)
    lw 4($fp), car($fp)
    mov $sp, $fp
    pop $fp
    sw t44, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method init
    push $fp
    mov $fp, $sp
    pop e
    pop rest
    sw e, car($fp)
    sw rest, cdr($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method print
    push $fp
    mov $fp, $sp
    sw t46, 4($fp)
    lw 4($fp), car($fp)
    sw t47, 8($fp)
    jal print
    mov 8($fp), $r1
    sw t48, 12($fp)
    lw 12($fp), cdr($fp)
    sw t49, 16($fp)
    jal print
    mov 16($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t49, 20($fp)
    mov $r1, 20($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method tail
    push $fp
    mov $fp, $sp
    sw t45, 4($fp)
    lw 4($fp), cdr($fp)
    mov $sp, $fp
    pop $fp
    sw t45, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method isNil
    push $fp
    mov $fp, $sp
    sw t43, 4($fp)
    mov 4($fp), false
    mov $sp, $fp
    pop $fp
    sw t43, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class BoolOp
.method or
    push $fp
    mov $fp, $sp
    pop b1
    pop b2
    bne b1, L63
    j L64
    L63:
    sw t211, 4($fp)
    mov 4($fp), true
    sw t212, 8($fp)
    mov 8($fp), true
    j L65
    L64:
    sw t212, 12($fp)
    mov 12($fp), b2
    L65:
    mov $sp, $fp
    pop $fp
    sw t212, 16($fp)
    mov $r1, 16($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method and
    push $fp
    mov $fp, $sp
    pop b1
    pop b2
    bne b1, L60
    j L61
    L60:
    sw t209, 4($fp)
    mov 4($fp), b2
    j L62
    L61:
    sw t210, 8($fp)
    mov 8($fp), false
    sw t209, 12($fp)
    mov 12($fp), false
    L62:
    mov $sp, $fp
    pop $fp
    sw t209, 16($fp)
    mov $r1, 16($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class VCons
.method head
    push $fp
    mov $fp, $sp
    sw t59, 4($fp)
    lw 4($fp), car($fp)
    mov $sp, $fp
    pop $fp
    sw t59, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method init
    push $fp
    mov $fp, $sp
    pop v
    pop rest
    sw v, car($fp)
    sw rest, cdr($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method print
    push $fp
    mov $fp, $sp
    sw t61, 4($fp)
    lw 4($fp), car($fp)
    sw t62, 8($fp)
    jal print
    mov 8($fp), $r1
    sw t63, 12($fp)
    lw 12($fp), cdr($fp)
    sw t64, 16($fp)
    jal print
    mov 16($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t64, 20($fp)
    mov $r1, 20($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method tail
    push $fp
    mov $fp, $sp
    sw t60, 4($fp)
    lw 4($fp), cdr($fp)
    mov $sp, $fp
    pop $fp
    sw t60, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method isNil
    push $fp
    mov $fp, $sp
    sw t58, 4($fp)
    mov 4($fp), false
    mov $sp, $fp
    pop $fp
    sw t58, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class Main
.method main
    push $fp
    mov $fp, $sp
    sw t205, 4($fp)
    lw 4($fp), g($fp)
    sw t206, 8($fp)
    jal print_V
    mov 8($fp), $r1
    sw t207, 12($fp)
    lw 12($fp), g($fp)
    sw t208, 16($fp)
    jal print_E
    mov 16($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t208, 20($fp)
    mov $r1, 20($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class Edge
.method init
    push $fp
    mov $fp, $sp
    pop f
    pop t
    pop w
    sw f, from($fp)
    sw t, to($fp)
    sw w, weight($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method print
    push $fp
    mov $fp, $sp
    sw t17, 4($fp)
    sw const1044920, 8($fp)
    mov 8($fp), " ("
    mov 4($fp), 8($fp)
    sw t17, 12($fp)
    push 12($fp)
    sw t18, 16($fp)
    push 12($fp)
    jal Edge.out_string
    mov 16($fp), $r1
    pop null
    sw t19, 20($fp)
    lw 20($fp), from($fp)
    sw t19, 24($fp)
    push 24($fp)
    sw t20, 28($fp)
    push 24($fp)
    jal Edge.out_int
    mov 28($fp), $r1
    pop null
    sw t21, 32($fp)
    sw const34072, 36($fp)
    mov 36($fp), ","
    mov 32($fp), 36($fp)
    sw t21, 40($fp)
    push 40($fp)
    sw t22, 44($fp)
    push 40($fp)
    jal Edge.out_string
    mov 44($fp), $r1
    pop null
    sw t23, 48($fp)
    lw 48($fp), to($fp)
    sw t23, 52($fp)
    push 52($fp)
    sw t24, 56($fp)
    push 52($fp)
    jal Edge.out_int
    mov 56($fp), $r1
    pop null
    sw t25, 60($fp)
    sw const33979, 64($fp)
    mov 64($fp), ")"
    mov 60($fp), 64($fp)
    sw t25, 68($fp)
    push 68($fp)
    sw t26, 72($fp)
    push 68($fp)
    jal Edge.out_string
    mov 72($fp), $r1
    pop null
    sw t27, 76($fp)
    lw 76($fp), weight($fp)
    sw t27, 80($fp)
    push 80($fp)
    sw t28, 84($fp)
    push 80($fp)
    jal Edge.out_int
    mov 84($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    sw t28, 88($fp)
    mov $r1, 88($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class

