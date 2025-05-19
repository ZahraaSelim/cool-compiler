class CellularAutomaton:
  method southwest:
    param position
    t163 = load board_size
    t164 = load columns
    t165 = position + t164
    t166 = t163 < t165
    if t166 goto L57
    goto L58
    L57:
    t167 = " "
    t168 = t167
    goto L59
    L58:
    t169 = load columns
    t170 = position / t169
    t171 = load columns
    t172 = t170 * t171
    t173 = t172 = position
    if t173 goto L60
    goto L61
    L60:
    t174 = " "
    t175 = t174
    goto L62
    L61:
    t176 = 1
    t177 = position - t176
    t178 = call CellularAutomaton.south(t177)
    t175 = t178
    L62:
    t168 = t175
    L59:
    return t168
  method init:
    param map
    store map -> population_map
    t34 = call CellularAutomaton.board_init(map)
    return self
  method south:
    param position
    t70 = load board_size
    t71 = load columns
    t72 = position + t71
    t73 = t70 < t72
    if t73 goto L27
    goto L28
    L27:
    t74 = " "
    t75 = t74
    goto L29
    L28:
    t76 = load columns
    t77 = position + t76
    t78 = call CellularAutomaton.cell(t77)
    t75 = t78
    L29:
    return t75
  method north:
    param position
    t61 = load columns
    t62 = position - t61
    t63 = 0
    t64 = t62 < t63
    if t64 goto L24
    goto L25
    L24:
    t65 = " "
    t66 = t65
    goto L26
    L25:
    t67 = load columns
    t68 = position - t67
    t69 = call CellularAutomaton.cell(t68)
    t66 = t69
    L26:
    return t66
  method northwest:
    param position
    t107 = load columns
    t108 = position - t107
    t109 = 0
    t110 = t108 < t109
    if t110 goto L39
    goto L40
    L39:
    t111 = " "
    t112 = t111
    goto L41
    L40:
    t113 = load columns
    t114 = position / t113
    t115 = load columns
    t116 = t114 * t115
    t117 = t116 = position
    if t117 goto L42
    goto L43
    L42:
    t118 = " "
    t119 = t118
    goto L44
    L43:
    t120 = 1
    t121 = position - t120
    t122 = call CellularAutomaton.north(t121)
    t119 = t122
    L44:
    t112 = t119
    L41:
    return t112
  method northeast:
    param position
    t123 = load columns
    t124 = position - t123
    t125 = 0
    t126 = t124 < t125
    if t126 goto L45
    goto L46
    L45:
    t127 = " "
    t128 = t127
    goto L47
    L46:
    t129 = 1
    t130 = position + t129
    t131 = load columns
    t132 = t130 / t131
    t133 = load columns
    t134 = t132 * t133
    t135 = 1
    t136 = position + t135
    t137 = t134 = t136
    if t137 goto L48
    goto L49
    L48:
    t138 = " "
    t139 = t138
    goto L50
    L49:
    t140 = 1
    t141 = position + t140
    t142 = call CellularAutomaton.north(t141)
    t139 = t142
    L50:
    t128 = t139
    L47:
    return t128
  method cell:
    param position
    t52 = load board_size
    t53 = 1
    t54 = t52 - t53
    t55 = t54 < position
    if t55 goto L21
    goto L22
    L21:
    t56 = " "
    t57 = t56
    goto L23
    L22:
    t58 = load population_map
    t59 = 1
    t60 = call substr(position, t59)
    t57 = t60
    L23:
    return t57
  method cell_at_next_evolution:
    param position
    t234 = call CellularAutomaton.neighbors(position)
    t235 = 3
    t236 = t234 = t235
    if t236 goto L87
    goto L88
    L87:
    t237 = "X"
    t238 = t237
    goto L89
    L88:
    t239 = call CellularAutomaton.neighbors(position)
    t240 = 2
    t241 = t239 = t240
    if t241 goto L90
    goto L91
    L90:
    t242 = call CellularAutomaton.cell(position)
    t243 = "X"
    t244 = t242 = t243
    if t244 goto L93
    goto L94
    L93:
    t245 = "X"
    t246 = t245
    goto L95
    L94:
    t247 = "-"
    t246 = t247
    L95:
    t248 = t246
    goto L92
    L91:
    t249 = "-"
    t248 = t249
    L92:
    t238 = t248
    L89:
    return t238
  method num_cells:
    t50 = load population_map
    t51 = call length()
    return t51
  method evolve:
    t250 = 0
    position = t250
    t251 = call CellularAutomaton.num_cells()
    num = t251
    L96:
    t252 = position < num
    if t252 goto L97
    goto L98
    L97:
    t253 = call CellularAutomaton.cell_at_next_evolution(position)
    t254 = call concat(t253)
    temp = t254
    t255 = 1
    t256 = position + t255
    position = t256
    goto L96
    L98:
    store temp -> population_map
    return self
  method print:
    t35 = 0
    i = t35
    t36 = load board_size
    num = t36
    t37 = "\n"
    t38 = call CellularAutomaton.out_string(t37)
    L18:
    t39 = i < num
    if t39 goto L19
    goto L20
    L19:
    t40 = load population_map
    t41 = load columns
    t42 = call substr(i, t41)
    t43 = call CellularAutomaton.out_string(t42)
    t44 = "\n"
    t45 = call CellularAutomaton.out_string(t44)
    t46 = load columns
    t47 = i + t46
    i = t47
    goto L18
    L20:
    t48 = "\n"
    t49 = call CellularAutomaton.out_string(t48)
    return self
  method east:
    param position
    t79 = 1
    t80 = position + t79
    t81 = load columns
    t82 = t80 / t81
    t83 = load columns
    t84 = t82 * t83
    t85 = 1
    t86 = position + t85
    t87 = t84 = t86
    if t87 goto L30
    goto L31
    L30:
    t88 = " "
    t89 = t88
    goto L32
    L31:
    t90 = 1
    t91 = position + t90
    t92 = call CellularAutomaton.cell(t91)
    t89 = t92
    L32:
    return t89
  method neighbors:
    param position
    t179 = call CellularAutomaton.north(position)
    t180 = "X"
    t181 = t179 = t180
    if t181 goto L63
    goto L64
    L63:
    t182 = 1
    t183 = t182
    goto L65
    L64:
    t184 = 0
    t183 = t184
    L65:
    t185 = call CellularAutomaton.south(position)
    t186 = "X"
    t187 = t185 = t186
    if t187 goto L66
    goto L67
    L66:
    t188 = 1
    t189 = t188
    goto L68
    L67:
    t190 = 0
    t189 = t190
    L68:
    t191 = t183 + t189
    t192 = call CellularAutomaton.east(position)
    t193 = "X"
    t194 = t192 = t193
    if t194 goto L69
    goto L70
    L69:
    t195 = 1
    t196 = t195
    goto L71
    L70:
    t197 = 0
    t196 = t197
    L71:
    t198 = t191 + t196
    t199 = call CellularAutomaton.west(position)
    t200 = "X"
    t201 = t199 = t200
    if t201 goto L72
    goto L73
    L72:
    t202 = 1
    t203 = t202
    goto L74
    L73:
    t204 = 0
    t203 = t204
    L74:
    t205 = t198 + t203
    t206 = call CellularAutomaton.northeast(position)
    t207 = "X"
    t208 = t206 = t207
    if t208 goto L75
    goto L76
    L75:
    t209 = 1
    t210 = t209
    goto L77
    L76:
    t211 = 0
    t210 = t211
    L77:
    t212 = t205 + t210
    t213 = call CellularAutomaton.northwest(position)
    t214 = "X"
    t215 = t213 = t214
    if t215 goto L78
    goto L79
    L78:
    t216 = 1
    t217 = t216
    goto L80
    L79:
    t218 = 0
    t217 = t218
    L80:
    t219 = t212 + t217
    t220 = call CellularAutomaton.southeast(position)
    t221 = "X"
    t222 = t220 = t221
    if t222 goto L81
    goto L82
    L81:
    t223 = 1
    t224 = t223
    goto L83
    L82:
    t225 = 0
    t224 = t225
    L83:
    t226 = t219 + t224
    t227 = call CellularAutomaton.southwest(position)
    t228 = "X"
    t229 = t227 = t228
    if t229 goto L84
    goto L85
    L84:
    t230 = 1
    t231 = t230
    goto L86
    L85:
    t232 = 0
    t231 = t232
    L86:
    t233 = t226 + t231
    return t233
  method west:
    param position
    t93 = 0
    t94 = position = t93
    if t94 goto L33
    goto L34
    L33:
    t95 = " "
    t96 = t95
    goto L35
    L34:
    t97 = load columns
    t98 = position / t97
    t99 = load columns
    t100 = t98 * t99
    t101 = t100 = position
    if t101 goto L36
    goto L37
    L36:
    t102 = " "
    t103 = t102
    goto L38
    L37:
    t104 = 1
    t105 = position - t104
    t106 = call CellularAutomaton.cell(t105)
    t103 = t106
    L38:
    t96 = t103
    L35:
    return t96
  method prompt:
    t391 = "Would you like to continue with the next generation? \n"
    t392 = call CellularAutomaton.out_string(t391)
    t393 = "Please use lowercase y or n for your answer [y]: "
    t394 = call CellularAutomaton.out_string(t393)
    t395 = call CellularAutomaton.in_string()
    ans = t395
    t396 = "\n"
    t397 = call CellularAutomaton.out_string(t396)
    t398 = "n"
    t399 = ans = t398
    if t399 goto L162
    goto L163
    L162:
    t400 = false
    t401 = t400
    goto L164
    L163:
    t402 = true
    t401 = t402
    L164:
    return t401
  method southeast:
    param position
    t143 = load board_size
    t144 = load columns
    t145 = position + t144
    t146 = t143 < t145
    if t146 goto L51
    goto L52
    L51:
    t147 = " "
    t148 = t147
    goto L53
    L52:
    t149 = 1
    t150 = position + t149
    t151 = load columns
    t152 = t150 / t151
    t153 = load columns
    t154 = t152 * t153
    t155 = 1
    t156 = position + t155
    t157 = t154 = t156
    if t157 goto L54
    goto L55
    L54:
    t158 = " "
    t159 = t158
    goto L56
    L55:
    t160 = 1
    t161 = position + t160
    t162 = call CellularAutomaton.south(t161)
    t159 = t162
    L56:
    t148 = t159
    L53:
    return t148
  method option:
    t257 = "\nPlease chose a number:\n"
    t258 = call CellularAutomaton.out_string(t257)
    t259 = "\t1: A cross\n"
    t260 = call CellularAutomaton.out_string(t259)
    t261 = "\t2: A slash from the upper left to lower right\n"
    t262 = call CellularAutomaton.out_string(t261)
    t263 = "\t3: A slash from the upper right to lower left\n"
    t264 = call CellularAutomaton.out_string(t263)
    t265 = "\t4: An X\n"
    t266 = call CellularAutomaton.out_string(t265)
    t267 = "\t5: A greater than sign \n"
    t268 = call CellularAutomaton.out_string(t267)
    t269 = "\t6: A less than sign\n"
    t270 = call CellularAutomaton.out_string(t269)
    t271 = "\t7: Two greater than signs\n"
    t272 = call CellularAutomaton.out_string(t271)
    t273 = "\t8: Two less than signs\n"
    t274 = call CellularAutomaton.out_string(t273)
    t275 = "\t9: A 'V'\n"
    t276 = call CellularAutomaton.out_string(t275)
    t277 = "\t10: An inverse 'V'\n"
    t278 = call CellularAutomaton.out_string(t277)
    t279 = "\t11: Numbers 9 and 10 combined\n"
    t280 = call CellularAutomaton.out_string(t279)
    t281 = "\t12: A full grid\n"
    t282 = call CellularAutomaton.out_string(t281)
    t283 = "\t13: A 'T'\n"
    t284 = call CellularAutomaton.out_string(t283)
    t285 = "\t14: A plus '+'\n"
    t286 = call CellularAutomaton.out_string(t285)
    t287 = "\t15: A 'W'\n"
    t288 = call CellularAutomaton.out_string(t287)
    t289 = "\t16: An 'M'\n"
    t290 = call CellularAutomaton.out_string(t289)
    t291 = "\t17: An 'E'\n"
    t292 = call CellularAutomaton.out_string(t291)
    t293 = "\t18: A '3'\n"
    t294 = call CellularAutomaton.out_string(t293)
    t295 = "\t19: An 'O'\n"
    t296 = call CellularAutomaton.out_string(t295)
    t297 = "\t20: An '8'\n"
    t298 = call CellularAutomaton.out_string(t297)
    t299 = "\t21: An 'S'\n"
    t300 = call CellularAutomaton.out_string(t299)
    t301 = "Your choice => "
    t302 = call CellularAutomaton.out_string(t301)
    t303 = call CellularAutomaton.in_int()
    num = t303
    t304 = "\n"
    t305 = call CellularAutomaton.out_string(t304)
    t306 = 1
    t307 = num = t306
    if t307 goto L99
    goto L100
    L99:
    t308 = " XX  XXXX XXXX  XX  "
    t309 = t308
    goto L101
    L100:
    t310 = 2
    t311 = num = t310
    if t311 goto L102
    goto L103
    L102:
    t312 = "    X   X   X   X   X    "
    t313 = t312
    goto L104
    L103:
    t314 = 3
    t315 = num = t314
    if t315 goto L105
    goto L106
    L105:
    t316 = "X     X     X     X     X"
    t317 = t316
    goto L107
    L106:
    t318 = 4
    t319 = num = t318
    if t319 goto L108
    goto L109
    L108:
    t320 = "X   X X X   X   X X X   X"
    t321 = t320
    goto L110
    L109:
    t322 = 5
    t323 = num = t322
    if t323 goto L111
    goto L112
    L111:
    t324 = "X     X     X   X   X    "
    t325 = t324
    goto L113
    L112:
    t326 = 6
    t327 = num = t326
    if t327 goto L114
    goto L115
    L114:
    t328 = "    X   X   X     X     X"
    t329 = t328
    goto L116
    L115:
    t330 = 7
    t331 = num = t330
    if t331 goto L117
    goto L118
    L117:
    t332 = "X  X  X  XX  X      "
    t333 = t332
    goto L119
    L118:
    t334 = 8
    t335 = num = t334
    if t335 goto L120
    goto L121
    L120:
    t336 = " X  XX  X  X  X     "
    t337 = t336
    goto L122
    L121:
    t338 = 9
    t339 = num = t338
    if t339 goto L123
    goto L124
    L123:
    t340 = "X   X X X   X  "
    t341 = t340
    goto L125
    L124:
    t342 = 10
    t343 = num = t342
    if t343 goto L126
    goto L127
    L126:
    t344 = "  X   X X X   X"
    t345 = t344
    goto L128
    L127:
    t346 = 11
    t347 = num = t346
    if t347 goto L129
    goto L130
    L129:
    t348 = "X X X X X X X X"
    t349 = t348
    goto L131
    L130:
    t350 = 12
    t351 = num = t350
    if t351 goto L132
    goto L133
    L132:
    t352 = "XXXXXXXXXXXXXXXXXXXXXXXXX"
    t353 = t352
    goto L134
    L133:
    t354 = 13
    t355 = num = t354
    if t355 goto L135
    goto L136
    L135:
    t356 = "XXXXX  X    X    X    X  "
    t357 = t356
    goto L137
    L136:
    t358 = 14
    t359 = num = t358
    if t359 goto L138
    goto L139
    L138:
    t360 = "  X    X  XXXXX  X    X  "
    t361 = t360
    goto L140
    L139:
    t362 = 15
    t363 = num = t362
    if t363 goto L141
    goto L142
    L141:
    t364 = "X     X X X X   X X  "
    t365 = t364
    goto L143
    L142:
    t366 = 16
    t367 = num = t366
    if t367 goto L144
    goto L145
    L144:
    t368 = "  X X   X X X X     X"
    t369 = t368
    goto L146
    L145:
    t370 = 17
    t371 = num = t370
    if t371 goto L147
    goto L148
    L147:
    t372 = "XXXXX   X   XXXXX   X   XXXX"
    t373 = t372
    goto L149
    L148:
    t374 = 18
    t375 = num = t374
    if t375 goto L150
    goto L151
    L150:
    t376 = "XXX    X   X  X    X   XXXX "
    t377 = t376
    goto L152
    L151:
    t378 = 19
    t379 = num = t378
    if t379 goto L153
    goto L154
    L153:
    t380 = " XX X  XX  X XX "
    t381 = t380
    goto L155
    L154:
    t382 = 20
    t383 = num = t382
    if t383 goto L156
    goto L157
    L156:
    t384 = " XX X  XX  X XX X  XX  X XX "
    t385 = t384
    goto L158
    L157:
    t386 = 21
    t387 = num = t386
    if t387 goto L159
    goto L160
    L159:
    t388 = " XXXX   X    XX    X   XXXX "
    t389 = t388
    goto L161
    L160:
    t390 = "                         "
    t389 = t390
    L161:
    t385 = t389
    L158:
    t381 = t385
    L155:
    t377 = t381
    L152:
    t373 = t377
    L149:
    t369 = t373
    L146:
    t365 = t369
    L143:
    t361 = t365
    L140:
    t357 = t361
    L137:
    t353 = t357
    L134:
    t349 = t353
    L131:
    t345 = t349
    L128:
    t341 = t345
    L125:
    t337 = t341
    L122:
    t333 = t337
    L119:
    t329 = t333
    L116:
    t325 = t329
    L113:
    t321 = t325
    L110:
    t317 = t321
    L107:
    t313 = t317
    L104:
    t309 = t313
    L101:
    return t309
  method prompt2:
    t403 = "\n\n"
    t404 = call CellularAutomaton.out_string(t403)
    t405 = "Would you like to choose a background pattern? \n"
    t406 = call CellularAutomaton.out_string(t405)
    t407 = "Please use lowercase y or n for your answer [n]: "
    t408 = call CellularAutomaton.out_string(t407)
    t409 = call CellularAutomaton.in_string()
    ans = t409
    t410 = "y"
    t411 = ans = t410
    if t411 goto L165
    goto L166
    L165:
    t412 = true
    t413 = t412
    goto L167
    L166:
    t414 = false
    t413 = t414
    L167:
    return t413
