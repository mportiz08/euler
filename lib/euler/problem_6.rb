require 'core_ext/numeric'

module Euler
  class Problem6
    def solve
      (1..100).squared_sum - (1..100).sum_squares
    end
  end
end
