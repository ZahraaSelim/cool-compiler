.class Main
.method main
    push $fp
    mov $fp, $sp
    jal new Object
    mov $r2, $r1
    jal type_name
    mov $r3, $r1
    mov $r5, 4
    mov $r4, $r5
    mov $r7, 1
    mov $r6, $r7
    push $r4
    push $r6
    push $r4
    push $r6
    jal substr
    mov $r8, $r1
    pop null
    push $r8
    push $r8
    jal Main.out_string
    mov $r9, $r1
    pop null
    isvoid $r10, self
    jal type_name
    mov $r11, $r1
    mov $r7, 1
    mov $r12, $r7
    mov $r14, 3
    mov $r13, $r14
    push $r12
    push $r13
    push $r12
    push $r13
    jal substr
    mov $r15, $r1
    pop null
    push $r15
    sw t11, 4($fp)
    push $r15
    jal out_string
    mov 4($fp), $r1
    pop null
    sw t12, 8($fp)
    sw const1104750, 12($fp)
    mov 12($fp), "\n"
    mov 8($fp), 12($fp)
    sw t12, 16($fp)
    push 16($fp)
    sw t13, 20($fp)
    push 16($fp)
    jal Main.out_string
    mov 20($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    sw t13, 24($fp)
    mov $r1, 24($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class

