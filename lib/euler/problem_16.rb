module Euler
  class Problem16
    def solve
      (2 ** 1000).to_s.split('').map(&:to_i).reduce(&:+)
    end
  end
end
