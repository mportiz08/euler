class Integer
  def prime?
    self > 1 && !(2...self).any? { |i| (self % i).zero? }
  end
  
  def sqrt
    Math.sqrt(self)
  end
  
  def prime_factors
    if prime?
      [self]
    else
      factors = []
      
      i = 2
      while i < self.sqrt
        if i.prime? && (self % i).zero?
          factors << i
          (self / i).prime_factors.each { |j| factors << j }
          
          return factors
        end
        i += 1
      end
      
      factors
    end
  end
  
  def factorial
    i, fac = self, self
    while i > 1
      fac = fac * (i - 1)
      i -= 1
    end
    fac
  end
  
  def divisors
    divs = []
    i    = 1
    while i < self.sqrt
      if (self % i).zero?
        divs << i
        divs << (self / i)
      end
      
      i += 1
    end
    
    divs.sort
  end
  
  def proper_divisors
    divisors[0..-2]
  end
  
  def num_divisors
    return self if self == 1
    
    count = 2
    i = 2
    while i < self.sqrt
      count += 2 if (self % i).zero?
      i += 1
    end
    
    count
  end
  
  def choose(k)
    return 1 if self == k || k == 0
    
    self.factorial / (k.factorial * (self - k).factorial)
  end
end

class Range
  def sum_squares
    map { |i| i * i }.reduce(&:+)
  end
  
  def squared_sum
    sum = reduce(&:+)
    sum * sum
  end
end

module Enumerable
  def sum
    res = reduce(&:+)
    res = 0 unless res
    
    res
  end
end
