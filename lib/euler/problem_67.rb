require 'euler/utils/data_file'
require 'euler/problem_18'

module Euler
  class Problem67 < Problem18
    include Utils
    
    def initialize
      data = DataFile.read('triangle.txt')
      @triangle = Triangle.new(data)
    end
  end
end
