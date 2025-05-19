class Cons:
  method head:
    t7 = load car
    return t7
  method init:
    param i
    param rest
    store i -> car
    store rest -> cdr
    return self
  method tail:
    t8 = load cdr
    return t8
  method isNil:
    t6 = false
    return t6
class List:
  method head:
    t1 = call List.abort()
    t2 = 0
    return t2
  method tail:
    t3 = call List.abort()
    return self
  method isNil:
    t0 = true
    return t0
  method cons:
    param i
    t4 = call new Cons()
    t5 = call init(i, self)
    return t5
class Main:
  method print_list:
    param l
    t9 = call isNil()
    if t9 goto L0
    goto L1
    L0:
    t10 = "\n"
    t11 = call Main.out_string(t10)
    t12 = t11
    goto L2
    L1:
    t13 = call head()
    t14 = call Main.out_int(t13)
    t15 = " "
    t16 = call Main.out_string(t15)
    t17 = call tail()
    t18 = call Main.print_list(t17)
    t12 = t18
    L2:
    return t12
  method main:
    t19 = call new List()
    t20 = 1
    t21 = call cons(t20)
    t22 = 2
    t23 = call cons(t22)
    t24 = 3
    t25 = call cons(t24)
    t26 = 4
    t27 = call cons(t26)
    t28 = 5
    t29 = call cons(t28)
    store t29 -> mylist
    L3:
    t30 = load mylist
    t31 = call isNil()
    t32 = not t31
    if t32 goto L4
    goto L5
    L4:
    t33 = load mylist
    t34 = call Main.print_list(t33)
    t35 = load mylist
    t36 = call tail()
    store t36 -> mylist
    goto L3
    L5:
    return

