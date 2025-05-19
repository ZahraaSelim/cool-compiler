.class A
.method method5
    push $fp
    mov $fp, $sp
    pop num
    mov $r3, 1
    mov $r2, $r3
    mov $r3, 1
    mov x, $r3
    mov $r3, 1
    mov $r4, $r3
    mov $r3, 1
    mov y, $r3
    L_preheader_26ba144a028a4868829ab63fb0884f37:
    mov $r3, 1
    mov $r5, $r3
    j L3
    L3:
    mov $r3, 1
    cmp null, $r3, num
    mov $r6, 0
    ble null, L1efad82158334757a702bcc0e3a702e2
    j Ld4bfc1a87ffa46c797f8aff9b7d5a6e9
    L1efad82158334757a702bcc0e3a702e2:
    mov $r6, 1
    Ld4bfc1a87ffa46c797f8aff9b7d5a6e9:
    bne $r6, L4
    j L5
    L4:
    mov $r3, 1
    mov $r7, $r3
    mov $r3, 1
    mov x, $r3
    mov $r9, 2
    mov $r8, $r9
    mov $r9, 2
    mov y, $r9
    j L_preheader_26ba144a028a4868829ab63fb0884f37
    L5:
    jal new E
    mov $r10, $r1
    push x
    push x
    jal set_var
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
.method method1
    push $fp
    mov $fp, $sp
    pop num
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method method2
    push $fp
    mov $fp, $sp
    pop num1
    pop num2
    add $r12, num1, num2
    mov x, $r12
    jal new B
    mov $r13, $r1
    push x
    push x
    jal set_var
    mov $r14, $r1
    pop null
    mov $sp, $fp
    pop $fp
    mov $r1, $r14
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method method3
    push $fp
    mov $fp, $sp
    pop num
    neg $r15, num
    mov x, $r15
    sw t5, 4($fp)
    jal new C
    mov 4($fp), $r1
    push x
    sw t6, 8($fp)
    push x
    jal set_var
    mov 8($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    sw t6, 12($fp)
    mov $r1, 12($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method method4
    push $fp
    mov $fp, $sp
    pop num1
    pop num2
    sw t7, 4($fp)
    cmp null, num2, num1
    mov 4($fp), 0
    blt null, L790fe5087e754d8cb82e559e50ea59e3
    j Lc19989d0233f42b78586adb93bb67af7
    L790fe5087e754d8cb82e559e50ea59e3:
    mov 4($fp), 1
    Lc19989d0233f42b78586adb93bb67af7:
    sw t7, 8($fp)
    bne 8($fp), L0
    j L1
    L0:
    sw t8, 12($fp)
    sub 12($fp), num1, num2
    sw t8, 16($fp)
    mov x, 16($fp)
    sw t9, 20($fp)
    jal new D
    mov 20($fp), $r1
    push x
    sw t10, 24($fp)
    push x
    jal set_var
    mov 24($fp), $r1
    pop null
    sw t11, 28($fp)
    sw t10, 32($fp)
    mov 28($fp), 32($fp)
    j L2
    L1:
    sw t12, 36($fp)
    sub 36($fp), num2, num1
    sw t12, 40($fp)
    mov x, 40($fp)
    sw t13, 44($fp)
    jal new D
    mov 44($fp), $r1
    push x
    sw t14, 48($fp)
    push x
    jal set_var
    mov 48($fp), $r1
    pop null
    sw t11, 52($fp)
    sw t14, 56($fp)
    mov 52($fp), 56($fp)
    L2:
    mov $sp, $fp
    pop $fp
    sw t11, 60($fp)
    mov $r1, 60($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method value
    push $fp
    mov $fp, $sp
    sw t0, 4($fp)
    lw 4($fp), var($fp)
    mov $sp, $fp
    pop $fp
    sw t0, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method set_var
    push $fp
    mov $fp, $sp
    pop num
    sw num, var($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class B
.method method5
    push $fp
    mov $fp, $sp
    pop num
    sw t23, 4($fp)
    mul 4($fp), num, num
    sw t23, 8($fp)
    mov x, 8($fp)
    sw t24, 12($fp)
    jal new E
    mov 12($fp), $r1
    push x
    sw t25, 16($fp)
    push x
    jal set_var
    mov 16($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    sw t25, 20($fp)
    mov $r1, 20($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class C
.method method5
    push $fp
    mov $fp, $sp
    pop num
    sw t29, 4($fp)
    mul 4($fp), num, num
    sw t30, 8($fp)
    sw t29, 12($fp)
    mul 8($fp), 12($fp), num
    sw t30, 16($fp)
    mov x, 16($fp)
    sw t31, 20($fp)
    jal new E
    mov 20($fp), $r1
    push x
    sw t32, 24($fp)
    push x
    jal set_var
    mov 24($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    sw t32, 28($fp)
    mov $r1, 28($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method method6
    push $fp
    mov $fp, $sp
    pop num
    sw t26, 4($fp)
    neg 4($fp), num
    sw t26, 8($fp)
    mov x, 8($fp)
    sw t27, 12($fp)
    jal new A
    mov 12($fp), $r1
    push x
    sw t28, 16($fp)
    push x
    jal set_var
    mov 16($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    sw t28, 20($fp)
    mov $r1, 20($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class D
.method method7
    push $fp
    mov $fp, $sp
    pop num
    mov x, num
    sw t33, 4($fp)
    sw const48, 8($fp)
    mov 8($fp), 0
    mov 4($fp), 8($fp)
    sw t34, 12($fp)
    sw const48, 16($fp)
    mov 16($fp), 0
    cmp null, x, 16($fp)
    mov 12($fp), 0
    blt null, L10f8502a19514f5088e7a82008c29bbf
    j Lde9988ceee8d4783bb5fcddfb89eaf80
    L10f8502a19514f5088e7a82008c29bbf:
    mov 12($fp), 1
    Lde9988ceee8d4783bb5fcddfb89eaf80:
    sw t34, 20($fp)
    bne 20($fp), L6
    j L7
    L6:
    sw t35, 24($fp)
    neg 24($fp), x
    sw t35, 28($fp)
    push 28($fp)
    sw t36, 32($fp)
    push 28($fp)
    jal D.method7
    mov 32($fp), $r1
    pop null
    sw t37, 36($fp)
    sw t36, 40($fp)
    mov 36($fp), 40($fp)
    j L8
    L7:
    sw t38, 44($fp)
    sw const48, 48($fp)
    mov 48($fp), 0
    mov 44($fp), 48($fp)
    sw t39, 52($fp)
    sw const48, 56($fp)
    mov 56($fp), 0
    cmp null, 56($fp), x
    mov 52($fp), 0
    beq null, L41b1ff5121dc401fa5520b83cb77467e
    j L0a574ad720184e9bafeb805f6228b3d4
    L41b1ff5121dc401fa5520b83cb77467e:
    mov 52($fp), 1
    L0a574ad720184e9bafeb805f6228b3d4:
    sw t39, 60($fp)
    bne 60($fp), L9
    j L10
    L9:
    sw t40, 64($fp)
    mov 64($fp), true
    sw t41, 68($fp)
    mov 68($fp), true
    j L11
    L10:
    sw t42, 72($fp)
    mov $r3, 1
    mov 72($fp), $r3
    sw t43, 76($fp)
    mov $r3, 1
    cmp null, $r3, x
    mov 76($fp), 0
    beq null, L9ed1ba2bd18a4c078af666ae60339807
    j L0dd2434f36d24f288d31e57fda2dd8e9
    L9ed1ba2bd18a4c078af666ae60339807:
    mov 76($fp), 1
    L0dd2434f36d24f288d31e57fda2dd8e9:
    sw t43, 80($fp)
    bne 80($fp), L12
    j L13
    L12:
    sw t44, 84($fp)
    mov 84($fp), false
    sw t45, 88($fp)
    mov 88($fp), false
    j L14
    L13:
    sw t46, 92($fp)
    mov $r9, 2
    mov 92($fp), $r9
    sw t47, 96($fp)
    mov $r9, 2
    cmp null, $r9, x
    mov 96($fp), 0
    beq null, L427f82ab0fa545bc9bfd8228c4fb744c
    j Lf46abe5e2f5a49c4be301acd6aca4c8e
    L427f82ab0fa545bc9bfd8228c4fb744c:
    mov 96($fp), 1
    Lf46abe5e2f5a49c4be301acd6aca4c8e:
    sw t47, 100($fp)
    bne 100($fp), L15
    j L16
    L15:
    sw t48, 104($fp)
    mov 104($fp), false
    sw t49, 108($fp)
    mov 108($fp), false
    j L17
    L16:
    sw t50, 112($fp)
    sw const51, 116($fp)
    mov 116($fp), 3
    mov 112($fp), 116($fp)
    sw t51, 120($fp)
    sw const51, 124($fp)
    mov 124($fp), 3
    sub 120($fp), x, 124($fp)
    sw t51, 128($fp)
    push 128($fp)
    sw t52, 132($fp)
    push 128($fp)
    jal D.method7
    mov 132($fp), $r1
    pop null
    sw t49, 136($fp)
    sw t52, 140($fp)
    mov 136($fp), 140($fp)
    L17:
    sw t45, 144($fp)
    mov 144($fp), false
    L14:
    sw t41, 148($fp)
    mov 148($fp), false
    L11:
    sw t37, 152($fp)
    mov 152($fp), true
    L8:
    mov $sp, $fp
    pop $fp
    sw t37, 156($fp)
    mov $r1, 156($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class E
.method method6
    push $fp
    mov $fp, $sp
    pop num
    sw t53, 4($fp)
    sw const56, 8($fp)
    mov 8($fp), 8
    mov 4($fp), 8($fp)
    sw t54, 12($fp)
    sw const56, 16($fp)
    mov 16($fp), 8
    div 12($fp), num, 16($fp)
    sw t54, 20($fp)
    mov x, 20($fp)
    sw t55, 24($fp)
    jal new A
    mov 24($fp), $r1
    push x
    sw t56, 28($fp)
    push x
    jal set_var
    mov 28($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    sw t56, 32($fp)
    mov $r1, 32($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class A2I
.method a2i
    push $fp
    mov $fp, $sp
    pop s
    sw t141, 4($fp)
    jal length
    mov 4($fp), $r1
    sw t142, 8($fp)
    sw const48, 12($fp)
    mov 12($fp), 0
    mov 8($fp), 12($fp)
    sw t143, 16($fp)
    sw t141, 20($fp)
    sw const48, 24($fp)
    mov 24($fp), 0
    cmp null, 20($fp), 24($fp)
    mov 16($fp), 0
    beq null, L42f02e95d08a4468b574afc170e98e0d
    j L1b90d0488aa742e0aaa2fbf65e5c46b1
    L42f02e95d08a4468b574afc170e98e0d:
    mov 16($fp), 1
    L1b90d0488aa742e0aaa2fbf65e5c46b1:
    sw t143, 28($fp)
    bne 28($fp), L78
    j L79
    L78:
    sw t144, 32($fp)
    sw const48, 36($fp)
    mov 36($fp), 0
    mov 32($fp), 36($fp)
    sw t145, 40($fp)
    sw const48, 44($fp)
    mov 44($fp), 0
    mov 40($fp), 44($fp)
    j L80
    L79:
    sw t146, 48($fp)
    sw const48, 52($fp)
    mov 52($fp), 0
    mov 48($fp), 52($fp)
    sw t147, 56($fp)
    mov $r3, 1
    mov 56($fp), $r3
    sw t146, 60($fp)
    push 60($fp)
    sw t147, 64($fp)
    push 64($fp)
    sw t148, 68($fp)
    push 60($fp)
    push 64($fp)
    jal substr
    mov 68($fp), $r1
    pop null
    sw t149, 72($fp)
    sw const34103, 76($fp)
    mov 76($fp), "-"
    mov 72($fp), 76($fp)
    sw t150, 80($fp)
    sw t148, 84($fp)
    sw const34103, 88($fp)
    mov 88($fp), "-"
    cmp null, 84($fp), 88($fp)
    mov 80($fp), 0
    beq null, Lfb1de5c77ec1451a82f5f2059ed61a8b
    j L9586c75d981943e9b30ec832e1b9be77
    Lfb1de5c77ec1451a82f5f2059ed61a8b:
    mov 80($fp), 1
    L9586c75d981943e9b30ec832e1b9be77:
    sw t150, 92($fp)
    bne 92($fp), L81
    j L82
    L81:
    sw t151, 96($fp)
    mov $r3, 1
    mov 96($fp), $r3
    sw t152, 100($fp)
    jal length
    mov 100($fp), $r1
    sw t153, 104($fp)
    mov $r3, 1
    mov 104($fp), $r3
    sw t154, 108($fp)
    sw t152, 112($fp)
    mov $r3, 1
    sub 108($fp), 112($fp), $r3
    sw t151, 116($fp)
    push 116($fp)
    sw t154, 120($fp)
    push 120($fp)
    sw t155, 124($fp)
    push 116($fp)
    push 120($fp)
    jal substr
    mov 124($fp), $r1
    pop null
    sw t155, 128($fp)
    push 128($fp)
    sw t156, 132($fp)
    push 128($fp)
    jal A2I.a2i_aux
    mov 132($fp), $r1
    pop null
    sw t157, 136($fp)
    sw t156, 140($fp)
    neg 136($fp), 140($fp)
    sw t158, 144($fp)
    sw t157, 148($fp)
    mov 144($fp), 148($fp)
    j L83
    L82:
    sw t159, 152($fp)
    sw const48, 156($fp)
    mov 156($fp), 0
    mov 152($fp), 156($fp)
    sw t160, 160($fp)
    mov $r3, 1
    mov 160($fp), $r3
    sw t159, 164($fp)
    push 164($fp)
    sw t160, 168($fp)
    push 168($fp)
    sw t161, 172($fp)
    push 164($fp)
    push 168($fp)
    jal substr
    mov 172($fp), $r1
    pop null
    sw t162, 176($fp)
    sw const34041, 180($fp)
    mov 180($fp), "+"
    mov 176($fp), 180($fp)
    sw t163, 184($fp)
    sw t161, 188($fp)
    sw const34041, 192($fp)
    mov 192($fp), "+"
    cmp null, 188($fp), 192($fp)
    mov 184($fp), 0
    beq null, L2ddfb12cde3c45cd8483ee9909b3391d
    j L7b7728c5edd04209839fb6ad7eadad04
    L2ddfb12cde3c45cd8483ee9909b3391d:
    mov 184($fp), 1
    L7b7728c5edd04209839fb6ad7eadad04:
    sw t163, 196($fp)
    bne 196($fp), L84
    j L85
    L84:
    sw t164, 200($fp)
    mov $r3, 1
    mov 200($fp), $r3
    sw t165, 204($fp)
    jal length
    mov 204($fp), $r1
    sw t166, 208($fp)
    mov $r3, 1
    mov 208($fp), $r3
    sw t167, 212($fp)
    sw t165, 216($fp)
    mov $r3, 1
    sub 212($fp), 216($fp), $r3
    sw t164, 220($fp)
    push 220($fp)
    sw t167, 224($fp)
    push 224($fp)
    sw t168, 228($fp)
    push 220($fp)
    push 224($fp)
    jal substr
    mov 228($fp), $r1
    pop null
    sw t168, 232($fp)
    push 232($fp)
    sw t169, 236($fp)
    push 232($fp)
    jal A2I.a2i_aux
    mov 236($fp), $r1
    pop null
    sw t170, 240($fp)
    sw t169, 244($fp)
    mov 240($fp), 244($fp)
    j L86
    L85:
    push s
    sw t171, 248($fp)
    push s
    jal A2I.a2i_aux
    mov 248($fp), $r1
    pop null
    sw t170, 252($fp)
    sw t171, 256($fp)
    mov 252($fp), 256($fp)
    L86:
    sw t158, 260($fp)
    sw t170, 264($fp)
    mov 260($fp), 264($fp)
    L83:
    sw t145, 268($fp)
    sw t158, 272($fp)
    mov 268($fp), 272($fp)
    L80:
    mov $sp, $fp
    pop $fp
    sw t145, 276($fp)
    mov $r1, 276($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method i2a
    push $fp
    mov $fp, $sp
    pop i
    sw t184, 4($fp)
    sw const48, 8($fp)
    mov 8($fp), 0
    mov 4($fp), 8($fp)
    sw t185, 12($fp)
    sw const48, 16($fp)
    mov 16($fp), 0
    cmp null, i, 16($fp)
    mov 12($fp), 0
    beq null, L1d76f2fcdcc74608a441cdafad0511fd
    j L7524d833020b42ad8ad7c4123443480d
    L1d76f2fcdcc74608a441cdafad0511fd:
    mov 12($fp), 1
    L7524d833020b42ad8ad7c4123443480d:
    sw t185, 20($fp)
    bne 20($fp), L90
    j L91
    L90:
    sw t186, 24($fp)
    sw const34196, 28($fp)
    mov 28($fp), "0"
    mov 24($fp), 28($fp)
    sw t187, 32($fp)
    sw const34196, 36($fp)
    mov 36($fp), "0"
    mov 32($fp), 36($fp)
    j L92
    L91:
    sw t188, 40($fp)
    sw const48, 44($fp)
    mov 44($fp), 0
    mov 40($fp), 44($fp)
    sw t189, 48($fp)
    sw const48, 52($fp)
    mov 52($fp), 0
    cmp null, 52($fp), i
    mov 48($fp), 0
    blt null, Lf4104235c1aa4117886b38f59063b445
    j L3ec35dd385a545dca15dc177a4b87331
    Lf4104235c1aa4117886b38f59063b445:
    mov 48($fp), 1
    L3ec35dd385a545dca15dc177a4b87331:
    sw t189, 56($fp)
    bne 56($fp), L93
    j L94
    L93:
    push i
    sw t190, 60($fp)
    push i
    jal A2I.i2a_aux
    mov 60($fp), $r1
    pop null
    sw t191, 64($fp)
    sw t190, 68($fp)
    mov 64($fp), 68($fp)
    j L95
    L94:
    sw t192, 72($fp)
    sw const34103, 76($fp)
    mov 76($fp), "-"
    mov 72($fp), 76($fp)
    sw t193, 80($fp)
    mov $r3, 1
    mov 80($fp), $r3
    sw t194, 84($fp)
    sw t193, 88($fp)
    neg 84($fp), 88($fp)
    sw t195, 92($fp)
    sw t194, 96($fp)
    mul 92($fp), i, 96($fp)
    sw t195, 100($fp)
    push 100($fp)
    sw t196, 104($fp)
    push 100($fp)
    jal A2I.i2a_aux
    mov 104($fp), $r1
    pop null
    sw t196, 108($fp)
    push 108($fp)
    sw t197, 112($fp)
    push 108($fp)
    jal concat
    mov 112($fp), $r1
    pop null
    sw t191, 116($fp)
    sw t197, 120($fp)
    mov 116($fp), 120($fp)
    L95:
    sw t187, 124($fp)
    sw t191, 128($fp)
    mov 124($fp), 128($fp)
    L92:
    mov $sp, $fp
    pop $fp
    sw t187, 132($fp)
    mov $r1, 132($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method i2a_aux
    push $fp
    mov $fp, $sp
    pop i
    sw t198, 4($fp)
    sw const48, 8($fp)
    mov 8($fp), 0
    mov 4($fp), 8($fp)
    sw t199, 12($fp)
    sw const48, 16($fp)
    mov 16($fp), 0
    cmp null, i, 16($fp)
    mov 12($fp), 0
    beq null, L276ce8fd4fc947bfb9c0acd1e39bfa40
    j L02bf9a2d98ca4f62a136c5fc032fab80
    L276ce8fd4fc947bfb9c0acd1e39bfa40:
    mov 12($fp), 1
    L02bf9a2d98ca4f62a136c5fc032fab80:
    sw t199, 20($fp)
    bne 20($fp), L96
    j L97
    L96:
    sw t200, 24($fp)
    sw const1088, 28($fp)
    mov 28($fp), ""
    mov 24($fp), 28($fp)
    sw t201, 32($fp)
    sw const1088, 36($fp)
    mov 36($fp), ""
    mov 32($fp), 36($fp)
    j L98
    L97:
    sw t202, 40($fp)
    sw const1567, 44($fp)
    mov 44($fp), 10
    mov 40($fp), 44($fp)
    sw t203, 48($fp)
    sw const1567, 52($fp)
    mov 52($fp), 10
    div 48($fp), i, 52($fp)
    sw t203, 56($fp)
    mov next, 56($fp)
    push next
    sw t204, 60($fp)
    push next
    jal A2I.i2a_aux
    mov 60($fp), $r1
    pop null
    sw t205, 64($fp)
    sw const1567, 68($fp)
    mov 68($fp), 10
    mov 64($fp), 68($fp)
    sw t206, 72($fp)
    sw const1567, 76($fp)
    mov 76($fp), 10
    mul 72($fp), next, 76($fp)
    sw t207, 80($fp)
    sw t206, 84($fp)
    sub 80($fp), i, 84($fp)
    sw t207, 88($fp)
    push 88($fp)
    sw t208, 92($fp)
    push 88($fp)
    jal A2I.i2c
    mov 92($fp), $r1
    pop null
    sw t208, 96($fp)
    push 96($fp)
    sw t209, 100($fp)
    push 96($fp)
    jal concat
    mov 100($fp), $r1
    pop null
    sw t201, 104($fp)
    sw t209, 108($fp)
    mov 104($fp), 108($fp)
    L98:
    mov $sp, $fp
    pop $fp
    sw t201, 112($fp)
    mov $r1, 112($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method c2i
    push $fp
    mov $fp, $sp
    pop char
    sw t57, 4($fp)
    sw const34196, 8($fp)
    mov 8($fp), "0"
    mov 4($fp), 8($fp)
    sw t58, 12($fp)
    sw const34196, 16($fp)
    mov 16($fp), "0"
    cmp null, char, 16($fp)
    mov 12($fp), 0
    beq null, Lcaf7ab0646154e44b9cbe82d3ab43525
    j Ld841fbd76d434fb280afe32e21f50aa9
    Lcaf7ab0646154e44b9cbe82d3ab43525:
    mov 12($fp), 1
    Ld841fbd76d434fb280afe32e21f50aa9:
    sw t58, 20($fp)
    bne 20($fp), L18
    j L19
    L18:
    sw t59, 24($fp)
    sw const48, 28($fp)
    mov 28($fp), 0
    mov 24($fp), 28($fp)
    sw t60, 32($fp)
    sw const48, 36($fp)
    mov 36($fp), 0
    mov 32($fp), 36($fp)
    j L20
    L19:
    sw t61, 40($fp)
    sw const34227, 44($fp)
    mov 44($fp), "1"
    mov 40($fp), 44($fp)
    sw t62, 48($fp)
    sw const34227, 52($fp)
    mov 52($fp), "1"
    cmp null, char, 52($fp)
    mov 48($fp), 0
    beq null, Lfaf2c63b3507485bbf059b1b5ff3b4cd
    j Leadd2734c85f4796915f183cbde5f3df
    Lfaf2c63b3507485bbf059b1b5ff3b4cd:
    mov 48($fp), 1
    Leadd2734c85f4796915f183cbde5f3df:
    sw t62, 56($fp)
    bne 56($fp), L21
    j L22
    L21:
    sw t63, 60($fp)
    mov $r3, 1
    mov 60($fp), $r3
    sw t64, 64($fp)
    mov $r3, 1
    mov 64($fp), $r3
    j L23
    L22:
    sw t65, 68($fp)
    sw const34258, 72($fp)
    mov 72($fp), "2"
    mov 68($fp), 72($fp)
    sw t66, 76($fp)
    sw const34258, 80($fp)
    mov 80($fp), "2"
    cmp null, char, 80($fp)
    mov 76($fp), 0
    beq null, L590d8223da9d4f17acc52590106d947a
    j L38ef3af068ed4d20a39ef9d91687a6cc
    L590d8223da9d4f17acc52590106d947a:
    mov 76($fp), 1
    L38ef3af068ed4d20a39ef9d91687a6cc:
    sw t66, 84($fp)
    bne 84($fp), L24
    j L25
    L24:
    sw t67, 88($fp)
    mov $r9, 2
    mov 88($fp), $r9
    sw t68, 92($fp)
    mov $r9, 2
    mov 92($fp), $r9
    j L26
    L25:
    sw t69, 96($fp)
    sw const34289, 100($fp)
    mov 100($fp), "3"
    mov 96($fp), 100($fp)
    sw t70, 104($fp)
    sw const34289, 108($fp)
    mov 108($fp), "3"
    cmp null, char, 108($fp)
    mov 104($fp), 0
    beq null, L76c012ed5e5e4711991e9a24058cf975
    j L8893a5e3d9ab476e9ea2124d50ab7d92
    L76c012ed5e5e4711991e9a24058cf975:
    mov 104($fp), 1
    L8893a5e3d9ab476e9ea2124d50ab7d92:
    sw t70, 112($fp)
    bne 112($fp), L27
    j L28
    L27:
    sw t71, 116($fp)
    sw const51, 120($fp)
    mov 120($fp), 3
    mov 116($fp), 120($fp)
    sw t72, 124($fp)
    sw const51, 128($fp)
    mov 128($fp), 3
    mov 124($fp), 128($fp)
    j L29
    L28:
    sw t73, 132($fp)
    sw const34320, 136($fp)
    mov 136($fp), "4"
    mov 132($fp), 136($fp)
    sw t74, 140($fp)
    sw const34320, 144($fp)
    mov 144($fp), "4"
    cmp null, char, 144($fp)
    mov 140($fp), 0
    beq null, L6570c47c78154b47b76b560fdeb2b58b
    j L870e5f8172c848d28f63abb690fcf893
    L6570c47c78154b47b76b560fdeb2b58b:
    mov 140($fp), 1
    L870e5f8172c848d28f63abb690fcf893:
    sw t74, 148($fp)
    bne 148($fp), L30
    j L31
    L30:
    sw t75, 152($fp)
    sw const52, 156($fp)
    mov 156($fp), 4
    mov 152($fp), 156($fp)
    sw t76, 160($fp)
    sw const52, 164($fp)
    mov 164($fp), 4
    mov 160($fp), 164($fp)
    j L32
    L31:
    sw t77, 168($fp)
    sw const34351, 172($fp)
    mov 172($fp), "5"
    mov 168($fp), 172($fp)
    sw t78, 176($fp)
    sw const34351, 180($fp)
    mov 180($fp), "5"
    cmp null, char, 180($fp)
    mov 176($fp), 0
    beq null, L4a5249d639b4450a847d2b964970191a
    j L1e6e12319fdc4cdda87155de1bab3ea8
    L4a5249d639b4450a847d2b964970191a:
    mov 176($fp), 1
    L1e6e12319fdc4cdda87155de1bab3ea8:
    sw t78, 184($fp)
    bne 184($fp), L33
    j L34
    L33:
    sw t79, 188($fp)
    sw const53, 192($fp)
    mov 192($fp), 5
    mov 188($fp), 192($fp)
    sw t80, 196($fp)
    sw const53, 200($fp)
    mov 200($fp), 5
    mov 196($fp), 200($fp)
    j L35
    L34:
    sw t81, 204($fp)
    sw const34382, 208($fp)
    mov 208($fp), "6"
    mov 204($fp), 208($fp)
    sw t82, 212($fp)
    sw const34382, 216($fp)
    mov 216($fp), "6"
    cmp null, char, 216($fp)
    mov 212($fp), 0
    beq null, L368b05c8e02441cabdb27d1912927edf
    j L04e6943cc48b4f35bb599df399685106
    L368b05c8e02441cabdb27d1912927edf:
    mov 212($fp), 1
    L04e6943cc48b4f35bb599df399685106:
    sw t82, 220($fp)
    bne 220($fp), L36
    j L37
    L36:
    sw t83, 224($fp)
    sw const54, 228($fp)
    mov 228($fp), 6
    mov 224($fp), 228($fp)
    sw t84, 232($fp)
    sw const54, 236($fp)
    mov 236($fp), 6
    mov 232($fp), 236($fp)
    j L38
    L37:
    sw t85, 240($fp)
    sw const34413, 244($fp)
    mov 244($fp), "7"
    mov 240($fp), 244($fp)
    sw t86, 248($fp)
    sw const34413, 252($fp)
    mov 252($fp), "7"
    cmp null, char, 252($fp)
    mov 248($fp), 0
    beq null, L5c79d59350b242a68dccfd8e1d88f86c
    j L1a9ae988ac6f4726b099e3b4a6944353
    L5c79d59350b242a68dccfd8e1d88f86c:
    mov 248($fp), 1
    L1a9ae988ac6f4726b099e3b4a6944353:
    sw t86, 256($fp)
    bne 256($fp), L39
    j L40
    L39:
    sw t87, 260($fp)
    sw const55, 264($fp)
    mov 264($fp), 7
    mov 260($fp), 264($fp)
    sw t88, 268($fp)
    sw const55, 272($fp)
    mov 272($fp), 7
    mov 268($fp), 272($fp)
    j L41
    L40:
    sw t89, 276($fp)
    sw const34444, 280($fp)
    mov 280($fp), "8"
    mov 276($fp), 280($fp)
    sw t90, 284($fp)
    sw const34444, 288($fp)
    mov 288($fp), "8"
    cmp null, char, 288($fp)
    mov 284($fp), 0
    beq null, L0d59826aa5994d2f9ab7d806e74879aa
    j L1d9c0e058cde4bc78dab8ac8e7ded3f7
    L0d59826aa5994d2f9ab7d806e74879aa:
    mov 284($fp), 1
    L1d9c0e058cde4bc78dab8ac8e7ded3f7:
    sw t90, 292($fp)
    bne 292($fp), L42
    j L43
    L42:
    sw t91, 296($fp)
    sw const56, 300($fp)
    mov 300($fp), 8
    mov 296($fp), 300($fp)
    sw t92, 304($fp)
    sw const56, 308($fp)
    mov 308($fp), 8
    mov 304($fp), 308($fp)
    j L44
    L43:
    sw t93, 312($fp)
    sw const34475, 316($fp)
    mov 316($fp), "9"
    mov 312($fp), 316($fp)
    sw t94, 320($fp)
    sw const34475, 324($fp)
    mov 324($fp), "9"
    cmp null, char, 324($fp)
    mov 320($fp), 0
    beq null, Lbc3b89dc0443421097b259435e9d5e86
    j Lae8f013ab99b43b0bd86992445bd52df
    Lbc3b89dc0443421097b259435e9d5e86:
    mov 320($fp), 1
    Lae8f013ab99b43b0bd86992445bd52df:
    sw t94, 328($fp)
    bne 328($fp), L45
    j L46
    L45:
    sw t95, 332($fp)
    sw const57, 336($fp)
    mov 336($fp), 9
    mov 332($fp), 336($fp)
    sw t96, 340($fp)
    sw const57, 344($fp)
    mov 344($fp), 9
    mov 340($fp), 344($fp)
    j L47
    L46:
    sw t97, 348($fp)
    jal A2I.abort
    mov 348($fp), $r1
    sw t98, 352($fp)
    sw const48, 356($fp)
    mov 356($fp), 0
    mov 352($fp), 356($fp)
    sw t96, 360($fp)
    sw const48, 364($fp)
    mov 364($fp), 0
    mov 360($fp), 364($fp)
    L47:
    sw t92, 368($fp)
    sw const48, 372($fp)
    mov 372($fp), 0
    mov 368($fp), 372($fp)
    L44:
    sw t88, 376($fp)
    sw const56, 380($fp)
    mov 380($fp), 8
    mov 376($fp), 380($fp)
    L41:
    sw t84, 384($fp)
    sw const55, 388($fp)
    mov 388($fp), 7
    mov 384($fp), 388($fp)
    L38:
    sw t80, 392($fp)
    sw const54, 396($fp)
    mov 396($fp), 6
    mov 392($fp), 396($fp)
    L35:
    sw t76, 400($fp)
    sw const53, 404($fp)
    mov 404($fp), 5
    mov 400($fp), 404($fp)
    L32:
    sw t72, 408($fp)
    sw const52, 412($fp)
    mov 412($fp), 4
    mov 408($fp), 412($fp)
    L29:
    sw t68, 416($fp)
    sw const51, 420($fp)
    mov 420($fp), 3
    mov 416($fp), 420($fp)
    L26:
    sw t64, 424($fp)
    mov $r9, 2
    mov 424($fp), $r9
    L23:
    sw t60, 428($fp)
    mov $r3, 1
    mov 428($fp), $r3
    L20:
    mov $sp, $fp
    pop $fp
    sw t60, 432($fp)
    mov $r1, 432($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method i2c
    push $fp
    mov $fp, $sp
    pop i
    sw t99, 4($fp)
    sw const48, 8($fp)
    mov 8($fp), 0
    mov 4($fp), 8($fp)
    sw t100, 12($fp)
    sw const48, 16($fp)
    mov 16($fp), 0
    cmp null, i, 16($fp)
    mov 12($fp), 0
    beq null, Lc4ab329b00564d51b562cc6d81d08699
    j L6436cd80f04a4cce830305e17fbb2787
    Lc4ab329b00564d51b562cc6d81d08699:
    mov 12($fp), 1
    L6436cd80f04a4cce830305e17fbb2787:
    sw t100, 20($fp)
    bne 20($fp), L48
    j L49
    L48:
    sw t101, 24($fp)
    sw const34196, 28($fp)
    mov 28($fp), "0"
    mov 24($fp), 28($fp)
    sw t102, 32($fp)
    sw const34196, 36($fp)
    mov 36($fp), "0"
    mov 32($fp), 36($fp)
    j L50
    L49:
    sw t103, 40($fp)
    mov $r3, 1
    mov 40($fp), $r3
    sw t104, 44($fp)
    mov $r3, 1
    cmp null, i, $r3
    mov 44($fp), 0
    beq null, L9533a14b92f54a818426036127f20618
    j Lcef36a55243449fcbc98a5b4a5cbde1d
    L9533a14b92f54a818426036127f20618:
    mov 44($fp), 1
    Lcef36a55243449fcbc98a5b4a5cbde1d:
    sw t104, 48($fp)
    bne 48($fp), L51
    j L52
    L51:
    sw t105, 52($fp)
    sw const34227, 56($fp)
    mov 56($fp), "1"
    mov 52($fp), 56($fp)
    sw t106, 60($fp)
    sw const34227, 64($fp)
    mov 64($fp), "1"
    mov 60($fp), 64($fp)
    j L53
    L52:
    sw t107, 68($fp)
    mov $r9, 2
    mov 68($fp), $r9
    sw t108, 72($fp)
    mov $r9, 2
    cmp null, i, $r9
    mov 72($fp), 0
    beq null, L18efc641a9474171b38cf953aecba7c4
    j L86fc6741ae4347239e89decf52ea8687
    L18efc641a9474171b38cf953aecba7c4:
    mov 72($fp), 1
    L86fc6741ae4347239e89decf52ea8687:
    sw t108, 76($fp)
    bne 76($fp), L54
    j L55
    L54:
    sw t109, 80($fp)
    sw const34258, 84($fp)
    mov 84($fp), "2"
    mov 80($fp), 84($fp)
    sw t110, 88($fp)
    sw const34258, 92($fp)
    mov 92($fp), "2"
    mov 88($fp), 92($fp)
    j L56
    L55:
    sw t111, 96($fp)
    sw const51, 100($fp)
    mov 100($fp), 3
    mov 96($fp), 100($fp)
    sw t112, 104($fp)
    sw const51, 108($fp)
    mov 108($fp), 3
    cmp null, i, 108($fp)
    mov 104($fp), 0
    beq null, L79162c467787482192a2b6d602c6e77f
    j La11a7351ad0e4d99b0a32039f04fcb83
    L79162c467787482192a2b6d602c6e77f:
    mov 104($fp), 1
    La11a7351ad0e4d99b0a32039f04fcb83:
    sw t112, 112($fp)
    bne 112($fp), L57
    j L58
    L57:
    sw t113, 116($fp)
    sw const34289, 120($fp)
    mov 120($fp), "3"
    mov 116($fp), 120($fp)
    sw t114, 124($fp)
    sw const34289, 128($fp)
    mov 128($fp), "3"
    mov 124($fp), 128($fp)
    j L59
    L58:
    sw t115, 132($fp)
    sw const52, 136($fp)
    mov 136($fp), 4
    mov 132($fp), 136($fp)
    sw t116, 140($fp)
    sw const52, 144($fp)
    mov 144($fp), 4
    cmp null, i, 144($fp)
    mov 140($fp), 0
    beq null, Lf3f325e7f0c745f38126b5e068edb1a3
    j Ld4299cbf2f0a4cc29d2255593da4dcda
    Lf3f325e7f0c745f38126b5e068edb1a3:
    mov 140($fp), 1
    Ld4299cbf2f0a4cc29d2255593da4dcda:
    sw t116, 148($fp)
    bne 148($fp), L60
    j L61
    L60:
    sw t117, 152($fp)
    sw const34320, 156($fp)
    mov 156($fp), "4"
    mov 152($fp), 156($fp)
    sw t118, 160($fp)
    sw const34320, 164($fp)
    mov 164($fp), "4"
    mov 160($fp), 164($fp)
    j L62
    L61:
    sw t119, 168($fp)
    sw const53, 172($fp)
    mov 172($fp), 5
    mov 168($fp), 172($fp)
    sw t120, 176($fp)
    sw const53, 180($fp)
    mov 180($fp), 5
    cmp null, i, 180($fp)
    mov 176($fp), 0
    beq null, La63384e6e48643f1b7b71259d61242f4
    j L4b2ce9e6a4604b34b1513de25d80e369
    La63384e6e48643f1b7b71259d61242f4:
    mov 176($fp), 1
    L4b2ce9e6a4604b34b1513de25d80e369:
    sw t120, 184($fp)
    bne 184($fp), L63
    j L64
    L63:
    sw t121, 188($fp)
    sw const34351, 192($fp)
    mov 192($fp), "5"
    mov 188($fp), 192($fp)
    sw t122, 196($fp)
    sw const34351, 200($fp)
    mov 200($fp), "5"
    mov 196($fp), 200($fp)
    j L65
    L64:
    sw t123, 204($fp)
    sw const54, 208($fp)
    mov 208($fp), 6
    mov 204($fp), 208($fp)
    sw t124, 212($fp)
    sw const54, 216($fp)
    mov 216($fp), 6
    cmp null, i, 216($fp)
    mov 212($fp), 0
    beq null, Lb4bf6731994c4b58aaf5b687cb5ee84a
    j L1c9d0357b35a45208f65ed335e67d094
    Lb4bf6731994c4b58aaf5b687cb5ee84a:
    mov 212($fp), 1
    L1c9d0357b35a45208f65ed335e67d094:
    sw t124, 220($fp)
    bne 220($fp), L66
    j L67
    L66:
    sw t125, 224($fp)
    sw const34382, 228($fp)
    mov 228($fp), "6"
    mov 224($fp), 228($fp)
    sw t126, 232($fp)
    sw const34382, 236($fp)
    mov 236($fp), "6"
    mov 232($fp), 236($fp)
    j L68
    L67:
    sw t127, 240($fp)
    sw const55, 244($fp)
    mov 244($fp), 7
    mov 240($fp), 244($fp)
    sw t128, 248($fp)
    sw const55, 252($fp)
    mov 252($fp), 7
    cmp null, i, 252($fp)
    mov 248($fp), 0
    beq null, L8e89cab7083643f5ae52b533159387c1
    j Le68866bad4d54cd7b35a1835a33980d4
    L8e89cab7083643f5ae52b533159387c1:
    mov 248($fp), 1
    Le68866bad4d54cd7b35a1835a33980d4:
    sw t128, 256($fp)
    bne 256($fp), L69
    j L70
    L69:
    sw t129, 260($fp)
    sw const34413, 264($fp)
    mov 264($fp), "7"
    mov 260($fp), 264($fp)
    sw t130, 268($fp)
    sw const34413, 272($fp)
    mov 272($fp), "7"
    mov 268($fp), 272($fp)
    j L71
    L70:
    sw t131, 276($fp)
    sw const56, 280($fp)
    mov 280($fp), 8
    mov 276($fp), 280($fp)
    sw t132, 284($fp)
    sw const56, 288($fp)
    mov 288($fp), 8
    cmp null, i, 288($fp)
    mov 284($fp), 0
    beq null, L1bab9cdbd5a149a6940c968915c0cb91
    j L92a0b780eb66411787241807ac9ebbfd
    L1bab9cdbd5a149a6940c968915c0cb91:
    mov 284($fp), 1
    L92a0b780eb66411787241807ac9ebbfd:
    sw t132, 292($fp)
    bne 292($fp), L72
    j L73
    L72:
    sw t133, 296($fp)
    sw const34444, 300($fp)
    mov 300($fp), "8"
    mov 296($fp), 300($fp)
    sw t134, 304($fp)
    sw const34444, 308($fp)
    mov 308($fp), "8"
    mov 304($fp), 308($fp)
    j L74
    L73:
    sw t135, 312($fp)
    sw const57, 316($fp)
    mov 316($fp), 9
    mov 312($fp), 316($fp)
    sw t136, 320($fp)
    sw const57, 324($fp)
    mov 324($fp), 9
    cmp null, i, 324($fp)
    mov 320($fp), 0
    beq null, L1fcba8a9a61d413bbe1475ef8f462155
    j L3d4e6d66f70b4440b6a3fb247d14b8ef
    L1fcba8a9a61d413bbe1475ef8f462155:
    mov 320($fp), 1
    L3d4e6d66f70b4440b6a3fb247d14b8ef:
    sw t136, 328($fp)
    bne 328($fp), L75
    j L76
    L75:
    sw t137, 332($fp)
    sw const34475, 336($fp)
    mov 336($fp), "9"
    mov 332($fp), 336($fp)
    sw t138, 340($fp)
    sw const34475, 344($fp)
    mov 344($fp), "9"
    mov 340($fp), 344($fp)
    j L77
    L76:
    sw t139, 348($fp)
    jal A2I.abort
    mov 348($fp), $r1
    sw t140, 352($fp)
    sw const1088, 356($fp)
    mov 356($fp), ""
    mov 352($fp), 356($fp)
    sw t138, 360($fp)
    sw const1088, 364($fp)
    mov 364($fp), ""
    mov 360($fp), 364($fp)
    L77:
    sw t134, 368($fp)
    sw const1088, 372($fp)
    mov 372($fp), ""
    mov 368($fp), 372($fp)
    L74:
    sw t130, 376($fp)
    sw const34444, 380($fp)
    mov 380($fp), "8"
    mov 376($fp), 380($fp)
    L71:
    sw t126, 384($fp)
    sw const34413, 388($fp)
    mov 388($fp), "7"
    mov 384($fp), 388($fp)
    L68:
    sw t122, 392($fp)
    sw const34382, 396($fp)
    mov 396($fp), "6"
    mov 392($fp), 396($fp)
    L65:
    sw t118, 400($fp)
    sw const34351, 404($fp)
    mov 404($fp), "5"
    mov 400($fp), 404($fp)
    L62:
    sw t114, 408($fp)
    sw const34320, 412($fp)
    mov 412($fp), "4"
    mov 408($fp), 412($fp)
    L59:
    sw t110, 416($fp)
    sw const34289, 420($fp)
    mov 420($fp), "3"
    mov 416($fp), 420($fp)
    L56:
    sw t106, 424($fp)
    sw const34258, 428($fp)
    mov 428($fp), "2"
    mov 424($fp), 428($fp)
    L53:
    sw t102, 432($fp)
    sw const34227, 436($fp)
    mov 436($fp), "1"
    mov 432($fp), 436($fp)
    L50:
    mov $sp, $fp
    pop $fp
    sw t102, 440($fp)
    mov $r1, 440($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method a2i_aux
    push $fp
    mov $fp, $sp
    pop s
    sw t172, 4($fp)
    sw const48, 8($fp)
    mov 8($fp), 0
    mov 4($fp), 8($fp)
    sw const48, 12($fp)
    mov 12($fp), 0
    mov int, 12($fp)
    sw t173, 16($fp)
    jal length
    mov 16($fp), $r1
    sw t173, 20($fp)
    mov j, 20($fp)
    sw t174, 24($fp)
    sw const48, 28($fp)
    mov 28($fp), 0
    mov 24($fp), 28($fp)
    sw const48, 32($fp)
    mov 32($fp), 0
    mov i, 32($fp)
    L_preheader_6a639d63ac8a4d11b6da02f178b24d36:
    sw t176, 36($fp)
    sw const1567, 40($fp)
    mov 40($fp), 10
    mov 36($fp), 40($fp)
    sw t178, 44($fp)
    mov $r3, 1
    mov 44($fp), $r3
    sw t182, 48($fp)
    mov $r3, 1
    mov 48($fp), $r3
    j L87
    L87:
    sw t175, 52($fp)
    sw const48, 56($fp)
    mov 56($fp), 0
    cmp null, 56($fp), j
    mov 52($fp), 0
    blt null, L6d400ffd09aa4fb284494f059080d3cb
    j L4798524ba8a84ded856ea144547f07f5
    L6d400ffd09aa4fb284494f059080d3cb:
    mov 52($fp), 1
    L4798524ba8a84ded856ea144547f07f5:
    sw t175, 60($fp)
    bne 60($fp), L88
    j L89
    L88:
    sw t177, 64($fp)
    sw const48, 68($fp)
    mov 68($fp), 0
    mov 64($fp), 68($fp)
    push i
    sw t178, 72($fp)
    push 72($fp)
    sw t179, 76($fp)
    push i
    push 72($fp)
    jal substr
    mov 76($fp), $r1
    pop null
    sw t179, 80($fp)
    push 80($fp)
    sw t180, 84($fp)
    push 80($fp)
    jal A2I.c2i
    mov 84($fp), $r1
    pop null
    sw t181, 88($fp)
    sw const48, 92($fp)
    mov 92($fp), 0
    sw t180, 96($fp)
    add 88($fp), 92($fp), 96($fp)
    sw t181, 100($fp)
    mov int, 100($fp)
    sw t183, 104($fp)
    mov $r3, 1
    mov 104($fp), $r3
    mov $r3, 1
    mov i, $r3
    j L_preheader_6a639d63ac8a4d11b6da02f178b24d36
    L89:
    mov $sp, $fp
    pop $fp
    mov $r1, int
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class Main
.method print
    push $fp
    mov $fp, $sp
    pop var
    sw t300, 4($fp)
    jal new A2I
    mov 4($fp), $r1
    sw t300, 8($fp)
    mov z, 8($fp)
    sw t301, 12($fp)
    jal value
    mov 12($fp), $r1
    sw t301, 16($fp)
    push 16($fp)
    sw t302, 20($fp)
    push 16($fp)
    jal i2a
    mov 20($fp), $r1
    pop null
    sw t302, 24($fp)
    push 24($fp)
    sw t303, 28($fp)
    push 24($fp)
    jal Main.out_string
    mov 28($fp), $r1
    pop null
    sw t304, 32($fp)
    sw const33700, 36($fp)
    mov 36($fp), " "
    mov 32($fp), 36($fp)
    sw t304, 40($fp)
    push 40($fp)
    sw t305, 44($fp)
    push 40($fp)
    jal Main.out_string
    mov 44($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    sw t305, 48($fp)
    mov $r1, 48($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method class_type
    push $fp
    mov $fp, $sp
    pop var
    bne var.type == A, L109
    bne var.type == B, L110
    bne var.type == C, L111
    bne var.type == D, L112
    bne var.type == E, L113
    bne var.type == Object, L114
    L109:
    sw t288, 4($fp)
    sw const828047539, 8($fp)
    mov 8($fp), "Class type is now A\n"
    mov 4($fp), 8($fp)
    sw t288, 12($fp)
    push 12($fp)
    sw t289, 16($fp)
    push 12($fp)
    jal Main.out_string
    mov 16($fp), $r1
    pop null
    sw t287, 20($fp)
    sw t289, 24($fp)
    mov 20($fp), 24($fp)
    j L108
    L110:
    sw t290, 28($fp)
    sw const828077330, 32($fp)
    mov 32($fp), "Class type is now B\n"
    mov 28($fp), 32($fp)
    sw t290, 36($fp)
    push 36($fp)
    sw t291, 40($fp)
    push 36($fp)
    jal Main.out_string
    mov 40($fp), $r1
    pop null
    sw t287, 44($fp)
    sw t291, 48($fp)
    mov 44($fp), 48($fp)
    j L108
    L111:
    sw t292, 52($fp)
    sw const828107121, 56($fp)
    mov 56($fp), "Class type is now C\n"
    mov 52($fp), 56($fp)
    sw t292, 60($fp)
    push 60($fp)
    sw t293, 64($fp)
    push 60($fp)
    jal Main.out_string
    mov 64($fp), $r1
    pop null
    sw t287, 68($fp)
    sw t293, 72($fp)
    mov 68($fp), 72($fp)
    j L108
    L112:
    sw t294, 76($fp)
    sw const828136912, 80($fp)
    mov 80($fp), "Class type is now D\n"
    mov 76($fp), 80($fp)
    sw t294, 84($fp)
    push 84($fp)
    sw t295, 88($fp)
    push 84($fp)
    jal Main.out_string
    mov 88($fp), $r1
    pop null
    sw t287, 92($fp)
    sw t295, 96($fp)
    mov 92($fp), 96($fp)
    j L108
    L113:
    sw t296, 100($fp)
    sw const828166703, 104($fp)
    mov 104($fp), "Class type is now E\n"
    mov 100($fp), 104($fp)
    sw t296, 108($fp)
    push 108($fp)
    sw t297, 112($fp)
    push 108($fp)
    jal Main.out_string
    mov 112($fp), $r1
    pop null
    sw t287, 116($fp)
    sw t297, 120($fp)
    mov 116($fp), 120($fp)
    j L108
    L114:
    sw t298, 124($fp)
    sw const-249606101, 128($fp)
    mov 128($fp), "Oooops\n"
    mov 124($fp), 128($fp)
    sw t298, 132($fp)
    push 132($fp)
    sw t299, 136($fp)
    push 132($fp)
    jal Main.out_string
    mov 136($fp), $r1
    pop null
    sw t287, 140($fp)
    sw t299, 144($fp)
    mov 140($fp), 144($fp)
    j L108
    L108:
    mov $sp, $fp
    pop $fp
    sw t287, 148($fp)
    mov $r1, 148($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method is_even
    push $fp
    mov $fp, $sp
    pop num
    mov x, num
    sw t271, 4($fp)
    sw const48, 8($fp)
    mov 8($fp), 0
    mov 4($fp), 8($fp)
    sw t272, 12($fp)
    sw const48, 16($fp)
    mov 16($fp), 0
    cmp null, x, 16($fp)
    mov 12($fp), 0
    blt null, L2ab525e1ba6143e2b9d159128a0b218d
    j L3d118f7678114de8bab120218290dcba
    L2ab525e1ba6143e2b9d159128a0b218d:
    mov 12($fp), 1
    L3d118f7678114de8bab120218290dcba:
    sw t272, 20($fp)
    bne 20($fp), L99
    j L100
    L99:
    sw t273, 24($fp)
    neg 24($fp), x
    sw t273, 28($fp)
    push 28($fp)
    sw t274, 32($fp)
    push 28($fp)
    jal Main.is_even
    mov 32($fp), $r1
    pop null
    sw t275, 36($fp)
    sw t274, 40($fp)
    mov 36($fp), 40($fp)
    j L101
    L100:
    sw t276, 44($fp)
    sw const48, 48($fp)
    mov 48($fp), 0
    mov 44($fp), 48($fp)
    sw t277, 52($fp)
    sw const48, 56($fp)
    mov 56($fp), 0
    cmp null, 56($fp), x
    mov 52($fp), 0
    beq null, Ld7792bff565e455a9dc6246102224004
    j La74a9614661c4bc3a7e87fe125ba0cd9
    Ld7792bff565e455a9dc6246102224004:
    mov 52($fp), 1
    La74a9614661c4bc3a7e87fe125ba0cd9:
    sw t277, 60($fp)
    bne 60($fp), L102
    j L103
    L102:
    sw t278, 64($fp)
    mov 64($fp), true
    sw t279, 68($fp)
    mov 68($fp), true
    j L104
    L103:
    sw t280, 72($fp)
    mov $r3, 1
    mov 72($fp), $r3
    sw t281, 76($fp)
    mov $r3, 1
    cmp null, $r3, x
    mov 76($fp), 0
    beq null, L28cd252a145940e18a68d1619ed933d2
    j L617001a0942c46bcb42da2fe13916b47
    L28cd252a145940e18a68d1619ed933d2:
    mov 76($fp), 1
    L617001a0942c46bcb42da2fe13916b47:
    sw t281, 80($fp)
    bne 80($fp), L105
    j L106
    L105:
    sw t282, 84($fp)
    mov 84($fp), false
    sw t283, 88($fp)
    mov 88($fp), false
    j L107
    L106:
    sw t284, 92($fp)
    mov $r9, 2
    mov 92($fp), $r9
    sw t285, 96($fp)
    mov $r9, 2
    sub 96($fp), x, $r9
    sw t285, 100($fp)
    push 100($fp)
    sw t286, 104($fp)
    push 100($fp)
    jal Main.is_even
    mov 104($fp), $r1
    pop null
    sw t283, 108($fp)
    sw t286, 112($fp)
    mov 108($fp), 112($fp)
    L107:
    sw t279, 116($fp)
    mov 116($fp), false
    L104:
    sw t275, 120($fp)
    mov 120($fp), true
    L101:
    mov $sp, $fp
    pop $fp
    sw t275, 124($fp)
    mov $r1, 124($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method main
    push $fp
    mov $fp, $sp
    sw t306, 4($fp)
    jal new A
    mov 4($fp), $r1
    sw t306, 8($fp)
    sw 8($fp), avar($fp)
    L_preheader_9039cc2159b747f599b18aedf13c5940:
    sw t308, 12($fp)
    sw const1084616493, 16($fp)
    mov 16($fp), "number "
    mov 12($fp), 16($fp)
    sw t315, 20($fp)
    sw const1834939389, 24($fp)
    mov 24($fp), "is even!\n"
    mov 20($fp), 24($fp)
    sw t318, 28($fp)
    sw const795640170, 32($fp)
    mov 32($fp), "is odd!\n"
    mov 28($fp), 32($fp)
    sw t324, 36($fp)
    sw const35715, 40($fp)
    mov 40($fp), "a"
    mov 36($fp), 40($fp)
    sw t337, 44($fp)
    sw const35746, 48($fp)
    mov 48($fp), "b"
    mov 44($fp), 48($fp)
    sw t345, 52($fp)
    sw const-249606101, 56($fp)
    mov 56($fp), "Oooops\n"
    mov 52($fp), 56($fp)
    sw t348, 60($fp)
    sw const48, 64($fp)
    mov 64($fp), 0
    mov 60($fp), 64($fp)
    sw t340, 68($fp)
    sw const48, 72($fp)
    mov 72($fp), 0
    mov 68($fp), 72($fp)
    sw t351, 76($fp)
    sw const35777, 80($fp)
    mov 80($fp), "c"
    mov 76($fp), 80($fp)
    sw t364, 84($fp)
    sw const35808, 88($fp)
    mov 88($fp), "d"
    mov 84($fp), 88($fp)
    sw t372, 92($fp)
    sw const35839, 96($fp)
    mov 96($fp), "e"
    mov 92($fp), 96($fp)
    sw t380, 100($fp)
    sw const35870, 104($fp)
    mov 104($fp), "f"
    mov 100($fp), 104($fp)
    sw t388, 108($fp)
    sw const35901, 112($fp)
    mov 112($fp), "g"
    mov 108($fp), 112($fp)
    sw t394, 116($fp)
    sw const1084616493, 120($fp)
    mov 120($fp), "number "
    mov 116($fp), 120($fp)
    sw t398, 124($fp)
    sw const1934291923, 128($fp)
    mov 128($fp), "is divisible by 3.\n"
    mov 124($fp), 128($fp)
    sw t401, 132($fp)
    sw const1084616493, 136($fp)
    mov 136($fp), "number "
    mov 132($fp), 136($fp)
    sw t405, 140($fp)
    sw const-2016876480, 144($fp)
    mov 144($fp), "is not divisible by 3.\n"
    mov 140($fp), 144($fp)
    sw t409, 148($fp)
    sw const35932, 152($fp)
    mov 152($fp), "h"
    mov 148($fp), 152($fp)
    sw t418, 156($fp)
    sw const56, 160($fp)
    mov 160($fp), 8
    mov 156($fp), 160($fp)
    sw t421, 164($fp)
    sw const1084616493, 168($fp)
    mov 168($fp), "number "
    mov 164($fp), 168($fp)
    sw t425, 172($fp)
    sw const-147890947, 176($fp)
    mov 176($fp), "is equal to "
    mov 172($fp), 176($fp)
    sw t428, 180($fp)
    sw const-720846519, 184($fp)
    mov 184($fp), "times 8 with a remainder of "
    mov 180($fp), 184($fp)
    sw t433, 188($fp)
    sw const1104750, 192($fp)
    mov 192($fp), "\n"
    mov 188($fp), 192($fp)
    sw t437, 196($fp)
    sw const35994, 200($fp)
    mov 200($fp), "j"
    mov 196($fp), 200($fp)
    sw t442, 204($fp)
    sw const36211, 208($fp)
    mov 208($fp), "q"
    mov 204($fp), 208($fp)
    sw t444, 212($fp)
    mov 212($fp), false
    sw t445, 216($fp)
    mov 216($fp), false
    j L115
    L115:
    sw t307, 220($fp)
    lw 220($fp), flag($fp)
    sw t307, 224($fp)
    bne 224($fp), L116
    j L117
    L116:
    sw t308, 228($fp)
    push 228($fp)
    sw t309, 232($fp)
    push 228($fp)
    jal Main.out_string
    mov 232($fp), $r1
    pop null
    sw t310, 236($fp)
    lw 236($fp), avar($fp)
    sw t310, 240($fp)
    push 240($fp)
    sw t311, 244($fp)
    push 240($fp)
    jal Main.print
    mov 244($fp), $r1
    pop null
    sw t312, 248($fp)
    lw 248($fp), avar($fp)
    sw t313, 252($fp)
    jal value
    mov 252($fp), $r1
    sw t313, 256($fp)
    push 256($fp)
    sw t314, 260($fp)
    push 256($fp)
    jal Main.is_even
    mov 260($fp), $r1
    pop null
    sw t314, 264($fp)
    bne 264($fp), L118
    j L119
    L118:
    sw t315, 268($fp)
    push 268($fp)
    sw t316, 272($fp)
    push 268($fp)
    jal Main.out_string
    mov 272($fp), $r1
    pop null
    sw t317, 276($fp)
    sw t316, 280($fp)
    mov 276($fp), 280($fp)
    j L120
    L119:
    sw t318, 284($fp)
    push 284($fp)
    sw t319, 288($fp)
    push 284($fp)
    jal Main.out_string
    mov 288($fp), $r1
    pop null
    sw t317, 292($fp)
    sw t319, 296($fp)
    mov 292($fp), 296($fp)
    L120:
    sw t320, 300($fp)
    lw 300($fp), avar($fp)
    sw t320, 304($fp)
    push 304($fp)
    sw t321, 308($fp)
    push 304($fp)
    jal Main.class_type
    mov 308($fp), $r1
    pop null
    sw t322, 312($fp)
    jal Main.menu
    mov 312($fp), $r1
    sw t322, 316($fp)
    sw 316($fp), char($fp)
    sw t323, 320($fp)
    lw 320($fp), char($fp)
    sw t325, 324($fp)
    sw t323, 328($fp)
    sw const35715, 332($fp)
    mov 332($fp), "a"
    cmp null, 328($fp), 332($fp)
    mov 324($fp), 0
    beq null, L63c999dcef894bcd9f62e185d4243f20
    j Ld8038fe3855e479b9bb745a7e229049f
    L63c999dcef894bcd9f62e185d4243f20:
    mov 324($fp), 1
    Ld8038fe3855e479b9bb745a7e229049f:
    sw t325, 336($fp)
    bne 336($fp), L121
    j L122
    L121:
    sw t326, 340($fp)
    jal new A
    mov 340($fp), $r1
    sw t327, 344($fp)
    jal Main.get_int
    mov 344($fp), $r1
    sw t327, 348($fp)
    push 348($fp)
    sw t328, 352($fp)
    push 348($fp)
    jal set_var
    mov 352($fp), $r1
    pop null
    sw t328, 356($fp)
    sw 356($fp), a_var($fp)
    sw t329, 360($fp)
    jal new B
    mov 360($fp), $r1
    sw t330, 364($fp)
    lw 364($fp), avar($fp)
    sw t331, 368($fp)
    jal value
    mov 368($fp), $r1
    sw t332, 372($fp)
    lw 372($fp), a_var($fp)
    sw t333, 376($fp)
    jal value
    mov 376($fp), $r1
    sw t331, 380($fp)
    push 380($fp)
    sw t333, 384($fp)
    push 384($fp)
    sw t334, 388($fp)
    push 380($fp)
    push 384($fp)
    jal method2
    mov 388($fp), $r1
    pop null
    sw t334, 392($fp)
    sw 392($fp), avar($fp)
    sw t335, 396($fp)
    sw t334, 400($fp)
    mov 396($fp), 400($fp)
    j L123
    L122:
    sw t336, 404($fp)
    lw 404($fp), char($fp)
    sw t338, 408($fp)
    sw t336, 412($fp)
    sw const35746, 416($fp)
    mov 416($fp), "b"
    cmp null, 412($fp), 416($fp)
    mov 408($fp), 0
    beq null, Lcbd652a1870244fab10b5e19e947cd2d
    j Ld4ba01cf7bab465d9ca430f42d365d56
    Lcbd652a1870244fab10b5e19e947cd2d:
    mov 408($fp), 1
    Ld4ba01cf7bab465d9ca430f42d365d56:
    sw t338, 420($fp)
    bne 420($fp), L124
    j L125
    L124:
    sw t339, 424($fp)
    lw 424($fp), avar($fp)
    bne t339.type == C, L128
    bne t339.type == A, L129
    bne t339.type == Object, L130
    L128:
    sw t341, 428($fp)
    jal value
    mov 428($fp), $r1
    sw t341, 432($fp)
    push 432($fp)
    sw t342, 436($fp)
    push 432($fp)
    jal method6
    mov 436($fp), $r1
    pop null
    sw t342, 440($fp)
    sw 440($fp), avar($fp)
    sw t340, 444($fp)
    sw t342, 448($fp)
    mov 444($fp), 448($fp)
    j L127
    L129:
    sw t343, 452($fp)
    jal value
    mov 452($fp), $r1
    sw t343, 456($fp)
    push 456($fp)
    sw t344, 460($fp)
    push 456($fp)
    jal method3
    mov 460($fp), $r1
    pop null
    sw t344, 464($fp)
    sw 464($fp), avar($fp)
    sw t340, 468($fp)
    sw t344, 472($fp)
    mov 468($fp), 472($fp)
    j L127
    L130:
    sw t345, 476($fp)
    push 476($fp)
    sw t346, 480($fp)
    push 476($fp)
    jal Main.out_string
    mov 480($fp), $r1
    pop null
    sw t347, 484($fp)
    jal Main.abort
    mov 484($fp), $r1
    j L127
    L127:
    sw t349, 488($fp)
    sw const48, 492($fp)
    mov 492($fp), 0
    mov 488($fp), 492($fp)
    j L126
    L125:
    sw t350, 496($fp)
    lw 496($fp), char($fp)
    sw t352, 500($fp)
    sw t350, 504($fp)
    sw const35777, 508($fp)
    mov 508($fp), "c"
    cmp null, 504($fp), 508($fp)
    mov 500($fp), 0
    beq null, L112ac749ff9f4988b2f36887947f132f
    j L01b24508544d47e5a9c843004b55ef53
    L112ac749ff9f4988b2f36887947f132f:
    mov 500($fp), 1
    L01b24508544d47e5a9c843004b55ef53:
    sw t352, 512($fp)
    bne 512($fp), L131
    j L132
    L131:
    sw t353, 516($fp)
    jal new A
    mov 516($fp), $r1
    sw t354, 520($fp)
    jal Main.get_int
    mov 520($fp), $r1
    sw t354, 524($fp)
    push 524($fp)
    sw t355, 528($fp)
    push 524($fp)
    jal set_var
    mov 528($fp), $r1
    pop null
    sw t355, 532($fp)
    sw 532($fp), a_var($fp)
    sw t356, 536($fp)
    jal new D
    mov 536($fp), $r1
    sw t357, 540($fp)
    lw 540($fp), avar($fp)
    sw t358, 544($fp)
    jal value
    mov 544($fp), $r1
    sw t359, 548($fp)
    lw 548($fp), a_var($fp)
    sw t360, 552($fp)
    jal value
    mov 552($fp), $r1
    sw t358, 556($fp)
    push 556($fp)
    sw t360, 560($fp)
    push 560($fp)
    sw t361, 564($fp)
    push 556($fp)
    push 560($fp)
    jal method4
    mov 564($fp), $r1
    pop null
    sw t361, 568($fp)
    sw 568($fp), avar($fp)
    sw t362, 572($fp)
    sw t361, 576($fp)
    mov 572($fp), 576($fp)
    j L133
    L132:
    sw t363, 580($fp)
    lw 580($fp), char($fp)
    sw t365, 584($fp)
    sw t363, 588($fp)
    sw const35808, 592($fp)
    mov 592($fp), "d"
    cmp null, 588($fp), 592($fp)
    mov 584($fp), 0
    beq null, L0883f0261a5e4bc99466aa6a064bd08a
    j Lfedd5b9a59344c3b896f560603f7d9be
    L0883f0261a5e4bc99466aa6a064bd08a:
    mov 584($fp), 1
    Lfedd5b9a59344c3b896f560603f7d9be:
    sw t365, 596($fp)
    bne 596($fp), L134
    j L135
    L134:
    sw t366, 600($fp)
    jal new C
    mov 600($fp), $r1
    sw t367, 604($fp)
    lw 604($fp), avar($fp)
    sw t368, 608($fp)
    jal value
    mov 608($fp), $r1
    sw t368, 612($fp)
    push 612($fp)
    sw t369, 616($fp)
    push 612($fp)
    jal A.method5
    mov 616($fp), $r1
    pop null
    sw t369, 620($fp)
    sw 620($fp), avar($fp)
    sw t370, 624($fp)
    sw t369, 628($fp)
    mov 624($fp), 628($fp)
    j L136
    L135:
    sw t371, 632($fp)
    lw 632($fp), char($fp)
    sw t373, 636($fp)
    sw t371, 640($fp)
    sw const35839, 644($fp)
    mov 644($fp), "e"
    cmp null, 640($fp), 644($fp)
    mov 636($fp), 0
    beq null, Lcaff549a7b6344d9977483662c77f5c6
    j L92ea0615618c4aab9d8a5c0daf7c0e79
    Lcaff549a7b6344d9977483662c77f5c6:
    mov 636($fp), 1
    L92ea0615618c4aab9d8a5c0daf7c0e79:
    sw t373, 648($fp)
    bne 648($fp), L137
    j L138
    L137:
    sw t374, 652($fp)
    jal new C
    mov 652($fp), $r1
    sw t375, 656($fp)
    lw 656($fp), avar($fp)
    sw t376, 660($fp)
    jal value
    mov 660($fp), $r1
    sw t376, 664($fp)
    push 664($fp)
    sw t377, 668($fp)
    push 664($fp)
    jal B.method5
    mov 668($fp), $r1
    pop null
    sw t377, 672($fp)
    sw 672($fp), avar($fp)
    sw t378, 676($fp)
    sw t377, 680($fp)
    mov 676($fp), 680($fp)
    j L139
    L138:
    sw t379, 684($fp)
    lw 684($fp), char($fp)
    sw t381, 688($fp)
    sw t379, 692($fp)
    sw const35870, 696($fp)
    mov 696($fp), "f"
    cmp null, 692($fp), 696($fp)
    mov 688($fp), 0
    beq null, L48ad2b6702b24b85b417aecbe66fc974
    j Ld162b4ad64054d30ae9b104bf7f6b4c3
    L48ad2b6702b24b85b417aecbe66fc974:
    mov 688($fp), 1
    Ld162b4ad64054d30ae9b104bf7f6b4c3:
    sw t381, 700($fp)
    bne 700($fp), L140
    j L141
    L140:
    sw t382, 704($fp)
    jal new C
    mov 704($fp), $r1
    sw t383, 708($fp)
    lw 708($fp), avar($fp)
    sw t384, 712($fp)
    jal value
    mov 712($fp), $r1
    sw t384, 716($fp)
    push 716($fp)
    sw t385, 720($fp)
    push 716($fp)
    jal C.method5
    mov 720($fp), $r1
    pop null
    sw t385, 724($fp)
    sw 724($fp), avar($fp)
    sw t386, 728($fp)
    sw t385, 732($fp)
    mov 728($fp), 732($fp)
    j L142
    L141:
    sw t387, 736($fp)
    lw 736($fp), char($fp)
    sw t389, 740($fp)
    sw t387, 744($fp)
    sw const35901, 748($fp)
    mov 748($fp), "g"
    cmp null, 744($fp), 748($fp)
    mov 740($fp), 0
    beq null, L5923b1331d9f44d9941827c5ddab8d2c
    j L364cd2520b9843ca92a76903604006d1
    L5923b1331d9f44d9941827c5ddab8d2c:
    mov 740($fp), 1
    L364cd2520b9843ca92a76903604006d1:
    sw t389, 752($fp)
    bne 752($fp), L143
    j L144
    L143:
    sw t390, 756($fp)
    jal new D
    mov 756($fp), $r1
    sw t391, 760($fp)
    lw 760($fp), avar($fp)
    sw t392, 764($fp)
    jal value
    mov 764($fp), $r1
    sw t392, 768($fp)
    push 768($fp)
    sw t393, 772($fp)
    push 768($fp)
    jal method7
    mov 772($fp), $r1
    pop null
    sw t393, 776($fp)
    bne 776($fp), L146
    j L147
    L146:
    sw t394, 780($fp)
    push 780($fp)
    sw t395, 784($fp)
    push 780($fp)
    jal Main.out_string
    mov 784($fp), $r1
    pop null
    sw t396, 788($fp)
    lw 788($fp), avar($fp)
    sw t396, 792($fp)
    push 792($fp)
    sw t397, 796($fp)
    push 792($fp)
    jal Main.print
    mov 796($fp), $r1
    pop null
    sw t398, 800($fp)
    push 800($fp)
    sw t399, 804($fp)
    push 800($fp)
    jal Main.out_string
    mov 804($fp), $r1
    pop null
    sw t400, 808($fp)
    sw t399, 812($fp)
    mov 808($fp), 812($fp)
    j L148
    L147:
    sw t401, 816($fp)
    push 816($fp)
    sw t402, 820($fp)
    push 816($fp)
    jal Main.out_string
    mov 820($fp), $r1
    pop null
    sw t403, 824($fp)
    lw 824($fp), avar($fp)
    sw t403, 828($fp)
    push 828($fp)
    sw t404, 832($fp)
    push 828($fp)
    jal Main.print
    mov 832($fp), $r1
    pop null
    sw t405, 836($fp)
    push 836($fp)
    sw t406, 840($fp)
    push 836($fp)
    jal Main.out_string
    mov 840($fp), $r1
    pop null
    sw t400, 844($fp)
    sw t406, 848($fp)
    mov 844($fp), 848($fp)
    L148:
    sw t407, 852($fp)
    sw t400, 856($fp)
    mov 852($fp), 856($fp)
    j L145
    L144:
    sw t408, 860($fp)
    lw 860($fp), char($fp)
    sw t410, 864($fp)
    sw t408, 868($fp)
    sw const35932, 872($fp)
    mov 872($fp), "h"
    cmp null, 868($fp), 872($fp)
    mov 864($fp), 0
    beq null, L997047d6e8c046df9cdabfb6640b87c9
    j Ldd063ee84ca541b79764a5a684bcec91
    L997047d6e8c046df9cdabfb6640b87c9:
    mov 864($fp), 1
    Ldd063ee84ca541b79764a5a684bcec91:
    sw t410, 876($fp)
    bne 876($fp), L149
    j L150
    L149:
    sw t411, 880($fp)
    jal new E
    mov 880($fp), $r1
    sw t412, 884($fp)
    lw 884($fp), avar($fp)
    sw t413, 888($fp)
    jal value
    mov 888($fp), $r1
    sw t413, 892($fp)
    push 892($fp)
    sw t414, 896($fp)
    push 892($fp)
    jal method6
    mov 896($fp), $r1
    pop null
    sw t414, 900($fp)
    mov x, 900($fp)
    sw t415, 904($fp)
    lw 904($fp), avar($fp)
    sw t416, 908($fp)
    jal value
    mov 908($fp), $r1
    sw t417, 912($fp)
    jal value
    mov 912($fp), $r1
    sw t419, 916($fp)
    sw t417, 920($fp)
    sw const56, 924($fp)
    mov 924($fp), 8
    mul 916($fp), 920($fp), 924($fp)
    sw t420, 928($fp)
    sw t416, 932($fp)
    sw t419, 936($fp)
    sub 928($fp), 932($fp), 936($fp)
    sw t420, 940($fp)
    mov r, 940($fp)
    sw t421, 944($fp)
    push 944($fp)
    sw t422, 948($fp)
    push 944($fp)
    jal Main.out_string
    mov 948($fp), $r1
    pop null
    sw t423, 952($fp)
    lw 952($fp), avar($fp)
    sw t423, 956($fp)
    push 956($fp)
    sw t424, 960($fp)
    push 956($fp)
    jal Main.print
    mov 960($fp), $r1
    pop null
    sw t425, 964($fp)
    push 964($fp)
    sw t426, 968($fp)
    push 964($fp)
    jal Main.out_string
    mov 968($fp), $r1
    pop null
    push x
    sw t427, 972($fp)
    push x
    jal Main.print
    mov 972($fp), $r1
    pop null
    sw t428, 976($fp)
    push 976($fp)
    sw t429, 980($fp)
    push 976($fp)
    jal Main.out_string
    mov 980($fp), $r1
    pop null
    sw t430, 984($fp)
    jal new A2I
    mov 984($fp), $r1
    sw t430, 988($fp)
    mov a, 988($fp)
    push r
    sw t431, 992($fp)
    push r
    jal i2a
    mov 992($fp), $r1
    pop null
    sw t431, 996($fp)
    push 996($fp)
    sw t432, 1000($fp)
    push 996($fp)
    jal Main.out_string
    mov 1000($fp), $r1
    pop null
    sw t433, 1004($fp)
    push 1004($fp)
    sw t434, 1008($fp)
    push 1004($fp)
    jal Main.out_string
    mov 1008($fp), $r1
    pop null
    sw x, avar($fp)
    sw t435, 1012($fp)
    mov 1012($fp), x
    j L151
    L150:
    sw t436, 1016($fp)
    lw 1016($fp), char($fp)
    sw t438, 1020($fp)
    sw t436, 1024($fp)
    sw const35994, 1028($fp)
    mov 1028($fp), "j"
    cmp null, 1024($fp), 1028($fp)
    mov 1020($fp), 0
    beq null, Lfe27f0c7ac8a4f3da0a68f3a35fa4f42
    j L148ec21951be49dc8b48139dcd96453c
    Lfe27f0c7ac8a4f3da0a68f3a35fa4f42:
    mov 1020($fp), 1
    L148ec21951be49dc8b48139dcd96453c:
    sw t438, 1032($fp)
    bne 1032($fp), L152
    j L153
    L152:
    sw t439, 1036($fp)
    jal new A
    mov 1036($fp), $r1
    sw t439, 1040($fp)
    sw 1040($fp), avar($fp)
    sw t440, 1044($fp)
    sw t439, 1048($fp)
    mov 1044($fp), 1048($fp)
    j L154
    L153:
    sw t441, 1052($fp)
    lw 1052($fp), char($fp)
    sw t443, 1056($fp)
    sw t441, 1060($fp)
    sw const36211, 1064($fp)
    mov 1064($fp), "q"
    cmp null, 1060($fp), 1064($fp)
    mov 1056($fp), 0
    beq null, L1c4045cec5694d74bde09e1689e7d554
    j L9c61bf58349d4fa5a1c3fd72ebcb1308
    L1c4045cec5694d74bde09e1689e7d554:
    mov 1056($fp), 1
    L9c61bf58349d4fa5a1c3fd72ebcb1308:
    sw t443, 1068($fp)
    bne 1068($fp), L155
    j L156
    L155:
    sw t444, 1072($fp)
    sw 1072($fp), flag($fp)
    j L157
    L156:
    sw t446, 1076($fp)
    jal new A
    mov 1076($fp), $r1
    sw t447, 1080($fp)
    lw 1080($fp), avar($fp)
    sw t448, 1084($fp)
    jal value
    mov 1084($fp), $r1
    sw t448, 1088($fp)
    push 1088($fp)
    sw t449, 1092($fp)
    push 1088($fp)
    jal method1
    mov 1092($fp), $r1
    pop null
    sw t449, 1096($fp)
    sw 1096($fp), avar($fp)
    sw t445, 1100($fp)
    sw t449, 1104($fp)
    mov 1100($fp), 1104($fp)
    L157:
    sw t440, 1108($fp)
    mov 1108($fp), false
    L154:
    sw t435, 1112($fp)
    sw t440, 1116($fp)
    mov 1112($fp), 1116($fp)
    L151:
    sw t407, 1120($fp)
    sw t435, 1124($fp)
    mov 1120($fp), 1124($fp)
    L145:
    sw t386, 1128($fp)
    sw t407, 1132($fp)
    mov 1128($fp), 1132($fp)
    L142:
    sw t378, 1136($fp)
    sw t386, 1140($fp)
    mov 1136($fp), 1140($fp)
    L139:
    sw t370, 1144($fp)
    sw t378, 1148($fp)
    mov 1144($fp), 1148($fp)
    L136:
    sw t362, 1152($fp)
    sw t370, 1156($fp)
    mov 1152($fp), 1156($fp)
    L133:
    sw t349, 1160($fp)
    sw t362, 1164($fp)
    mov 1160($fp), 1164($fp)
    L126:
    sw t335, 1168($fp)
    sw t349, 1172($fp)
    mov 1168($fp), 1172($fp)
    L123:
    j L_preheader_9039cc2159b747f599b18aedf13c5940
    L117:
    mov $sp, $fp
    pop $fp
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method menu
    push $fp
    mov $fp, $sp
    sw t210, 4($fp)
    sw const1325561149, 8($fp)
    mov 8($fp), "\n\tTo add a number to "
    mov 4($fp), 8($fp)
    sw t210, 12($fp)
    push 12($fp)
    sw t211, 16($fp)
    push 12($fp)
    jal Main.out_string
    mov 16($fp), $r1
    pop null
    sw t212, 20($fp)
    lw 20($fp), avar($fp)
    sw t212, 24($fp)
    push 24($fp)
    sw t213, 28($fp)
    push 24($fp)
    jal Main.print
    mov 28($fp), $r1
    pop null
    sw t214, 32($fp)
    sw const1839955555, 36($fp)
    mov 36($fp), "...enter a:\n"
    mov 32($fp), 36($fp)
    sw t214, 40($fp)
    push 40($fp)
    sw t215, 44($fp)
    push 40($fp)
    jal Main.out_string
    mov 44($fp), $r1
    pop null
    sw t216, 48($fp)
    sw const-1184787729, 52($fp)
    mov 52($fp), "\tTo negate "
    mov 48($fp), 52($fp)
    sw t216, 56($fp)
    push 56($fp)
    sw t217, 60($fp)
    push 56($fp)
    jal Main.out_string
    mov 60($fp), $r1
    pop null
    sw t218, 64($fp)
    lw 64($fp), avar($fp)
    sw t218, 68($fp)
    push 68($fp)
    sw t219, 72($fp)
    push 68($fp)
    jal Main.print
    mov 72($fp), $r1
    pop null
    sw t220, 76($fp)
    sw const1840879076, 80($fp)
    mov 80($fp), "...enter b:\n"
    mov 76($fp), 80($fp)
    sw t220, 84($fp)
    push 84($fp)
    sw t221, 88($fp)
    push 84($fp)
    jal Main.out_string
    mov 88($fp), $r1
    pop null
    sw t222, 92($fp)
    sw const1100860466, 96($fp)
    mov 96($fp), "\tTo find the difference between "
    mov 92($fp), 96($fp)
    sw t222, 100($fp)
    push 100($fp)
    sw t223, 104($fp)
    push 100($fp)
    jal Main.out_string
    mov 104($fp), $r1
    pop null
    sw t224, 108($fp)
    lw 108($fp), avar($fp)
    sw t224, 112($fp)
    push 112($fp)
    sw t225, 116($fp)
    push 112($fp)
    jal Main.print
    mov 116($fp), $r1
    pop null
    sw t226, 120($fp)
    sw const148734740, 124($fp)
    mov 124($fp), "and another number...enter c:\n"
    mov 120($fp), 124($fp)
    sw t226, 128($fp)
    push 128($fp)
    sw t227, 132($fp)
    push 128($fp)
    jal Main.out_string
    mov 132($fp), $r1
    pop null
    sw t228, 136($fp)
    sw const-144899521, 140($fp)
    mov 140($fp), "\tTo find the factorial of "
    mov 136($fp), 140($fp)
    sw t228, 144($fp)
    push 144($fp)
    sw t229, 148($fp)
    push 144($fp)
    jal Main.out_string
    mov 148($fp), $r1
    pop null
    sw t230, 152($fp)
    lw 152($fp), avar($fp)
    sw t230, 156($fp)
    push 156($fp)
    sw t231, 160($fp)
    push 156($fp)
    jal Main.print
    mov 160($fp), $r1
    pop null
    sw t232, 164($fp)
    sw const1842726118, 168($fp)
    mov 168($fp), "...enter d:\n"
    mov 164($fp), 168($fp)
    sw t232, 172($fp)
    push 172($fp)
    sw t233, 176($fp)
    push 172($fp)
    jal Main.out_string
    mov 176($fp), $r1
    pop null
    sw t234, 180($fp)
    sw const1400187466, 184($fp)
    mov 184($fp), "\tTo square "
    mov 180($fp), 184($fp)
    sw t234, 188($fp)
    push 188($fp)
    sw t235, 192($fp)
    push 188($fp)
    jal Main.out_string
    mov 192($fp), $r1
    pop null
    sw t236, 196($fp)
    lw 196($fp), avar($fp)
    sw t236, 200($fp)
    push 200($fp)
    sw t237, 204($fp)
    push 200($fp)
    jal Main.print
    mov 204($fp), $r1
    pop null
    sw t238, 208($fp)
    sw const1843649639, 212($fp)
    mov 212($fp), "...enter e:\n"
    mov 208($fp), 212($fp)
    sw t238, 216($fp)
    push 216($fp)
    sw t239, 220($fp)
    push 216($fp)
    jal Main.out_string
    mov 220($fp), $r1
    pop null
    sw t240, 224($fp)
    sw const914116130, 228($fp)
    mov 228($fp), "\tTo cube "
    mov 224($fp), 228($fp)
    sw t240, 232($fp)
    push 232($fp)
    sw t241, 236($fp)
    push 232($fp)
    jal Main.out_string
    mov 236($fp), $r1
    pop null
    sw t242, 240($fp)
    lw 240($fp), avar($fp)
    sw t242, 244($fp)
    push 244($fp)
    sw t243, 248($fp)
    push 244($fp)
    jal Main.print
    mov 248($fp), $r1
    pop null
    sw t244, 252($fp)
    sw const1844573160, 256($fp)
    mov 256($fp), "...enter f:\n"
    mov 252($fp), 256($fp)
    sw t244, 260($fp)
    push 260($fp)
    sw t245, 264($fp)
    push 260($fp)
    jal Main.out_string
    mov 264($fp), $r1
    pop null
    sw t246, 268($fp)
    sw const-686418835, 272($fp)
    mov 272($fp), "\tTo find out if "
    mov 268($fp), 272($fp)
    sw t246, 276($fp)
    push 276($fp)
    sw t247, 280($fp)
    push 276($fp)
    jal Main.out_string
    mov 280($fp), $r1
    pop null
    sw t248, 284($fp)
    lw 284($fp), avar($fp)
    sw t248, 288($fp)
    push 288($fp)
    sw t249, 292($fp)
    push 288($fp)
    jal Main.print
    mov 292($fp), $r1
    pop null
    sw t250, 296($fp)
    sw const-1422941714, 300($fp)
    mov 300($fp), "is a multiple of 3...enter g:\n"
    mov 296($fp), 300($fp)
    sw t250, 304($fp)
    push 304($fp)
    sw t251, 308($fp)
    push 304($fp)
    jal Main.out_string
    mov 308($fp), $r1
    pop null
    sw t252, 312($fp)
    sw const-1741625690, 316($fp)
    mov 316($fp), "\tTo divide "
    mov 312($fp), 316($fp)
    sw t252, 320($fp)
    push 320($fp)
    sw t253, 324($fp)
    push 320($fp)
    jal Main.out_string
    mov 324($fp), $r1
    pop null
    sw t254, 328($fp)
    lw 328($fp), avar($fp)
    sw t254, 332($fp)
    push 332($fp)
    sw t255, 336($fp)
    push 332($fp)
    jal Main.print
    mov 336($fp), $r1
    pop null
    sw t256, 340($fp)
    sw const166230617, 344($fp)
    mov 344($fp), "by 8...enter h:\n"
    mov 340($fp), 344($fp)
    sw t256, 348($fp)
    push 348($fp)
    sw t257, 352($fp)
    push 348($fp)
    jal Main.out_string
    mov 352($fp), $r1
    pop null
    sw t258, 356($fp)
    sw const1712445287, 360($fp)
    mov 360($fp), "\tTo get a new number...enter j:\n"
    mov 356($fp), 360($fp)
    sw t258, 364($fp)
    push 364($fp)
    sw t259, 368($fp)
    push 364($fp)
    jal Main.out_string
    mov 368($fp), $r1
    pop null
    sw t260, 372($fp)
    sw const-486175495, 376($fp)
    mov 376($fp), "\tTo quit...enter q:\n\n"
    mov 372($fp), 376($fp)
    sw t260, 380($fp)
    push 380($fp)
    sw t261, 384($fp)
    push 380($fp)
    jal Main.out_string
    mov 384($fp), $r1
    pop null
    sw t262, 388($fp)
    jal Main.in_string
    mov 388($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t262, 392($fp)
    mov $r1, 392($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method get_int
    push $fp
    mov $fp, $sp
    sw t268, 4($fp)
    jal new A2I
    mov 4($fp), $r1
    sw t268, 8($fp)
    mov z, 8($fp)
    sw t269, 12($fp)
    jal Main.prompt
    mov 12($fp), $r1
    sw t269, 16($fp)
    mov s, 16($fp)
    push s
    sw t270, 20($fp)
    push s
    jal a2i
    mov 20($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    sw t270, 24($fp)
    mov $r1, 24($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method prompt
    push $fp
    mov $fp, $sp
    sw t263, 4($fp)
    sw const1104750, 8($fp)
    mov 8($fp), "\n"
    mov 4($fp), 8($fp)
    sw t263, 12($fp)
    push 12($fp)
    sw t264, 16($fp)
    push 12($fp)
    jal Main.out_string
    mov 16($fp), $r1
    pop null
    sw t265, 20($fp)
    sw const22866968, 24($fp)
    mov 24($fp), "Please enter a number...  "
    mov 20($fp), 24($fp)
    sw t265, 28($fp)
    push 28($fp)
    sw t266, 32($fp)
    push 28($fp)
    jal Main.out_string
    mov 32($fp), $r1
    pop null
    sw t267, 36($fp)
    jal Main.in_string
    mov 36($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t267, 40($fp)
    mov $r1, 40($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class

