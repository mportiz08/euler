require 'core_ext/numeric'

module Euler
  class Problem23
    UPPER_LIMIT = 14062#28123
    
    def initialize
      all = []
      (0..UPPER_LIMIT).each do |i|
        all[i] = i.proper_divisors.sum > i
      end
      
      @nums = []
      all.each_with_index do |_, n|
        next unless n > 0 && n.even?
        puts n
        subnums = []
        all[0...n].each_with_index { |abundant, i| subnums << i if abundant && i > 0 }
        sums = subnums.product(subnums).map(&:sum)
        
        @nums << n unless sums.include?(n)
      end
    end
    
    def solve
      @nums.sum
    end
  end
end
