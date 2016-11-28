z = CAS.vars 'z'           # creates a variable
f = z ** 2 + 1             # define a symbolic expression
f.diff(z)                  # derivative w.r.t. z
# => 2 * z ^ (2 - 1) + 0
g = CAS.declare :g, f      # creates implicit expression
g.diff(z)                  # derivative w.r.t. z
# => (z ^ (2 - 1) * 2) * Dg[0](z ^ 2)
