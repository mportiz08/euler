require 'euler/utils/prime_generator'

module Euler
  class Problem5
    include Utils
    
    def initialize
      @primes = PrimeGenerator.new.generate_upto(21)
    end
    
    def solve
      pfactors = (1..20).map { |i| pfactors_for(i) }
      powers   = greatest_powers(pfactors)
      
      powers.map { |p| p.reduce(&:*) }.reduce(&:*)
    end
    
    private
    
    def greatest_powers(factors)
      powers = []
      @primes.each do |p|
        sorted_by_count = factors.sort_by { |f| f.count(p) }
        powers << sorted_by_count.last.select { |i| i == p }
      end
      powers
    end
    
    def pfactors_for(num)
      factors = []
      if @primes.include?(num)
        factors << num
        return factors
      end
      @primes.each do |p|
        div = num / p
        if (num % p).zero?
          factors << p
          pfactors_for(div).each { |f| factors << f }
          break
        end
      end
      factors
    end
  end
end
