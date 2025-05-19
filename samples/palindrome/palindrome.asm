.class Main
.method pal
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
    beq null, Lb8736fe632ea4258a9fb23d075c1c96a
    j L992af9d6722a47f38b75865a58c23cd9
    Lb8736fe632ea4258a9fb23d075c1c96a:
    mov $r5, 1
    L992af9d6722a47f38b75865a58c23cd9:
    bne $r5, L0
    j L1
    L0:
    mov $r6, true
    mov $r7, true
    j L2
    L1:
    jal length
    mov $r8, $r1
    mov $r10, 1
    mov $r9, $r10
    mov $r10, 1
    cmp null, $r8, $r10
    mov $r11, 0
    beq null, L1d341f1c482e404485a2f027d12df4cf
    j L17191087d8264f78aa2bbff34b8b04a3
    L1d341f1c482e404485a2f027d12df4cf:
    mov $r11, 1
    L17191087d8264f78aa2bbff34b8b04a3:
    bne $r11, L3
    j L4
    L3:
    mov $r12, true
    mov $r13, true
    j L5
    L4:
    mov $r4, 0
    mov $r14, $r4
    mov $r10, 1
    mov $r15, $r10
    push $r14
    push $r15
    sw t12, 4($fp)
    push $r14
    push $r15
    jal substr
    mov 4($fp), $r1
    pop null
    sw t13, 8($fp)
    jal length
    mov 8($fp), $r1
    sw t14, 12($fp)
    mov $r10, 1
    mov 12($fp), $r10
    sw t15, 16($fp)
    sw t13, 20($fp)
    mov $r10, 1
    sub 16($fp), 20($fp), $r10
    sw t16, 24($fp)
    mov $r10, 1
    mov 24($fp), $r10
    sw t15, 28($fp)
    push 28($fp)
    sw t16, 32($fp)
    push 32($fp)
    sw t17, 36($fp)
    push 28($fp)
    push 32($fp)
    jal substr
    mov 36($fp), $r1
    pop null
    sw t18, 40($fp)
    sw t12, 44($fp)
    sw t17, 48($fp)
    cmp null, 44($fp), 48($fp)
    mov 40($fp), 0
    beq null, L7cc40453104542c3ad286232b57b33da
    j Lcdb12e5529e84f66a85421b1c7572459
    L7cc40453104542c3ad286232b57b33da:
    mov 40($fp), 1
    Lcdb12e5529e84f66a85421b1c7572459:
    sw t18, 52($fp)
    bne 52($fp), L6
    j L7
    L6:
    sw t19, 56($fp)
    mov $r10, 1
    mov 56($fp), $r10
    sw t20, 60($fp)
    jal length
    mov 60($fp), $r1
    sw t21, 64($fp)
    sw const50, 68($fp)
    mov 68($fp), 2
    mov 64($fp), 68($fp)
    sw t22, 72($fp)
    sw t20, 76($fp)
    sw const50, 80($fp)
    mov 80($fp), 2
    sub 72($fp), 76($fp), 80($fp)
    sw t19, 84($fp)
    push 84($fp)
    sw t22, 88($fp)
    push 88($fp)
    sw t23, 92($fp)
    push 84($fp)
    push 88($fp)
    jal substr
    mov 92($fp), $r1
    pop null
    sw t23, 96($fp)
    push 96($fp)
    sw t24, 100($fp)
    push 96($fp)
    jal Main.pal
    mov 100($fp), $r1
    pop null
    sw t25, 104($fp)
    sw t24, 108($fp)
    mov 104($fp), 108($fp)
    j L8
    L7:
    sw t26, 112($fp)
    mov 112($fp), false
    sw t25, 116($fp)
    mov 116($fp), false
    L8:
    mov $r13, false
    L5:
    mov $r7, true
    L2:
    mov $sp, $fp
    pop $fp
    mov $r1, $r7
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method main
    push $fp
    mov $fp, $sp
    sw t27, 4($fp)
    mov $r10, 1
    mov 4($fp), $r10
    sw t28, 8($fp)
    sw t27, 12($fp)
    neg 8($fp), 12($fp)
    sw t28, 16($fp)
    sw 16($fp), i($fp)
    sw t29, 20($fp)
    sw const-1004939530, 24($fp)
    mov 24($fp), "enter a string\n"
    mov 20($fp), 24($fp)
    sw t29, 28($fp)
    push 28($fp)
    sw t30, 32($fp)
    push 28($fp)
    jal Main.out_string
    mov 32($fp), $r1
    pop null
    sw t31, 36($fp)
    jal Main.in_string
    mov 36($fp), $r1
    sw t31, 40($fp)
    push 40($fp)
    sw t32, 44($fp)
    push 40($fp)
    jal Main.pal
    mov 44($fp), $r1
    pop null
    sw t32, 48($fp)
    bne 48($fp), L9
    j L10
    L9:
    sw t33, 52($fp)
    sw const857092522, 56($fp)
    mov 56($fp), "that was a palindrome\n"
    mov 52($fp), 56($fp)
    sw t33, 60($fp)
    push 60($fp)
    sw t34, 64($fp)
    push 60($fp)
    jal Main.out_string
    mov 64($fp), $r1
    pop null
    sw t35, 68($fp)
    sw t34, 72($fp)
    mov 68($fp), 72($fp)
    j L11
    L10:
    sw t36, 76($fp)
    sw const-1818441379, 80($fp)
    mov 80($fp), "that was not a palindrome\n"
    mov 76($fp), 80($fp)
    sw t36, 84($fp)
    push 84($fp)
    sw t37, 88($fp)
    push 84($fp)
    jal Main.out_string
    mov 88($fp), $r1
    pop null
    sw t35, 92($fp)
    sw t37, 96($fp)
    mov 92($fp), 96($fp)
    L11:
    mov $sp, $fp
    pop $fp
    sw t35, 100($fp)
    mov $r1, 100($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class

