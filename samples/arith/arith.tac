class A:
  method method5:
    param num
    t15 = 1
    x = t15
    t16 = 1
    y = t16
    L3:
    t17 = y <= num
    if t17 goto L4
    goto L5
    L4:
    t18 = x * y
    x = t18
    t19 = 1
    t20 = y + t19
    y = t20
    goto L3
    L5:
    t21 = call new E()
    t22 = call set_var(x)
    return t22
  method method1:
    param num
    return self
  method method2:
    param num1
    param num2
    t1 = num1 + num2
    x = t1
    t2 = call new B()
    t3 = call set_var(x)
    return t3
  method method3:
    param num
    t4 = ~ num
    x = t4
    t5 = call new C()
    t6 = call set_var(x)
    return t6
  method method4:
    param num1
    param num2
    t7 = num2 < num1
    if t7 goto L0
    goto L1
    L0:
    t8 = num1 - num2
    x = t8
    t9 = call new D()
    t10 = call set_var(x)
    t11 = t10
    goto L2
    L1:
    t12 = num2 - num1
    x = t12
    t13 = call new D()
    t14 = call set_var(x)
    t11 = t14
    L2:
    return t11
  method value:
    t0 = load var
    return t0
  method set_var:
    param num
    store num -> var
    return self
class B:
  method method5:
    param num
    t23 = num * num
    x = t23
    t24 = call new E()
    t25 = call set_var(x)
    return t25
class C:
  method method5:
    param num
    t29 = num * num
    t30 = t29 * num
    x = t30
    t31 = call new E()
    t32 = call set_var(x)
    return t32
  method method6:
    param num
    t26 = ~ num
    x = t26
    t27 = call new A()
    t28 = call set_var(x)
    return t28
class D:
  method method7:
    param num
    x = num
    t33 = 0
    t34 = x < t33
    if t34 goto L6
    goto L7
    L6:
    t35 = ~ x
    t36 = call D.method7(t35)
    t37 = t36
    goto L8
    L7:
    t38 = 0
    t39 = t38 = x
    if t39 goto L9
    goto L10
    L9:
    t40 = true
    t41 = t40
    goto L11
    L10:
    t42 = 1
    t43 = t42 = x
    if t43 goto L12
    goto L13
    L12:
    t44 = false
    t45 = t44
    goto L14
    L13:
    t46 = 2
    t47 = t46 = x
    if t47 goto L15
    goto L16
    L15:
    t48 = false
    t49 = t48
    goto L17
    L16:
    t50 = 3
    t51 = x - t50
    t52 = call D.method7(t51)
    t49 = t52
    L17:
    t45 = t49
    L14:
    t41 = t45
    L11:
    t37 = t41
    L8:
    return t37
class E:
  method method6:
    param num
    t53 = 8
    t54 = num / t53
    x = t54
    t55 = call new A()
    t56 = call set_var(x)
    return t56
