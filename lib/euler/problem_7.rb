require 'euler/utils/prime_generator'

module Euler
  class Problem7
    include Utils
    
    def solve
      PrimeGenerator.new.generate(10001).last
    end
  end
end
