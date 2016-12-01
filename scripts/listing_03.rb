x = CAS.vars 'x'   # creates a variable
f = x ** 2 + 1     # defines a symbolic expression
f.call x => 2      # evaluates for x = 2
# => 5.0
