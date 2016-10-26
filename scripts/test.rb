require 'ragni-cas'

def integrate(f, a, b, n)
  h = (b - a) / n

  func = f.as_proc

  sum = ((func.call 'x' => a) + (func.call 'x' => b)) / 2.0
  for i in (1...n)
    sum += (func.call 'x' => (a + i * h))
  end
  return sum * h
end

def order(f, a, b, n)
  x = CAS.vars 'x'

  f_ab = (f.call x => b) - (f.call x => a)
  f_1n = integrate(f.diff(x).simplify, a, b, n)
  f_2n = integrate(f.diff(x).simplify, a, b, 2 * n)

  return Math.log((f_ab - f_1n)/(f_ab - f_2n), 2)
end

x = CAS.vars 'x'
f = CAS.arctan x

o = order f, -1.0, 1.0, 100
puts o
