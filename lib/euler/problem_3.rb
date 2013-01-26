require 'core_ext/numeric'

module Euler
  class Problem3
    def solve
      600851475143.prime_factors.max
    end
  end
end
