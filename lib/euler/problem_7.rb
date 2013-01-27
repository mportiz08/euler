require 'core_ext/numeric'

module Euler
  class Problem7
    # TODO: make much faster
    def solve
      found = []
      i = 2
      while found.size < 10001
        found << i if i.prime?
        i += 1
      end
      found.last
    end
  end
end
