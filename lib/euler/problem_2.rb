module Euler
  class Problem2
    LIMIT = 4000000
    
    class FibonacciSequence
      def initialize(max)
        @max  = max
        @init = [1, 2]
      end
      
      def sequence
        fib(@init)
      end
      
      def fib(vals)
        if vals.last >= @max
          vals
        else
          vals << (vals[-2] + vals[-1])
          fib(vals)
        end
      end
      
      def self.to(max)
        self.new(max).sequence
      end
    end
    
    def solve
      FibonacciSequence.to(LIMIT).select(&:even?).reduce(&:+)
    end
  end
end
