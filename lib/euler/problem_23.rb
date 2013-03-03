require 'core_ext/numeric'
require 'awesome_print'
module Euler
  class Problem23
    UPPER_LIMIT = 28123
    
    def initialize
      abundant, @non_abundant_sums = [], []
      
      (0..UPPER_LIMIT).each do |n|
        abundant[n] = n.proper_divisors.sum > n
        
        abundant_sum_exists = false
        
        i = 0
        while i < n && !abundant_sum_exists
          j = n - i
          if abundant[i] && abundant[j]
            abundant_sum_exists = true
          end
          
          i += 1
        end
        
        @non_abundant_sums << n unless abundant_sum_exists
      end
    end
    
    def solve
      @non_abundant_sums.sum
    end
  end
end
