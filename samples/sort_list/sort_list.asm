.class Nil
.method rev
    push $fp
    mov $fp, $sp
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method print_list
    push $fp
    mov $fp, $sp
    mov $r2, true
    mov $sp, $fp
    pop $fp
    mov $r1, $r2
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method rcons
    push $fp
    mov $fp, $sp
    pop i
    jal new Cons
    mov $r3, $r1
    push i
    push self
    push i
    push self
    jal init
    mov $r4, $r1
    pop null
    mov $sp, $fp
    pop $fp
    mov $r1, $r4
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method insert
    push $fp
    mov $fp, $sp
    pop i
    push i
    push i
    jal Nil.rcons
    mov $r5, $r1
    pop null
    mov $sp, $fp
    pop $fp
    mov $r1, $r5
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method isNil
    push $fp
    mov $fp, $sp
    mov $r6, true
    mov $sp, $fp
    pop $fp
    mov $r1, $r6
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method sort
    push $fp
    mov $fp, $sp
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class Cons
.method cdr
    push $fp
    mov $fp, $sp
    lw $r7, xcdr($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, $r7
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method init
    push $fp
    mov $fp, $sp
    pop hd
    pop tl
    sw hd, xcar($fp)
    sw tl, xcdr($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method rev
    push $fp
    mov $fp, $sp
    lw $r8, xcdr($fp)
    jal rev
    mov $r9, $r1
    lw $r10, xcar($fp)
    push $r10
    push $r10
    jal rcons
    mov $r11, $r1
    pop null
    mov $sp, $fp
    pop $fp
    mov $r1, $r11
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method print_list
    push $fp
    mov $fp, $sp
    lw $r12, xcar($fp)
    push $r12
    push $r12
    jal Cons.out_int
    mov $r13, $r1
    pop null
    mov $r15, "\n"
    mov $r14, $r15
    push $r14
    sw t42, 4($fp)
    push $r14
    jal Cons.out_string
    mov 4($fp), $r1
    pop null
    sw t43, 8($fp)
    lw 8($fp), xcdr($fp)
    sw t44, 12($fp)
    jal print_list
    mov 12($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t44, 16($fp)
    mov $r1, 16($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method car
    push $fp
    mov $fp, $sp
    sw t14, 4($fp)
    lw 4($fp), xcar($fp)
    mov $sp, $fp
    pop $fp
    sw t14, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method rcons
    push $fp
    mov $fp, $sp
    pop i
    sw t34, 4($fp)
    jal new Cons
    mov 4($fp), $r1
    sw t35, 8($fp)
    lw 8($fp), xcar($fp)
    sw t36, 12($fp)
    lw 12($fp), xcdr($fp)
    push i
    sw t37, 16($fp)
    push i
    jal rcons
    mov 16($fp), $r1
    pop null
    sw t35, 20($fp)
    push 20($fp)
    sw t37, 24($fp)
    push 24($fp)
    sw t38, 28($fp)
    push 20($fp)
    push 24($fp)
    jal init
    mov 28($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    sw t38, 32($fp)
    mov $r1, 32($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method insert
    push $fp
    mov $fp, $sp
    pop i
    sw t24, 4($fp)
    lw 4($fp), xcar($fp)
    sw t25, 8($fp)
    sw t24, 12($fp)
    cmp null, i, 12($fp)
    mov 8($fp), 0
    blt null, Lc5ab0b0b0e3a4eb6b4a2e60f9969d4a6
    j L768e74a0621d4ef491edbca71dab98da
    Lc5ab0b0b0e3a4eb6b4a2e60f9969d4a6:
    mov 8($fp), 1
    L768e74a0621d4ef491edbca71dab98da:
    sw t25, 16($fp)
    bne 16($fp), L0
    j L1
    L0:
    sw t26, 20($fp)
    jal new Cons
    mov 20($fp), $r1
    push i
    push self
    sw t27, 24($fp)
    push i
    push self
    jal init
    mov 24($fp), $r1
    pop null
    sw t28, 28($fp)
    sw t27, 32($fp)
    mov 28($fp), 32($fp)
    j L2
    L1:
    sw t29, 36($fp)
    jal new Cons
    mov 36($fp), $r1
    sw t30, 40($fp)
    lw 40($fp), xcar($fp)
    sw t31, 44($fp)
    lw 44($fp), xcdr($fp)
    push i
    sw t32, 48($fp)
    push i
    jal insert
    mov 48($fp), $r1
    pop null
    sw t30, 52($fp)
    push 52($fp)
    sw t32, 56($fp)
    push 56($fp)
    sw t33, 60($fp)
    push 52($fp)
    push 56($fp)
    jal init
    mov 60($fp), $r1
    pop null
    sw t28, 64($fp)
    sw t33, 68($fp)
    mov 64($fp), 68($fp)
    L2:
    mov $sp, $fp
    pop $fp
    sw t28, 72($fp)
    mov $r1, 72($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method isNil
    push $fp
    mov $fp, $sp
    sw t13, 4($fp)
    mov 4($fp), false
    mov $sp, $fp
    pop $fp
    sw t13, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method sort
    push $fp
    mov $fp, $sp
    sw t20, 4($fp)
    lw 4($fp), xcdr($fp)
    sw t21, 8($fp)
    jal sort
    mov 8($fp), $r1
    sw t22, 12($fp)
    lw 12($fp), xcar($fp)
    sw t22, 16($fp)
    push 16($fp)
    sw t23, 20($fp)
    push 16($fp)
    jal insert
    mov 20($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    sw t23, 24($fp)
    mov $r1, 24($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class List
.method cdr
    push $fp
    mov $fp, $sp
    sw t6, 4($fp)
    jal List.abort
    mov 4($fp), $r1
    sw t7, 8($fp)
    jal new List
    mov 8($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t7, 12($fp)
    mov $r1, 12($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method rev
    push $fp
    mov $fp, $sp
    sw t8, 4($fp)
    jal List.cdr
    mov 4($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t8, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method print_list
    push $fp
    mov $fp, $sp
    sw t12, 4($fp)
    jal List.abort
    mov 4($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t12, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method car
    push $fp
    mov $fp, $sp
    sw t4, 4($fp)
    jal List.abort
    mov 4($fp), $r1
    sw t5, 8($fp)
    jal new Int
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
.method rcons
    push $fp
    mov $fp, $sp
    pop i
    sw t11, 4($fp)
    jal List.cdr
    mov 4($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t11, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method insert
    push $fp
    mov $fp, $sp
    pop i
    sw t10, 4($fp)
    jal List.cdr
    mov 4($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t10, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method isNil
    push $fp
    mov $fp, $sp
    sw t0, 4($fp)
    jal List.abort
    mov 4($fp), $r1
    sw t1, 8($fp)
    mov 8($fp), true
    mov $sp, $fp
    pop $fp
    sw t1, 12($fp)
    mov $r1, 12($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method sort
    push $fp
    mov $fp, $sp
    sw t9, 4($fp)
    jal List.cdr
    mov 4($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t9, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method cons
    push $fp
    mov $fp, $sp
    pop hd
    sw t2, 4($fp)
    jal new Cons
    mov 4($fp), $r1
    sw t2, 8($fp)
    mov new_cell, 8($fp)
    push hd
    push self
    sw t3, 12($fp)
    push hd
    push self
    jal init
    mov 12($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    sw t3, 16($fp)
    mov $r1, 16($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class Main
.method iota
    push $fp
    mov $fp, $sp
    pop i
    sw t50, 4($fp)
    jal new Nil
    mov 4($fp), $r1
    sw t50, 8($fp)
    sw 8($fp), l($fp)
    sw t51, 12($fp)
    sw const48, 16($fp)
    mov 16($fp), 0
    mov 12($fp), 16($fp)
    sw const48, 20($fp)
    mov 20($fp), 0
    mov j, 20($fp)
    L_preheader_acc7e4043a784b2999dc4b20f8eef87c:
    sw t56, 24($fp)
    sw const49, 28($fp)
    mov 28($fp), 1
    mov 24($fp), 28($fp)
    j L3
    L3:
    sw t52, 32($fp)
    sw const48, 36($fp)
    mov 36($fp), 0
    cmp null, 36($fp), i
    mov 32($fp), 0
    blt null, Lfcf13059c96c41598b3dcee9ab635b34
    j Lf01eb88c855b4f56872dba09934a7231
    Lfcf13059c96c41598b3dcee9ab635b34:
    mov 32($fp), 1
    Lf01eb88c855b4f56872dba09934a7231:
    sw t52, 40($fp)
    bne 40($fp), L4
    j L5
    L4:
    sw t53, 44($fp)
    jal new Cons
    mov 44($fp), $r1
    sw t54, 48($fp)
    lw 48($fp), l($fp)
    push j
    sw t54, 52($fp)
    push 52($fp)
    sw t55, 56($fp)
    push j
    push 52($fp)
    jal init
    mov 56($fp), $r1
    pop null
    sw t55, 60($fp)
    sw 60($fp), l($fp)
    sw t57, 64($fp)
    sw const49, 68($fp)
    mov 68($fp), 1
    mov 64($fp), 68($fp)
    sw const49, 72($fp)
    mov 72($fp), 1
    mov j, 72($fp)
    j L_preheader_acc7e4043a784b2999dc4b20f8eef87c
    L5:
    sw t58, 76($fp)
    lw 76($fp), l($fp)
    mov $sp, $fp
    pop $fp
    sw t58, 80($fp)
    mov $r1, 80($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method main
    push $fp
    mov $fp, $sp
    sw t59, 4($fp)
    sw const1201911009, 8($fp)
    mov 8($fp), "How many numbers to sort?"
    mov 4($fp), 8($fp)
    sw t59, 12($fp)
    push 12($fp)
    sw t60, 16($fp)
    push 12($fp)
    jal Main.out_string
    mov 16($fp), $r1
    pop null
    sw t61, 20($fp)
    jal Main.in_int
    mov 20($fp), $r1
    sw t61, 24($fp)
    push 24($fp)
    sw t62, 28($fp)
    push 24($fp)
    jal Main.iota
    mov 28($fp), $r1
    pop null
    sw t63, 32($fp)
    jal rev
    mov 32($fp), $r1
    sw t64, 36($fp)
    jal sort
    mov 36($fp), $r1
    sw t65, 40($fp)
    jal print_list
    mov 40($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t65, 44($fp)
    mov $r1, 44($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class

