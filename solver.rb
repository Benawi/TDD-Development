class Solver
  def factorial(num)
    raise 'Factorial is not defined for negative numbers' if num.negative?

    result = 1
    (1..num).each do |i|
      result *= i
    end
    result
  end
end
