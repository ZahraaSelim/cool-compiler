.class CellularAutomaton
.method init
    push $fp
    mov $fp, $sp
    pop map
    sw map, population_map($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method evolve
    push $fp
    mov $fp, $sp
    jal CellularAutomaton.num_cells
    mov $r2, $r1
    mov num, $r2
    L_preheader_30b9e774992b47189ebac8ca6ff595ea:
    mov $r4, 1
    mov $r3, $r4
    j L18
    L18:
    cmp null, position, num
    mov $r5, 0
    blt null, L4746a80a9e684902857ef945aecf2524
    j L18c25a09e7bb44afbedab572d6793a51
    L4746a80a9e684902857ef945aecf2524:
    mov $r5, 1
    L18c25a09e7bb44afbedab572d6793a51:
    bne $r5, L19
    j L20
    L19:
    push position
    push position
    jal CellularAutomaton.cell_at_next_evolution
    mov $r6, $r1
    pop null
    push $r6
    push $r6
    jal concat
    mov $r7, $r1
    pop null
    mov temp, $r7
    mov $r4, 1
    add $r8, position, $r4
    mov position, $r8
    j L_preheader_30b9e774992b47189ebac8ca6ff595ea
    L20:
    sw temp, population_map($fp)
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
    lw $r9, population_map($fp)
    mov $r11, "\n"
    mov $r10, $r11
    push $r10
    push $r10
    jal concat
    mov $r12, $r1
    pop null
    push $r12
    push $r12
    jal CellularAutomaton.out_string
    mov $r13, $r1
    pop null
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method cell_left_neighbor
    push $fp
    mov $fp, $sp
    pop position
    mov $r15, 0
    mov $r14, $r15
    sw t10, 4($fp)
    mov $r15, 0
    cmp null, position, $r15
    mov 4($fp), 0
    beq null, L8229936e4f1a45cda30aa97561051428
    j L292b45598b3f4f98abadad99852489a9
    L8229936e4f1a45cda30aa97561051428:
    mov 4($fp), 1
    L292b45598b3f4f98abadad99852489a9:
    sw t10, 8($fp)
    bne 8($fp), L0
    j L1
    L0:
    sw t11, 12($fp)
    jal CellularAutomaton.num_cells
    mov 12($fp), $r1
    sw t12, 16($fp)
    mov $r4, 1
    mov 16($fp), $r4
    sw t13, 20($fp)
    sw t11, 24($fp)
    mov $r4, 1
    sub 20($fp), 24($fp), $r4
    sw t13, 28($fp)
    push 28($fp)
    sw t14, 32($fp)
    push 28($fp)
    jal CellularAutomaton.cell
    mov 32($fp), $r1
    pop null
    sw t15, 36($fp)
    sw t14, 40($fp)
    mov 36($fp), 40($fp)
    j L2
    L1:
    sw t16, 44($fp)
    mov $r4, 1
    mov 44($fp), $r4
    sw t17, 48($fp)
    mov $r4, 1
    sub 48($fp), position, $r4
    sw t17, 52($fp)
    push 52($fp)
    sw t18, 56($fp)
    push 52($fp)
    jal CellularAutomaton.cell
    mov 56($fp), $r1
    pop null
    sw t15, 60($fp)
    sw t18, 64($fp)
    mov 60($fp), 64($fp)
    L2:
    mov $sp, $fp
    pop $fp
    sw t15, 68($fp)
    mov $r1, 68($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method cell_right_neighbor
    push $fp
    mov $fp, $sp
    pop position
    sw t19, 4($fp)
    jal CellularAutomaton.num_cells
    mov 4($fp), $r1
    sw t20, 8($fp)
    mov $r4, 1
    mov 8($fp), $r4
    sw t21, 12($fp)
    sw t19, 16($fp)
    mov $r4, 1
    sub 12($fp), 16($fp), $r4
    sw t22, 20($fp)
    sw t21, 24($fp)
    cmp null, position, 24($fp)
    mov 20($fp), 0
    beq null, L70c5766a0cdb488a9f5cc002b3d99c9b
    j L13a42b0a27cf494eb38795904f13287c
    L70c5766a0cdb488a9f5cc002b3d99c9b:
    mov 20($fp), 1
    L13a42b0a27cf494eb38795904f13287c:
    sw t22, 28($fp)
    bne 28($fp), L3
    j L4
    L3:
    sw t23, 32($fp)
    mov $r15, 0
    mov 32($fp), $r15
    sw t23, 36($fp)
    push 36($fp)
    sw t24, 40($fp)
    push 36($fp)
    jal CellularAutomaton.cell
    mov 40($fp), $r1
    pop null
    sw t25, 44($fp)
    sw t24, 48($fp)
    mov 44($fp), 48($fp)
    j L5
    L4:
    sw t26, 52($fp)
    mov $r4, 1
    mov 52($fp), $r4
    sw t27, 56($fp)
    mov $r4, 1
    add 56($fp), position, $r4
    sw t27, 60($fp)
    push 60($fp)
    sw t28, 64($fp)
    push 60($fp)
    jal CellularAutomaton.cell
    mov 64($fp), $r1
    pop null
    sw t25, 68($fp)
    sw t28, 72($fp)
    mov 68($fp), 72($fp)
    L5:
    mov $sp, $fp
    pop $fp
    sw t25, 76($fp)
    mov $r1, 76($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method cell
    push $fp
    mov $fp, $sp
    pop position
    sw t6, 4($fp)
    lw 4($fp), population_map($fp)
    sw t7, 8($fp)
    mov $r4, 1
    mov 8($fp), $r4
    push position
    sw t7, 12($fp)
    push 12($fp)
    sw t8, 16($fp)
    push position
    push 12($fp)
    jal substr
    mov 16($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    sw t8, 20($fp)
    mov $r1, 20($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method cell_at_next_evolution
    push $fp
    mov $fp, $sp
    pop position
    push position
    sw t29, 4($fp)
    push position
    jal CellularAutomaton.cell
    mov 4($fp), $r1
    pop null
    sw t30, 8($fp)
    sw const35436, 12($fp)
    mov 12($fp), "X"
    mov 8($fp), 12($fp)
    sw t31, 16($fp)
    sw t29, 20($fp)
    sw const35436, 24($fp)
    mov 24($fp), "X"
    cmp null, 20($fp), 24($fp)
    mov 16($fp), 0
    beq null, L3b74433a32384525bcec461ebea4367b
    j L1e48c14f63184ff5a502fa506d552dad
    L3b74433a32384525bcec461ebea4367b:
    mov 16($fp), 1
    L1e48c14f63184ff5a502fa506d552dad:
    sw t31, 28($fp)
    bne 28($fp), L6
    j L7
    L6:
    sw t32, 32($fp)
    mov $r4, 1
    mov 32($fp), $r4
    sw t33, 36($fp)
    mov $r4, 1
    mov 36($fp), $r4
    j L8
    L7:
    sw t34, 40($fp)
    mov $r15, 0
    mov 40($fp), $r15
    sw t33, 44($fp)
    mov $r15, 0
    mov 44($fp), $r15
    L8:
    push position
    sw t35, 48($fp)
    push position
    jal CellularAutomaton.cell_left_neighbor
    mov 48($fp), $r1
    pop null
    sw t36, 52($fp)
    sw const35436, 56($fp)
    mov 56($fp), "X"
    mov 52($fp), 56($fp)
    sw t37, 60($fp)
    sw t35, 64($fp)
    sw const35436, 68($fp)
    mov 68($fp), "X"
    cmp null, 64($fp), 68($fp)
    mov 60($fp), 0
    beq null, L70bf61466b9e4a2eb7f7dd2f98ad44ea
    j Ldb5d3863812b45baaca00566d2e3ecb5
    L70bf61466b9e4a2eb7f7dd2f98ad44ea:
    mov 60($fp), 1
    Ldb5d3863812b45baaca00566d2e3ecb5:
    sw t37, 72($fp)
    bne 72($fp), L9
    j L10
    L9:
    sw t38, 76($fp)
    mov $r4, 1
    mov 76($fp), $r4
    sw t39, 80($fp)
    mov $r4, 1
    mov 80($fp), $r4
    j L11
    L10:
    sw t40, 84($fp)
    mov $r15, 0
    mov 84($fp), $r15
    sw t39, 88($fp)
    mov $r15, 0
    mov 88($fp), $r15
    L11:
    sw t41, 92($fp)
    mov $r15, 0
    mov 92($fp), $r15
    push position
    sw t42, 96($fp)
    push position
    jal CellularAutomaton.cell_right_neighbor
    mov 96($fp), $r1
    pop null
    sw t43, 100($fp)
    sw const35436, 104($fp)
    mov 104($fp), "X"
    mov 100($fp), 104($fp)
    sw t44, 108($fp)
    sw t42, 112($fp)
    sw const35436, 116($fp)
    mov 116($fp), "X"
    cmp null, 112($fp), 116($fp)
    mov 108($fp), 0
    beq null, La7052867d50d4f7ba9bd1e67c2a6ded5
    j L940eef370b0445b080906860e94e8596
    La7052867d50d4f7ba9bd1e67c2a6ded5:
    mov 108($fp), 1
    L940eef370b0445b080906860e94e8596:
    sw t44, 120($fp)
    bne 120($fp), L12
    j L13
    L12:
    sw t45, 124($fp)
    mov $r4, 1
    mov 124($fp), $r4
    sw t46, 128($fp)
    mov $r4, 1
    mov 128($fp), $r4
    j L14
    L13:
    sw t47, 132($fp)
    mov $r15, 0
    mov 132($fp), $r15
    sw t46, 136($fp)
    mov $r15, 0
    mov 136($fp), $r15
    L14:
    sw t48, 140($fp)
    mov $r15, 0
    mov 140($fp), $r15
    sw t49, 144($fp)
    mov $r4, 1
    mov 144($fp), $r4
    sw t50, 148($fp)
    mov $r15, 0
    mov 148($fp), $r15
    sw t50, 152($fp)
    bne 152($fp), L15
    j L16
    L15:
    sw t51, 156($fp)
    sw const35436, 160($fp)
    mov 160($fp), "X"
    mov 156($fp), 160($fp)
    sw t52, 164($fp)
    sw const35436, 168($fp)
    mov 168($fp), "X"
    mov 164($fp), 168($fp)
    j L17
    L16:
    sw t53, 172($fp)
    sw const34134, 176($fp)
    mov 176($fp), "."
    mov 172($fp), 176($fp)
    sw t52, 180($fp)
    sw const34134, 184($fp)
    mov 184($fp), "."
    mov 180($fp), 184($fp)
    L17:
    mov $sp, $fp
    pop $fp
    sw t52, 188($fp)
    mov $r1, 188($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method num_cells
    push $fp
    mov $fp, $sp
    sw t4, 4($fp)
    lw 4($fp), population_map($fp)
    sw t5, 8($fp)
    jal length
    mov 8($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t5, 12($fp)
    mov $r1, 12($fp)
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
    sw t60, 4($fp)
    jal new CellularAutomaton
    mov 4($fp), $r1
    sw t61, 8($fp)
    sw const2130369884, 12($fp)
    mov 12($fp), "         X         "
    mov 8($fp), 12($fp)
    sw t61, 16($fp)
    push 16($fp)
    sw t62, 20($fp)
    push 16($fp)
    jal init
    mov 20($fp), $r1
    pop null
    sw t62, 24($fp)
    sw 24($fp), cells($fp)
    sw t63, 28($fp)
    lw 28($fp), cells($fp)
    sw t64, 32($fp)
    jal print
    mov 32($fp), $r1
    sw t65, 36($fp)
    sw const1598, 40($fp)
    mov 40($fp), 20
    mov 36($fp), 40($fp)
    sw const1598, 44($fp)
    mov 44($fp), 20
    mov countdown, 44($fp)
    L_preheader_81be8a74381a40d5be5d1cf99b8e4d97:
    sw t66, 48($fp)
    mov $r15, 0
    mov 48($fp), $r15
    sw t72, 52($fp)
    mov $r4, 1
    mov 52($fp), $r4
    j L21
    L21:
    sw t67, 56($fp)
    mov $r15, 0
    mov 56($fp), $r15
    sw t67, 60($fp)
    bne 60($fp), L22
    j L23
    L22:
    sw t68, 64($fp)
    lw 64($fp), cells($fp)
    sw t69, 68($fp)
    jal evolve
    mov 68($fp), $r1
    sw t70, 72($fp)
    lw 72($fp), cells($fp)
    sw t71, 76($fp)
    jal print
    mov 76($fp), $r1
    sw t73, 80($fp)
    sw const1576, 84($fp)
    mov 84($fp), 19
    mov 80($fp), 84($fp)
    sw const1576, 88($fp)
    mov 88($fp), 19
    mov countdown, 88($fp)
    j L_preheader_81be8a74381a40d5be5d1cf99b8e4d97
    L23:
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class

