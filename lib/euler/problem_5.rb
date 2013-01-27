module Euler
  class Problem5
    # TODO: make faster
    def solve
      i = 20
      i += 20 until evenly_divisible?(i, (1..20))
      i
    end
    
    private
    
    def evenly_divisible?(num, divisors)
      divisors.all? { |i| (num % i).zero? }
    end
  end
end
