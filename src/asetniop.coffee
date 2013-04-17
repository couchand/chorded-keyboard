# asetniop chorded layout

A_KEY = 65
S_KEY = 83
D_KEY = 68
F_KEY = 70
J_KEY = 74
K_KEY = 75
L_KEY = 76
SEMI_COLON = 59

define ->
  map = {}
  map[[A_KEY]] = 'a'
  map[[S_KEY]] = 's'
  map[[D_KEY]] = 'e'
  map[[F_KEY]] = 't'
  map[[J_KEY]] = 'n'
  map[[K_KEY]] = 'i'
  map[[L_KEY]] = 'o'
  map[[SEMI_COLON]] = 'p'

  map[[A_KEY, S_KEY]] = 'w'
  map[[A_KEY, D_KEY]] = 'x'
  map[[A_KEY, F_KEY]] = 'f'
  map[[D_KEY, S_KEY]] = 'd'
  map[[F_KEY, S_KEY]] = 'c'
  map[[D_KEY, F_KEY]] = 'r'
  map[[J_KEY, K_KEY]] = 'h'
  map[[J_KEY, L_KEY]] = 'u'
  map[[SEMI_COLON, J_KEY]] = 'm'
  map[[K_KEY, L_KEY]] = 'l'
  map[[SEMI_COLON, K_KEY]] = 'k'
  map[[SEMI_COLON, L_KEY]] = ';'

  map[[A_KEY, J_KEY]] = 'q'
  map[[A_KEY, K_KEY]] = '!'
  map[[A_KEY, L_KEY]] = '('
  map[[SEMI_COLON, A_KEY]] = '?'
  map[[J_KEY, S_KEY]] = 'j'
  map[[K_KEY, S_KEY]] = 'z'
  map[[L_KEY, S_KEY]] = '.'
  map[[SEMI_COLON, S_KEY]] = ')'
  map[[D_KEY, J_KEY]] = 'y'
  map[[D_KEY, K_KEY]] = ','
  map[[D_KEY, L_KEY]] = '-'
  map[[SEMI_COLON, D_KEY]] = "'"
  map[[F_KEY, J_KEY]] = 'b'
  map[[F_KEY, K_KEY]] = 'v'
  map[[F_KEY, L_KEY]] = 'g'
  map[[SEMI_COLON, F_KEY]] = 'delete'

  map
