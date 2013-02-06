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
    
    # TODO: figure out how to make this faster
    def solve
      num_for_size = {}
      sizes = []
      
      (1...1000000).each do |i|
        size = CollatzSequence.new(i).sequence.size
        
        sizes << size
        num_for_size[size] = i
      end
      
      num_for_size[sizes.max]
    end
  end
end
