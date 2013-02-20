require 'core_ext/numeric'

module Euler
  class Problem12
    class TriangleNumberGenerator
      def initialize
        @nums = []
      end
      
      def generate_until(&stop_condition)
        i = 1
        until stop_condition.call(@nums)
          last = @nums.last || 0
          @nums << i + last
          
          i += 1
        end
        @nums
      end
    end
    
    def solve
      triangle_nums = TriangleNumberGenerator.new.generate_until do |nums|
        !nums.empty? && nums.last.divisors.size > 500
      end
      
      triangle_nums.last
    end
  end
end
