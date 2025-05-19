.class A
.method out_a
    push $fp
    mov $fp, $sp
    lw $r2, io($fp)
    mov $r4, "A: Hello world\n"
    mov $r3, $r4
    push $r3
    push $r3
    jal out_string
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
.end_class
.class B
.method out_b
    push $fp
    mov $fp, $sp
    lw $r6, io($fp)
    mov $r8, "B: Hello world\n"
    mov $r7, $r8
    push $r7
    push $r7
    jal out_string
    mov $r9, $r1
    pop null
    mov $sp, $fp
    pop $fp
    mov $r1, $r9
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class C
.method out_c
    push $fp
    mov $fp, $sp
    mov $r11, "C: Hello world\n"
    mov $r10, $r11
    push $r10
    push $r10
    jal C.out_string
    mov $r12, $r1
    pop null
    mov $sp, $fp
    pop $fp
    mov $r1, $r12
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class D
.method out_d
    push $fp
    mov $fp, $sp
    mov $r14, "D: Hello world\n"
    mov $r13, $r14
    push $r13
    push $r13
    jal D.out_string
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
.end_class
.class Main
.method main
    push $fp
    mov $fp, $sp
    sw t10, 4($fp)
    jal new A
    mov 4($fp), $r1
    sw t11, 8($fp)
    jal out_a
    mov 8($fp), $r1
    sw t12, 12($fp)
    jal new B
    mov 12($fp), $r1
    sw t13, 16($fp)
    jal out_b
    mov 16($fp), $r1
    sw t14, 20($fp)
    jal new C
    mov 20($fp), $r1
    sw t15, 24($fp)
    jal out_c
    mov 24($fp), $r1
    sw t16, 28($fp)
    jal new D
    mov 28($fp), $r1
    sw t17, 32($fp)
    jal out_d
    mov 32($fp), $r1
    sw t18, 36($fp)
    sw const-99285850, 40($fp)
    mov 40($fp), "Done.\n"
    mov 36($fp), 40($fp)
    sw t18, 44($fp)
    push 44($fp)
    sw t19, 48($fp)
    push 44($fp)
    jal Main.out_string
    mov 48($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    sw t19, 52($fp)
    mov $r1, 52($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class

