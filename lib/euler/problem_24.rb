module Euler
  class Problem24
    def solve
      perms = (0..9).to_a.permutation.to_a
      perms[999999].join.to_i
    end
  end
end
