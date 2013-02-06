module Euler
  class Problem14
    class CollatzSequence
      def initialize(start_num)
        @start = start_num
        @chain = [@start]
      end
      
      def sequence
        unchain(@start)
      end
      
      private
      
      def unchain(num)
        return @chain if num == 1
        
        if num.even?
          num = num / 2
        else
          num = (3 * num) + 1
        end
        
        @chain << num
        unchain(num)
      end
    end
    
    def solve
      CollatzSequence.new(13).sequence
    end
  end
end
