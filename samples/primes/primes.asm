.class Main
.method main
    push $fp
    mov $fp, $sp
    mov $r3, 0
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

