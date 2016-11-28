x, y = CAS.vars 'x', 'y'
f = CAS.declare :f, x
g = CAS.declare :g, x, y
f.greater_equal g
# => (f(x) >= g(x, y))
CAS::max f, g
# => ((f(x) >= g(x, y)) ? f(x) : g(x, y))
