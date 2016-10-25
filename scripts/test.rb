require 'ragni-cas'

def integrate(f, a, b, n)
  h = (b - a) / n
  x, k = CAS.vars 'x', 'k'

  fk = (f.simplify.subs x => (a + h * k)).as_proc

  sum = ((fk.call 'k' => 0) + (fk.call 'k' => n)) / 2.0
  for i in (1...n); sum += (fk.call 'k' => i); end
  return sum * h
end

def order(f, a, b, n)
  x = CAS.vars 'x'

  f_ab = (f.call x => b) - (f.call x => b)
  f_1n = integrate(f.diff(x).simplify, a, b, n)
  f_2n = integrate(f.diff(x).simplify, a, b, 2 * n)

  return Math.log((f_ab - f_1n)/(f_ab - f_2n), 2)
end

x = CAS.vars 'x'
f = CAS.arctan x

o = order f, -1.0, 1.0, 10000.to_i
puts o
