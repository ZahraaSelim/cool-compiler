class Bazz:
  method doh:
    t7 = load h
    i = t7
    t8 = load h
    t9 = 1
    t10 = t8 + t9
    store t10 -> h
    return i
  method printh:
    t4 = load h
    t5 = call Bazz.out_int(t4)
    t6 = 0
    return t6
class Foo:
  method doh:
    t0 = load h
    i = t0
    t1 = load h
    t2 = 2
    t3 = t1 + t2
    store t3 -> h
    return i
class Main:
  method main:
    t11 = "do nothing"
    return t11

