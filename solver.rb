class Solver
  def factorial(n)
    raise 'Factorial is not defined for negative numbers' if n < 0

    result = 1
    (1..n).each do |i|
      result *= i
    end
    result
  end
end