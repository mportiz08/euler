require 'euler/utils/prime_generator'

module Euler
  class Problem10
    include Utils
    
    def solve
      PrimeGenerator.new.generate_upto(2000000).reduce(:+)
    end
  end
end
