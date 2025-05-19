class CellularAutomaton:
  method init:
    param map
    store map -> population_map
    return self
  method evolve:
    t54 = call CellularAutomaton.num_cells()
    num = t54
    L18:
    t55 = position < num
    if t55 goto L19
    goto L20
    L19:
    t56 = call CellularAutomaton.cell_at_next_evolution(position)
    t57 = call concat(t56)
    temp = t57
    t58 = 1
    t59 = position + t58
    position = t59
    goto L18
    L20:
    store temp -> population_map
    return self
  method print:
    t0 = load population_map
    t1 = "\n"
    t2 = call concat(t1)
    t3 = call CellularAutomaton.out_string(t2)
    return self
  method cell_left_neighbor:
    param position
    t9 = 0
    t10 = position = t9
    if t10 goto L0
    goto L1
    L0:
    t11 = call CellularAutomaton.num_cells()
    t12 = 1
    t13 = t11 - t12
    t14 = call CellularAutomaton.cell(t13)
    t15 = t14
    goto L2
    L1:
    t16 = 1
    t17 = position - t16
    t18 = call CellularAutomaton.cell(t17)
    t15 = t18
    L2:
    return t15
  method cell_right_neighbor:
    param position
    t19 = call CellularAutomaton.num_cells()
    t20 = 1
    t21 = t19 - t20
    t22 = position = t21
    if t22 goto L3
    goto L4
    L3:
    t23 = 0
    t24 = call CellularAutomaton.cell(t23)
    t25 = t24
    goto L5
    L4:
    t26 = 1
    t27 = position + t26
    t28 = call CellularAutomaton.cell(t27)
    t25 = t28
    L5:
    return t25
  method cell:
    param position
    t6 = load population_map
    t7 = 1
    t8 = call substr(position, t7)
    return t8
  method cell_at_next_evolution:
    param position
    t29 = call CellularAutomaton.cell(position)
    t30 = "X"
    t31 = t29 = t30
    if t31 goto L6
    goto L7
    L6:
    t32 = 1
    t33 = t32
    goto L8
    L7:
    t34 = 0
    t33 = t34
    L8:
    t35 = call CellularAutomaton.cell_left_neighbor(position)
    t36 = "X"
    t37 = t35 = t36
    if t37 goto L9
    goto L10
    L9:
    t38 = 1
    t39 = t38
    goto L11
    L10:
    t40 = 0
    t39 = t40
    L11:
    t41 = t33 + t39
    t42 = call CellularAutomaton.cell_right_neighbor(position)
    t43 = "X"
    t44 = t42 = t43
    if t44 goto L12
    goto L13
    L12:
    t45 = 1
    t46 = t45
    goto L14
    L13:
    t47 = 0
    t46 = t47
    L14:
    t48 = t41 + t46
    t49 = 1
    t50 = t48 = t49
    if t50 goto L15
    goto L16
    L15:
    t51 = "X"
    t52 = t51
    goto L17
    L16:
    t53 = "."
    t52 = t53
    L17:
    return t52
  method num_cells:
    t4 = load population_map
    t5 = call length()
    return t5
class Main:
  method main:
    t60 = call new CellularAutomaton()
    t61 = "         X         "
    t62 = call init(t61)
    store t62 -> cells
    t63 = load cells
    t64 = call print()
    t65 = 20
    countdown = t65
    L21:
    t66 = 0
    t67 = t66 < countdown
    if t67 goto L22
    goto L23
    L22:
    t68 = load cells
    t69 = call evolve()
    t70 = load cells
    t71 = call print()
    t72 = 1
    t73 = countdown - t72
    countdown = t73
    goto L21
    L23:
    return self

