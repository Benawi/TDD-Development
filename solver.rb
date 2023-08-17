class Solver
    def fizzbuzz(number)
      result = []
  
      (1..number).each do |i|
        if i % 3 == 0 && i % 5 == 0
          result << "FizzBuzz"
        elsif i % 3 == 0
          result << "Fizz"
        elsif i % 5 == 0
          result << "Buzz"
        else
          result << i  
        end
      end
  
      result
    end
end