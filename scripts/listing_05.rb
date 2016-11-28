x = CAS::vars 'x'             # creates a variable
f = CAS::log(CAS::sin(x))     # define a symbolic function

proc = f.as_proc              # exports callable lambda
proc.call 'x' => Math::PI/2
# => 0.0
