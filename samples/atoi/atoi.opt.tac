class A2I:
  method a2i:
    param s
    t84 = call length()
    t85 = 0
    t86 = t84 = 0
    if t86 goto L60
    goto L61
    L60:
    t87 = 0
    t88 = 0
    goto L62
    L61:
    t89 = 0
    t90 = 1
    t91 = call substr(t89, t90)
    t92 = "-"
    t93 = t91 = "-"
    if t93 goto L63
    goto L64
    L63:
    t94 = 1
    t95 = call length()
    t96 = 1
    t97 = t95 - 1
    t98 = call substr(t94, t97)
    t99 = call A2I.a2i_aux(t98)
    t100 = ~ t99
    t101 = t100
    goto L65
    L64:
    t102 = 0
    t103 = 1
    t104 = call substr(t102, t103)
    t105 = "+"
    t106 = t104 = "+"
    if t106 goto L66
    goto L67
    L66:
    t107 = 1
    t108 = call length()
    t109 = 1
    t110 = t108 - 1
    t111 = call substr(t107, t110)
    t112 = call A2I.a2i_aux(t111)
    t113 = t112
    goto L68
    L67:
    t114 = call A2I.a2i_aux(s)
    t113 = t114
    L68:
    t101 = t113
    L65:
    t88 = t101
    L62:
    return t88
  method i2a:
    param i
    t127 = 0
    t128 = i = 0
    if t128 goto L72
    goto L73
    L72:
    t129 = "0"
    t130 = "0"
    goto L74
    L73:
    t131 = 0
    t132 = 0 < i
    if t132 goto L75
    goto L76
    L75:
    t133 = call A2I.i2a_aux(i)
    t134 = t133
    goto L77
    L76:
    t135 = "-"
    t136 = 1
    t137 = ~ t136
    t138 = i * t137
    t139 = call A2I.i2a_aux(t138)
    t140 = call concat(t139)
    t134 = t140
    L77:
    t130 = t134
    L74:
    return t130
  method i2a_aux:
    param i
    t141 = 0
    t142 = i = 0
    if t142 goto L78
    goto L79
    L78:
    t143 = ""
    t144 = ""
    goto L80
    L79:
    t145 = 10
    t146 = i / 10
    next = t146
    t147 = call A2I.i2a_aux(next)
    t148 = 10
    t149 = next * 10
    t150 = i - t149
    t151 = call A2I.i2c(t150)
    t152 = call concat(t151)
    t144 = t152
    L80:
    return t144
  method c2i:
    param char
    t0 = "0"
    t1 = char = "0"
    if t1 goto L0
    goto L1
    L0:
    t2 = 0
    t3 = 0
    goto L2
    L1:
    t4 = "1"
    t5 = char = "1"
    if t5 goto L3
    goto L4
    L3:
    t6 = 1
    t7 = 1
    goto L5
    L4:
    t8 = "2"
    t9 = char = "2"
    if t9 goto L6
    goto L7
    L6:
    t10 = 2
    t11 = 2
    goto L8
    L7:
    t12 = "3"
    t13 = char = "3"
    if t13 goto L9
    goto L10
    L9:
    t14 = 3
    t15 = 3
    goto L11
    L10:
    t16 = "4"
    t17 = char = "4"
    if t17 goto L12
    goto L13
    L12:
    t18 = 4
    t19 = 4
    goto L14
    L13:
    t20 = "5"
    t21 = char = "5"
    if t21 goto L15
    goto L16
    L15:
    t22 = 5
    t23 = 5
    goto L17
    L16:
    t24 = "6"
    t25 = char = "6"
    if t25 goto L18
    goto L19
    L18:
    t26 = 6
    t27 = 6
    goto L20
    L19:
    t28 = "7"
    t29 = char = "7"
    if t29 goto L21
    goto L22
    L21:
    t30 = 7
    t31 = 7
    goto L23
    L22:
    t32 = "8"
    t33 = char = "8"
    if t33 goto L24
    goto L25
    L24:
    t34 = 8
    t35 = 8
    goto L26
    L25:
    t36 = "9"
    t37 = char = "9"
    if t37 goto L27
    goto L28
    L27:
    t38 = 9
    t39 = 9
    goto L29
    L28:
    t40 = call A2I.abort()
    t41 = 0
    t39 = 0
    L29:
    t35 = 0
    L26:
    t31 = 8
    L23:
    t27 = 7
    L20:
    t23 = 6
    L17:
    t19 = 5
    L14:
    t15 = 4
    L11:
    t11 = 3
    L8:
    t7 = 2
    L5:
    t3 = 1
    L2:
    return t3
  method i2c:
    param i
    t42 = 0
    t43 = i = 0
    if t43 goto L30
    goto L31
    L30:
    t44 = "0"
    t45 = "0"
    goto L32
    L31:
    t46 = 1
    t47 = i = 1
    if t47 goto L33
    goto L34
    L33:
    t48 = "1"
    t49 = "1"
    goto L35
    L34:
    t50 = 2
    t51 = i = 2
    if t51 goto L36
    goto L37
    L36:
    t52 = "2"
    t53 = "2"
    goto L38
    L37:
    t54 = 3
    t55 = i = 3
    if t55 goto L39
    goto L40
    L39:
    t56 = "3"
    t57 = "3"
    goto L41
    L40:
    t58 = 4
    t59 = i = 4
    if t59 goto L42
    goto L43
    L42:
    t60 = "4"
    t61 = "4"
    goto L44
    L43:
    t62 = 5
    t63 = i = 5
    if t63 goto L45
    goto L46
    L45:
    t64 = "5"
    t65 = "5"
    goto L47
    L46:
    t66 = 6
    t67 = i = 6
    if t67 goto L48
    goto L49
    L48:
    t68 = "6"
    t69 = "6"
    goto L50
    L49:
    t70 = 7
    t71 = i = 7
    if t71 goto L51
    goto L52
    L51:
    t72 = "7"
    t73 = "7"
    goto L53
    L52:
    t74 = 8
    t75 = i = 8
    if t75 goto L54
    goto L55
    L54:
    t76 = "8"
    t77 = "8"
    goto L56
    L55:
    t78 = 9
    t79 = i = 9
    if t79 goto L57
    goto L58
    L57:
    t80 = "9"
    t81 = "9"
    goto L59
    L58:
    t82 = call A2I.abort()
    t83 = ""
    t81 = ""
    L59:
    t77 = ""
    L56:
    t73 = "8"
    L53:
    t69 = "7"
    L50:
    t65 = "6"
    L47:
    t61 = "5"
    L44:
    t57 = "4"
    L41:
    t53 = "3"
    L38:
    t49 = "2"
    L35:
    t45 = "1"
    L32:
    return t45
  method a2i_aux:
    param s
    t115 = 0
    int = 0
    t116 = call length()
    j = t116
    t117 = 0
    i = 0
    L_preheader_afee742a79bc4bd6a344850766990821:
    t119 = 10
    t121 = 1
    t125 = 1
    goto L69
    L69:
    t118 = 0 < j
    if t118 goto L70
    goto L71
    L70:
    t120 = 0
    t122 = call substr(i, t121)
    t123 = call A2I.c2i(t122)
    t124 = 0 + t123
    int = t124
    t126 = 1
    i = 1
    goto L_preheader_afee742a79bc4bd6a344850766990821
    L71:
    return int

