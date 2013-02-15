require 'set'

module Euler
  class Problem21
    def d(n)
      n.divisors.reduce(&:+)
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
      
      pairs.reduce(&:+)
    end
  end
end