class A2I:
  method a2i:
    param s
    t141 = call length()
    t142 = 0
    t143 = t141 = t142
    if t143 goto L78
    goto L79
    L78:
    t144 = 0
    t145 = t144
    goto L80
    L79:
    t146 = 0
    t147 = 1
    t148 = call substr(t146, t147)
    t149 = "-"
    t150 = t148 = t149
    if t150 goto L81
    goto L82
    L81:
    t151 = 1
    t152 = call length()
    t153 = 1
    t154 = t152 - t153
    t155 = call substr(t151, t154)
    t156 = call A2I.a2i_aux(t155)
    t157 = ~ t156
    t158 = t157
    goto L83
    L82:
    t159 = 0
    t160 = 1
    t161 = call substr(t159, t160)
    t162 = "+"
    t163 = t161 = t162
    if t163 goto L84
    goto L85
    L84:
    t164 = 1
    t165 = call length()
    t166 = 1
    t167 = t165 - t166
    t168 = call substr(t164, t167)
    t169 = call A2I.a2i_aux(t168)
    t170 = t169
    goto L86
    L85:
    t171 = call A2I.a2i_aux(s)
    t170 = t171
    L86:
    t158 = t170
    L83:
    t145 = t158
    L80:
    return t145
  method i2a:
    param i
    t184 = 0
    t185 = i = t184
    if t185 goto L90
    goto L91
    L90:
    t186 = "0"
    t187 = t186
    goto L92
    L91:
    t188 = 0
    t189 = t188 < i
    if t189 goto L93
    goto L94
    L93:
    t190 = call A2I.i2a_aux(i)
    t191 = t190
    goto L95
    L94:
    t192 = "-"
    t193 = 1
    t194 = ~ t193
    t195 = i * t194
    t196 = call A2I.i2a_aux(t195)
    t197 = call concat(t196)
    t191 = t197
    L95:
    t187 = t191
    L92:
    return t187
  method i2a_aux:
    param i
    t198 = 0
    t199 = i = t198
    if t199 goto L96
    goto L97
    L96:
    t200 = ""
    t201 = t200
    goto L98
    L97:
    t202 = 10
    t203 = i / t202
    next = t203
    t204 = call A2I.i2a_aux(next)
    t205 = 10
    t206 = next * t205
    t207 = i - t206
    t208 = call A2I.i2c(t207)
    t209 = call concat(t208)
    t201 = t209
    L98:
    return t201
  method c2i:
    param char
    t57 = "0"
    t58 = char = t57
    if t58 goto L18
    goto L19
    L18:
    t59 = 0
    t60 = t59
    goto L20
    L19:
    t61 = "1"
    t62 = char = t61
    if t62 goto L21
    goto L22
    L21:
    t63 = 1
    t64 = t63
    goto L23
    L22:
    t65 = "2"
    t66 = char = t65
    if t66 goto L24
    goto L25
    L24:
    t67 = 2
    t68 = t67
    goto L26
    L25:
    t69 = "3"
    t70 = char = t69
    if t70 goto L27
    goto L28
    L27:
    t71 = 3
    t72 = t71
    goto L29
    L28:
    t73 = "4"
    t74 = char = t73
    if t74 goto L30
    goto L31
    L30:
    t75 = 4
    t76 = t75
    goto L32
    L31:
    t77 = "5"
    t78 = char = t77
    if t78 goto L33
    goto L34
    L33:
    t79 = 5
    t80 = t79
    goto L35
    L34:
    t81 = "6"
    t82 = char = t81
    if t82 goto L36
    goto L37
    L36:
    t83 = 6
    t84 = t83
    goto L38
    L37:
    t85 = "7"
    t86 = char = t85
    if t86 goto L39
    goto L40
    L39:
    t87 = 7
    t88 = t87
    goto L41
    L40:
    t89 = "8"
    t90 = char = t89
    if t90 goto L42
    goto L43
    L42:
    t91 = 8
    t92 = t91
    goto L44
    L43:
    t93 = "9"
    t94 = char = t93
    if t94 goto L45
    goto L46
    L45:
    t95 = 9
    t96 = t95
    goto L47
    L46:
    t97 = call A2I.abort()
    t98 = 0
    t96 = t98
    L47:
    t92 = t96
    L44:
    t88 = t92
    L41:
    t84 = t88
    L38:
    t80 = t84
    L35:
    t76 = t80
    L32:
    t72 = t76
    L29:
    t68 = t72
    L26:
    t64 = t68
    L23:
    t60 = t64
    L20:
    return t60
  method i2c:
    param i
    t99 = 0
    t100 = i = t99
    if t100 goto L48
    goto L49
    L48:
    t101 = "0"
    t102 = t101
    goto L50
    L49:
    t103 = 1
    t104 = i = t103
    if t104 goto L51
    goto L52
    L51:
    t105 = "1"
    t106 = t105
    goto L53
    L52:
    t107 = 2
    t108 = i = t107
    if t108 goto L54
    goto L55
    L54:
    t109 = "2"
    t110 = t109
    goto L56
    L55:
    t111 = 3
    t112 = i = t111
    if t112 goto L57
    goto L58
    L57:
    t113 = "3"
    t114 = t113
    goto L59
    L58:
    t115 = 4
    t116 = i = t115
    if t116 goto L60
    goto L61
    L60:
    t117 = "4"
    t118 = t117
    goto L62
    L61:
    t119 = 5
    t120 = i = t119
    if t120 goto L63
    goto L64
    L63:
    t121 = "5"
    t122 = t121
    goto L65
    L64:
    t123 = 6
    t124 = i = t123
    if t124 goto L66
    goto L67
    L66:
    t125 = "6"
    t126 = t125
    goto L68
    L67:
    t127 = 7
    t128 = i = t127
    if t128 goto L69
    goto L70
    L69:
    t129 = "7"
    t130 = t129
    goto L71
    L70:
    t131 = 8
    t132 = i = t131
    if t132 goto L72
    goto L73
    L72:
    t133 = "8"
    t134 = t133
    goto L74
    L73:
    t135 = 9
    t136 = i = t135
    if t136 goto L75
    goto L76
    L75:
    t137 = "9"
    t138 = t137
    goto L77
    L76:
    t139 = call A2I.abort()
    t140 = ""
    t138 = t140
    L77:
    t134 = t138
    L74:
    t130 = t134
    L71:
    t126 = t130
    L68:
    t122 = t126
    L65:
    t118 = t122
    L62:
    t114 = t118
    L59:
    t110 = t114
    L56:
    t106 = t110
    L53:
    t102 = t106
    L50:
    return t102
  method a2i_aux:
    param s
    t172 = 0
    int = t172
    t173 = call length()
    j = t173
    t174 = 0
    i = t174
    L87:
    t175 = i < j
    if t175 goto L88
    goto L89
    L88:
    t176 = 10
    t177 = int * t176
    t178 = 1
    t179 = call substr(i, t178)
    t180 = call A2I.c2i(t179)
    t181 = t177 + t180
    int = t181
    t182 = 1
    t183 = i + t182
    i = t183
    goto L87
    L89:
    return int
