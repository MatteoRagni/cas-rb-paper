x, y = CAS::vars 'x', 'y'        # creates two variables
f = CAS.log( CAS.sin( y ) )      # symbolic expression
f.subs y => CAS.asin(CAS.exp(x)) # performs substitution
f.simplify                       # simplifies expression
# => x
