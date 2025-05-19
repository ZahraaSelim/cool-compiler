.class Nil
.method print_list
    push $fp
    mov $fp, $sp
    mov $r2, true
    mov $sp, $fp
    pop $fp
    mov $r1, $r2
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method isNil
    push $fp
    mov $fp, $sp
    mov $r3, true
    mov $sp, $fp
    pop $fp
    mov $r1, $r3
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class Cons
.method cdr
    push $fp
    mov $fp, $sp
    lw $r4, xcdr($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, $r4
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method init
    push $fp
    mov $fp, $sp
    pop hd
    pop tl
    sw hd, xcar($fp)
    sw tl, xcdr($fp)
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method print_list
    push $fp
    mov $fp, $sp
    lw $r5, xcar($fp)
    jal print
    mov $r6, $r1
    bne t33.type == Book, L1
    bne t33.type == Article, L2
    L1:
    mov $r8, "- dynamic type was Book -\n"
    mov $r7, $r8
    push $r7
    push $r7
    jal Cons.out_string
    mov $r9, $r1
    pop null
    mov $r10, $r9
    j L0
    L2:
    mov $r12, "- dynamic type was Article -\n"
    mov $r11, $r12
    push $r11
    push $r11
    jal Cons.out_string
    mov $r13, $r1
    pop null
    mov $r10, $r13
    j L0
    L0:
    lw $r14, xcdr($fp)
    jal print_list
    mov $r15, $r1
    mov $sp, $fp
    pop $fp
    mov $r1, $r15
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method car
    push $fp
    mov $fp, $sp
    sw t30, 4($fp)
    lw 4($fp), xcar($fp)
    mov $sp, $fp
    pop $fp
    sw t30, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method isNil
    push $fp
    mov $fp, $sp
    sw t29, 4($fp)
    mov 4($fp), false
    mov $sp, $fp
    pop $fp
    sw t29, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class BookList
.method cdr
    push $fp
    mov $fp, $sp
    sw t26, 4($fp)
    jal BookList.abort
    mov 4($fp), $r1
    sw t27, 8($fp)
    jal new BookList
    mov 8($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t27, 12($fp)
    mov $r1, 12($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method print_list
    push $fp
    mov $fp, $sp
    sw t28, 4($fp)
    jal BookList.abort
    mov 4($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t28, 8($fp)
    mov $r1, 8($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method car
    push $fp
    mov $fp, $sp
    sw t24, 4($fp)
    jal BookList.abort
    mov 4($fp), $r1
    sw t25, 8($fp)
    jal new Book
    mov 8($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t25, 12($fp)
    mov $r1, 12($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method isNil
    push $fp
    mov $fp, $sp
    sw t20, 4($fp)
    jal BookList.abort
    mov 4($fp), $r1
    sw t21, 8($fp)
    mov 8($fp), true
    mov $sp, $fp
    pop $fp
    sw t21, 12($fp)
    mov $r1, 12($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.method cons
    push $fp
    mov $fp, $sp
    pop hd
    sw t22, 4($fp)
    jal new Cons
    mov 4($fp), $r1
    sw t22, 8($fp)
    mov new_cell, 8($fp)
    push hd
    push self
    sw t23, 12($fp)
    push hd
    push self
    jal init
    mov 12($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    sw t23, 16($fp)
    mov $r1, 16($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class Book
.method initBook
    push $fp
    mov $fp, $sp
    pop title_p
    pop author_p
    sw title_p, title($fp)
    sw author_p, author($fp)
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
    sw t0, 4($fp)
    sw const-1635405794, 8($fp)
    mov 8($fp), "title:      "
    mov 4($fp), 8($fp)
    sw t0, 12($fp)
    push 12($fp)
    sw t1, 16($fp)
    push 12($fp)
    jal Book.out_string
    mov 16($fp), $r1
    pop null
    sw t2, 20($fp)
    lw 20($fp), title($fp)
    sw t2, 24($fp)
    push 24($fp)
    sw t3, 28($fp)
    push 24($fp)
    jal out_string
    mov 28($fp), $r1
    pop null
    sw t4, 32($fp)
    sw const1104750, 36($fp)
    mov 36($fp), "\n"
    mov 32($fp), 36($fp)
    sw t4, 40($fp)
    push 40($fp)
    sw t5, 44($fp)
    push 40($fp)
    jal out_string
    mov 44($fp), $r1
    pop null
    sw t6, 48($fp)
    sw const1498045423, 52($fp)
    mov 52($fp), "author:     "
    mov 48($fp), 52($fp)
    sw t6, 56($fp)
    push 56($fp)
    sw t7, 60($fp)
    push 56($fp)
    jal Book.out_string
    mov 60($fp), $r1
    pop null
    sw t8, 64($fp)
    lw 64($fp), author($fp)
    sw t8, 68($fp)
    push 68($fp)
    sw t9, 72($fp)
    push 68($fp)
    jal out_string
    mov 72($fp), $r1
    pop null
    sw t10, 76($fp)
    sw const1104750, 80($fp)
    mov 80($fp), "\n"
    mov 76($fp), 80($fp)
    sw t10, 84($fp)
    push 84($fp)
    sw t11, 88($fp)
    push 84($fp)
    jal out_string
    mov 88($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    mov $r1, self
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class
.class Article
.method initArticle
    push $fp
    mov $fp, $sp
    pop title_p
    pop author_p
    pop per_title_p
    push title_p
    push author_p
    sw t12, 4($fp)
    push title_p
    push author_p
    jal Article.initBook
    mov 4($fp), $r1
    pop null
    sw per_title_p, per_title($fp)
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
    sw t13, 4($fp)
    jal Book.print
    mov 4($fp), $r1
    sw t14, 8($fp)
    sw const-346985648, 12($fp)
    mov 12($fp), "periodical:  "
    mov 8($fp), 12($fp)
    sw t14, 16($fp)
    push 16($fp)
    sw t15, 20($fp)
    push 16($fp)
    jal Article.out_string
    mov 20($fp), $r1
    pop null
    sw t16, 24($fp)
    lw 24($fp), per_title($fp)
    sw t16, 28($fp)
    push 28($fp)
    sw t17, 32($fp)
    push 28($fp)
    jal out_string
    mov 32($fp), $r1
    pop null
    sw t18, 36($fp)
    sw const1104750, 40($fp)
    mov 40($fp), "\n"
    mov 36($fp), 40($fp)
    sw t18, 44($fp)
    push 44($fp)
    sw t19, 48($fp)
    push 44($fp)
    jal out_string
    mov 48($fp), $r1
    pop null
    mov $sp, $fp
    pop $fp
    mov $r1, self
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
    sw t43, 4($fp)
    jal new Book
    mov 4($fp), $r1
    sw t44, 8($fp)
    sw const1233274264, 12($fp)
    mov 12($fp), "Compilers, Principles, Techniques, and Tools"
    mov 8($fp), 12($fp)
    sw t45, 16($fp)
    sw const1724357655, 20($fp)
    mov 20($fp), "Aho, Sethi, and Ullman"
    mov 16($fp), 20($fp)
    sw t44, 24($fp)
    push 24($fp)
    sw t45, 28($fp)
    push 28($fp)
    sw t46, 32($fp)
    push 24($fp)
    push 28($fp)
    jal initBook
    mov 32($fp), $r1
    pop null
    sw t46, 36($fp)
    mov a_book, 36($fp)
    sw t47, 40($fp)
    jal new Article
    mov 40($fp), $r1
    sw t48, 44($fp)
    sw const384189388, 48($fp)
    mov 48($fp), "The Top 100 CD_ROMs"
    mov 44($fp), 48($fp)
    sw t49, 52($fp)
    sw const734253529, 56($fp)
    mov 56($fp), "Ulanoff"
    mov 52($fp), 56($fp)
    sw t50, 60($fp)
    sw const2146131491, 64($fp)
    mov 64($fp), "PC Magazine"
    mov 60($fp), 64($fp)
    sw t48, 68($fp)
    push 68($fp)
    sw t49, 72($fp)
    push 72($fp)
    sw t50, 76($fp)
    push 76($fp)
    sw t51, 80($fp)
    push 68($fp)
    push 72($fp)
    push 76($fp)
    jal initArticle
    mov 80($fp), $r1
    pop null
    sw t51, 84($fp)
    mov an_article, 84($fp)
    sw t52, 88($fp)
    jal new Nil
    mov 88($fp), $r1
    push a_book
    sw t53, 92($fp)
    push a_book
    jal cons
    mov 92($fp), $r1
    pop null
    push an_article
    sw t54, 96($fp)
    push an_article
    jal cons
    mov 96($fp), $r1
    pop null
    sw t54, 100($fp)
    sw 100($fp), books($fp)
    sw t55, 104($fp)
    lw 104($fp), books($fp)
    sw t56, 108($fp)
    jal print_list
    mov 108($fp), $r1
    mov $sp, $fp
    pop $fp
    sw t56, 112($fp)
    mov $r1, 112($fp)
    ret
    mov $sp, $fp
    pop $fp
    ret
.end_method
.end_class

