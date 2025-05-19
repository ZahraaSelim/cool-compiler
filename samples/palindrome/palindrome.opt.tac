class Main:
  method pal:
    param s
    t0 = call length()
    t1 = 0
    t2 = t0 = 0
    if t2 goto L0
    goto L1
    L0:
    t3 = true
    t4 = true
    goto L2
    L1:
    t5 = call length()
    t6 = 1
    t7 = t5 = 1
    if t7 goto L3
    goto L4
    L3:
    t8 = true
    t9 = true
    goto L5
    L4:
    t10 = 0
    t11 = 1
    t12 = call substr(t10, t11)
    t13 = call length()
    t14 = 1
    t15 = t13 - 1
    t16 = 1
    t17 = call substr(t15, t16)
    t18 = t12 = t17
    if t18 goto L6
    goto L7
    L6:
    t19 = 1
    t20 = call length()
    t21 = 2
    t22 = t20 - 2
    t23 = call substr(t19, t22)
    t24 = call Main.pal(t23)
    t25 = t24
    goto L8
    L7:
    t26 = false
    t25 = false
    L8:
    t9 = false
    L5:
    t4 = true
    L2:
    return t4
  method main:
    t27 = 1
    t28 = ~ t27
    store t28 -> i
    t29 = "enter a string\n"
    t30 = call Main.out_string(t29)
    t31 = call Main.in_string()
    t32 = call Main.pal(t31)
    if t32 goto L9
    goto L10
    L9:
    t33 = "that was a palindrome\n"
    t34 = call Main.out_string(t33)
    t35 = t34
    goto L11
    L10:
    t36 = "that was not a palindrome\n"
    t37 = call Main.out_string(t36)
    t35 = t37
    L11:
    return t35

