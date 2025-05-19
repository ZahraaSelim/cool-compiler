.class Bazz
.method doh
    push $fp
    mov $fp, $sp
    lw $r2, h($fp)
    mov i, $r2
    lw $r3, h($fp)
    mov $r5, 1
    mov $r4, $r5
    mov $r5, 1
    add $r6, $r3, $r5
    sw $r6, h($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, i
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method printh
    push $fp
    mov $fp, $sp
    lw $r7, h($fp)
    push $r7
    push $r7
    jal Bazz.out_int
    mov $r8, $r1
    pop null
    mov $r10, 0
    mov $r9, $r10
    mov $sp, $fp
    pop $fp
    mov $r1, $r9
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class Foo
.method doh
    push $fp
    mov $fp, $sp
    lw $r11, h($fp)
    mov i, $r11
    lw $r12, h($fp)
    mov $r14, 2
    mov $r13, $r14
    mov $r14, 2
    add $r15, $r12, $r14
    sw $r15, h($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, i
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
    sw t11, 4($fp)
    sw const29739144, 8($fp)
    mov 8($fp), "do nothing"
    mov 4($fp), 8($fp)
    mov $sp, $fp
    pop $fp
    sw t11, 12($fp)
    mov $r1, 12($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class

