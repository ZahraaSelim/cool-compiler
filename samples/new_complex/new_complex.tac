class Main:
  method main:
    t0 = call new Complex()
    t1 = 1
    t2 = 1
    t3 = call init(t1, t2)
    c = t3
    t4 = call reflect_X()
    t5 = call reflect_0()
    t6 = t4 = t5
    if t6 goto L0
    goto L1
    L0:
    t7 = "=)\n"
    t8 = call Main.out_string(t7)
    t9 = t8
    goto L2
    L1:
    t10 = "=(\n"
    t11 = call Main.out_string(t10)
    t9 = t11
    L2:
    t12 = call reflect_X()
    t13 = call reflect_Y()
    t14 = call reflect_0()
    t15 = call equal(t14)
    if t15 goto L3
    goto L4
    L3:
    t16 = "=)\n"
    t17 = call Main.out_string(t16)
    t18 = t17
    goto L5
    L4:
    t19 = "=(\n"
    t20 = call Main.out_string(t19)
    t18 = t20
    L5:
    return t18
class Complex:
  method equal:
    param d
    t55 = load x
    t56 = call x_value()
    t57 = t55 = t56
    if t57 goto L9
    goto L10
    L9:
    t58 = load y
    t59 = call y_value()
    t60 = t58 = t59
    if t60 goto L12
    goto L13
    L12:
    t61 = true
    t62 = t61
    goto L14
    L13:
    t63 = false
    t62 = t63
    L14:
    t64 = t62
    goto L11
    L10:
    t65 = false
    t64 = t65
    L11:
    return t64
  method init:
    param a
    param b
    t21 = load x
    t22 = t21 = a
    t23 = load y
    t24 = t23 = b
    return self
  method y_value:
    t67 = load y
    return t67
  method print:
    t25 = load y
    t26 = 0
    t27 = t25 = t26
    if t27 goto L6
    goto L7
    L6:
    t28 = load x
    t29 = call Complex.out_int(t28)
    t30 = t29
    goto L8
    L7:
    t31 = load x
    t32 = call Complex.out_int(t31)
    t33 = "+"
    t34 = call out_string(t33)
    t35 = load y
    t36 = call out_int(t35)
    t37 = "I"
    t38 = call out_string(t37)
    t30 = t38
    L8:
    return t30
  method reflect_Y:
    t51 = load x
    t52 = load x
    t53 = ~ t52
    t54 = t51 = t53
    return self
  method reflect_X:
    t47 = load y
    t48 = load y
    t49 = ~ t48
    t50 = t47 = t49
    return self
  method reflect_0:
    t39 = load x
    t40 = load x
    t41 = ~ t40
    t42 = t39 = t41
    t43 = load y
    t44 = load y
    t45 = ~ t44
    t46 = t43 = t45
    return self
  method x_value:
    t66 = load x
    return t66

