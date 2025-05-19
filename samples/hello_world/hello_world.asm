.class Main
.method main
    push $fp
    mov $fp, $sp
    mov $r3, "Hello, World.\n"
    mov $r2, $r3
    push $r2
    push $r2
    jal Main.out_string
    mov $r4, $r1
    pop null
    mov $sp, $fp
    pop $fp
    mov $r1, $r4
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class

