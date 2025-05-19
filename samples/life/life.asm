.class CellularAutomaton
.method southwest
    push $fp
    mov $fp, $sp
    pop position
    lw $r2, board_size($fp)
    lw $r3, columns($fp)
    add $r4, position, $r3
    cmp null, $r2, $r4
    mov $r5, 0
    blt null, Laf3f493115c248aeaae550f4d818c57b
    j Lb8a78b2e70664fa9b8fb14b50fcfe65c
    Laf3f493115c248aeaae550f4d818c57b:
    mov $r5, 1
    Lb8a78b2e70664fa9b8fb14b50fcfe65c:
    bne $r5, L57
    j L58
    L57:
    mov $r7, " "
    mov $r6, $r7
    mov $r7, " "
    mov $r8, $r7
    j L59
    L58:
    lw $r9, columns($fp)
    div $r10, position, $r9
    lw $r11, columns($fp)
    mul $r12, $r10, $r11
    cmp null, $r12, position
    mov $r13, 0
    beq null, L64301525edc343609f94b3f7ab986ac4
    j L03a532f920694f49ae4148e489497897
    L64301525edc343609f94b3f7ab986ac4:
    mov $r13, 1
    L03a532f920694f49ae4148e489497897:
    bne $r13, L60
    j L61
    L60:
    mov $r7, " "
    mov $r14, $r7
    mov $r7, " "
    mov $r15, $r7
    j L62
    L61:
    sw t176, 4($fp)
    sw const49, 8($fp)
    mov 8($fp), 1
    mov 4($fp), 8($fp)
    sw t177, 12($fp)
    sw const49, 16($fp)
    mov 16($fp), 1
    sub 12($fp), position, 16($fp)
    sw t177, 20($fp)
    push 20($fp)
    sw t178, 24($fp)
    push 20($fp)
    jal CellularAutomaton.south
    mov 24($fp), $r1
    pop null
    sw t178, 28($fp)
    mov $r15, 28($fp)
    L62:
    mov $r7, " "
    mov $r8, $r7
    L59:
    mov $sp, $fp
    pop $fp
    mov $r1, $r8
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method init
    push $fp
    mov $fp, $sp
    pop map
    sw map, population_map($fp)
    push map
    sw t34, 4($fp)
    push map
    jal CellularAutomaton.board_init
    mov 4($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method south
    push $fp
    mov $fp, $sp
    pop position
    sw t70, 4($fp)
    lw 4($fp), board_size($fp)
    sw t71, 8($fp)
    lw 8($fp), columns($fp)
    sw t72, 12($fp)
    sw t71, 16($fp)
    add 12($fp), position, 16($fp)
    sw t73, 20($fp)
    sw t70, 24($fp)
    sw t72, 28($fp)
    cmp null, 24($fp), 28($fp)
    mov 20($fp), 0
    blt null, L88225642dab14c349cd44c8f2aa9e117
    j Le31244a957db49c59c14bfe4204eb703
    L88225642dab14c349cd44c8f2aa9e117:
    mov 20($fp), 1
    Le31244a957db49c59c14bfe4204eb703:
    sw t73, 32($fp)
    bne 32($fp), L27
    j L28
    L27:
    sw t74, 36($fp)
    mov $r7, " "
    mov 36($fp), $r7
    sw t75, 40($fp)
    mov $r7, " "
    mov 40($fp), $r7
    j L29
    L28:
    sw t76, 44($fp)
    lw 44($fp), columns($fp)
    sw t77, 48($fp)
    sw t76, 52($fp)
    add 48($fp), position, 52($fp)
    sw t77, 56($fp)
    push 56($fp)
    sw t78, 60($fp)
    push 56($fp)
    jal CellularAutomaton.cell
    mov 60($fp), $r1
    pop null
    sw t75, 64($fp)
    sw t78, 68($fp)
    mov 64($fp), 68($fp)
    L29:
    mov $sp, $fp
    pop $fp
    sw t75, 72($fp)
    mov $r1, 72($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method north
    push $fp
    mov $fp, $sp
    pop position
    sw t61, 4($fp)
    lw 4($fp), columns($fp)
    sw t62, 8($fp)
    sw t61, 12($fp)
    sub 8($fp), position, 12($fp)
    sw t63, 16($fp)
    sw const48, 20($fp)
    mov 20($fp), 0
    mov 16($fp), 20($fp)
    sw t64, 24($fp)
    sw t62, 28($fp)
    sw const48, 32($fp)
    mov 32($fp), 0
    cmp null, 28($fp), 32($fp)
    mov 24($fp), 0
    blt null, Le6750984efdc4b0aaa020b33472ae8a6
    j Lbb99dc6973d74749b085332dd15998c0
    Le6750984efdc4b0aaa020b33472ae8a6:
    mov 24($fp), 1
    Lbb99dc6973d74749b085332dd15998c0:
    sw t64, 36($fp)
    bne 36($fp), L24
    j L25
    L24:
    sw t65, 40($fp)
    mov $r7, " "
    mov 40($fp), $r7
    sw t66, 44($fp)
    mov $r7, " "
    mov 44($fp), $r7
    j L26
    L25:
    sw t67, 48($fp)
    lw 48($fp), columns($fp)
    sw t68, 52($fp)
    sw t67, 56($fp)
    sub 52($fp), position, 56($fp)
    sw t68, 60($fp)
    push 60($fp)
    sw t69, 64($fp)
    push 60($fp)
    jal CellularAutomaton.cell
    mov 64($fp), $r1
    pop null
    sw t66, 68($fp)
    sw t69, 72($fp)
    mov 68($fp), 72($fp)
    L26:
    mov $sp, $fp
    pop $fp
    sw t66, 76($fp)
    mov $r1, 76($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method northwest
    push $fp
    mov $fp, $sp
    pop position
    sw t107, 4($fp)
    lw 4($fp), columns($fp)
    sw t108, 8($fp)
    sw t107, 12($fp)
    sub 8($fp), position, 12($fp)
    sw t109, 16($fp)
    sw const48, 20($fp)
    mov 20($fp), 0
    mov 16($fp), 20($fp)
    sw t110, 24($fp)
    sw t108, 28($fp)
    sw const48, 32($fp)
    mov 32($fp), 0
    cmp null, 28($fp), 32($fp)
    mov 24($fp), 0
    blt null, L9ef7ab7c8ea54e1c93d934e08d52c6fe
    j Lbbdeb5db5ae241e89201972e4b5b5887
    L9ef7ab7c8ea54e1c93d934e08d52c6fe:
    mov 24($fp), 1
    Lbbdeb5db5ae241e89201972e4b5b5887:
    sw t110, 36($fp)
    bne 36($fp), L39
    j L40
    L39:
    sw t111, 40($fp)
    mov $r7, " "
    mov 40($fp), $r7
    sw t112, 44($fp)
    mov $r7, " "
    mov 44($fp), $r7
    j L41
    L40:
    sw t113, 48($fp)
    lw 48($fp), columns($fp)
    sw t114, 52($fp)
    sw t113, 56($fp)
    div 52($fp), position, 56($fp)
    sw t115, 60($fp)
    lw 60($fp), columns($fp)
    sw t116, 64($fp)
    sw t114, 68($fp)
    sw t115, 72($fp)
    mul 64($fp), 68($fp), 72($fp)
    sw t117, 76($fp)
    sw t116, 80($fp)
    cmp null, 80($fp), position
    mov 76($fp), 0
    beq null, L0576ab0a1410450ea64f67a0d77791a9
    j Le900eeb65aac4d2a8826ee17b3dec443
    L0576ab0a1410450ea64f67a0d77791a9:
    mov 76($fp), 1
    Le900eeb65aac4d2a8826ee17b3dec443:
    sw t117, 84($fp)
    bne 84($fp), L42
    j L43
    L42:
    sw t118, 88($fp)
    mov $r7, " "
    mov 88($fp), $r7
    sw t119, 92($fp)
    mov $r7, " "
    mov 92($fp), $r7
    j L44
    L43:
    sw t120, 96($fp)
    sw const49, 100($fp)
    mov 100($fp), 1
    mov 96($fp), 100($fp)
    sw t121, 104($fp)
    sw const49, 108($fp)
    mov 108($fp), 1
    sub 104($fp), position, 108($fp)
    sw t121, 112($fp)
    push 112($fp)
    sw t122, 116($fp)
    push 112($fp)
    jal CellularAutomaton.north
    mov 116($fp), $r1
    pop null
    sw t119, 120($fp)
    sw t122, 124($fp)
    mov 120($fp), 124($fp)
    L44:
    sw t112, 128($fp)
    mov $r7, " "
    mov 128($fp), $r7
    L41:
    mov $sp, $fp
    pop $fp
    sw t112, 132($fp)
    mov $r1, 132($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method northeast
    push $fp
    mov $fp, $sp
    pop position
    sw t123, 4($fp)
    lw 4($fp), columns($fp)
    sw t124, 8($fp)
    sw t123, 12($fp)
    sub 8($fp), position, 12($fp)
    sw t125, 16($fp)
    sw const48, 20($fp)
    mov 20($fp), 0
    mov 16($fp), 20($fp)
    sw t126, 24($fp)
    sw t124, 28($fp)
    sw const48, 32($fp)
    mov 32($fp), 0
    cmp null, 28($fp), 32($fp)
    mov 24($fp), 0
    blt null, L31a37793f61f4b48816777cf9ce29029
    j L86ced269349a4e97849f1be5422dbf58
    L31a37793f61f4b48816777cf9ce29029:
    mov 24($fp), 1
    L86ced269349a4e97849f1be5422dbf58:
    sw t126, 36($fp)
    bne 36($fp), L45
    j L46
    L45:
    sw t127, 40($fp)
    mov $r7, " "
    mov 40($fp), $r7
    sw t128, 44($fp)
    mov $r7, " "
    mov 44($fp), $r7
    j L47
    L46:
    sw t129, 48($fp)
    sw const49, 52($fp)
    mov 52($fp), 1
    mov 48($fp), 52($fp)
    sw t130, 56($fp)
    sw const49, 60($fp)
    mov 60($fp), 1
    add 56($fp), position, 60($fp)
    sw t131, 64($fp)
    lw 64($fp), columns($fp)
    sw t132, 68($fp)
    sw t130, 72($fp)
    sw t131, 76($fp)
    div 68($fp), 72($fp), 76($fp)
    sw t133, 80($fp)
    lw 80($fp), columns($fp)
    sw t134, 84($fp)
    sw t132, 88($fp)
    sw t133, 92($fp)
    mul 84($fp), 88($fp), 92($fp)
    sw t135, 96($fp)
    sw const49, 100($fp)
    mov 100($fp), 1
    mov 96($fp), 100($fp)
    sw t136, 104($fp)
    sw const49, 108($fp)
    mov 108($fp), 1
    add 104($fp), position, 108($fp)
    sw t137, 112($fp)
    sw t134, 116($fp)
    sw t136, 120($fp)
    cmp null, 116($fp), 120($fp)
    mov 112($fp), 0
    beq null, L3517e6bd8ecf40edbd47844eba114bb9
    j L8e3e276303d74b12a8ab038f92f61d4e
    L3517e6bd8ecf40edbd47844eba114bb9:
    mov 112($fp), 1
    L8e3e276303d74b12a8ab038f92f61d4e:
    sw t137, 124($fp)
    bne 124($fp), L48
    j L49
    L48:
    sw t138, 128($fp)
    mov $r7, " "
    mov 128($fp), $r7
    sw t139, 132($fp)
    mov $r7, " "
    mov 132($fp), $r7
    j L50
    L49:
    sw t140, 136($fp)
    sw const49, 140($fp)
    mov 140($fp), 1
    mov 136($fp), 140($fp)
    sw t141, 144($fp)
    sw const49, 148($fp)
    mov 148($fp), 1
    add 144($fp), position, 148($fp)
    sw t141, 152($fp)
    push 152($fp)
    sw t142, 156($fp)
    push 152($fp)
    jal CellularAutomaton.north
    mov 156($fp), $r1
    pop null
    sw t139, 160($fp)
    sw t142, 164($fp)
    mov 160($fp), 164($fp)
    L50:
    sw t128, 168($fp)
    mov $r7, " "
    mov 168($fp), $r7
    L47:
    mov $sp, $fp
    pop $fp
    sw t128, 172($fp)
    mov $r1, 172($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method cell
    push $fp
    mov $fp, $sp
    pop position
    sw t52, 4($fp)
    lw 4($fp), board_size($fp)
    sw t53, 8($fp)
    sw const49, 12($fp)
    mov 12($fp), 1
    mov 8($fp), 12($fp)
    sw t54, 16($fp)
    sw t52, 20($fp)
    sw const49, 24($fp)
    mov 24($fp), 1
    sub 16($fp), 20($fp), 24($fp)
    sw t55, 28($fp)
    sw t54, 32($fp)
    cmp null, 32($fp), position
    mov 28($fp), 0
    blt null, L7dd1c799b0ee449cb0b74d5a7131be24
    j Lbc3e05a736fb4b818e32eef9d328f327
    L7dd1c799b0ee449cb0b74d5a7131be24:
    mov 28($fp), 1
    Lbc3e05a736fb4b818e32eef9d328f327:
    sw t55, 36($fp)
    bne 36($fp), L21
    j L22
    L21:
    sw t56, 40($fp)
    mov $r7, " "
    mov 40($fp), $r7
    sw t57, 44($fp)
    mov $r7, " "
    mov 44($fp), $r7
    j L23
    L22:
    sw t58, 48($fp)
    lw 48($fp), population_map($fp)
    sw t59, 52($fp)
    sw const49, 56($fp)
    mov 56($fp), 1
    mov 52($fp), 56($fp)
    push position
    sw t59, 60($fp)
    push 60($fp)
    sw t60, 64($fp)
    push position
    push 60($fp)
    jal substr
    mov 64($fp), $r1
    pop null
    sw t57, 68($fp)
    sw t60, 72($fp)
    mov 68($fp), 72($fp)
    L23:
    mov $sp, $fp
    pop $fp
    sw t57, 76($fp)
    mov $r1, 76($fp)
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
    sw t234, 4($fp)
    push position
    jal CellularAutomaton.neighbors
    mov 4($fp), $r1
    pop null
    sw t235, 8($fp)
    sw const51, 12($fp)
    mov 12($fp), 3
    mov 8($fp), 12($fp)
    sw t236, 16($fp)
    sw t234, 20($fp)
    sw const51, 24($fp)
    mov 24($fp), 3
    cmp null, 20($fp), 24($fp)
    mov 16($fp), 0
    beq null, Ld328844315b84fddbb841a5f18acc6aa
    j L1bc0e1a1b4d3414283af893dee29a5d8
    Ld328844315b84fddbb841a5f18acc6aa:
    mov 16($fp), 1
    L1bc0e1a1b4d3414283af893dee29a5d8:
    sw t236, 28($fp)
    bne 28($fp), L87
    j L88
    L87:
    sw t237, 32($fp)
    sw const35436, 36($fp)
    mov 36($fp), "X"
    mov 32($fp), 36($fp)
    sw t238, 40($fp)
    sw const35436, 44($fp)
    mov 44($fp), "X"
    mov 40($fp), 44($fp)
    j L89
    L88:
    push position
    sw t239, 48($fp)
    push position
    jal CellularAutomaton.neighbors
    mov 48($fp), $r1
    pop null
    sw t240, 52($fp)
    sw const50, 56($fp)
    mov 56($fp), 2
    mov 52($fp), 56($fp)
    sw t241, 60($fp)
    sw t239, 64($fp)
    sw const50, 68($fp)
    mov 68($fp), 2
    cmp null, 64($fp), 68($fp)
    mov 60($fp), 0
    beq null, Lb1a179f4131543f9b1f8c9bb9a538aa9
    j Lad3c9025e49c4d20ad04c21cb2d80e6f
    Lb1a179f4131543f9b1f8c9bb9a538aa9:
    mov 60($fp), 1
    Lad3c9025e49c4d20ad04c21cb2d80e6f:
    sw t241, 72($fp)
    bne 72($fp), L90
    j L91
    L90:
    push position
    sw t242, 76($fp)
    push position
    jal CellularAutomaton.cell
    mov 76($fp), $r1
    pop null
    sw t243, 80($fp)
    sw const35436, 84($fp)
    mov 84($fp), "X"
    mov 80($fp), 84($fp)
    sw t244, 88($fp)
    sw t242, 92($fp)
    sw const35436, 96($fp)
    mov 96($fp), "X"
    cmp null, 92($fp), 96($fp)
    mov 88($fp), 0
    beq null, Lb8c2afd0bd35456d9f189c5fbe2f12ae
    j L3d57ca823b214c0b99fc59faed7b5fa7
    Lb8c2afd0bd35456d9f189c5fbe2f12ae:
    mov 88($fp), 1
    L3d57ca823b214c0b99fc59faed7b5fa7:
    sw t244, 100($fp)
    bne 100($fp), L93
    j L94
    L93:
    sw t245, 104($fp)
    sw const35436, 108($fp)
    mov 108($fp), "X"
    mov 104($fp), 108($fp)
    sw t246, 112($fp)
    sw const35436, 116($fp)
    mov 116($fp), "X"
    mov 112($fp), 116($fp)
    j L95
    L94:
    sw t247, 120($fp)
    sw const34103, 124($fp)
    mov 124($fp), "-"
    mov 120($fp), 124($fp)
    sw t246, 128($fp)
    sw const34103, 132($fp)
    mov 132($fp), "-"
    mov 128($fp), 132($fp)
    L95:
    sw t248, 136($fp)
    sw const34103, 140($fp)
    mov 140($fp), "-"
    mov 136($fp), 140($fp)
    j L92
    L91:
    sw t249, 144($fp)
    sw const34103, 148($fp)
    mov 148($fp), "-"
    mov 144($fp), 148($fp)
    sw t248, 152($fp)
    sw const34103, 156($fp)
    mov 156($fp), "-"
    mov 152($fp), 156($fp)
    L92:
    sw t238, 160($fp)
    sw const34103, 164($fp)
    mov 164($fp), "-"
    mov 160($fp), 164($fp)
    L89:
    mov $sp, $fp
    pop $fp
    sw t238, 168($fp)
    mov $r1, 168($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method num_cells
    push $fp
    mov $fp, $sp
    sw t50, 4($fp)
    lw 4($fp), population_map($fp)
    sw t51, 8($fp)
    jal length
    mov 8($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t51, 12($fp)
    mov $r1, 12($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method evolve
    push $fp
    mov $fp, $sp
    sw t250, 4($fp)
    sw const48, 8($fp)
    mov 8($fp), 0
    mov 4($fp), 8($fp)
    sw const48, 12($fp)
    mov 12($fp), 0
    mov position, 12($fp)
    sw t251, 16($fp)
    jal CellularAutomaton.num_cells
    mov 16($fp), $r1
    sw t251, 20($fp)
    mov num, 20($fp)
    L_preheader_d7d4e3c9a33c495bbfac146a3242e699:
    sw t255, 24($fp)
    sw const49, 28($fp)
    mov 28($fp), 1
    mov 24($fp), 28($fp)
    j L96
    L96:
    sw t252, 32($fp)
    sw const48, 36($fp)
    mov 36($fp), 0
    cmp null, 36($fp), num
    mov 32($fp), 0
    blt null, L0cad3643576b4da587e4479d32fd0fae
    j L4938bddf429a437eb14cfe526a642207
    L0cad3643576b4da587e4479d32fd0fae:
    mov 32($fp), 1
    L4938bddf429a437eb14cfe526a642207:
    sw t252, 40($fp)
    bne 40($fp), L97
    j L98
    L97:
    push position
    sw t253, 44($fp)
    push position
    jal CellularAutomaton.cell_at_next_evolution
    mov 44($fp), $r1
    pop null
    sw t253, 48($fp)
    push 48($fp)
    sw t254, 52($fp)
    push 48($fp)
    jal concat
    mov 52($fp), $r1
    pop null
    sw t254, 56($fp)
    mov temp, 56($fp)
    sw t256, 60($fp)
    sw const49, 64($fp)
    mov 64($fp), 1
    mov 60($fp), 64($fp)
    sw const49, 68($fp)
    mov 68($fp), 1
    mov position, 68($fp)
    j L_preheader_d7d4e3c9a33c495bbfac146a3242e699
    L98:
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
    sw t35, 4($fp)
    sw const48, 8($fp)
    mov 8($fp), 0
    mov 4($fp), 8($fp)
    sw const48, 12($fp)
    mov 12($fp), 0
    mov i, 12($fp)
    sw t36, 16($fp)
    lw 16($fp), board_size($fp)
    sw t36, 20($fp)
    mov num, 20($fp)
    sw t37, 24($fp)
    sw const1104750, 28($fp)
    mov 28($fp), "\n"
    mov 24($fp), 28($fp)
    sw t37, 32($fp)
    push 32($fp)
    sw t38, 36($fp)
    push 32($fp)
    jal CellularAutomaton.out_string
    mov 36($fp), $r1
    pop null
    L_preheader_48dfe6e7b51749c7a2078ac37fc50501:
    sw t44, 40($fp)
    sw const1104750, 44($fp)
    mov 44($fp), "\n"
    mov 40($fp), 44($fp)
    j L18
    L18:
    sw t39, 48($fp)
    sw const48, 52($fp)
    mov 52($fp), 0
    cmp null, 52($fp), num
    mov 48($fp), 0
    blt null, L7923ef476380402f83f13a73e024a3f7
    j L7f29bcc89587483a8f5a717c5d957175
    L7923ef476380402f83f13a73e024a3f7:
    mov 48($fp), 1
    L7f29bcc89587483a8f5a717c5d957175:
    sw t39, 56($fp)
    bne 56($fp), L19
    j L20
    L19:
    sw t40, 60($fp)
    lw 60($fp), population_map($fp)
    sw t41, 64($fp)
    lw 64($fp), columns($fp)
    push i
    sw t41, 68($fp)
    push 68($fp)
    sw t42, 72($fp)
    push i
    push 68($fp)
    jal substr
    mov 72($fp), $r1
    pop null
    sw t42, 76($fp)
    push 76($fp)
    sw t43, 80($fp)
    push 76($fp)
    jal CellularAutomaton.out_string
    mov 80($fp), $r1
    pop null
    sw t44, 84($fp)
    push 84($fp)
    sw t45, 88($fp)
    push 84($fp)
    jal CellularAutomaton.out_string
    mov 88($fp), $r1
    pop null
    sw t46, 92($fp)
    lw 92($fp), columns($fp)
    sw t47, 96($fp)
    sw const48, 100($fp)
    mov 100($fp), 0
    sw t46, 104($fp)
    add 96($fp), 100($fp), 104($fp)
    sw t47, 108($fp)
    mov i, 108($fp)
    j L_preheader_48dfe6e7b51749c7a2078ac37fc50501
    L20:
    sw t48, 112($fp)
    sw const1104750, 116($fp)
    mov 116($fp), "\n"
    mov 112($fp), 116($fp)
    sw t48, 120($fp)
    push 120($fp)
    sw t49, 124($fp)
    push 120($fp)
    jal CellularAutomaton.out_string
    mov 124($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method east
    push $fp
    mov $fp, $sp
    pop position
    sw t79, 4($fp)
    sw const49, 8($fp)
    mov 8($fp), 1
    mov 4($fp), 8($fp)
    sw t80, 12($fp)
    sw const49, 16($fp)
    mov 16($fp), 1
    add 12($fp), position, 16($fp)
    sw t81, 20($fp)
    lw 20($fp), columns($fp)
    sw t82, 24($fp)
    sw t80, 28($fp)
    sw t81, 32($fp)
    div 24($fp), 28($fp), 32($fp)
    sw t83, 36($fp)
    lw 36($fp), columns($fp)
    sw t84, 40($fp)
    sw t82, 44($fp)
    sw t83, 48($fp)
    mul 40($fp), 44($fp), 48($fp)
    sw t85, 52($fp)
    sw const49, 56($fp)
    mov 56($fp), 1
    mov 52($fp), 56($fp)
    sw t86, 60($fp)
    sw const49, 64($fp)
    mov 64($fp), 1
    add 60($fp), position, 64($fp)
    sw t87, 68($fp)
    sw t84, 72($fp)
    sw t86, 76($fp)
    cmp null, 72($fp), 76($fp)
    mov 68($fp), 0
    beq null, L17a988e4990b429db60ad808f05fe828
    j L0ad16dc983644f1b96dc2b361d5ea7fa
    L17a988e4990b429db60ad808f05fe828:
    mov 68($fp), 1
    L0ad16dc983644f1b96dc2b361d5ea7fa:
    sw t87, 80($fp)
    bne 80($fp), L30
    j L31
    L30:
    sw t88, 84($fp)
    mov $r7, " "
    mov 84($fp), $r7
    sw t89, 88($fp)
    mov $r7, " "
    mov 88($fp), $r7
    j L32
    L31:
    sw t90, 92($fp)
    sw const49, 96($fp)
    mov 96($fp), 1
    mov 92($fp), 96($fp)
    sw t91, 100($fp)
    sw const49, 104($fp)
    mov 104($fp), 1
    add 100($fp), position, 104($fp)
    sw t91, 108($fp)
    push 108($fp)
    sw t92, 112($fp)
    push 108($fp)
    jal CellularAutomaton.cell
    mov 112($fp), $r1
    pop null
    sw t89, 116($fp)
    sw t92, 120($fp)
    mov 116($fp), 120($fp)
    L32:
    mov $sp, $fp
    pop $fp
    sw t89, 124($fp)
    mov $r1, 124($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method neighbors
    push $fp
    mov $fp, $sp
    pop position
    push position
    sw t179, 4($fp)
    push position
    jal CellularAutomaton.north
    mov 4($fp), $r1
    pop null
    sw t180, 8($fp)
    sw const35436, 12($fp)
    mov 12($fp), "X"
    mov 8($fp), 12($fp)
    sw t181, 16($fp)
    sw t179, 20($fp)
    sw const35436, 24($fp)
    mov 24($fp), "X"
    cmp null, 20($fp), 24($fp)
    mov 16($fp), 0
    beq null, L8e21dd3e14ac49bcb994f881c889417d
    j L48d69460d76845a3a3bcc037cc10aba5
    L8e21dd3e14ac49bcb994f881c889417d:
    mov 16($fp), 1
    L48d69460d76845a3a3bcc037cc10aba5:
    sw t181, 28($fp)
    bne 28($fp), L63
    j L64
    L63:
    sw t182, 32($fp)
    sw const49, 36($fp)
    mov 36($fp), 1
    mov 32($fp), 36($fp)
    sw t183, 40($fp)
    sw const49, 44($fp)
    mov 44($fp), 1
    mov 40($fp), 44($fp)
    j L65
    L64:
    sw t184, 48($fp)
    sw const48, 52($fp)
    mov 52($fp), 0
    mov 48($fp), 52($fp)
    sw t183, 56($fp)
    sw const48, 60($fp)
    mov 60($fp), 0
    mov 56($fp), 60($fp)
    L65:
    push position
    sw t185, 64($fp)
    push position
    jal CellularAutomaton.south
    mov 64($fp), $r1
    pop null
    sw t186, 68($fp)
    sw const35436, 72($fp)
    mov 72($fp), "X"
    mov 68($fp), 72($fp)
    sw t187, 76($fp)
    sw t185, 80($fp)
    sw const35436, 84($fp)
    mov 84($fp), "X"
    cmp null, 80($fp), 84($fp)
    mov 76($fp), 0
    beq null, L7a0ca6a255ce4d80a9683853c0bf75b4
    j L0f2fbf7cd46643b49d0140ec871d046a
    L7a0ca6a255ce4d80a9683853c0bf75b4:
    mov 76($fp), 1
    L0f2fbf7cd46643b49d0140ec871d046a:
    sw t187, 88($fp)
    bne 88($fp), L66
    j L67
    L66:
    sw t188, 92($fp)
    sw const49, 96($fp)
    mov 96($fp), 1
    mov 92($fp), 96($fp)
    sw t189, 100($fp)
    sw const49, 104($fp)
    mov 104($fp), 1
    mov 100($fp), 104($fp)
    j L68
    L67:
    sw t190, 108($fp)
    sw const48, 112($fp)
    mov 112($fp), 0
    mov 108($fp), 112($fp)
    sw t189, 116($fp)
    sw const48, 120($fp)
    mov 120($fp), 0
    mov 116($fp), 120($fp)
    L68:
    sw t191, 124($fp)
    sw const48, 128($fp)
    mov 128($fp), 0
    mov 124($fp), 128($fp)
    push position
    sw t192, 132($fp)
    push position
    jal CellularAutomaton.east
    mov 132($fp), $r1
    pop null
    sw t193, 136($fp)
    sw const35436, 140($fp)
    mov 140($fp), "X"
    mov 136($fp), 140($fp)
    sw t194, 144($fp)
    sw t192, 148($fp)
    sw const35436, 152($fp)
    mov 152($fp), "X"
    cmp null, 148($fp), 152($fp)
    mov 144($fp), 0
    beq null, L310927ec95114a709b40474d1bc3d552
    j L1d23efa5f383478dbfc4e8c972286ef7
    L310927ec95114a709b40474d1bc3d552:
    mov 144($fp), 1
    L1d23efa5f383478dbfc4e8c972286ef7:
    sw t194, 156($fp)
    bne 156($fp), L69
    j L70
    L69:
    sw t195, 160($fp)
    sw const49, 164($fp)
    mov 164($fp), 1
    mov 160($fp), 164($fp)
    sw t196, 168($fp)
    sw const49, 172($fp)
    mov 172($fp), 1
    mov 168($fp), 172($fp)
    j L71
    L70:
    sw t197, 176($fp)
    sw const48, 180($fp)
    mov 180($fp), 0
    mov 176($fp), 180($fp)
    sw t196, 184($fp)
    sw const48, 188($fp)
    mov 188($fp), 0
    mov 184($fp), 188($fp)
    L71:
    sw t198, 192($fp)
    sw const48, 196($fp)
    mov 196($fp), 0
    mov 192($fp), 196($fp)
    push position
    sw t199, 200($fp)
    push position
    jal CellularAutomaton.west
    mov 200($fp), $r1
    pop null
    sw t200, 204($fp)
    sw const35436, 208($fp)
    mov 208($fp), "X"
    mov 204($fp), 208($fp)
    sw t201, 212($fp)
    sw t199, 216($fp)
    sw const35436, 220($fp)
    mov 220($fp), "X"
    cmp null, 216($fp), 220($fp)
    mov 212($fp), 0
    beq null, Le0240bdb5d17468cabf00db2cc66dec2
    j Lae745dd1627f474aac04dda90ee1c652
    Le0240bdb5d17468cabf00db2cc66dec2:
    mov 212($fp), 1
    Lae745dd1627f474aac04dda90ee1c652:
    sw t201, 224($fp)
    bne 224($fp), L72
    j L73
    L72:
    sw t202, 228($fp)
    sw const49, 232($fp)
    mov 232($fp), 1
    mov 228($fp), 232($fp)
    sw t203, 236($fp)
    sw const49, 240($fp)
    mov 240($fp), 1
    mov 236($fp), 240($fp)
    j L74
    L73:
    sw t204, 244($fp)
    sw const48, 248($fp)
    mov 248($fp), 0
    mov 244($fp), 248($fp)
    sw t203, 252($fp)
    sw const48, 256($fp)
    mov 256($fp), 0
    mov 252($fp), 256($fp)
    L74:
    sw t205, 260($fp)
    sw const48, 264($fp)
    mov 264($fp), 0
    mov 260($fp), 264($fp)
    push position
    sw t206, 268($fp)
    push position
    jal CellularAutomaton.northeast
    mov 268($fp), $r1
    pop null
    sw t207, 272($fp)
    sw const35436, 276($fp)
    mov 276($fp), "X"
    mov 272($fp), 276($fp)
    sw t208, 280($fp)
    sw t206, 284($fp)
    sw const35436, 288($fp)
    mov 288($fp), "X"
    cmp null, 284($fp), 288($fp)
    mov 280($fp), 0
    beq null, L8150fc69d315435cab6239f65d186e2e
    j Ld2fb3d4de0a840f9b84ad3e7cea0556c
    L8150fc69d315435cab6239f65d186e2e:
    mov 280($fp), 1
    Ld2fb3d4de0a840f9b84ad3e7cea0556c:
    sw t208, 292($fp)
    bne 292($fp), L75
    j L76
    L75:
    sw t209, 296($fp)
    sw const49, 300($fp)
    mov 300($fp), 1
    mov 296($fp), 300($fp)
    sw t210, 304($fp)
    sw const49, 308($fp)
    mov 308($fp), 1
    mov 304($fp), 308($fp)
    j L77
    L76:
    sw t211, 312($fp)
    sw const48, 316($fp)
    mov 316($fp), 0
    mov 312($fp), 316($fp)
    sw t210, 320($fp)
    sw const48, 324($fp)
    mov 324($fp), 0
    mov 320($fp), 324($fp)
    L77:
    sw t212, 328($fp)
    sw const48, 332($fp)
    mov 332($fp), 0
    mov 328($fp), 332($fp)
    push position
    sw t213, 336($fp)
    push position
    jal CellularAutomaton.northwest
    mov 336($fp), $r1
    pop null
    sw t214, 340($fp)
    sw const35436, 344($fp)
    mov 344($fp), "X"
    mov 340($fp), 344($fp)
    sw t215, 348($fp)
    sw t213, 352($fp)
    sw const35436, 356($fp)
    mov 356($fp), "X"
    cmp null, 352($fp), 356($fp)
    mov 348($fp), 0
    beq null, Lb524fe2c650d43bf9204afd9390040bb
    j Laea0cfc0ab134d29a86ca91489410aa9
    Lb524fe2c650d43bf9204afd9390040bb:
    mov 348($fp), 1
    Laea0cfc0ab134d29a86ca91489410aa9:
    sw t215, 360($fp)
    bne 360($fp), L78
    j L79
    L78:
    sw t216, 364($fp)
    sw const49, 368($fp)
    mov 368($fp), 1
    mov 364($fp), 368($fp)
    sw t217, 372($fp)
    sw const49, 376($fp)
    mov 376($fp), 1
    mov 372($fp), 376($fp)
    j L80
    L79:
    sw t218, 380($fp)
    sw const48, 384($fp)
    mov 384($fp), 0
    mov 380($fp), 384($fp)
    sw t217, 388($fp)
    sw const48, 392($fp)
    mov 392($fp), 0
    mov 388($fp), 392($fp)
    L80:
    sw t219, 396($fp)
    sw const48, 400($fp)
    mov 400($fp), 0
    mov 396($fp), 400($fp)
    push position
    sw t220, 404($fp)
    push position
    jal CellularAutomaton.southeast
    mov 404($fp), $r1
    pop null
    sw t221, 408($fp)
    sw const35436, 412($fp)
    mov 412($fp), "X"
    mov 408($fp), 412($fp)
    sw t222, 416($fp)
    sw t220, 420($fp)
    sw const35436, 424($fp)
    mov 424($fp), "X"
    cmp null, 420($fp), 424($fp)
    mov 416($fp), 0
    beq null, L1551b4b7a3604e5a9513a721d2b53c75
    j Lb74509295baf4d5980e4c51c4ad19890
    L1551b4b7a3604e5a9513a721d2b53c75:
    mov 416($fp), 1
    Lb74509295baf4d5980e4c51c4ad19890:
    sw t222, 428($fp)
    bne 428($fp), L81
    j L82
    L81:
    sw t223, 432($fp)
    sw const49, 436($fp)
    mov 436($fp), 1
    mov 432($fp), 436($fp)
    sw t224, 440($fp)
    sw const49, 444($fp)
    mov 444($fp), 1
    mov 440($fp), 444($fp)
    j L83
    L82:
    sw t225, 448($fp)
    sw const48, 452($fp)
    mov 452($fp), 0
    mov 448($fp), 452($fp)
    sw t224, 456($fp)
    sw const48, 460($fp)
    mov 460($fp), 0
    mov 456($fp), 460($fp)
    L83:
    sw t226, 464($fp)
    sw const48, 468($fp)
    mov 468($fp), 0
    mov 464($fp), 468($fp)
    push position
    sw t227, 472($fp)
    push position
    jal CellularAutomaton.southwest
    mov 472($fp), $r1
    pop null
    sw t228, 476($fp)
    sw const35436, 480($fp)
    mov 480($fp), "X"
    mov 476($fp), 480($fp)
    sw t229, 484($fp)
    sw t227, 488($fp)
    sw const35436, 492($fp)
    mov 492($fp), "X"
    cmp null, 488($fp), 492($fp)
    mov 484($fp), 0
    beq null, L72850a7f5a394cdb86e3f40086e4744d
    j L5c55040ec8bc4413b2a3f3dc12886204
    L72850a7f5a394cdb86e3f40086e4744d:
    mov 484($fp), 1
    L5c55040ec8bc4413b2a3f3dc12886204:
    sw t229, 496($fp)
    bne 496($fp), L84
    j L85
    L84:
    sw t230, 500($fp)
    sw const49, 504($fp)
    mov 504($fp), 1
    mov 500($fp), 504($fp)
    sw t231, 508($fp)
    sw const49, 512($fp)
    mov 512($fp), 1
    mov 508($fp), 512($fp)
    j L86
    L85:
    sw t232, 516($fp)
    sw const48, 520($fp)
    mov 520($fp), 0
    mov 516($fp), 520($fp)
    sw t231, 524($fp)
    sw const48, 528($fp)
    mov 528($fp), 0
    mov 524($fp), 528($fp)
    L86:
    sw t233, 532($fp)
    sw const48, 536($fp)
    mov 536($fp), 0
    mov 532($fp), 536($fp)
    mov $sp, $fp
    pop $fp
    sw t233, 540($fp)
    mov $r1, 540($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method west
    push $fp
    mov $fp, $sp
    pop position
    sw t93, 4($fp)
    sw const48, 8($fp)
    mov 8($fp), 0
    mov 4($fp), 8($fp)
    sw t94, 12($fp)
    sw const48, 16($fp)
    mov 16($fp), 0
    cmp null, position, 16($fp)
    mov 12($fp), 0
    beq null, L1b762f4fc49941e78c3c6d044b1ac7fc
    j L6742301ef721492fa32614247f4f2ff5
    L1b762f4fc49941e78c3c6d044b1ac7fc:
    mov 12($fp), 1
    L6742301ef721492fa32614247f4f2ff5:
    sw t94, 20($fp)
    bne 20($fp), L33
    j L34
    L33:
    sw t95, 24($fp)
    mov $r7, " "
    mov 24($fp), $r7
    sw t96, 28($fp)
    mov $r7, " "
    mov 28($fp), $r7
    j L35
    L34:
    sw t97, 32($fp)
    lw 32($fp), columns($fp)
    sw t98, 36($fp)
    sw t97, 40($fp)
    div 36($fp), position, 40($fp)
    sw t99, 44($fp)
    lw 44($fp), columns($fp)
    sw t100, 48($fp)
    sw t98, 52($fp)
    sw t99, 56($fp)
    mul 48($fp), 52($fp), 56($fp)
    sw t101, 60($fp)
    sw t100, 64($fp)
    cmp null, 64($fp), position
    mov 60($fp), 0
    beq null, L54247efb6b884a95b267ace6306aa3a1
    j L856e03de5bd342f88651aa2df9c033dc
    L54247efb6b884a95b267ace6306aa3a1:
    mov 60($fp), 1
    L856e03de5bd342f88651aa2df9c033dc:
    sw t101, 68($fp)
    bne 68($fp), L36
    j L37
    L36:
    sw t102, 72($fp)
    mov $r7, " "
    mov 72($fp), $r7
    sw t103, 76($fp)
    mov $r7, " "
    mov 76($fp), $r7
    j L38
    L37:
    sw t104, 80($fp)
    sw const49, 84($fp)
    mov 84($fp), 1
    mov 80($fp), 84($fp)
    sw t105, 88($fp)
    sw const49, 92($fp)
    mov 92($fp), 1
    sub 88($fp), position, 92($fp)
    sw t105, 96($fp)
    push 96($fp)
    sw t106, 100($fp)
    push 96($fp)
    jal CellularAutomaton.cell
    mov 100($fp), $r1
    pop null
    sw t103, 104($fp)
    sw t106, 108($fp)
    mov 104($fp), 108($fp)
    L38:
    sw t96, 112($fp)
    mov $r7, " "
    mov 112($fp), $r7
    L35:
    mov $sp, $fp
    pop $fp
    sw t96, 116($fp)
    mov $r1, 116($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method prompt
    push $fp
    mov $fp, $sp
    sw t391, 4($fp)
    sw const-1045974428, 8($fp)
    mov 8($fp), "Would you like to continue with the next generation? \n"
    mov 4($fp), 8($fp)
    sw t391, 12($fp)
    push 12($fp)
    sw t392, 16($fp)
    push 12($fp)
    jal CellularAutomaton.out_string
    mov 16($fp), $r1
    pop null
    sw t393, 20($fp)
    sw const184578069, 24($fp)
    mov 24($fp), "Please use lowercase y or n for your answer [y]: "
    mov 20($fp), 24($fp)
    sw t393, 28($fp)
    push 28($fp)
    sw t394, 32($fp)
    push 28($fp)
    jal CellularAutomaton.out_string
    mov 32($fp), $r1
    pop null
    sw t395, 36($fp)
    jal CellularAutomaton.in_string
    mov 36($fp), $r1
    sw t395, 40($fp)
    mov ans, 40($fp)
    sw t396, 44($fp)
    sw const1104750, 48($fp)
    mov 48($fp), "\n"
    mov 44($fp), 48($fp)
    sw t396, 52($fp)
    push 52($fp)
    sw t397, 56($fp)
    push 52($fp)
    jal CellularAutomaton.out_string
    mov 56($fp), $r1
    pop null
    sw t398, 60($fp)
    sw const36118, 64($fp)
    mov 64($fp), "n"
    mov 60($fp), 64($fp)
    sw t399, 68($fp)
    sw const36118, 72($fp)
    mov 72($fp), "n"
    cmp null, ans, 72($fp)
    mov 68($fp), 0
    beq null, L4579cde6e0a2444ea90386301777beb3
    j Lf58f6431c10b4ea3950d573110eba444
    L4579cde6e0a2444ea90386301777beb3:
    mov 68($fp), 1
    Lf58f6431c10b4ea3950d573110eba444:
    sw t399, 76($fp)
    bne 76($fp), L162
    j L163
    L162:
    sw t400, 80($fp)
    mov 80($fp), false
    sw t401, 84($fp)
    mov 84($fp), false
    j L164
    L163:
    sw t402, 88($fp)
    mov 88($fp), true
    sw t401, 92($fp)
    mov 92($fp), true
    L164:
    mov $sp, $fp
    pop $fp
    sw t401, 96($fp)
    mov $r1, 96($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method southeast
    push $fp
    mov $fp, $sp
    pop position
    sw t143, 4($fp)
    lw 4($fp), board_size($fp)
    sw t144, 8($fp)
    lw 8($fp), columns($fp)
    sw t145, 12($fp)
    sw t144, 16($fp)
    add 12($fp), position, 16($fp)
    sw t146, 20($fp)
    sw t143, 24($fp)
    sw t145, 28($fp)
    cmp null, 24($fp), 28($fp)
    mov 20($fp), 0
    blt null, L5e9ae6e5dfb54bcca14fa71409a1e3f6
    j Lf792089cc33a4a00a18ae27e86cd3b36
    L5e9ae6e5dfb54bcca14fa71409a1e3f6:
    mov 20($fp), 1
    Lf792089cc33a4a00a18ae27e86cd3b36:
    sw t146, 32($fp)
    bne 32($fp), L51
    j L52
    L51:
    sw t147, 36($fp)
    mov $r7, " "
    mov 36($fp), $r7
    sw t148, 40($fp)
    mov $r7, " "
    mov 40($fp), $r7
    j L53
    L52:
    sw t149, 44($fp)
    sw const49, 48($fp)
    mov 48($fp), 1
    mov 44($fp), 48($fp)
    sw t150, 52($fp)
    sw const49, 56($fp)
    mov 56($fp), 1
    add 52($fp), position, 56($fp)
    sw t151, 60($fp)
    lw 60($fp), columns($fp)
    sw t152, 64($fp)
    sw t150, 68($fp)
    sw t151, 72($fp)
    div 64($fp), 68($fp), 72($fp)
    sw t153, 76($fp)
    lw 76($fp), columns($fp)
    sw t154, 80($fp)
    sw t152, 84($fp)
    sw t153, 88($fp)
    mul 80($fp), 84($fp), 88($fp)
    sw t155, 92($fp)
    sw const49, 96($fp)
    mov 96($fp), 1
    mov 92($fp), 96($fp)
    sw t156, 100($fp)
    sw const49, 104($fp)
    mov 104($fp), 1
    add 100($fp), position, 104($fp)
    sw t157, 108($fp)
    sw t154, 112($fp)
    sw t156, 116($fp)
    cmp null, 112($fp), 116($fp)
    mov 108($fp), 0
    beq null, Le2d15ecd70c54947889741a91181ac71
    j L1a7b8edb187e4b1c9bc942978afb8ba4
    Le2d15ecd70c54947889741a91181ac71:
    mov 108($fp), 1
    L1a7b8edb187e4b1c9bc942978afb8ba4:
    sw t157, 120($fp)
    bne 120($fp), L54
    j L55
    L54:
    sw t158, 124($fp)
    mov $r7, " "
    mov 124($fp), $r7
    sw t159, 128($fp)
    mov $r7, " "
    mov 128($fp), $r7
    j L56
    L55:
    sw t160, 132($fp)
    sw const49, 136($fp)
    mov 136($fp), 1
    mov 132($fp), 136($fp)
    sw t161, 140($fp)
    sw const49, 144($fp)
    mov 144($fp), 1
    add 140($fp), position, 144($fp)
    sw t161, 148($fp)
    push 148($fp)
    sw t162, 152($fp)
    push 148($fp)
    jal CellularAutomaton.south
    mov 152($fp), $r1
    pop null
    sw t159, 156($fp)
    sw t162, 160($fp)
    mov 156($fp), 160($fp)
    L56:
    sw t148, 164($fp)
    mov $r7, " "
    mov 164($fp), $r7
    L53:
    mov $sp, $fp
    pop $fp
    sw t148, 168($fp)
    mov $r1, 168($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method option
    push $fp
    mov $fp, $sp
    sw t257, 4($fp)
    sw const1354240132, 8($fp)
    mov 8($fp), "\nPlease chose a number:\n"
    mov 4($fp), 8($fp)
    sw t257, 12($fp)
    push 12($fp)
    sw t258, 16($fp)
    push 12($fp)
    jal CellularAutomaton.out_string
    mov 16($fp), $r1
    pop null
    sw t259, 20($fp)
    sw const-1469738772, 24($fp)
    mov 24($fp), "\t1: A cross\n"
    mov 20($fp), 24($fp)
    sw t259, 28($fp)
    push 28($fp)
    sw t260, 32($fp)
    push 28($fp)
    jal CellularAutomaton.out_string
    mov 32($fp), $r1
    pop null
    sw t261, 36($fp)
    sw const931939266, 40($fp)
    mov 40($fp), "\t2: A slash from the upper left to lower right\n"
    mov 36($fp), 40($fp)
    sw t261, 44($fp)
    push 44($fp)
    sw t262, 48($fp)
    push 44($fp)
    jal CellularAutomaton.out_string
    mov 48($fp), $r1
    pop null
    sw t263, 52($fp)
    sw const93753259, 56($fp)
    mov 56($fp), "\t3: A slash from the upper right to lower left\n"
    mov 52($fp), 56($fp)
    sw t263, 60($fp)
    push 60($fp)
    sw t264, 64($fp)
    push 60($fp)
    jal CellularAutomaton.out_string
    mov 64($fp), $r1
    pop null
    sw t265, 68($fp)
    sw const1200062091, 72($fp)
    mov 72($fp), "\t4: An X\n"
    mov 68($fp), 72($fp)
    sw t265, 76($fp)
    push 76($fp)
    sw t266, 80($fp)
    push 76($fp)
    jal CellularAutomaton.out_string
    mov 80($fp), $r1
    pop null
    sw t267, 84($fp)
    sw const1337686918, 88($fp)
    mov 88($fp), "\t5: A greater than sign \n"
    mov 84($fp), 88($fp)
    sw t267, 92($fp)
    push 92($fp)
    sw t268, 96($fp)
    push 92($fp)
    jal CellularAutomaton.out_string
    mov 96($fp), $r1
    pop null
    sw t269, 100($fp)
    sw const420756954, 104($fp)
    mov 104($fp), "\t6: A less than sign\n"
    mov 100($fp), 104($fp)
    sw t269, 108($fp)
    push 108($fp)
    sw t270, 112($fp)
    push 108($fp)
    jal CellularAutomaton.out_string
    mov 112($fp), $r1
    pop null
    sw t271, 116($fp)
    sw const90302716, 120($fp)
    mov 120($fp), "\t7: Two greater than signs\n"
    mov 116($fp), 120($fp)
    sw t271, 124($fp)
    push 124($fp)
    sw t272, 128($fp)
    push 124($fp)
    jal CellularAutomaton.out_string
    mov 128($fp), $r1
    pop null
    sw t273, 132($fp)
    sw const-1220812438, 136($fp)
    mov 136($fp), "\t8: Two less than signs\n"
    mov 132($fp), 136($fp)
    sw t273, 140($fp)
    push 140($fp)
    sw t274, 144($fp)
    push 140($fp)
    jal CellularAutomaton.out_string
    mov 144($fp), $r1
    pop null
    sw t275, 148($fp)
    sw const2138517052, 152($fp)
    mov 152($fp), "\t9: A 'V'\n"
    mov 148($fp), 152($fp)
    sw t275, 156($fp)
    push 156($fp)
    sw t276, 160($fp)
    push 156($fp)
    jal CellularAutomaton.out_string
    mov 160($fp), $r1
    pop null
    sw t277, 164($fp)
    sw const1780469788, 168($fp)
    mov 168($fp), "\t10: An inverse 'V'\n"
    mov 164($fp), 168($fp)
    sw t277, 172($fp)
    push 172($fp)
    sw t278, 176($fp)
    push 172($fp)
    jal CellularAutomaton.out_string
    mov 176($fp), $r1
    pop null
    sw t279, 180($fp)
    sw const-12672624, 184($fp)
    mov 184($fp), "\t11: Numbers 9 and 10 combined\n"
    mov 180($fp), 184($fp)
    sw t279, 188($fp)
    push 188($fp)
    sw t280, 192($fp)
    push 188($fp)
    jal CellularAutomaton.out_string
    mov 192($fp), $r1
    pop null
    sw t281, 196($fp)
    sw const-1017073607, 200($fp)
    mov 200($fp), "\t12: A full grid\n"
    mov 196($fp), 200($fp)
    sw t281, 204($fp)
    push 204($fp)
    sw t282, 208($fp)
    push 204($fp)
    jal CellularAutomaton.out_string
    mov 208($fp), $r1
    pop null
    sw t283, 212($fp)
    sw const1982655895, 216($fp)
    mov 216($fp), "\t13: A 'T'\n"
    mov 212($fp), 216($fp)
    sw t283, 220($fp)
    push 220($fp)
    sw t284, 224($fp)
    push 220($fp)
    jal CellularAutomaton.out_string
    mov 224($fp), $r1
    pop null
    sw t285, 228($fp)
    sw const-1608612303, 232($fp)
    mov 232($fp), "\t14: A plus '+'\n"
    mov 228($fp), 232($fp)
    sw t285, 236($fp)
    push 236($fp)
    sw t286, 240($fp)
    push 236($fp)
    jal CellularAutomaton.out_string
    mov 240($fp), $r1
    pop null
    sw t287, 244($fp)
    sw const-1608476260, 248($fp)
    mov 248($fp), "\t15: A 'W'\n"
    mov 244($fp), 248($fp)
    sw t287, 252($fp)
    push 252($fp)
    sw t288, 256($fp)
    push 252($fp)
    jal CellularAutomaton.out_string
    mov 256($fp), $r1
    pop null
    sw t289, 260($fp)
    sw const1342888413, 264($fp)
    mov 264($fp), "\t16: An 'M'\n"
    mov 260($fp), 264($fp)
    sw t289, 268($fp)
    push 268($fp)
    sw t290, 272($fp)
    push 268($fp)
    jal CellularAutomaton.out_string
    mov 272($fp), $r1
    pop null
    sw t291, 276($fp)
    sw const1464582964, 280($fp)
    mov 280($fp), "\t17: An 'E'\n"
    mov 276($fp), 280($fp)
    sw t291, 284($fp)
    push 284($fp)
    sw t292, 288($fp)
    push 284($fp)
    jal CellularAutomaton.out_string
    mov 288($fp), $r1
    pop null
    sw t293, 292($fp)
    sw const1557357499, 296($fp)
    mov 296($fp), "\t18: A '3'\n"
    mov 292($fp), 296($fp)
    sw t293, 300($fp)
    push 300($fp)
    sw t294, 304($fp)
    push 300($fp)
    jal CellularAutomaton.out_string
    mov 304($fp), $r1
    pop null
    sw t295, 308($fp)
    sw const1731983612, 312($fp)
    mov 312($fp), "\t19: An 'O'\n"
    mov 308($fp), 312($fp)
    sw t295, 316($fp)
    push 316($fp)
    sw t296, 320($fp)
    push 316($fp)
    jal CellularAutomaton.out_string
    mov 320($fp), $r1
    pop null
    sw t297, 324($fp)
    sw const255595151, 328($fp)
    mov 328($fp), "\t20: An '8'\n"
    mov 324($fp), 328($fp)
    sw t297, 332($fp)
    push 332($fp)
    sw t298, 336($fp)
    push 332($fp)
    jal CellularAutomaton.out_string
    mov 336($fp), $r1
    pop null
    sw t299, 340($fp)
    sw const409612937, 344($fp)
    mov 344($fp), "\t21: An 'S'\n"
    mov 340($fp), 344($fp)
    sw t299, 348($fp)
    push 348($fp)
    sw t300, 352($fp)
    push 348($fp)
    jal CellularAutomaton.out_string
    mov 352($fp), $r1
    pop null
    sw t301, 356($fp)
    sw const1508114007, 360($fp)
    mov 360($fp), "Your choice => "
    mov 356($fp), 360($fp)
    sw t301, 364($fp)
    push 364($fp)
    sw t302, 368($fp)
    push 364($fp)
    jal CellularAutomaton.out_string
    mov 368($fp), $r1
    pop null
    sw t303, 372($fp)
    jal CellularAutomaton.in_int
    mov 372($fp), $r1
    sw t303, 376($fp)
    mov num, 376($fp)
    sw t304, 380($fp)
    sw const1104750, 384($fp)
    mov 384($fp), "\n"
    mov 380($fp), 384($fp)
    sw t304, 388($fp)
    push 388($fp)
    sw t305, 392($fp)
    push 388($fp)
    jal CellularAutomaton.out_string
    mov 392($fp), $r1
    pop null
    sw t306, 396($fp)
    sw const49, 400($fp)
    mov 400($fp), 1
    mov 396($fp), 400($fp)
    sw t307, 404($fp)
    sw const49, 408($fp)
    mov 408($fp), 1
    cmp null, num, 408($fp)
    mov 404($fp), 0
    beq null, Lfc822ded6e5f45fe9c5e8df3e33aeda5
    j Ldfd331a2e6ce4dd69defc65858552149
    Lfc822ded6e5f45fe9c5e8df3e33aeda5:
    mov 404($fp), 1
    Ldfd331a2e6ce4dd69defc65858552149:
    sw t307, 412($fp)
    bne 412($fp), L99
    j L100
    L99:
    sw t308, 416($fp)
    sw const482787648, 420($fp)
    mov 420($fp), " XX  XXXX XXXX  XX  "
    mov 416($fp), 420($fp)
    sw t309, 424($fp)
    sw const482787648, 428($fp)
    mov 428($fp), " XX  XXXX XXXX  XX  "
    mov 424($fp), 428($fp)
    j L101
    L100:
    sw t310, 432($fp)
    sw const50, 436($fp)
    mov 436($fp), 2
    mov 432($fp), 436($fp)
    sw t311, 440($fp)
    sw const50, 444($fp)
    mov 444($fp), 2
    cmp null, num, 444($fp)
    mov 440($fp), 0
    beq null, Lfb7f9dd615774572a5e2e80f06d1dfa4
    j L3d37acbb561740e6be48ae3156376d41
    Lfb7f9dd615774572a5e2e80f06d1dfa4:
    mov 440($fp), 1
    L3d37acbb561740e6be48ae3156376d41:
    sw t311, 448($fp)
    bne 448($fp), L102
    j L103
    L102:
    sw t312, 452($fp)
    sw const1847915404, 456($fp)
    mov 456($fp), "    X   X   X   X   X    "
    mov 452($fp), 456($fp)
    sw t313, 460($fp)
    sw const1847915404, 464($fp)
    mov 464($fp), "    X   X   X   X   X    "
    mov 460($fp), 464($fp)
    j L104
    L103:
    sw t314, 468($fp)
    sw const51, 472($fp)
    mov 472($fp), 3
    mov 468($fp), 472($fp)
    sw t315, 476($fp)
    sw const51, 480($fp)
    mov 480($fp), 3
    cmp null, num, 480($fp)
    mov 476($fp), 0
    beq null, Lfaa25750add24b1d866077df402a1485
    j Lfefa1c15a01f49f6846bad156530a4ee
    Lfaa25750add24b1d866077df402a1485:
    mov 476($fp), 1
    Lfefa1c15a01f49f6846bad156530a4ee:
    sw t315, 484($fp)
    bne 484($fp), L105
    j L106
    L105:
    sw t316, 488($fp)
    sw const-41061492, 492($fp)
    mov 492($fp), "X     X     X     X     X"
    mov 488($fp), 492($fp)
    sw t317, 496($fp)
    sw const-41061492, 500($fp)
    mov 500($fp), "X     X     X     X     X"
    mov 496($fp), 500($fp)
    j L107
    L106:
    sw t318, 504($fp)
    sw const52, 508($fp)
    mov 508($fp), 4
    mov 504($fp), 508($fp)
    sw t319, 512($fp)
    sw const52, 516($fp)
    mov 516($fp), 4
    cmp null, num, 516($fp)
    mov 512($fp), 0
    beq null, Ldc11af42e4d5489ca80eac8e25f1a6d1
    j L9f8c169b3af54ab69fb6af9881693269
    Ldc11af42e4d5489ca80eac8e25f1a6d1:
    mov 512($fp), 1
    L9f8c169b3af54ab69fb6af9881693269:
    sw t319, 520($fp)
    bne 520($fp), L108
    j L109
    L108:
    sw t320, 524($fp)
    sw const978837164, 528($fp)
    mov 528($fp), "X   X X X   X   X X X   X"
    mov 524($fp), 528($fp)
    sw t321, 532($fp)
    sw const978837164, 536($fp)
    mov 536($fp), "X   X X X   X   X X X   X"
    mov 532($fp), 536($fp)
    j L110
    L109:
    sw t322, 540($fp)
    sw const53, 544($fp)
    mov 544($fp), 5
    mov 540($fp), 544($fp)
    sw t323, 548($fp)
    sw const53, 552($fp)
    mov 552($fp), 5
    cmp null, num, 552($fp)
    mov 548($fp), 0
    beq null, L7ed042e12f6040baad56c4a39702fe36
    j Lb103836f9b8a4fc39eed070e5f0d6485
    L7ed042e12f6040baad56c4a39702fe36:
    mov 548($fp), 1
    Lb103836f9b8a4fc39eed070e5f0d6485:
    sw t323, 556($fp)
    bne 556($fp), L111
    j L112
    L111:
    sw t324, 560($fp)
    sw const334216588, 564($fp)
    mov 564($fp), "X     X     X   X   X    "
    mov 560($fp), 564($fp)
    sw t325, 568($fp)
    sw const334216588, 572($fp)
    mov 572($fp), "X     X     X   X   X    "
    mov 568($fp), 572($fp)
    j L113
    L112:
    sw t326, 576($fp)
    sw const54, 580($fp)
    mov 580($fp), 6
    mov 576($fp), 580($fp)
    sw t327, 584($fp)
    sw const54, 588($fp)
    mov 588($fp), 6
    cmp null, num, 588($fp)
    mov 584($fp), 0
    beq null, L2701962af3ae45ee82288999db17d61f
    j Lb55322b43987472f8ed966b3ed054681
    L2701962af3ae45ee82288999db17d61f:
    mov 584($fp), 1
    Lb55322b43987472f8ed966b3ed054681:
    sw t327, 592($fp)
    bne 592($fp), L114
    j L115
    L114:
    sw t328, 596($fp)
    sw const1472637324, 600($fp)
    mov 600($fp), "    X   X   X     X     X"
    mov 596($fp), 600($fp)
    sw t329, 604($fp)
    sw const1472637324, 608($fp)
    mov 608($fp), "    X   X   X     X     X"
    mov 604($fp), 608($fp)
    j L116
    L115:
    sw t330, 612($fp)
    sw const55, 616($fp)
    mov 616($fp), 7
    mov 612($fp), 616($fp)
    sw t331, 620($fp)
    sw const55, 624($fp)
    mov 624($fp), 7
    cmp null, num, 624($fp)
    mov 620($fp), 0
    beq null, Ld6154e735bb043bdb9f2732ebcb71ac6
    j L97193fb0adf142c2bd5fa5fa0ba787ab
    Ld6154e735bb043bdb9f2732ebcb71ac6:
    mov 620($fp), 1
    L97193fb0adf142c2bd5fa5fa0ba787ab:
    sw t331, 628($fp)
    bne 628($fp), L117
    j L118
    L117:
    sw t332, 632($fp)
    sw const352854592, 636($fp)
    mov 636($fp), "X  X  X  XX  X      "
    mov 632($fp), 636($fp)
    sw t333, 640($fp)
    sw const352854592, 644($fp)
    mov 644($fp), "X  X  X  XX  X      "
    mov 640($fp), 644($fp)
    j L119
    L118:
    sw t334, 648($fp)
    sw const56, 652($fp)
    mov 652($fp), 8
    mov 648($fp), 652($fp)
    sw t335, 656($fp)
    sw const56, 660($fp)
    mov 660($fp), 8
    cmp null, num, 660($fp)
    mov 656($fp), 0
    beq null, Lbed72a8244884095bbe330fc9078c7ff
    j Lae14ce0189d64f3d9f0c7cfd07605528
    Lbed72a8244884095bbe330fc9078c7ff:
    mov 656($fp), 1
    Lae14ce0189d64f3d9f0c7cfd07605528:
    sw t335, 664($fp)
    bne 664($fp), L120
    j L121
    L120:
    sw t336, 668($fp)
    sw const-1995194304, 672($fp)
    mov 672($fp), " X  XX  X  X  X     "
    mov 668($fp), 672($fp)
    sw t337, 676($fp)
    sw const-1995194304, 680($fp)
    mov 680($fp), " X  XX  X  X  X     "
    mov 676($fp), 680($fp)
    j L122
    L121:
    sw t338, 684($fp)
    sw const57, 688($fp)
    mov 688($fp), 9
    mov 684($fp), 688($fp)
    sw t339, 692($fp)
    sw const57, 696($fp)
    mov 696($fp), 9
    cmp null, num, 696($fp)
    mov 692($fp), 0
    beq null, L41d6071b192b4e06b5ecc9ef384fc9cd
    j L3d254537811c4761a7e7cc897e3b30a4
    L41d6071b192b4e06b5ecc9ef384fc9cd:
    mov 692($fp), 1
    L3d254537811c4761a7e7cc897e3b30a4:
    sw t339, 700($fp)
    bne 700($fp), L123
    j L124
    L123:
    sw t340, 704($fp)
    sw const-698067444, 708($fp)
    mov 708($fp), "X   X X X   X  "
    mov 704($fp), 708($fp)
    sw t341, 712($fp)
    sw const-698067444, 716($fp)
    mov 716($fp), "X   X X X   X  "
    mov 712($fp), 716($fp)
    j L125
    L124:
    sw t342, 720($fp)
    sw const1567, 724($fp)
    mov 724($fp), 10
    mov 720($fp), 724($fp)
    sw t343, 728($fp)
    sw const1567, 732($fp)
    mov 732($fp), 10
    cmp null, num, 732($fp)
    mov 728($fp), 0
    beq null, Lc3e9e423b95d41428463358f993bcbaa
    j Ld554dd88950548d58acb865ad8f6e9e0
    Lc3e9e423b95d41428463358f993bcbaa:
    mov 728($fp), 1
    Ld554dd88950548d58acb865ad8f6e9e0:
    sw t343, 736($fp)
    bne 736($fp), L126
    j L127
    L126:
    sw t344, 740($fp)
    sw const-1751535604, 744($fp)
    mov 744($fp), "  X   X X X   X"
    mov 740($fp), 744($fp)
    sw t345, 748($fp)
    sw const-1751535604, 752($fp)
    mov 752($fp), "  X   X X X   X"
    mov 748($fp), 752($fp)
    j L128
    L127:
    sw t346, 756($fp)
    sw const1568, 760($fp)
    mov 760($fp), 11
    mov 756($fp), 760($fp)
    sw t347, 764($fp)
    sw const1568, 768($fp)
    mov 768($fp), 11
    cmp null, num, 768($fp)
    mov 764($fp), 0
    beq null, L772d4e5d7e4b421c86a654a90292c140
    j La3056149e80847308986dc096d91f8c2
    L772d4e5d7e4b421c86a654a90292c140:
    mov 764($fp), 1
    La3056149e80847308986dc096d91f8c2:
    sw t347, 772($fp)
    bne 772($fp), L129
    j L130
    L129:
    sw t348, 776($fp)
    sw const-1636312476, 780($fp)
    mov 780($fp), "X X X X X X X X"
    mov 776($fp), 780($fp)
    sw t349, 784($fp)
    sw const-1636312476, 788($fp)
    mov 788($fp), "X X X X X X X X"
    mov 784($fp), 788($fp)
    j L131
    L130:
    sw t350, 792($fp)
    sw const1569, 796($fp)
    mov 796($fp), 12
    mov 792($fp), 796($fp)
    sw t351, 800($fp)
    sw const1569, 804($fp)
    mov 804($fp), 12
    cmp null, num, 804($fp)
    mov 800($fp), 0
    beq null, L34bb8905653044888d0390ce1b2bade8
    j L836cc1eeaa0742e3adf712c06ee04309
    L34bb8905653044888d0390ce1b2bade8:
    mov 800($fp), 1
    L836cc1eeaa0742e3adf712c06ee04309:
    sw t351, 808($fp)
    bne 808($fp), L132
    j L133
    L132:
    sw t352, 812($fp)
    sw const1442203756, 816($fp)
    mov 816($fp), "XXXXXXXXXXXXXXXXXXXXXXXXX"
    mov 812($fp), 816($fp)
    sw t353, 820($fp)
    sw const1442203756, 824($fp)
    mov 824($fp), "XXXXXXXXXXXXXXXXXXXXXXXXX"
    mov 820($fp), 824($fp)
    j L134
    L133:
    sw t354, 828($fp)
    sw const1570, 832($fp)
    mov 832($fp), 13
    mov 828($fp), 832($fp)
    sw t355, 836($fp)
    sw const1570, 840($fp)
    mov 840($fp), 13
    cmp null, num, 840($fp)
    mov 836($fp), 0
    beq null, Ld1e1c4f739e04fa7bb6e948ca8635000
    j L3066714000984b8db396f8f468272cf2
    Ld1e1c4f739e04fa7bb6e948ca8635000:
    mov 836($fp), 1
    L3066714000984b8db396f8f468272cf2:
    sw t355, 844($fp)
    bne 844($fp), L135
    j L136
    L135:
    sw t356, 848($fp)
    sw const-1203877780, 852($fp)
    mov 852($fp), "XXXXX  X    X    X    X  "
    mov 848($fp), 852($fp)
    sw t357, 856($fp)
    sw const-1203877780, 860($fp)
    mov 860($fp), "XXXXX  X    X    X    X  "
    mov 856($fp), 860($fp)
    j L137
    L136:
    sw t358, 864($fp)
    sw const1571, 868($fp)
    mov 868($fp), 14
    mov 864($fp), 868($fp)
    sw t359, 872($fp)
    sw const1571, 876($fp)
    mov 876($fp), 14
    cmp null, num, 876($fp)
    mov 872($fp), 0
    beq null, Lab9af73d1aea43e3a4d49fcf2859be71
    j L2fa83f42399b41c4b3c5d03a67891952
    Lab9af73d1aea43e3a4d49fcf2859be71:
    mov 872($fp), 1
    L2fa83f42399b41c4b3c5d03a67891952:
    sw t359, 880($fp)
    bne 880($fp), L138
    j L139
    L138:
    sw t360, 884($fp)
    sw const-1720301460, 888($fp)
    mov 888($fp), "  X    X  XXXXX  X    X  "
    mov 884($fp), 888($fp)
    sw t361, 892($fp)
    sw const-1720301460, 896($fp)
    mov 896($fp), "  X    X  XXXXX  X    X  "
    mov 892($fp), 896($fp)
    j L140
    L139:
    sw t362, 900($fp)
    sw const1572, 904($fp)
    mov 904($fp), 15
    mov 900($fp), 904($fp)
    sw t363, 908($fp)
    sw const1572, 912($fp)
    mov 912($fp), 15
    cmp null, num, 912($fp)
    mov 908($fp), 0
    beq null, L3b99795f169247baaa9ad6b3aaee6e6b
    j L7ddd22f51cfe45dca0ae58be4bd7ba49
    L3b99795f169247baaa9ad6b3aaee6e6b:
    mov 908($fp), 1
    L7ddd22f51cfe45dca0ae58be4bd7ba49:
    sw t363, 916($fp)
    bne 916($fp), L141
    j L142
    L141:
    sw t364, 920($fp)
    sw const726843420, 924($fp)
    mov 924($fp), "X     X X X X   X X  "
    mov 920($fp), 924($fp)
    sw t365, 928($fp)
    sw const726843420, 932($fp)
    mov 932($fp), "X     X X X X   X X  "
    mov 928($fp), 932($fp)
    j L143
    L142:
    sw t366, 936($fp)
    sw const1573, 940($fp)
    mov 940($fp), 16
    mov 936($fp), 940($fp)
    sw t367, 944($fp)
    sw const1573, 948($fp)
    mov 948($fp), 16
    cmp null, num, 948($fp)
    mov 944($fp), 0
    beq null, L0c5b9627c18340479d42f29852f6cb83
    j L1333663bb9834969b7e3da92180fe662
    L0c5b9627c18340479d42f29852f6cb83:
    mov 944($fp), 1
    L1333663bb9834969b7e3da92180fe662:
    sw t367, 952($fp)
    bne 952($fp), L144
    j L145
    L144:
    sw t368, 956($fp)
    sw const1796390940, 960($fp)
    mov 960($fp), "  X X   X X X X     X"
    mov 956($fp), 960($fp)
    sw t369, 964($fp)
    sw const1796390940, 968($fp)
    mov 968($fp), "  X X   X X X X     X"
    mov 964($fp), 968($fp)
    j L146
    L145:
    sw t370, 972($fp)
    sw const1574, 976($fp)
    mov 976($fp), 17
    mov 972($fp), 976($fp)
    sw t371, 980($fp)
    sw const1574, 984($fp)
    mov 984($fp), 17
    cmp null, num, 984($fp)
    mov 980($fp), 0
    beq null, L55a658ffacf5429988fbc2d93fb5308b
    j L6e0f2f2af1e746909bfcdcf69391bd68
    L55a658ffacf5429988fbc2d93fb5308b:
    mov 980($fp), 1
    L6e0f2f2af1e746909bfcdcf69391bd68:
    sw t371, 988($fp)
    bne 988($fp), L147
    j L148
    L147:
    sw t372, 992($fp)
    sw const-1306121696, 996($fp)
    mov 996($fp), "XXXXX   X   XXXXX   X   XXXX"
    mov 992($fp), 996($fp)
    sw t373, 1000($fp)
    sw const-1306121696, 1004($fp)
    mov 1004($fp), "XXXXX   X   XXXXX   X   XXXX"
    mov 1000($fp), 1004($fp)
    j L149
    L148:
    sw t374, 1008($fp)
    sw const1575, 1012($fp)
    mov 1012($fp), 18
    mov 1008($fp), 1012($fp)
    sw t375, 1016($fp)
    sw const1575, 1020($fp)
    mov 1020($fp), 18
    cmp null, num, 1020($fp)
    mov 1016($fp), 0
    beq null, L89fd717401124bc2ba5e47b5cf1afc1f
    j L7c795c7232a540e29fe97eb00098de57
    L89fd717401124bc2ba5e47b5cf1afc1f:
    mov 1016($fp), 1
    L7c795c7232a540e29fe97eb00098de57:
    sw t375, 1024($fp)
    bne 1024($fp), L150
    j L151
    L150:
    sw t376, 1028($fp)
    sw const-634852600, 1032($fp)
    mov 1032($fp), "XXX    X   X  X    X   XXXX "
    mov 1028($fp), 1032($fp)
    sw t377, 1036($fp)
    sw const-634852600, 1040($fp)
    mov 1040($fp), "XXX    X   X  X    X   XXXX "
    mov 1036($fp), 1040($fp)
    j L152
    L151:
    sw t378, 1044($fp)
    sw const1576, 1048($fp)
    mov 1048($fp), 19
    mov 1044($fp), 1048($fp)
    sw t379, 1052($fp)
    sw const1576, 1056($fp)
    mov 1056($fp), 19
    cmp null, num, 1056($fp)
    mov 1052($fp), 0
    beq null, Laba92b8e354846a2b98e5de8d1d35f66
    j L6b0032cc748942b4a15d7f33bfe54b84
    Laba92b8e354846a2b98e5de8d1d35f66:
    mov 1052($fp), 1
    L6b0032cc748942b4a15d7f33bfe54b84:
    sw t379, 1060($fp)
    bne 1060($fp), L153
    j L154
    L153:
    sw t380, 1064($fp)
    sw const-1954296768, 1068($fp)
    mov 1068($fp), " XX X  XX  X XX "
    mov 1064($fp), 1068($fp)
    sw t381, 1072($fp)
    sw const-1954296768, 1076($fp)
    mov 1076($fp), " XX X  XX  X XX "
    mov 1072($fp), 1076($fp)
    j L155
    L154:
    sw t382, 1080($fp)
    sw const1598, 1084($fp)
    mov 1084($fp), 20
    mov 1080($fp), 1084($fp)
    sw t383, 1088($fp)
    sw const1598, 1092($fp)
    mov 1092($fp), 20
    cmp null, num, 1092($fp)
    mov 1088($fp), 0
    beq null, L26f80379c472423c9ed670474d5d7eee
    j La3eac740d7fc4629a89dcfff177a1fe9
    L26f80379c472423c9ed670474d5d7eee:
    mov 1088($fp), 1
    La3eac740d7fc4629a89dcfff177a1fe9:
    sw t383, 1096($fp)
    bne 1096($fp), L156
    j L157
    L156:
    sw t384, 1100($fp)
    sw const1831507008, 1104($fp)
    mov 1104($fp), " XX X  XX  X XX X  XX  X XX "
    mov 1100($fp), 1104($fp)
    sw t385, 1108($fp)
    sw const1831507008, 1112($fp)
    mov 1112($fp), " XX X  XX  X XX X  XX  X XX "
    mov 1108($fp), 1112($fp)
    j L158
    L157:
    sw t386, 1116($fp)
    sw const1599, 1120($fp)
    mov 1120($fp), 21
    mov 1116($fp), 1120($fp)
    sw t387, 1124($fp)
    sw const1599, 1128($fp)
    mov 1128($fp), 21
    cmp null, num, 1128($fp)
    mov 1124($fp), 0
    beq null, L49787711f5964fbfb6d5c0ac496b5e4f
    j L3b628e744ace4e64b6c5249bb844e75c
    L49787711f5964fbfb6d5c0ac496b5e4f:
    mov 1124($fp), 1
    L3b628e744ace4e64b6c5249bb844e75c:
    sw t387, 1132($fp)
    bne 1132($fp), L159
    j L160
    L159:
    sw t388, 1136($fp)
    sw const-822220480, 1140($fp)
    mov 1140($fp), " XXXX   X    XX    X   XXXX "
    mov 1136($fp), 1140($fp)
    sw t389, 1144($fp)
    sw const-822220480, 1148($fp)
    mov 1148($fp), " XXXX   X    XX    X   XXXX "
    mov 1144($fp), 1148($fp)
    j L161
    L160:
    sw t390, 1152($fp)
    sw const-925471324, 1156($fp)
    mov 1156($fp), "                         "
    mov 1152($fp), 1156($fp)
    sw t389, 1160($fp)
    sw const-925471324, 1164($fp)
    mov 1164($fp), "                         "
    mov 1160($fp), 1164($fp)
    L161:
    sw t385, 1168($fp)
    sw const-925471324, 1172($fp)
    mov 1172($fp), "                         "
    mov 1168($fp), 1172($fp)
    L158:
    sw t381, 1176($fp)
    sw const1831507008, 1180($fp)
    mov 1180($fp), " XX X  XX  X XX X  XX  X XX "
    mov 1176($fp), 1180($fp)
    L155:
    sw t377, 1184($fp)
    sw const-1954296768, 1188($fp)
    mov 1188($fp), " XX X  XX  X XX "
    mov 1184($fp), 1188($fp)
    L152:
    sw t373, 1192($fp)
    sw const-634852600, 1196($fp)
    mov 1196($fp), "XXX    X   X  X    X   XXXX "
    mov 1192($fp), 1196($fp)
    L149:
    sw t369, 1200($fp)
    sw const-1306121696, 1204($fp)
    mov 1204($fp), "XXXXX   X   XXXXX   X   XXXX"
    mov 1200($fp), 1204($fp)
    L146:
    sw t365, 1208($fp)
    sw const1796390940, 1212($fp)
    mov 1212($fp), "  X X   X X X X     X"
    mov 1208($fp), 1212($fp)
    L143:
    sw t361, 1216($fp)
    sw const726843420, 1220($fp)
    mov 1220($fp), "X     X X X X   X X  "
    mov 1216($fp), 1220($fp)
    L140:
    sw t357, 1224($fp)
    sw const-1720301460, 1228($fp)
    mov 1228($fp), "  X    X  XXXXX  X    X  "
    mov 1224($fp), 1228($fp)
    L137:
    sw t353, 1232($fp)
    sw const-1203877780, 1236($fp)
    mov 1236($fp), "XXXXX  X    X    X    X  "
    mov 1232($fp), 1236($fp)
    L134:
    sw t349, 1240($fp)
    sw const1442203756, 1244($fp)
    mov 1244($fp), "XXXXXXXXXXXXXXXXXXXXXXXXX"
    mov 1240($fp), 1244($fp)
    L131:
    sw t345, 1248($fp)
    sw const-1636312476, 1252($fp)
    mov 1252($fp), "X X X X X X X X"
    mov 1248($fp), 1252($fp)
    L128:
    sw t341, 1256($fp)
    sw const-1751535604, 1260($fp)
    mov 1260($fp), "  X   X X X   X"
    mov 1256($fp), 1260($fp)
    L125:
    sw t337, 1264($fp)
    sw const-698067444, 1268($fp)
    mov 1268($fp), "X   X X X   X  "
    mov 1264($fp), 1268($fp)
    L122:
    sw t333, 1272($fp)
    sw const-1995194304, 1276($fp)
    mov 1276($fp), " X  XX  X  X  X     "
    mov 1272($fp), 1276($fp)
    L119:
    sw t329, 1280($fp)
    sw const352854592, 1284($fp)
    mov 1284($fp), "X  X  X  XX  X      "
    mov 1280($fp), 1284($fp)
    L116:
    sw t325, 1288($fp)
    sw const1472637324, 1292($fp)
    mov 1292($fp), "    X   X   X     X     X"
    mov 1288($fp), 1292($fp)
    L113:
    sw t321, 1296($fp)
    sw const334216588, 1300($fp)
    mov 1300($fp), "X     X     X   X   X    "
    mov 1296($fp), 1300($fp)
    L110:
    sw t317, 1304($fp)
    sw const978837164, 1308($fp)
    mov 1308($fp), "X   X X X   X   X X X   X"
    mov 1304($fp), 1308($fp)
    L107:
    sw t313, 1312($fp)
    sw const-41061492, 1316($fp)
    mov 1316($fp), "X     X     X     X     X"
    mov 1312($fp), 1316($fp)
    L104:
    sw t309, 1320($fp)
    sw const1847915404, 1324($fp)
    mov 1324($fp), "    X   X   X   X   X    "
    mov 1320($fp), 1324($fp)
    L101:
    mov $sp, $fp
    pop $fp
    sw t309, 1328($fp)
    mov $r1, 1328($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method prompt2
    push $fp
    mov $fp, $sp
    sw t403, 4($fp)
    sw const1061723932, 8($fp)
    mov 8($fp), "\n\n"
    mov 4($fp), 8($fp)
    sw t403, 12($fp)
    push 12($fp)
    sw t404, 16($fp)
    push 12($fp)
    jal CellularAutomaton.out_string
    mov 16($fp), $r1
    pop null
    sw t405, 20($fp)
    sw const534714131, 24($fp)
    mov 24($fp), "Would you like to choose a background pattern? \n"
    mov 20($fp), 24($fp)
    sw t405, 28($fp)
    push 28($fp)
    sw t406, 32($fp)
    push 28($fp)
    jal CellularAutomaton.out_string
    mov 32($fp), $r1
    pop null
    sw t407, 36($fp)
    sw const174419338, 40($fp)
    mov 40($fp), "Please use lowercase y or n for your answer [n]: "
    mov 36($fp), 40($fp)
    sw t407, 44($fp)
    push 44($fp)
    sw t408, 48($fp)
    push 44($fp)
    jal CellularAutomaton.out_string
    mov 48($fp), $r1
    pop null
    sw t409, 52($fp)
    jal CellularAutomaton.in_string
    mov 52($fp), $r1
    sw t409, 56($fp)
    mov ans, 56($fp)
    sw t410, 60($fp)
    sw const36459, 64($fp)
    mov 64($fp), "y"
    mov 60($fp), 64($fp)
    sw t411, 68($fp)
    sw const36459, 72($fp)
    mov 72($fp), "y"
    cmp null, ans, 72($fp)
    mov 68($fp), 0
    beq null, Ld3d35f1dc9a54b458b6543a39cb958b0
    j L6cf00d846f28479aabe1ed58a8b0bcc0
    Ld3d35f1dc9a54b458b6543a39cb958b0:
    mov 68($fp), 1
    L6cf00d846f28479aabe1ed58a8b0bcc0:
    sw t411, 76($fp)
    bne 76($fp), L165
    j L166
    L165:
    sw t412, 80($fp)
    mov 80($fp), true
    sw t413, 84($fp)
    mov 84($fp), true
    j L167
    L166:
    sw t414, 88($fp)
    mov 88($fp), false
    sw t413, 92($fp)
    mov 92($fp), false
    L167:
    mov $sp, $fp
    pop $fp
    sw t413, 96($fp)
    mov $r1, 96($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class Board
.method size_of_board
    push $fp
    mov $fp, $sp
    pop initial
    sw t0, 4($fp)
    jal length
    mov 4($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t0, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method board_init
    push $fp
    mov $fp, $sp
    pop start
    push start
    sw t1, 4($fp)
    push start
    jal Board.size_of_board
    mov 4($fp), $r1
    pop null
    sw t1, 8($fp)
    mov size, 8($fp)
    sw t2, 12($fp)
    sw const1572, 16($fp)
    mov 16($fp), 15
    mov 12($fp), 16($fp)
    sw t3, 20($fp)
    sw const1572, 24($fp)
    mov 24($fp), 15
    cmp null, size, 24($fp)
    mov 20($fp), 0
    beq null, L1695bcca27bb4ddcb3f3128e67595ab8
    j Lb0e608c9b57745c6a839150ce81d6b1a
    L1695bcca27bb4ddcb3f3128e67595ab8:
    mov 20($fp), 1
    Lb0e608c9b57745c6a839150ce81d6b1a:
    sw t3, 28($fp)
    bne 28($fp), L0
    j L1
    L0:
    sw t4, 32($fp)
    sw const51, 36($fp)
    mov 36($fp), 3
    mov 32($fp), 36($fp)
    sw t4, 40($fp)
    sw 40($fp), rows($fp)
    sw t5, 44($fp)
    sw const53, 48($fp)
    mov 48($fp), 5
    mov 44($fp), 48($fp)
    sw t5, 52($fp)
    sw 52($fp), columns($fp)
    sw size, board_size($fp)
    sw t6, 56($fp)
    mov 56($fp), size
    j L2
    L1:
    sw t7, 60($fp)
    sw const1573, 64($fp)
    mov 64($fp), 16
    mov 60($fp), 64($fp)
    sw t8, 68($fp)
    sw const1573, 72($fp)
    mov 72($fp), 16
    cmp null, size, 72($fp)
    mov 68($fp), 0
    beq null, L15df541388d743a19738aed3e5b1a574
    j L566e81cc52814da998a68bdb6bd7e37b
    L15df541388d743a19738aed3e5b1a574:
    mov 68($fp), 1
    L566e81cc52814da998a68bdb6bd7e37b:
    sw t8, 76($fp)
    bne 76($fp), L3
    j L4
    L3:
    sw t9, 80($fp)
    sw const52, 84($fp)
    mov 84($fp), 4
    mov 80($fp), 84($fp)
    sw t9, 88($fp)
    sw 88($fp), rows($fp)
    sw t10, 92($fp)
    sw const52, 96($fp)
    mov 96($fp), 4
    mov 92($fp), 96($fp)
    sw t10, 100($fp)
    sw 100($fp), columns($fp)
    sw size, board_size($fp)
    sw t11, 104($fp)
    mov 104($fp), size
    j L5
    L4:
    sw t12, 108($fp)
    sw const1598, 112($fp)
    mov 112($fp), 20
    mov 108($fp), 112($fp)
    sw t13, 116($fp)
    sw const1598, 120($fp)
    mov 120($fp), 20
    cmp null, size, 120($fp)
    mov 116($fp), 0
    beq null, Ldd96db87c0754f31bd4bd9fa392ea3aa
    j L9cc82617229d4b768cdee24289543515
    Ldd96db87c0754f31bd4bd9fa392ea3aa:
    mov 116($fp), 1
    L9cc82617229d4b768cdee24289543515:
    sw t13, 124($fp)
    bne 124($fp), L6
    j L7
    L6:
    sw t14, 128($fp)
    sw const52, 132($fp)
    mov 132($fp), 4
    mov 128($fp), 132($fp)
    sw t14, 136($fp)
    sw 136($fp), rows($fp)
    sw t15, 140($fp)
    sw const53, 144($fp)
    mov 144($fp), 5
    mov 140($fp), 144($fp)
    sw t15, 148($fp)
    sw 148($fp), columns($fp)
    sw size, board_size($fp)
    sw t16, 152($fp)
    mov 152($fp), size
    j L8
    L7:
    sw t17, 156($fp)
    sw const1599, 160($fp)
    mov 160($fp), 21
    mov 156($fp), 160($fp)
    sw t18, 164($fp)
    sw const1599, 168($fp)
    mov 168($fp), 21
    cmp null, size, 168($fp)
    mov 164($fp), 0
    beq null, L0deb53b882e546838b0a2c06aa0e5a4e
    j Lab115757d71147aba74188a0e8b91912
    L0deb53b882e546838b0a2c06aa0e5a4e:
    mov 164($fp), 1
    Lab115757d71147aba74188a0e8b91912:
    sw t18, 172($fp)
    bne 172($fp), L9
    j L10
    L9:
    sw t19, 176($fp)
    sw const51, 180($fp)
    mov 180($fp), 3
    mov 176($fp), 180($fp)
    sw t19, 184($fp)
    sw 184($fp), rows($fp)
    sw t20, 188($fp)
    sw const55, 192($fp)
    mov 192($fp), 7
    mov 188($fp), 192($fp)
    sw t20, 196($fp)
    sw 196($fp), columns($fp)
    sw size, board_size($fp)
    sw t21, 200($fp)
    mov 200($fp), size
    j L11
    L10:
    sw t22, 204($fp)
    sw const1603, 208($fp)
    mov 208($fp), 25
    mov 204($fp), 208($fp)
    sw t23, 212($fp)
    sw const1603, 216($fp)
    mov 216($fp), 25
    cmp null, size, 216($fp)
    mov 212($fp), 0
    beq null, Ld681947c5d884adbb4add75f3f4e9d42
    j L4de4e1a28d94486a80682af708500a60
    Ld681947c5d884adbb4add75f3f4e9d42:
    mov 212($fp), 1
    L4de4e1a28d94486a80682af708500a60:
    sw t23, 220($fp)
    bne 220($fp), L12
    j L13
    L12:
    sw t24, 224($fp)
    sw const53, 228($fp)
    mov 228($fp), 5
    mov 224($fp), 228($fp)
    sw t24, 232($fp)
    sw 232($fp), rows($fp)
    sw t25, 236($fp)
    sw const53, 240($fp)
    mov 240($fp), 5
    mov 236($fp), 240($fp)
    sw t25, 244($fp)
    sw 244($fp), columns($fp)
    sw size, board_size($fp)
    sw t26, 248($fp)
    mov 248($fp), size
    j L14
    L13:
    sw t27, 252($fp)
    sw const1606, 256($fp)
    mov 256($fp), 28
    mov 252($fp), 256($fp)
    sw t28, 260($fp)
    sw const1606, 264($fp)
    mov 264($fp), 28
    cmp null, size, 264($fp)
    mov 260($fp), 0
    beq null, L2f55fa0f67b541419c7ffea017a01f20
    j Led393a049c4043ec80845a74a1cc688b
    L2f55fa0f67b541419c7ffea017a01f20:
    mov 260($fp), 1
    Led393a049c4043ec80845a74a1cc688b:
    sw t28, 268($fp)
    bne 268($fp), L15
    j L16
    L15:
    sw t29, 272($fp)
    sw const55, 276($fp)
    mov 276($fp), 7
    mov 272($fp), 276($fp)
    sw t29, 280($fp)
    sw 280($fp), rows($fp)
    sw t30, 284($fp)
    sw const52, 288($fp)
    mov 288($fp), 4
    mov 284($fp), 288($fp)
    sw t30, 292($fp)
    sw 292($fp), columns($fp)
    sw size, board_size($fp)
    sw t31, 296($fp)
    mov 296($fp), size
    j L17
    L16:
    sw t32, 300($fp)
    sw const53, 304($fp)
    mov 304($fp), 5
    mov 300($fp), 304($fp)
    sw t32, 308($fp)
    sw 308($fp), rows($fp)
    sw t33, 312($fp)
    sw const53, 316($fp)
    mov 316($fp), 5
    mov 312($fp), 316($fp)
    sw t33, 320($fp)
    sw 320($fp), columns($fp)
    sw size, board_size($fp)
    sw t31, 324($fp)
    mov 324($fp), size
    L17:
    sw t26, 328($fp)
    sw t31, 332($fp)
    mov 328($fp), 332($fp)
    L14:
    sw t21, 336($fp)
    sw t26, 340($fp)
    mov 336($fp), 340($fp)
    L11:
    sw t16, 344($fp)
    sw t21, 348($fp)
    mov 344($fp), 348($fp)
    L8:
    sw t11, 352($fp)
    sw t16, 356($fp)
    mov 352($fp), 356($fp)
    L5:
    sw t6, 360($fp)
    sw t11, 364($fp)
    mov 360($fp), 364($fp)
    L2:
    mov $sp, $fp
    pop $fp
    mov $r1, self
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
    sw t415, 4($fp)
    sw const2062228269, 8($fp)
    mov 8($fp), "Welcome to the Game of Life.\n"
    mov 4($fp), 8($fp)
    sw t415, 12($fp)
    push 12($fp)
    sw t416, 16($fp)
    push 12($fp)
    jal Main.out_string
    mov 16($fp), $r1
    pop null
    sw t417, 20($fp)
    sw const-32201275, 24($fp)
    mov 24($fp), "There are many initial states to choose from. \n"
    mov 20($fp), 24($fp)
    sw t417, 28($fp)
    push 28($fp)
    sw t418, 32($fp)
    push 28($fp)
    jal Main.out_string
    mov 32($fp), $r1
    pop null
    L_preheader_a690a9fc93c3487691af89a457298897:
    sw t420, 36($fp)
    mov 36($fp), true
    mov continue, true
    sw t432, 40($fp)
    mov 40($fp), false
    mov continue, false
    sw t431, 44($fp)
    mov 44($fp), false
    j L168
    L168:
    sw t419, 48($fp)
    jal Main.prompt2
    mov 48($fp), $r1
    sw t419, 52($fp)
    bne 52($fp), L169
    j L170
    L169:
    sw t421, 56($fp)
    jal Main.option
    mov 56($fp), $r1
    sw t421, 60($fp)
    mov choice, 60($fp)
    sw t422, 64($fp)
    jal new CellularAutomaton
    mov 64($fp), $r1
    push choice
    sw t423, 68($fp)
    push choice
    jal init
    mov 68($fp), $r1
    pop null
    sw t423, 72($fp)
    sw 72($fp), cells($fp)
    sw t424, 76($fp)
    lw 76($fp), cells($fp)
    sw t425, 80($fp)
    jal print
    mov 80($fp), $r1
    L_preheader_96b7ae8e84e740539692beff785b3c06:
    j L171
    L171:
    bne continue, L172
    j L173
    L172:
    sw t426, 84($fp)
    jal Main.prompt
    mov 84($fp), $r1
    sw t426, 88($fp)
    bne 88($fp), L174
    j L175
    L174:
    sw t427, 92($fp)
    lw 92($fp), cells($fp)
    sw t428, 96($fp)
    jal evolve
    mov 96($fp), $r1
    sw t429, 100($fp)
    lw 100($fp), cells($fp)
    sw t430, 104($fp)
    jal print
    mov 104($fp), $r1
    sw t431, 108($fp)
    sw t430, 112($fp)
    mov 108($fp), 112($fp)
    j L176
    L175:
    L176:
    j L_preheader_96b7ae8e84e740539692beff785b3c06
    L173:
    j L_preheader_a690a9fc93c3487691af89a457298897
    L170:
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class

