class SumOp:
  method optype:
    t2 = " SumOp "
    return t2
class MulOp:
  method optype:
    t3 = " MulOp "
    return t3
  method operate:
    param a
    param b
    t4 = a * b
    return t4
class BinOp:
  method optype:
    t1 = " BinOp "
    return t1
  method operate:
    param a
    param b
    t0 = a + b
    return t0
class Main:
  method reduce:
    param result
    param op
    param l
    t21 = call get_head()
    t22 = call operate(result, t21)
    result = t22
    t23 = call tail_is_empty()
    t24 = true
    t25 = t23 = true
    if t25 goto L3
    goto L4
    L3:
    t26 = result
    goto L5
    L4:
    t27 = call get_tail()
    t28 = call Main.reduce(result, op, t27)
    t26 = t28
    L5:
    return t26
  method main:
    t29 = call new MulOp()
    op = t29
    t30 = call new IntList()
    l = t30
    t31 = call new IO()
    io = t31
    t32 = 4
    t33 = call generate(t32)
    l = t33
    t34 = 1
    t35 = call reduce(t34, op, l)
    t36 = call out_int(t35)
    return t36
class IntList:
  method set_tail:
    param t
    store t -> tail
    return t
  method tail_is_empty:
    t5 = load tail
    t6 = load empty_tail
    t7 = t5 = t6
    return t7
  method get_head:
    t8 = load head
    return t8
  method set_head:
    param n
    store n -> head
    return n
  method get_tail:
    t9 = load tail
    return t9
  method generate:
    param n
    t10 = call new IntList()
    l = t10
    t11 = call set_head(n)
    t12 = 1
    t13 = n = 1
    if t13 goto L0
    goto L1
    L0:
    t14 = load empty_tail
    t15 = call set_tail(t14)
    t16 = t15
    goto L2
    L1:
    t17 = 1
    t18 = n - 1
    t19 = call IntList.generate(t18)
    t20 = call set_tail(t19)
    t16 = t20
    L2:
    return l

