class Solver
  def fizzbuzz(number)
    result = []

    (1..number).each do |i|
      result << if (i % 3).zero? && (i % 5).zero?
                  'FizzBuzz'
                elsif (i % 3).zero?
                  'Fizz'
                elsif (i % 5).zero?
                  'Buzz'
                else
                  i
                end
    end

    result
  end
end