class Board:
  method size_of_board:
    param initial
    t0 = call length()
    return t0
  method board_init:
    param start
    t1 = call Board.size_of_board(start)
    size = t1
    t2 = 15
    t3 = size = t2
    if t3 goto L0
    goto L1
    L0:
    t4 = 3
    store t4 -> rows
    t5 = 5
    store t5 -> columns
    store size -> board_size
    t6 = size
    goto L2
    L1:
    t7 = 16
    t8 = size = t7
    if t8 goto L3
    goto L4
    L3:
    t9 = 4
    store t9 -> rows
    t10 = 4
    store t10 -> columns
    store size -> board_size
    t11 = size
    goto L5
    L4:
    t12 = 20
    t13 = size = t12
    if t13 goto L6
    goto L7
    L6:
    t14 = 4
    store t14 -> rows
    t15 = 5
    store t15 -> columns
    store size -> board_size
    t16 = size
    goto L8
    L7:
    t17 = 21
    t18 = size = t17
    if t18 goto L9
    goto L10
    L9:
    t19 = 3
    store t19 -> rows
    t20 = 7
    store t20 -> columns
    store size -> board_size
    t21 = size
    goto L11
    L10:
    t22 = 25
    t23 = size = t22
    if t23 goto L12
    goto L13
    L12:
    t24 = 5
    store t24 -> rows
    t25 = 5
    store t25 -> columns
    store size -> board_size
    t26 = size
    goto L14
    L13:
    t27 = 28
    t28 = size = t27
    if t28 goto L15
    goto L16
    L15:
    t29 = 7
    store t29 -> rows
    t30 = 4
    store t30 -> columns
    store size -> board_size
    t31 = size
    goto L17
    L16:
    t32 = 5
    store t32 -> rows
    t33 = 5
    store t33 -> columns
    store size -> board_size
    t31 = size
    L17:
    t26 = t31
    L14:
    t21 = t26
    L11:
    t16 = t21
    L8:
    t11 = t16
    L5:
    t6 = t11
    L2:
    return self
class Main:
  method main:
    t415 = "Welcome to the Game of Life.\n"
    t416 = call Main.out_string(t415)
    t417 = "There are many initial states to choose from. \n"
    t418 = call Main.out_string(t417)
    L168:
    t419 = call Main.prompt2()
    if t419 goto L169
    goto L170
    L169:
    t420 = true
    continue = t420
    t421 = call Main.option()
    choice = t421
    t422 = call new CellularAutomaton()
    t423 = call init(choice)
    store t423 -> cells
    t424 = load cells
    t425 = call print()
    L171:
    if continue goto L172
    goto L173
    L172:
    t426 = call Main.prompt()
    if t426 goto L174
    goto L175
    L174:
    t427 = load cells
    t428 = call evolve()
    t429 = load cells
    t430 = call print()
    t431 = t430
    goto L176
    L175:
    t432 = false
    continue = t432
    t431 = t432
    L176:
    goto L171
    L173:
    goto L168
    L170:
    return self

