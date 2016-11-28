x = CAS.vars 'x'          # creates a variable
f = x ** 2 + 1             # define a symbolic expression
f.call x => 2              # evaluate for x = 2
# => 5
