require 'core_ext/numeric'
require 'set'

module Euler
  class Problem21
    def d(n)
      n.proper_divisors.sum
    end
    
    def solve
      divsums  = (0...10000).map { |i| d(i) }
      
      pairs = Set.new
      divsums.each_with_index do |b, a|
        next if b.zero?
        
        if !divsums[b].nil? && divsums[b] == a
          unless a == b
            pairs << a
            pairs << b
          end
        end
      end
      
      pairs.sum
    end
  end
end
