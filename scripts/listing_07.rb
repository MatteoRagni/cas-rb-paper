$x, $y, $h = CAS::vars :x, :y, :h
# Evaluates n!
def fact(n); (n < 2 ? 1 : n * fact(n - 1)); end
# Evaluates all derivatives required by the order
def coeff(f, n)
  df = [f]
  for _ in 2..n
    df << df[-1].diff($x).simplify + (df[-1].diff($y).simplify * df[0])
  end
  return df
end
# Generates the symbolic form for a Taylor step
def taylor(f, n)
  df = coeff(f, n)
  y = $y
  for i in 0...df.size
    y = y + (($h ** (i + 1))/(fact(i + 1)) * df[i])
  end
  return y.simplify
end

# Example function for the integrator
f = $x * $y
# Exporting a C function
clib = CAS::CLib.create "taylor" do
  implements_as "taylor_step", taylor(f, 4)
end
