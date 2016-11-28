x, y = CAS::vars 'x', 'y'        # creates two variables
f = CAS.log( CAS.sin( y ) )      # symbolic expression
f.subs  y: CAS.asin(CAS.exp(x))  # perform substitution
f.simplify                       # simplify expression
# => x
