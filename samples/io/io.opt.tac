class A:
  method out_a:
    t0 = load io
    t1 = "A: Hello world\n"
    t2 = call out_string(t1)
    return t2
class B:
  method out_b:
    t3 = load io
    t4 = "B: Hello world\n"
    t5 = call out_string(t4)
    return t5
class C:
  method out_c:
    t6 = "C: Hello world\n"
    t7 = call C.out_string(t6)
    return t7
class D:
  method out_d:
    t8 = "D: Hello world\n"
    t9 = call D.out_string(t8)
    return t9
class Main:
  method main:
    t10 = call new A()
    t11 = call out_a()
    t12 = call new B()
    t13 = call out_b()
    t14 = call new C()
    t15 = call out_c()
    t16 = call new D()
    t17 = call out_d()
    t18 = "Done.\n"
    t19 = call Main.out_string(t18)
    return t19

