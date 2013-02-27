require 'core_ext/date'

module Euler
  class Problem19
    def solve
      startd = Date.new(1901, 1, 1)
      endd   = Date.new(2000, 12, 31)
      
      (startd..endd).select { |date| date.day == 1 && date.sunday? }.size
    end
  end
end