class Main:
  method print:
    param var
    t300 = call new A2I()
    z = t300
    t301 = call value()
    t302 = call i2a(t301)
    t303 = call Main.out_string(t302)
    t304 = " "
    t305 = call Main.out_string(t304)
    return t305
  method class_type:
    param var
    if var.type == A goto L109
    if var.type == B goto L110
    if var.type == C goto L111
    if var.type == D goto L112
    if var.type == E goto L113
    if var.type == Object goto L114
    L109:
    t288 = "Class type is now A\n"
    t289 = call Main.out_string(t288)
    t287 = t289
    goto L108
    L110:
    t290 = "Class type is now B\n"
    t291 = call Main.out_string(t290)
    t287 = t291
    goto L108
    L111:
    t292 = "Class type is now C\n"
    t293 = call Main.out_string(t292)
    t287 = t293
    goto L108
    L112:
    t294 = "Class type is now D\n"
    t295 = call Main.out_string(t294)
    t287 = t295
    goto L108
    L113:
    t296 = "Class type is now E\n"
    t297 = call Main.out_string(t296)
    t287 = t297
    goto L108
    L114:
    t298 = "Oooops\n"
    t299 = call Main.out_string(t298)
    t287 = t299
    goto L108
    L108:
    return t287
  method is_even:
    param num
    x = num
    t271 = 0
    t272 = x < t271
    if t272 goto L99
    goto L100
    L99:
    t273 = ~ x
    t274 = call Main.is_even(t273)
    t275 = t274
    goto L101
    L100:
    t276 = 0
    t277 = t276 = x
    if t277 goto L102
    goto L103
    L102:
    t278 = true
    t279 = t278
    goto L104
    L103:
    t280 = 1
    t281 = t280 = x
    if t281 goto L105
    goto L106
    L105:
    t282 = false
    t283 = t282
    goto L107
    L106:
    t284 = 2
    t285 = x - t284
    t286 = call Main.is_even(t285)
    t283 = t286
    L107:
    t279 = t283
    L104:
    t275 = t279
    L101:
    return t275
  method main:
    t306 = call new A()
    store t306 -> avar
    L115:
    t307 = load flag
    if t307 goto L116
    goto L117
    L116:
    t308 = "number "
    t309 = call Main.out_string(t308)
    t310 = load avar
    t311 = call Main.print(t310)
    t312 = load avar
    t313 = call value()
    t314 = call Main.is_even(t313)
    if t314 goto L118
    goto L119
    L118:
    t315 = "is even!\n"
    t316 = call Main.out_string(t315)
    t317 = t316
    goto L120
    L119:
    t318 = "is odd!\n"
    t319 = call Main.out_string(t318)
    t317 = t319
    L120:
    t320 = load avar
    t321 = call Main.class_type(t320)
    t322 = call Main.menu()
    store t322 -> char
    t323 = load char
    t324 = "a"
    t325 = t323 = t324
    if t325 goto L121
    goto L122
    L121:
    t326 = call new A()
    t327 = call Main.get_int()
    t328 = call set_var(t327)
    store t328 -> a_var
    t329 = call new B()
    t330 = load avar
    t331 = call value()
    t332 = load a_var
    t333 = call value()
    t334 = call method2(t331, t333)
    store t334 -> avar
    t335 = t334
    goto L123
    L122:
    t336 = load char
    t337 = "b"
    t338 = t336 = t337
    if t338 goto L124
    goto L125
    L124:
    t339 = load avar
    if t339.type == C goto L128
    if t339.type == A goto L129
    if t339.type == Object goto L130
    L128:
    t341 = call value()
    t342 = call method6(t341)
    store t342 -> avar
    t340 = t342
    goto L127
    L129:
    t343 = call value()
    t344 = call method3(t343)
    store t344 -> avar
    t340 = t344
    goto L127
    L130:
    t345 = "Oooops\n"
    t346 = call Main.out_string(t345)
    t347 = call Main.abort()
    t348 = 0
    t340 = t348
    goto L127
    L127:
    t349 = t340
    goto L126
    L125:
    t350 = load char
    t351 = "c"
    t352 = t350 = t351
    if t352 goto L131
    goto L132
    L131:
    t353 = call new A()
    t354 = call Main.get_int()
    t355 = call set_var(t354)
    store t355 -> a_var
    t356 = call new D()
    t357 = load avar
    t358 = call value()
    t359 = load a_var
    t360 = call value()
    t361 = call method4(t358, t360)
    store t361 -> avar
    t362 = t361
    goto L133
    L132:
    t363 = load char
    t364 = "d"
    t365 = t363 = t364
    if t365 goto L134
    goto L135
    L134:
    t366 = call new C()
    t367 = load avar
    t368 = call value()
    t369 = call A.method5(t368)
    store t369 -> avar
    t370 = t369
    goto L136
    L135:
    t371 = load char
    t372 = "e"
    t373 = t371 = t372
    if t373 goto L137
    goto L138
    L137:
    t374 = call new C()
    t375 = load avar
    t376 = call value()
    t377 = call B.method5(t376)
    store t377 -> avar
    t378 = t377
    goto L139
    L138:
    t379 = load char
    t380 = "f"
    t381 = t379 = t380
    if t381 goto L140
    goto L141
    L140:
    t382 = call new C()
    t383 = load avar
    t384 = call value()
    t385 = call C.method5(t384)
    store t385 -> avar
    t386 = t385
    goto L142
    L141:
    t387 = load char
    t388 = "g"
    t389 = t387 = t388
    if t389 goto L143
    goto L144
    L143:
    t390 = call new D()
    t391 = load avar
    t392 = call value()
    t393 = call method7(t392)
    if t393 goto L146
    goto L147
    L146:
    t394 = "number "
    t395 = call Main.out_string(t394)
    t396 = load avar
    t397 = call Main.print(t396)
    t398 = "is divisible by 3.\n"
    t399 = call Main.out_string(t398)
    t400 = t399
    goto L148
    L147:
    t401 = "number "
    t402 = call Main.out_string(t401)
    t403 = load avar
    t404 = call Main.print(t403)
    t405 = "is not divisible by 3.\n"
    t406 = call Main.out_string(t405)
    t400 = t406
    L148:
    t407 = t400
    goto L145
    L144:
    t408 = load char
    t409 = "h"
    t410 = t408 = t409
    if t410 goto L149
    goto L150
    L149:
    t411 = call new E()
    t412 = load avar
    t413 = call value()
    t414 = call method6(t413)
    x = t414
    t415 = load avar
    t416 = call value()
    t417 = call value()
    t418 = 8
    t419 = t417 * t418
    t420 = t416 - t419
    r = t420
    t421 = "number "
    t422 = call Main.out_string(t421)
    t423 = load avar
    t424 = call Main.print(t423)
    t425 = "is equal to "
    t426 = call Main.out_string(t425)
    t427 = call Main.print(x)
    t428 = "times 8 with a remainder of "
    t429 = call Main.out_string(t428)
    t430 = call new A2I()
    a = t430
    t431 = call i2a(r)
    t432 = call Main.out_string(t431)
    t433 = "\n"
    t434 = call Main.out_string(t433)
    store x -> avar
    t435 = x
    goto L151
    L150:
    t436 = load char
    t437 = "j"
    t438 = t436 = t437
    if t438 goto L152
    goto L153
    L152:
    t439 = call new A()
    store t439 -> avar
    t440 = t439
    goto L154
    L153:
    t441 = load char
    t442 = "q"
    t443 = t441 = t442
    if t443 goto L155
    goto L156
    L155:
    t444 = false
    store t444 -> flag
    t445 = t444
    goto L157
    L156:
    t446 = call new A()
    t447 = load avar
    t448 = call value()
    t449 = call method1(t448)
    store t449 -> avar
    t445 = t449
    L157:
    t440 = t445
    L154:
    t435 = t440
    L151:
    t407 = t435
    L145:
    t386 = t407
    L142:
    t378 = t386
    L139:
    t370 = t378
    L136:
    t362 = t370
    L133:
    t349 = t362
    L126:
    t335 = t349
    L123:
    goto L115
    L117:
    return
  method menu:
    t210 = "\n\tTo add a number to "
    t211 = call Main.out_string(t210)
    t212 = load avar
    t213 = call Main.print(t212)
    t214 = "...enter a:\n"
    t215 = call Main.out_string(t214)
    t216 = "\tTo negate "
    t217 = call Main.out_string(t216)
    t218 = load avar
    t219 = call Main.print(t218)
    t220 = "...enter b:\n"
    t221 = call Main.out_string(t220)
    t222 = "\tTo find the difference between "
    t223 = call Main.out_string(t222)
    t224 = load avar
    t225 = call Main.print(t224)
    t226 = "and another number...enter c:\n"
    t227 = call Main.out_string(t226)
    t228 = "\tTo find the factorial of "
    t229 = call Main.out_string(t228)
    t230 = load avar
    t231 = call Main.print(t230)
    t232 = "...enter d:\n"
    t233 = call Main.out_string(t232)
    t234 = "\tTo square "
    t235 = call Main.out_string(t234)
    t236 = load avar
    t237 = call Main.print(t236)
    t238 = "...enter e:\n"
    t239 = call Main.out_string(t238)
    t240 = "\tTo cube "
    t241 = call Main.out_string(t240)
    t242 = load avar
    t243 = call Main.print(t242)
    t244 = "...enter f:\n"
    t245 = call Main.out_string(t244)
    t246 = "\tTo find out if "
    t247 = call Main.out_string(t246)
    t248 = load avar
    t249 = call Main.print(t248)
    t250 = "is a multiple of 3...enter g:\n"
    t251 = call Main.out_string(t250)
    t252 = "\tTo divide "
    t253 = call Main.out_string(t252)
    t254 = load avar
    t255 = call Main.print(t254)
    t256 = "by 8...enter h:\n"
    t257 = call Main.out_string(t256)
    t258 = "\tTo get a new number...enter j:\n"
    t259 = call Main.out_string(t258)
    t260 = "\tTo quit...enter q:\n\n"
    t261 = call Main.out_string(t260)
    t262 = call Main.in_string()
    return t262
  method get_int:
    t268 = call new A2I()
    z = t268
    t269 = call Main.prompt()
    s = t269
    t270 = call a2i(s)
    return t270
  method prompt:
    t263 = "\n"
    t264 = call Main.out_string(t263)
    t265 = "Please enter a number...  "
    t266 = call Main.out_string(t265)
    t267 = call Main.in_string()
    return t267

