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
    jal reflect_0
    mov $r8, $r1
    cmp null, $r7, $r8
    mov $r9, 0
    beq null, Lf216cdc3b2204c36bef132d16089fc8f
    j L24ad547fc54a4207907148a0f368548f
    Lf216cdc3b2204c36bef132d16089fc8f:
    mov $r9, 1
    L24ad547fc54a4207907148a0f368548f:
    bne $r9, L0
    j L1
    L0:
    mov $r11, "=)\n"
    mov $r10, $r11
    push $r10
    push $r10
    jal Main.out_string
    mov $r12, $r1
    pop null
    mov $r13, $r12
    j L2
    L1:
    mov $r15, "=(\n"
    mov $r14, $r15
    push $r14
    sw t11, 4($fp)
    push $r14
    jal Main.out_string
    mov 4($fp), $r1
    pop null
    sw t11, 8($fp)
    mov $r13, 8($fp)
    L2:
    sw t12, 12($fp)
    jal reflect_X
    mov 12($fp), $r1
    sw t13, 16($fp)
    jal reflect_Y
    mov 16($fp), $r1
    sw t14, 20($fp)
    jal reflect_0
    mov 20($fp), $r1
    sw t14, 24($fp)
    push 24($fp)
    sw t15, 28($fp)
    push 24($fp)
    jal equal
    mov 28($fp), $r1
    pop null
    sw t15, 32($fp)
    bne 32($fp), L3
    j L4
    L3:
    sw t16, 36($fp)
    mov $r11, "=)\n"
    mov 36($fp), $r11
    sw t16, 40($fp)
    push 40($fp)
    sw t17, 44($fp)
    push 40($fp)
    jal Main.out_string
    mov 44($fp), $r1
    pop null
    sw t18, 48($fp)
    sw t17, 52($fp)
    mov 48($fp), 52($fp)
    j L5
    L4:
    sw t19, 56($fp)
    mov $r15, "=(\n"
    mov 56($fp), $r15
    sw t19, 60($fp)
    push 60($fp)
    sw t20, 64($fp)
    push 60($fp)
    jal Main.out_string
    mov 64($fp), $r1
    pop null
    sw t18, 68($fp)
    sw t20, 72($fp)
    mov 68($fp), 72($fp)
    L5:
    mov $sp, $fp
    pop $fp
    sw t18, 76($fp)
    mov $r1, 76($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class Complex
.method equal
    push $fp
    mov $fp, $sp
    pop d
    sw t55, 4($fp)
    lw 4($fp), x($fp)
    sw t56, 8($fp)
    jal x_value
    mov 8($fp), $r1
    sw t57, 12($fp)
    sw t55, 16($fp)
    sw t56, 20($fp)
    cmp null, 16($fp), 20($fp)
    mov 12($fp), 0
    beq null, L0c5a40504c5147658e0603e48f5f45cd
    j Lc57b4c6ae16d45ed992496006d0f6755
    L0c5a40504c5147658e0603e48f5f45cd:
    mov 12($fp), 1
    Lc57b4c6ae16d45ed992496006d0f6755:
    sw t57, 24($fp)
    bne 24($fp), L9
    j L10
    L9:
    sw t58, 28($fp)
    lw 28($fp), y($fp)
    sw t59, 32($fp)
    jal y_value
    mov 32($fp), $r1
    sw t60, 36($fp)
    sw t58, 40($fp)
    sw t59, 44($fp)
    cmp null, 40($fp), 44($fp)
    mov 36($fp), 0
    beq null, L8b08c8f7846a4f6b89c1684a48a9f3b6
    j Ld14a6cb2559f4d03915e77a396b95fdd
    L8b08c8f7846a4f6b89c1684a48a9f3b6:
    mov 36($fp), 1
    Ld14a6cb2559f4d03915e77a396b95fdd:
    sw t60, 48($fp)
    bne 48($fp), L12
    j L13
    L12:
    sw t61, 52($fp)
    mov 52($fp), true
    sw t62, 56($fp)
    mov 56($fp), true
    j L14
    L13:
    sw t63, 60($fp)
    mov 60($fp), false
    sw t62, 64($fp)
    mov 64($fp), false
    L14:
    sw t64, 68($fp)
    mov 68($fp), false
    j L11
    L10:
    sw t65, 72($fp)
    mov 72($fp), false
    sw t64, 76($fp)
    mov 76($fp), false
    L11:
    mov $sp, $fp
    pop $fp
    sw t64, 80($fp)
    mov $r1, 80($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method init
    push $fp
    mov $fp, $sp
    pop a
    pop b
    sw t21, 4($fp)
    lw 4($fp), x($fp)
    sw t22, 8($fp)
    sw t21, 12($fp)
    cmp null, 12($fp), a
    mov 8($fp), 0
    beq null, L4070b50d4c794d6b84703998862671ca
    j L7925cbdfe87549c1a27cc2268f33120d
    L4070b50d4c794d6b84703998862671ca:
    mov 8($fp), 1
    L7925cbdfe87549c1a27cc2268f33120d:
    sw t23, 16($fp)
    lw 16($fp), y($fp)
    sw t24, 20($fp)
    sw t23, 24($fp)
    cmp null, 24($fp), b
    mov 20($fp), 0
    beq null, L0118bbab6f3e4778af7fff63619bd868
    j L97810619a9dc4cf6a725e5938d55ef2d
    L0118bbab6f3e4778af7fff63619bd868:
    mov 20($fp), 1
    L97810619a9dc4cf6a725e5938d55ef2d:
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method y_value
    push $fp
    mov $fp, $sp
    sw t67, 4($fp)
    lw 4($fp), y($fp)
    mov $sp, $fp
    pop $fp
    sw t67, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method print
    push $fp
    mov $fp, $sp
    sw t25, 4($fp)
    lw 4($fp), y($fp)
    sw t26, 8($fp)
    sw const48, 12($fp)
    mov 12($fp), 0
    mov 8($fp), 12($fp)
    sw t27, 16($fp)
    sw t25, 20($fp)
    sw const48, 24($fp)
    mov 24($fp), 0
    cmp null, 20($fp), 24($fp)
    mov 16($fp), 0
    beq null, L06d31e6cb0b4461abd19d7cfa70fdd97
    j L6e44425e18b64effb93fb5bf78c6cce8
    L06d31e6cb0b4461abd19d7cfa70fdd97:
    mov 16($fp), 1
    L6e44425e18b64effb93fb5bf78c6cce8:
    sw t27, 28($fp)
    bne 28($fp), L6
    j L7
    L6:
    sw t28, 32($fp)
    lw 32($fp), x($fp)
    sw t28, 36($fp)
    push 36($fp)
    sw t29, 40($fp)
    push 36($fp)
    jal Complex.out_int
    mov 40($fp), $r1
    pop null
    sw t30, 44($fp)
    sw t29, 48($fp)
    mov 44($fp), 48($fp)
    j L8
    L7:
    sw t31, 52($fp)
    lw 52($fp), x($fp)
    sw t31, 56($fp)
    push 56($fp)
    sw t32, 60($fp)
    push 56($fp)
    jal Complex.out_int
    mov 60($fp), $r1
    pop null
    sw t33, 64($fp)
    sw const34041, 68($fp)
    mov 68($fp), "+"
    mov 64($fp), 68($fp)
    sw t33, 72($fp)
    push 72($fp)
    sw t34, 76($fp)
    push 72($fp)
    jal out_string
    mov 76($fp), $r1
    pop null
    sw t35, 80($fp)
    lw 80($fp), y($fp)
    sw t35, 84($fp)
    push 84($fp)
    sw t36, 88($fp)
    push 84($fp)
    jal out_int
    mov 88($fp), $r1
    pop null
    sw t37, 92($fp)
    sw const34971, 96($fp)
    mov 96($fp), "I"
    mov 92($fp), 96($fp)
    sw t37, 100($fp)
    push 100($fp)
    sw t38, 104($fp)
    push 100($fp)
    jal out_string
    mov 104($fp), $r1
    pop null
    sw t30, 108($fp)
    sw t38, 112($fp)
    mov 108($fp), 112($fp)
    L8:
    mov $sp, $fp
    pop $fp
    sw t30, 116($fp)
    mov $r1, 116($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method reflect_Y
    push $fp
    mov $fp, $sp
    sw t51, 4($fp)
    lw 4($fp), x($fp)
    sw t52, 8($fp)
    lw 8($fp), x($fp)
    sw t53, 12($fp)
    sw t52, 16($fp)
    neg 12($fp), 16($fp)
    sw t54, 20($fp)
    sw t51, 24($fp)
    sw t53, 28($fp)
    cmp null, 24($fp), 28($fp)
    mov 20($fp), 0
    beq null, Lca41c24a423d4ce3aa8cef0a9457c02e
    j Lca2070ff7c5d4147ae0bead69f0f4dc4
    Lca41c24a423d4ce3aa8cef0a9457c02e:
    mov 20($fp), 1
    Lca2070ff7c5d4147ae0bead69f0f4dc4:
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
    sw t47, 4($fp)
    lw 4($fp), y($fp)
    sw t48, 8($fp)
    lw 8($fp), y($fp)
    sw t49, 12($fp)
    sw t48, 16($fp)
    neg 12($fp), 16($fp)
    sw t50, 20($fp)
    sw t47, 24($fp)
    sw t49, 28($fp)
    cmp null, 24($fp), 28($fp)
    mov 20($fp), 0
    beq null, L19aff328fe9742428a7a3c9db87d6ca8
    j L18b51aefbce94a728b50f79fd8aeb37d
    L19aff328fe9742428a7a3c9db87d6ca8:
    mov 20($fp), 1
    L18b51aefbce94a728b50f79fd8aeb37d:
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
    sw t39, 4($fp)
    lw 4($fp), x($fp)
    sw t40, 8($fp)
    lw 8($fp), x($fp)
    sw t41, 12($fp)
    sw t40, 16($fp)
    neg 12($fp), 16($fp)
    sw t42, 20($fp)
    sw t39, 24($fp)
    sw t41, 28($fp)
    cmp null, 24($fp), 28($fp)
    mov 20($fp), 0
    beq null, Lddfc22e9e5fd4395a8acff77907b0b29
    j Laa6a1434bfd1481d86d6c66ae603aa67
    Lddfc22e9e5fd4395a8acff77907b0b29:
    mov 20($fp), 1
    Laa6a1434bfd1481d86d6c66ae603aa67:
    sw t43, 32($fp)
    lw 32($fp), y($fp)
    sw t44, 36($fp)
    lw 36($fp), y($fp)
    sw t45, 40($fp)
    sw t44, 44($fp)
    neg 40($fp), 44($fp)
    sw t46, 48($fp)
    sw t43, 52($fp)
    sw t45, 56($fp)
    cmp null, 52($fp), 56($fp)
    mov 48($fp), 0
    beq null, L79f7221e495a4fe4b1347b042c5a004a
    j L8290123d8008497ab2a0fa5a652dd3ce
    L79f7221e495a4fe4b1347b042c5a004a:
    mov 48($fp), 1
    L8290123d8008497ab2a0fa5a652dd3ce:
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method x_value
    push $fp
    mov $fp, $sp
    sw t66, 4($fp)
    lw 4($fp), x($fp)
    mov $sp, $fp
    pop $fp
    sw t66, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class

