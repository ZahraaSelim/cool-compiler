class Graph:
  method add_vertice:
    param v
    t0 = call outgoing()
    t1 = load edges
    t2 = call append(t1)
    store t2 -> edges
    t3 = load vertices
    t4 = call cons(v)
    store t4 -> vertices
    return t4
  method print_V:
    t7 = load vertices
    t8 = call print()
    return t8
  method print_E:
    t5 = load edges
    t6 = call print()
    return t6
class EList:
  method head:
    t30 = call EList.abort()
    t31 = load car
    return t31
  method print:
    t41 = "\n"
    t42 = call EList.out_string(t41)
    return t42
  method tail:
    t32 = call EList.abort()
    return self
  method isNil:
    t29 = true
    return t29
  method append:
    param l
    t35 = call isNil()
    if t35 goto L0
    goto L1
    L0:
    t36 = l
    goto L2
    L1:
    t37 = call EList.tail()
    t38 = call append(l)
    t39 = call EList.head()
    t40 = call cons(t39)
    t36 = t40
    L2:
    return t36
  method cons:
    param e
    t33 = call new ECons()
    t34 = call init(e, self)
    return t34
class Vertice:
  method outgoing:
    t9 = load out
    return t9
  method number:
    t10 = load num
    return t10
  method init:
    param n
    store n -> num
    return self
  method print:
    t13 = load num
    t14 = call Vertice.out_int(t13)
    t15 = load out
    t16 = call print()
    return t16
  method add_out:
    param s
    t11 = load out
    t12 = call cons(s)
    store t12 -> out
    return self
class VList:
  method head:
    t51 = call VList.abort()
    t52 = load car
    return t52
  method print:
    t56 = "\n"
    t57 = call VList.out_string(t56)
    return t57
  method tail:
    t53 = call VList.abort()
    return self
  method isNil:
    t50 = true
    return t50
  method cons:
    param v
    t54 = call new VCons()
    t55 = call init(v, self)
    return t55
