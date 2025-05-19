class Nil:
  method print_list:
    t42 = true
    return t42
  method isNil:
    t41 = true
    return t41
class Cons:
  method cdr:
    t31 = load xcdr
    return t31
  method init:
    param hd
    param tl
    store hd -> xcar
    store tl -> xcdr
    return self
  method print_list:
    t32 = load xcar
    t33 = call print()
    if t33.type == Book goto L1
    if t33.type == Article goto L2
    L1:
    t35 = "- dynamic type was Book -\n"
    t36 = call Cons.out_string(t35)
    t34 = t36
    goto L0
    L2:
    t37 = "- dynamic type was Article -\n"
    t38 = call Cons.out_string(t37)
    t34 = t38
    goto L0
    L0:
    t39 = load xcdr
    t40 = call print_list()
    return t40
  method car:
    t30 = load xcar
    return t30
  method isNil:
    t29 = false
    return t29
class BookList:
  method cdr:
    t26 = call BookList.abort()
    t27 = call new BookList()
    return t27
  method print_list:
    t28 = call BookList.abort()
    return t28
  method car:
    t24 = call BookList.abort()
    t25 = call new Book()
    return t25
  method isNil:
    t20 = call BookList.abort()
    t21 = true
    return t21
  method cons:
    param hd
    t22 = call new Cons()
    new_cell = t22
    t23 = call init(hd, self)
    return t23
class Book:
  method initBook:
    param title_p
    param author_p
    store title_p -> title
    store author_p -> author
    return self
  method print:
    t0 = "title:      "
    t1 = call Book.out_string(t0)
    t2 = load title
    t3 = call out_string(t2)
    t4 = "\n"
    t5 = call out_string(t4)
    t6 = "author:     "
    t7 = call Book.out_string(t6)
    t8 = load author
    t9 = call out_string(t8)
    t10 = "\n"
    t11 = call out_string(t10)
    return self
class Article:
  method initArticle:
    param title_p
    param author_p
    param per_title_p
    t12 = call Article.initBook(title_p, author_p)
    store per_title_p -> per_title
    return self
  method print:
    t13 = call Book.print()
    t14 = "periodical:  "
    t15 = call Article.out_string(t14)
    t16 = load per_title
    t17 = call out_string(t16)
    t18 = "\n"
    t19 = call out_string(t18)
    return self
class Main:
  method main:
    t43 = call new Book()
    t44 = "Compilers, Principles, Techniques, and Tools"
    t45 = "Aho, Sethi, and Ullman"
    t46 = call initBook(t44, t45)
    a_book = t46
    t47 = call new Article()
    t48 = "The Top 100 CD_ROMs"
    t49 = "Ulanoff"
    t50 = "PC Magazine"
    t51 = call initArticle(t48, t49, t50)
    an_article = t51
    t52 = call new Nil()
    t53 = call cons(a_book)
    t54 = call cons(an_article)
    store t54 -> books
    t55 = load books
    t56 = call print_list()
    return t56

