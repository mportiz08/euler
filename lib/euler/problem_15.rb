require 'core_ext/numeric'

module Euler
  class Problem15
    GRID_SIZE = 20
    
    def solve
      (GRID_SIZE * 2).choose(GRID_SIZE)
    end
  end
end
