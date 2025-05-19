class Main:
  method main:
    t0 = call new Object()
    t1 = call type_name()
    t2 = 4
    t3 = 1
    t4 = call substr(t2, t3)
    t5 = call Main.out_string(t4)
    t6 = isvoid self
    t7 = call type_name()
    t8 = 1
    t9 = 3
    t10 = call substr(t8, t9)
    t11 = call out_string(t10)
    t12 = "\n"
    t13 = call Main.out_string(t12)
    return t13

