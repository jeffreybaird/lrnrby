class Calculator
  attr_accessor :arg1, :arg2
  def initialize arg1, arg2
    @arg1, @arg2 = arg1, arg2
  end
  def add
    return arg1 + arg2
  end
  def sub
    arg1 - arg2
  end
  def mult
    arg1 * arg2
  end
calc = Calculator.new(20,9)
puts calc.add  
puts calc.sub
puts calc.mult
end


  