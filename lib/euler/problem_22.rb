require 'euler/utils/data_file'

module Euler
  class Problem22
    include Utils
    
    def solve
      raw_data = DataFile.read('names.txt')
      names    = raw_data.gsub('"', '').split(',').sort
      
      scores = names.each_with_index.map do |name, i|
        name.split('').map { |c| c.ord - 'A'.ord + 1 }.reduce(&:+) * (i + 1)
      end
      
      scores.reduce(&:+)
    end
  end
end
