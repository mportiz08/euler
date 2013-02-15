module Euler
  class Problem25
    class FibonacciSequence
      def initialize
        @vals = [1, 1, 2]
      end
      
      def generate_until(&stop_condition)
        fib(stop_condition)
      end
      
      private
      
      def fib(stop_condition)
        return @vals if stop_condition.call(@vals)
        
        @vals << (@vals[-2] + @vals[-1])
        fib(stop_condition)
      end
    end
    
    def solve
      seq  = FibonacciSequence.new
      nums = seq.generate_until { |vals| vals.last.to_s.size == 1000 }
      nums.size
    end
  end
end
