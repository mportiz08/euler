class Fixnum
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
