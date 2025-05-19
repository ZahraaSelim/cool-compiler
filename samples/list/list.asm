.class Cons
.method head
    push $fp
    mov $fp, $sp
    lw $r2, car($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, $r2
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method init
    push $fp
    mov $fp, $sp
    pop i
    pop rest
    sw i, car($fp)
    sw rest, cdr($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method tail
    push $fp
    mov $fp, $sp
    lw $r3, cdr($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, $r3
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method isNil
    push $fp
    mov $fp, $sp
    mov $r4, false
    mov $sp, $fp
    pop $fp
    mov $r1, $r4
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class List
.method head
    push $fp
    mov $fp, $sp
    jal List.abort
    mov $r5, $r1
    mov $r7, 0
    mov $r6, $r7
    mov $sp, $fp
    pop $fp
    mov $r1, $r6
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method tail
    push $fp
    mov $fp, $sp
    jal List.abort
    mov $r8, $r1
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method isNil
    push $fp
    mov $fp, $sp
    mov $r9, true
    mov $sp, $fp
    pop $fp
    mov $r1, $r9
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method cons
    push $fp
    mov $fp, $sp
    pop i
    jal new Cons
    mov $r10, $r1
    push i
    push self
    push i
    push self
    jal init
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
.end_class
.class Main
.method print_list
    push $fp
    mov $fp, $sp
    pop l
    jal isNil
    mov $r12, $r1
    bne $r12, L0
    j L1
    L0:
    mov $r14, "\n"
    mov $r13, $r14
    push $r13
    push $r13
    jal Main.out_string
    mov $r15, $r1
    pop null
    sw t12, 4($fp)
    mov 4($fp), $r15
    j L2
    L1:
    sw t13, 8($fp)
    jal head
    mov 8($fp), $r1
    sw t13, 12($fp)
    push 12($fp)
    sw t14, 16($fp)
    push 12($fp)
    jal Main.out_int
    mov 16($fp), $r1
    pop null
    sw t15, 20($fp)
    sw const33700, 24($fp)
    mov 24($fp), " "
    mov 20($fp), 24($fp)
    sw t15, 28($fp)
    push 28($fp)
    sw t16, 32($fp)
    push 28($fp)
    jal Main.out_string
    mov 32($fp), $r1
    pop null
    sw t17, 36($fp)
    jal tail
    mov 36($fp), $r1
    sw t17, 40($fp)
    push 40($fp)
    sw t18, 44($fp)
    push 40($fp)
    jal Main.print_list
    mov 44($fp), $r1
    pop null
    sw t12, 48($fp)
    sw t18, 52($fp)
    mov 48($fp), 52($fp)
    L2:
    mov $sp, $fp
    pop $fp
    sw t12, 56($fp)
    mov $r1, 56($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method main
    push $fp
    mov $fp, $sp
    sw t19, 4($fp)
    jal new List
    mov 4($fp), $r1
    sw t20, 8($fp)
    sw const49, 12($fp)
    mov 12($fp), 1
    mov 8($fp), 12($fp)
    sw t20, 16($fp)
    push 16($fp)
    sw t21, 20($fp)
    push 16($fp)
    jal cons
    mov 20($fp), $r1
    pop null
    sw t22, 24($fp)
    sw const50, 28($fp)
    mov 28($fp), 2
    mov 24($fp), 28($fp)
    sw t22, 32($fp)
    push 32($fp)
    sw t23, 36($fp)
    push 32($fp)
    jal cons
    mov 36($fp), $r1
    pop null
    sw t24, 40($fp)
    sw const51, 44($fp)
    mov 44($fp), 3
    mov 40($fp), 44($fp)
    sw t24, 48($fp)
    push 48($fp)
    sw t25, 52($fp)
    push 48($fp)
    jal cons
    mov 52($fp), $r1
    pop null
    sw t26, 56($fp)
    sw const52, 60($fp)
    mov 60($fp), 4
    mov 56($fp), 60($fp)
    sw t26, 64($fp)
    push 64($fp)
    sw t27, 68($fp)
    push 64($fp)
    jal cons
    mov 68($fp), $r1
    pop null
    sw t28, 72($fp)
    sw const53, 76($fp)
    mov 76($fp), 5
    mov 72($fp), 76($fp)
    sw t28, 80($fp)
    push 80($fp)
    sw t29, 84($fp)
    push 80($fp)
    jal cons
    mov 84($fp), $r1
    pop null
    sw t29, 88($fp)
    sw 88($fp), mylist($fp)
    L3:
    L4:
    sw t33, 92($fp)
    lw 92($fp), mylist($fp)
    sw t33, 96($fp)
    push 96($fp)
    sw t34, 100($fp)
    push 96($fp)
    jal Main.print_list
    mov 100($fp), $r1
    pop null
    sw t35, 104($fp)
    lw 104($fp), mylist($fp)
    sw t36, 108($fp)
    jal tail
    mov 108($fp), $r1
    sw t36, 112($fp)
    sw 112($fp), mylist($fp)
    j L3
    L3:
    sw t30, 116($fp)
    lw 116($fp), mylist($fp)
    sw t31, 120($fp)
    jal isNil
    mov 120($fp), $r1
    sw t31, 124($fp)
    not t53272170_0, 124($fp)
    L4:
    sw t33, 128($fp)
    lw 128($fp), mylist($fp)
    sw t33, 132($fp)
    push 132($fp)
    sw t34, 136($fp)
    push 132($fp)
    jal Main.print_list
    mov 136($fp), $r1
    pop null
    sw t35, 140($fp)
    lw 140($fp), mylist($fp)
    sw t36, 144($fp)
    jal tail
    mov 144($fp), $r1
    sw t36, 148($fp)
    sw 148($fp), mylist($fp)
    j L3
    L3:
    sw t30, 152($fp)
    lw 152($fp), mylist($fp)
    sw t31, 156($fp)
    jal isNil
    mov 156($fp), $r1
    sw t31, 160($fp)
    not ta9bad983_1, 160($fp)
    L4:
    sw t33, 164($fp)
    lw 164($fp), mylist($fp)
    sw t33, 168($fp)
    push 168($fp)
    sw t34, 172($fp)
    push 168($fp)
    jal Main.print_list
    mov 172($fp), $r1
    pop null
    sw t35, 176($fp)
    lw 176($fp), mylist($fp)
    sw t36, 180($fp)
    jal tail
    mov 180($fp), $r1
    sw t36, 184($fp)
    sw 184($fp), mylist($fp)
    j L3
    L3:
    sw t30, 188($fp)
    lw 188($fp), mylist($fp)
    sw t31, 192($fp)
    jal isNil
    mov 192($fp), $r1
    sw t31, 196($fp)
    not t375a5dff_2, 196($fp)
    L4:
    sw t33, 200($fp)
    lw 200($fp), mylist($fp)
    sw t33, 204($fp)
    push 204($fp)
    sw t34, 208($fp)
    push 204($fp)
    jal Main.print_list
    mov 208($fp), $r1
    pop null
    sw t35, 212($fp)
    lw 212($fp), mylist($fp)
    sw t36, 216($fp)
    jal tail
    mov 216($fp), $r1
    sw t36, 220($fp)
    sw 220($fp), mylist($fp)
    j L3
    L3:
    sw t30, 224($fp)
    lw 224($fp), mylist($fp)
    sw t31, 228($fp)
    jal isNil
    mov 228($fp), $r1
    sw t31, 232($fp)
    not t18549bc7_3, 232($fp)
    sw t32, 236($fp)
    bne 236($fp), L_exit_532e40a684dc40b18c70f13dd587fea4
    j L3
    L_exit_532e40a684dc40b18c70f13dd587fea4:
    sw t30, 240($fp)
    lw 240($fp), mylist($fp)
    sw t31, 244($fp)
    jal isNil
    mov 244($fp), $r1
    sw t32, 248($fp)
    sw t31, 252($fp)
    not 248($fp), 252($fp)
    j L5
    L4:
    sw t33, 256($fp)
    lw 256($fp), mylist($fp)
    sw t33, 260($fp)
    push 260($fp)
    sw t34, 264($fp)
    push 260($fp)
    jal Main.print_list
    mov 264($fp), $r1
    pop null
    sw t35, 268($fp)
    lw 268($fp), mylist($fp)
    sw t36, 272($fp)
    jal tail
    mov 272($fp), $r1
    sw t36, 276($fp)
    sw 276($fp), mylist($fp)
    j L3
    L5:
    mov $sp, $fp
    pop $fp
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class