class Parse:
  method parse_line:
    param s
    t78 = call new Vertice()
    t79 = call Parse.a2i(s)
    t80 = call init(t79)
    v = t80
    L_preheader_3588dd609c964381886c26cdb30c26f3:
    t83 = 0
    goto L6
    L6:
    t81 = load rest
    t82 = call length()
    t84 = t82 = 0
    t85 = not t84
    if t85 goto L7
    goto L8
    L7:
    t86 = load rest
    t87 = call Parse.a2i(t86)
    succ = t87
    t88 = load rest
    t89 = call Parse.a2i(t88)
    weight = t89
    t90 = call new Edge()
    t91 = call number()
    t92 = call init(t91, succ, weight)
    t93 = call add_out(t92)
    goto L_preheader_3588dd609c964381886c26cdb30c26f3
    L8:
    return v
  method a2i:
    param s
    t136 = call length()
    t137 = 0
    t138 = t136 = 0
    if t138 goto L39
    goto L40
    L39:
    t139 = 0
    t140 = 0
    goto L41
    L40:
    t141 = 0
    t142 = 1
    t143 = call substr(t141, t142)
    t144 = "-"
    t145 = t143 = "-"
    if t145 goto L42
    goto L43
    L42:
    t146 = 1
    t147 = call length()
    t148 = 1
    t149 = t147 - 1
    t150 = call substr(t146, t149)
    t151 = call Parse.a2i_aux(t150)
    t152 = ~ t151
    t153 = t152
    goto L44
    L43:
    t154 = 0
    t155 = 1
    t156 = call substr(t154, t155)
    t157 = " "
    t158 = t156 = " "
    if t158 goto L45
    goto L46
    L45:
    t159 = 1
    t160 = call length()
    t161 = 1
    t162 = t160 - 1
    t163 = call substr(t159, t162)
    t164 = call Parse.a2i(t163)
    t165 = t164
    goto L47
    L46:
    t166 = call Parse.a2i_aux(s)
    t165 = t166
    L47:
    t153 = t165
    L44:
    t140 = t153
    L41:
    return t140
  method c2i:
    param char
    t94 = "0"
    t95 = char = "0"
    if t95 goto L9
    goto L10
    L9:
    t96 = 0
    t97 = 0
    goto L11
    L10:
    t98 = "1"
    t99 = char = "1"
    if t99 goto L12
    goto L13
    L12:
    t100 = 1
    t101 = 1
    goto L14
    L13:
    t102 = "2"
    t103 = char = "2"
    if t103 goto L15
    goto L16
    L15:
    t104 = 2
    t105 = 2
    goto L17
    L16:
    t106 = "3"
    t107 = char = "3"
    if t107 goto L18
    goto L19
    L18:
    t108 = 3
    t109 = 3
    goto L20
    L19:
    t110 = "4"
    t111 = char = "4"
    if t111 goto L21
    goto L22
    L21:
    t112 = 4
    t113 = 4
    goto L23
    L22:
    t114 = "5"
    t115 = char = "5"
    if t115 goto L24
    goto L25
    L24:
    t116 = 5
    t117 = 5
    goto L26
    L25:
    t118 = "6"
    t119 = char = "6"
    if t119 goto L27
    goto L28
    L27:
    t120 = 6
    t121 = 6
    goto L29
    L28:
    t122 = "7"
    t123 = char = "7"
    if t123 goto L30
    goto L31
    L30:
    t124 = 7
    t125 = 7
    goto L32
    L31:
    t126 = "8"
    t127 = char = "8"
    if t127 goto L33
    goto L34
    L33:
    t128 = 8
    t129 = 8
    goto L35
    L34:
    t130 = "9"
    t131 = char = "9"
    if t131 goto L36
    goto L37
    L36:
    t132 = 9
    t133 = 9
    goto L38
    L37:
    t134 = call Parse.abort()
    t135 = 0
    t133 = 0
    L38:
    t129 = 0
    L35:
    t125 = 8
    L32:
    t121 = 7
    L29:
    t117 = 6
    L26:
    t113 = 5
    L23:
    t109 = 4
    L20:
    t105 = 3
    L17:
    t101 = 2
    L14:
    t97 = 1
    L11:
    return t97
  method read_input:
    t65 = call new Graph()
    g = t65
    t66 = call Parse.in_string()
    line = t66
    L_preheader_f49767502d4d464baa44419198b2ddef:
    t68 = "\n"
    t71 = ""
    goto L3
    L3:
    t67 = load boolop
    t69 = line = "\n"
    t70 = not t69
    t72 = line = ""
    t73 = not t72
    t74 = call and(t70, t73)
    if t74 goto L4
    goto L5
    L4:
    t75 = call Parse.parse_line(line)
    t76 = call add_vertice(t75)
    t77 = call Parse.in_string()
    line = t77
    goto L_preheader_f49767502d4d464baa44419198b2ddef
    L5:
    return g
  method a2i_aux:
    param s
    t167 = 0
    int = 0
    t168 = call length()
    j = t168
    t169 = 0
    i = 0
    L_preheader_465fcaef754145038d57ae853f22c5aa:
    t171 = 1
    t173 = " "
    t175 = 1
    t179 = 1
    i = j
    t182 = j
    t183 = ","
    t185 = 1
    t189 = 1
    i = j
    t192 = j
    t193 = 10
    t195 = 1
    t199 = 1
    t202 = ""
    t203 = ""
    t204 = ""
    t203 = ""
    goto L48
    L48:
    t170 = 0 < j
    if t170 goto L49
    goto L50
    L49:
    t172 = call substr(i, t171)
    c = t172
    t174 = c = " "
    if t174 goto L51
    goto L52
    L51:
    t176 = 1
    t177 = call length()
    t178 = t177 - 0
    t180 = t178 - 1
    t181 = call substr(t176, t180)
    store t181 -> rest
    goto L53
    L52:
    t184 = c = ","
    if t184 goto L54
    goto L55
    L54:
    t186 = 1
    t187 = call length()
    t188 = t187 - 0
    t190 = t188 - 1
    t191 = call substr(t186, t190)
    store t191 -> rest
    goto L56
    L55:
    t194 = 0
    t196 = call substr(i, t195)
    t197 = call Parse.c2i(t196)
    t198 = 0 + t197
    int = t198
    t200 = 1
    i = 1
    t201 = 0 = j
    if t201 goto L57
    goto L58
    L57:
    store t202 -> rest
    goto L59
    L58:
    L59:
    t192 = ""
    L56:
    t182 = t192
    L53:
    goto L_preheader_465fcaef754145038d57ae853f22c5aa
    L50:
    return int
class ECons:
  method head:
    t44 = load car
    return t44
  method init:
    param e
    param rest
    store e -> car
    store rest -> cdr
    return self
  method print:
    t46 = load car
    t47 = call print()
    t48 = load cdr
    t49 = call print()
    return t49
  method tail:
    t45 = load cdr
    return t45
  method isNil:
    t43 = false
    return t43
class VCons:
  method head:
    t59 = load car
    return t59
  method init:
    param v
    param rest
    store v -> car
    store rest -> cdr
    return self
  method print:
    t61 = load car
    t62 = call print()
    t63 = load cdr
    t64 = call print()
    return t64
  method tail:
    t60 = load cdr
    return t60
  method isNil:
    t58 = false
    return t58
class BoolOp:
  method or:
    param b1
    param b2
    if b1 goto L63
    goto L64
    L63:
    t211 = true
    t212 = true
    goto L65
    L64:
    t212 = b2
    L65:
    return t212
  method and:
    param b1
    param b2
    if b1 goto L60
    goto L61
    L60:
    t209 = b2
    goto L62
    L61:
    t210 = false
    t209 = false
    L62:
    return t209
class Edge:
  method init:
    param f
    param t
    param w
    store f -> from
    store t -> to
    store w -> weight
    return self
  method print:
    t17 = " ("
    t18 = call Edge.out_string(t17)
    t19 = load from
    t20 = call Edge.out_int(t19)
    t21 = ","
    t22 = call Edge.out_string(t21)
    t23 = load to
    t24 = call Edge.out_int(t23)
    t25 = ")"
    t26 = call Edge.out_string(t25)
    t27 = load weight
    t28 = call Edge.out_int(t27)
    return t28
class Main:
  method main:
    t205 = load g
    t206 = call print_V()
    t207 = load g
    t208 = call print_E()
    return t208

