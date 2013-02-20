module Euler
  class Problem9
    HIGHEST_C_VAL = 997
    
    # Uses Euclid's formula for generating pythagorean triples.
    class TripleGenerator
      def initialize
        @m, @n   = 2, 1
        @triples = []
      end
      
      def a
        2 * @m * @n
      end
      
      def b
        (@m * @m) - (@n * @n)
      end
      
      def c
        (@m * @m) + (@n * @n)
      end
      
      def triple
        [a, b, c]
      end
      
      def generate_until(&stop_condition)
        until stop_condition.call(triple)
          while @n < @m
            @triples << triple
            @n += 1
          end
          @m += 1
          @n = 1
        end
        
        @triples
      end
    end
    
    def solve
      triples = TripleGenerator.new.generate_until { |a, b, c| c >= HIGHEST_C_VAL }
      triples.find { |nums| nums.reduce(&:+) == 1000 }.reduce(&:*)
    end
  end
end
