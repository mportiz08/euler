require 'bigdecimal'

module Euler
  class Problem16
    def solve
      num = BigDecimal.new('2').power(1000).to_i
      num.to_s.split('').map(&:to_i).reduce(&:+)
    end
  end
end
