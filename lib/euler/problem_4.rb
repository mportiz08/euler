require 'core_ext/string'

module Euler
  class Problem4
    def solve
      palindromes = []
      i = 999
      while i >= (i / 2)
        j = 999
        while j >= (i / 2)
          product = i * j
          if product.to_s.palindrome?
            palindromes << product
          end
          j -= 1
        end
        i -= 1
      end
      palindromes.max
    end
  end
end
