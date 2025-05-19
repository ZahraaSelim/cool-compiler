.class SumOp
.method optype
    push $fp
    mov $fp, $sp
    mov $r3, " SumOp "
    mov $r2, $r3
    mov $sp, $fp
    pop $fp
    mov $r1, $r2
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class MulOp
.method optype
    push $fp
    mov $fp, $sp
    mov $r5, " MulOp "
    mov $r4, $r5
    mov $sp, $fp
    pop $fp
    mov $r1, $r4
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method operate
    push $fp
    mov $fp, $sp
    pop a
    pop b
    mul $r6, a, b
    mov $sp, $fp
    pop $fp
    mov $r1, $r6
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class BinOp
.method optype
    push $fp
    mov $fp, $sp
    mov $r8, " BinOp "
    mov $r7, $r8
    mov $sp, $fp
    pop $fp
    mov $r1, $r7
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method operate
    push $fp
    mov $fp, $sp
    pop a
    pop b
    add $r9, a, b
    mov $sp, $fp
    pop $fp
    mov $r1, $r9
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class Main
.method reduce
    push $fp
    mov $fp, $sp
    pop result
    pop op
    pop l
    jal get_head
    mov $r10, $r1
    push result
    push $r10
    push result
    push $r10
    jal operate
    mov $r11, $r1
    pop null
    mov result, $r11
    jal tail_is_empty
    mov $r12, $r1
    mov $r13, true
    cmp null, $r12, true
    mov $r14, 0
    beq null, L1687d41da2be4b59b1e7c00d5a69923c
    j Lbc8364c74bd348a6a85f14806f251036
    L1687d41da2be4b59b1e7c00d5a69923c:
    mov $r14, 1
    Lbc8364c74bd348a6a85f14806f251036:
    bne $r14, L3
    j L4
    L3:
    mov $r15, result
    j L5
    L4:
    sw t27, 4($fp)
    jal get_tail
    mov 4($fp), $r1
    push result
    push op
    sw t27, 8($fp)
    push 8($fp)
    sw t28, 12($fp)
    push result
    push op
    push 8($fp)
    jal Main.reduce
    mov 12($fp), $r1
    pop null
    sw t28, 16($fp)
    mov $r15, 16($fp)
    L5:
    mov $sp, $fp
    pop $fp
    mov $r1, $r15
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method main
    push $fp
    mov $fp, $sp
    sw t29, 4($fp)
    jal new MulOp
    mov 4($fp), $r1
    sw t29, 8($fp)
    mov op, 8($fp)
    sw t30, 12($fp)
    jal new IntList
    mov 12($fp), $r1
    sw t30, 16($fp)
    mov l, 16($fp)
    sw t31, 20($fp)
    jal new IO
    mov 20($fp), $r1
    sw t31, 24($fp)
    mov io, 24($fp)
    sw t32, 28($fp)
    sw const52, 32($fp)
    mov 32($fp), 4
    mov 28($fp), 32($fp)
    sw t32, 36($fp)
    push 36($fp)
    sw t33, 40($fp)
    push 36($fp)
    jal generate
    mov 40($fp), $r1
    pop null
    sw t33, 44($fp)
    mov l, 44($fp)
    sw t34, 48($fp)
    sw const49, 52($fp)
    mov 52($fp), 1
    mov 48($fp), 52($fp)
    sw t34, 56($fp)
    push 56($fp)
    push op
    push l
    sw t35, 60($fp)
    push 56($fp)
    push op
    push l
    jal reduce
    mov 60($fp), $r1
    pop null
    sw t35, 64($fp)
    push 64($fp)
    sw t36, 68($fp)
    push 64($fp)
    jal out_int
    mov 68($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    sw t36, 72($fp)
    mov $r1, 72($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class IntList
.method set_tail
    push $fp
    mov $fp, $sp
    pop t
    sw t, tail($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, t
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method tail_is_empty
    push $fp
    mov $fp, $sp
    sw t5, 4($fp)
    lw 4($fp), tail($fp)
    sw t6, 8($fp)
    lw 8($fp), empty_tail($fp)
    sw t7, 12($fp)
    sw t5, 16($fp)
    sw t6, 20($fp)
    cmp null, 16($fp), 20($fp)
    mov 12($fp), 0
    beq null, Lb4a03c60307a46ccbfa855330b61faa4
    j L6a06ec144f364739adb10a8936cf5684
    Lb4a03c60307a46ccbfa855330b61faa4:
    mov 12($fp), 1
    L6a06ec144f364739adb10a8936cf5684:
    mov $sp, $fp
    pop $fp
    sw t7, 24($fp)
    mov $r1, 24($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method get_head
    push $fp
    mov $fp, $sp
    sw t8, 4($fp)
    lw 4($fp), head($fp)
    mov $sp, $fp
    pop $fp
    sw t8, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method set_head
    push $fp
    mov $fp, $sp
    pop n
    sw n, head($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, n
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method get_tail
    push $fp
    mov $fp, $sp
    sw t9, 4($fp)
    lw 4($fp), tail($fp)
    mov $sp, $fp
    pop $fp
    sw t9, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method generate
    push $fp
    mov $fp, $sp
    pop n
    sw t10, 4($fp)
    jal new IntList
    mov 4($fp), $r1
    sw t10, 8($fp)
    mov l, 8($fp)
    push n
    sw t11, 12($fp)
    push n
    jal set_head
    mov 12($fp), $r1
    pop null
    sw t12, 16($fp)
    sw const49, 20($fp)
    mov 20($fp), 1
    mov 16($fp), 20($fp)
    sw t13, 24($fp)
    sw const49, 28($fp)
    mov 28($fp), 1
    cmp null, n, 28($fp)
    mov 24($fp), 0
    beq null, Lb571aac91bec4c7bbad8ce783d78a98f
    j La8e2c20fd1104f89ab41c676918de3b7
    Lb571aac91bec4c7bbad8ce783d78a98f:
    mov 24($fp), 1
    La8e2c20fd1104f89ab41c676918de3b7:
    sw t13, 32($fp)
    bne 32($fp), L0
    j L1
    L0:
    sw t14, 36($fp)
    lw 36($fp), empty_tail($fp)
    sw t14, 40($fp)
    push 40($fp)
    sw t15, 44($fp)
    push 40($fp)
    jal set_tail
    mov 44($fp), $r1
    pop null
    sw t16, 48($fp)
    sw t15, 52($fp)
    mov 48($fp), 52($fp)
    j L2
    L1:
    sw t17, 56($fp)
    sw const49, 60($fp)
    mov 60($fp), 1
    mov 56($fp), 60($fp)
    sw t18, 64($fp)
    sw const49, 68($fp)
    mov 68($fp), 1
    sub 64($fp), n, 68($fp)
    sw t18, 72($fp)
    push 72($fp)
    sw t19, 76($fp)
    push 72($fp)
    jal IntList.generate
    mov 76($fp), $r1
    pop null
    sw t19, 80($fp)
    push 80($fp)
    sw t20, 84($fp)
    push 80($fp)
    jal set_tail
    mov 84($fp), $r1
    pop null
    sw t16, 88($fp)
    sw t20, 92($fp)
    mov 88($fp), 92($fp)
    L2:
    mov $sp, $fp
    pop $fp
    mov $r1, l
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class

