# Definition
module CAS
  {
    # . . .
    CAS::Variable => Proc.new { "#{name}" }
    CAS::Sin      => Proc.new { "Math.sin(#{x.to_ruby})" },
    # . . .
  }.each do |cls, prc|
    cls.send(:define_method, :to_ruby, &prc)
  end
end

# Usage
x = CAS.vars 'x'
(CAS.sin(x)).to_ruby
# => Math.sin(x)
