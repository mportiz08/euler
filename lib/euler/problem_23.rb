require 'core_ext/numeric'

module Euler
  class Problem23
    UPPER_LIMIT = 28123
    
    def initialize
      all, @non_abundant_sums = [], []
      
      (0..UPPER_LIMIT).each do |n|
        all[n] = n.proper_divisors.sum > n
        
        abundant_sum_exists = false
        all[0...n].each_with_index do |abundant, i|
          j = n - i
          abundant_sum_exists = true if abundant && all[j]
        end
        
        @non_abundant_sums << n unless abundant_sum_exists
      end
    end
    
    def solve
      @non_abundant_sums.sum
    end
  end
end
