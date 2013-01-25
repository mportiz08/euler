require 'euler/problems'

module Euler
  class UnsolvedProblem < StandardError; end
  
  def self.solve(id)
    klass_name = "Problem#{id}"
    if const_defined?(klass_name)
      const_get(klass_name).new.solve
    else
      raise UnsolvedProblem, "Problem #{id} hasn't been solved yet."
    end
  end
end
