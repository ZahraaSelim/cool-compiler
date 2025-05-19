.class Main
.method main
    push $fp
    mov $fp, $sp
    jal new Complex
    mov $r2, $r1
    mov $r4, 1
    mov $r3, $r4
    mov $r4, 1
    mov $r5, $r4
    push $r3
    push $r5
    push $r3
    push $r5
    jal init
    mov $r6, $r1
    pop null
    mov c, $r6
    jal reflect_X
    mov $r7, $r1
    jal reflect_Y
    mov $r8, $r1
    jal reflect_0
    mov $r9, $r1
    cmp null, $r8, $r9
    mov $r10, 0
    beq null, L171c099328814d818c75dd063f01f485
    j Lbe597ff73aff4d7a9f005a44d02004fe
    L171c099328814d818c75dd063f01f485:
    mov $r10, 1
    Lbe597ff73aff4d7a9f005a44d02004fe:
    bne $r10, L0
    j L1
    L0:
    mov $r12, "=)\n"
    mov $r11, $r12
    push $r11
    push $r11
    jal Main.out_string
    mov $r13, $r1
    pop null
    mov $r14, $r13
    j L2
    L1:
    sw const1031009411, 4($fp)
    mov 4($fp), "=(\n"
    mov $r15, 4($fp)
    push $r15
    sw t12, 8($fp)
    push $r15
    jal Main.out_string
    mov 8($fp), $r1
    pop null
    sw t12, 12($fp)
    mov $r14, 12($fp)
    L2:
    mov $sp, $fp
    pop $fp
    mov $r1, $r14
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class Complex
.method init
    push $fp
    mov $fp, $sp
    pop a
    pop b
    sw t13, 4($fp)
    lw 4($fp), x($fp)
    sw t14, 8($fp)
    sw t13, 12($fp)
    cmp null, 12($fp), a
    mov 8($fp), 0
    beq null, Lec7128f548724c8c869fab4f89a2a577
    j L0732af4f3fad4e1fb166383b082d60a7
    Lec7128f548724c8c869fab4f89a2a577:
    mov 8($fp), 1
    L0732af4f3fad4e1fb166383b082d60a7:
    sw t15, 16($fp)
    lw 16($fp), y($fp)
    sw t16, 20($fp)
    sw t15, 24($fp)
    cmp null, 24($fp), b
    mov 20($fp), 0
    beq null, Le1ef2e676d84499ca14141c2e0e27061
    j L88c2823a9ecf49ffad756d8dc0847bc9
    Le1ef2e676d84499ca14141c2e0e27061:
    mov 20($fp), 1
    L88c2823a9ecf49ffad756d8dc0847bc9:
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
    lw 4($fp), y($fp)
    sw t18, 8($fp)
    sw const48, 12($fp)
    mov 12($fp), 0
    mov 8($fp), 12($fp)
    sw t19, 16($fp)
    sw t17, 20($fp)
    sw const48, 24($fp)
    mov 24($fp), 0
    cmp null, 20($fp), 24($fp)
    mov 16($fp), 0
    beq null, Laa9dd3de218c457f8fd35ef942b8478d
    j L72c3f47f4ee04007852aeaa1b5376214
    Laa9dd3de218c457f8fd35ef942b8478d:
    mov 16($fp), 1
    L72c3f47f4ee04007852aeaa1b5376214:
    sw t19, 28($fp)
    bne 28($fp), L3
    j L4
    L3:
    sw t20, 32($fp)
    lw 32($fp), x($fp)
    sw t20, 36($fp)
    push 36($fp)
    sw t21, 40($fp)
    push 36($fp)
    jal Complex.out_int
    mov 40($fp), $r1
    pop null
    sw t22, 44($fp)
    sw t21, 48($fp)
    mov 44($fp), 48($fp)
    j L5
    L4:
    sw t23, 52($fp)
    lw 52($fp), x($fp)
    sw t23, 56($fp)
    push 56($fp)
    sw t24, 60($fp)
    push 56($fp)
    jal Complex.out_int
    mov 60($fp), $r1
    pop null
    sw t25, 64($fp)
    sw const34041, 68($fp)
    mov 68($fp), "+"
    mov 64($fp), 68($fp)
    sw t25, 72($fp)
    push 72($fp)
    sw t26, 76($fp)
    push 72($fp)
    jal out_string
    mov 76($fp), $r1
    pop null
    sw t27, 80($fp)
    lw 80($fp), y($fp)
    sw t27, 84($fp)
    push 84($fp)
    sw t28, 88($fp)
    push 84($fp)
    jal out_int
    mov 88($fp), $r1
    pop null
    sw t29, 92($fp)
    sw const34971, 96($fp)
    mov 96($fp), "I"
    mov 92($fp), 96($fp)
    sw t29, 100($fp)
    push 100($fp)
    sw t30, 104($fp)
    push 100($fp)
    jal out_string
    mov 104($fp), $r1
    pop null
    sw t22, 108($fp)
    sw t30, 112($fp)
    mov 108($fp), 112($fp)
    L5:
    mov $sp, $fp
    pop $fp
    sw t22, 116($fp)
    mov $r1, 116($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method reflect_Y
    push $fp
    mov $fp, $sp
    sw t43, 4($fp)
    lw 4($fp), x($fp)
    sw t44, 8($fp)
    lw 8($fp), x($fp)
    sw t45, 12($fp)
    sw t44, 16($fp)
    neg 12($fp), 16($fp)
    sw t46, 20($fp)
    sw t43, 24($fp)
    sw t45, 28($fp)
    cmp null, 24($fp), 28($fp)
    mov 20($fp), 0
    beq null, L4537e7ac4ce34be2a5802c32a2e13960
    j L2bce99f261f843a3816e4ae72c182e53
    L4537e7ac4ce34be2a5802c32a2e13960:
    mov 20($fp), 1
    L2bce99f261f843a3816e4ae72c182e53:
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method reflect_X
    push $fp
    mov $fp, $sp
    sw t39, 4($fp)
    lw 4($fp), y($fp)
    sw t40, 8($fp)
    lw 8($fp), y($fp)
    sw t41, 12($fp)
    sw t40, 16($fp)
    neg 12($fp), 16($fp)
    sw t42, 20($fp)
    sw t39, 24($fp)
    sw t41, 28($fp)
    cmp null, 24($fp), 28($fp)
    mov 20($fp), 0
    beq null, Lc6e1eed34cc04d00bf74d0050367bbdf
    j Lf5907a5984324d86aae65fe485afc604
    Lc6e1eed34cc04d00bf74d0050367bbdf:
    mov 20($fp), 1
    Lf5907a5984324d86aae65fe485afc604:
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method reflect_0
    push $fp
    mov $fp, $sp
    sw t31, 4($fp)
    lw 4($fp), x($fp)
    sw t32, 8($fp)
    lw 8($fp), x($fp)
    sw t33, 12($fp)
    sw t32, 16($fp)
    neg 12($fp), 16($fp)
    sw t34, 20($fp)
    sw t31, 24($fp)
    sw t33, 28($fp)
    cmp null, 24($fp), 28($fp)
    mov 20($fp), 0
    beq null, L2c5950f4f71a4f1ebe84fe88ffc6a9b7
    j L3244d835f96c43bb8211a868dab62ba9
    L2c5950f4f71a4f1ebe84fe88ffc6a9b7:
    mov 20($fp), 1
    L3244d835f96c43bb8211a868dab62ba9:
    sw t35, 32($fp)
    lw 32($fp), y($fp)
    sw t36, 36($fp)
    lw 36($fp), y($fp)
    sw t37, 40($fp)
    sw t36, 44($fp)
    neg 40($fp), 44($fp)
    sw t38, 48($fp)
    sw t35, 52($fp)
    sw t37, 56($fp)
    cmp null, 52($fp), 56($fp)
    mov 48($fp), 0
    beq null, L26573c70e9914be4870055e329afa6c8
    j Lf52f8f27ad6143d2ae9dd778f5501ed3
    L26573c70e9914be4870055e329afa6c8:
    mov 48($fp), 1
    Lf52f8f27ad6143d2ae9dd778f5501ed3:
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class

