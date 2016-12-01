# Rules definition for Fortran Language
module CAS
  {
    # . . .
    CAS::Variable => Proc.new { "#{name}" }
    CAS::Sin      => Proc.new { "sin(#{x.to_fortran})" },
    # . . .
  }.each do |cls, prc|
    cls.send(:define_method, :to_fortran, &prc)
  end
end

# Usage
x    = CAS.vars 'x'
code = (CAS.sin(x)).to_fortran
# => sin(x)
