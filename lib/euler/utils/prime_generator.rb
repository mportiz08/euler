module Euler
  module Utils
    class PrimeGenerator
      # Generates prime numbers up to (not including) n.
      def generate_upto(n)
        return []  if n < 3
        return [2] if n < 4
        
        primes = [2, 3]
        i      = primes.last + 2
        
        while i < n
          prime_test(i, primes)
          i += 2
        end
        
        primes
      end
      
      # Generates n prime numbers.
      def generate(n)
        return []  if n <= 0
        return [2] if n == 1
        
        primes = [2, 3]
        i      = primes.last + 2
        
        while primes.size < n
          prime_test(i, primes)
          i += 2
        end
        
        primes
      end
      
      private
      
      def prime_test(i, primes)
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
      end
    end
  end
end
