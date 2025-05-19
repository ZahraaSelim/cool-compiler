class Nil:
  method rev:
    return self
  method print_list:
    t49 = true
    return t49
  method rcons:
    param i
    t47 = call new Cons()
    t48 = call init(i, self)
    return t48
  method insert:
    param i
    t46 = call Nil.rcons(i)
    return t46
  method isNil:
    t45 = true
    return t45
  method sort:
    return self
class Cons:
  method cdr:
    t15 = load xcdr
    return t15
  method init:
    param hd
    param tl
    store hd -> xcar
    store tl -> xcdr
    return self
  method rev:
    t16 = load xcdr
    t17 = call rev()
    t18 = load xcar
    t19 = call rcons(t18)
    return t19
  method print_list:
    t39 = load xcar
    t40 = call Cons.out_int(t39)
    t41 = "\n"
    t42 = call Cons.out_string(t41)
    t43 = load xcdr
    t44 = call print_list()
    return t44
  method car:
    t14 = load xcar
    return t14
  method rcons:
    param i
    t34 = call new Cons()
    t35 = load xcar
    t36 = load xcdr
    t37 = call rcons(i)
    t38 = call init(t35, t37)
    return t38
  method insert:
    param i
    t24 = load xcar
    t25 = i < t24
    if t25 goto L0
    goto L1
    L0:
    t26 = call new Cons()
    t27 = call init(i, self)
    t28 = t27
    goto L2
    L1:
    t29 = call new Cons()
    t30 = load xcar
    t31 = load xcdr
    t32 = call insert(i)
    t33 = call init(t30, t32)
    t28 = t33
    L2:
    return t28
  method isNil:
    t13 = false
    return t13
  method sort:
    t20 = load xcdr
    t21 = call sort()
    t22 = load xcar
    t23 = call insert(t22)
    return t23
class List:
  method cdr:
    t6 = call List.abort()
    t7 = call new List()
    return t7
  method rev:
    t8 = call List.cdr()
    return t8
  method print_list:
    t12 = call List.abort()
    return t12
  method car:
    t4 = call List.abort()
    t5 = call new Int()
    return t5
  method rcons:
    param i
    t11 = call List.cdr()
    return t11
  method insert:
    param i
    t10 = call List.cdr()
    return t10
  method isNil:
    t0 = call List.abort()
    t1 = true
    return t1
  method sort:
    t9 = call List.cdr()
    return t9
  method cons:
    param hd
    t2 = call new Cons()
    new_cell = t2
    t3 = call init(hd, self)
    return t3
class Main:
  method iota:
    param i
    t50 = call new Nil()
    store t50 -> l
    t51 = 0
    j = 0
    L_preheader_acc7e4043a784b2999dc4b20f8eef87c:
    t56 = 1
    goto L3
    L3:
    t52 = 0 < i
    if t52 goto L4
    goto L5
    L4:
    t53 = call new Cons()
    t54 = load l
    t55 = call init(j, t54)
    store t55 -> l
    t57 = 1
    j = 1
    goto L_preheader_acc7e4043a784b2999dc4b20f8eef87c
    L5:
    t58 = load l
    return t58
  method main:
    t59 = "How many numbers to sort?"
    t60 = call Main.out_string(t59)
    t61 = call Main.in_int()
    t62 = call Main.iota(t61)
    t63 = call rev()
    t64 = call sort()
    t65 = call print_list()
    return t65

