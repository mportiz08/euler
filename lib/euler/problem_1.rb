module Euler
  class Problem1
    def solve
      (1...1000).select { |i| (i % 3).zero? || (i % 5).zero? }.reduce(&:+)
    end
  end
end
