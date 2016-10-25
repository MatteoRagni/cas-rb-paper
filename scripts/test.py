import sympy
import math

def integrate(f, a, b, n):
    h = (b - a)/n
    x, k = sympy.symbols('x k')

    fk = sympy.lambdify((k), sympy.Subs(f, (x), (k * h)).doit())

    sums = (fk(0) + fk(n)) / 2.0
    for i in range(1, n):
        sums += fk(i)
    return sums * h

def order(f, a, b, n):
    x = sympy.symbols('x')

    f_ab = sympy.Subs(f, (x), (b)).n() - sympy.Subs(f, (x), (a)).n()
    f_1n = integrate(f.diff(x), a, b, n)
    f_2n = integrate(f.diff(x), a, b, 2 * n)

    return math.log((f_ab - f_1n)/(f_ab - f_2n), 2)

x = sympy.symbols('x')
f = sympy.atan(x)

o = order(f, -1.0, 1.0, 10000)
print(o)
