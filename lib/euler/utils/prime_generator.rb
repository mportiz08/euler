module Euler
  module Utils
    class PrimeGenerator
      # Generates prime numbers up to (not including) n.
      def generate(n)
        return []  if n < 3
        return [2] if n < 4
        
        primes = [2, 3]
        i      = primes.last + 2
        
        while i < n#(n - 2)
          #i += 2
          
          test  = true
          isqrt = Math.sqrt(i)
          primes.each do |p|
            break if p > isqrt
            if (i % p).zero?
              test = false
              break
            end
          end
          
          primes << i if test
          i += 2
        end
        
        primes
      end
    end
  end
end
