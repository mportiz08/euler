require 'core_ext/numeric'

module Euler
  class Problem20
    def solve
      100.factorial.to_s.split('').map(&:to_i).reduce(&:+)
    end
  end
end
