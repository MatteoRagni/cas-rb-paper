x, y = CAS.vars 'x', 'y'
f = CAS.declare :f, x
g = CAS.declare :g, x, y
h = CAS.declare :h, y

f.greater_equal g
# => (f(x) >= g(x, y))
pw = CAS::Piecewise.new(f,
       CAS::Piecewise.new(g, h, y.equal(0)),
       x.greater(0))
# => ((x > 0) ? f(x) : ((y ≡ 0) ? g(x, y) : h(y)))
CAS::max f, g
# => ((f(x) >= g(x, y)) ? f(x) : g(x, y))
