require 'euler/utils/data_file'

module Euler
  class Problem22
    include Utils
    
    def solve
      raw_data = DataFile.read('names.txt')
      names    = raw_data.gsub('"', '').split(',')
    end
  end
end
