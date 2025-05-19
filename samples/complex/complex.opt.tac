class Main:
  method main:
    t0 = call new Complex()
    t1 = 1
    t2 = 1
    t3 = call init(t1, t2)
    c = t3
    t4 = call reflect_X()
    t5 = call reflect_Y()
    t6 = call reflect_0()
    t7 = t5 = t6
    if t7 goto L0
    goto L1
    L0:
    t8 = "=)\n"
    t9 = call Main.out_string(t8)
    t10 = t9
    goto L2
    L1:
    t11 = "=(\n"
    t12 = call Main.out_string(t11)
    t10 = t12
    L2:
    return t10
class Complex:
  method init:
    param a
    param b
    t13 = load x
    t14 = t13 = a
    t15 = load y
    t16 = t15 = b
    return self
  method print:
    t17 = load y
    t18 = 0
    t19 = t17 = 0
    if t19 goto L3
    goto L4
    L3:
    t20 = load x
    t21 = call Complex.out_int(t20)
    t22 = t21
    goto L5
    L4:
    t23 = load x
    t24 = call Complex.out_int(t23)
    t25 = "+"
    t26 = call out_string(t25)
    t27 = load y
    t28 = call out_int(t27)
    t29 = "I"
    t30 = call out_string(t29)
    t22 = t30
    L5:
    return t22
  method reflect_Y:
    t43 = load x
    t44 = load x
    t45 = ~ t44
    t46 = t43 = t45
    return self
  method reflect_X:
    t39 = load y
    t40 = load y
    t41 = ~ t40
    t42 = t39 = t41
    return self
  method reflect_0:
    t31 = load x
    t32 = load x
    t33 = ~ t32
    t34 = t31 = t33
    t35 = load y
    t36 = load y
    t37 = ~ t36
    t38 = t35 = t37
    return self

