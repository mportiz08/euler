module Euler
  class Problem18
    class Triangle
      attr_reader :rows
      
      def initialize(raw_txt)
        @rows = []
        raw_txt.split("\n").each do |line|
          rows << line.split.map(&:to_i)
        end
      end
      
      def weighted
        @rows.map do |row|
          max = row.max
          row.map { |n| n.to_f / max.to_f }
        end
      end
      
      def values_from_path(path)
        @rows.each_with_index.map { |row, i| row[path[i]] }
      end
    end
    
    def initialize
      @triangle = Triangle.new <<-NUMS
                      75
                     95 64
                    17 47 82
                   18 35 87 10
                  20 04 82 47 65
                 19 01 23 75 03 34
                88 02 77 73 07 63 67
               99 65 04 28 06 16 70 92
              41 41 26 56 83 40 80 70 33
             41 48 72 33 47 32 37 16 94 29
            53 71 44 65 25 43 91 52 97 51 14
           70 11 33 28 77 73 17 78 39 68 17 57
          91 71 52 38 17 14 91 43 58 50 27 29 48
         63 66 04 68 89 53 67 30 73 16 69 87 40 31
        04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
      NUMS
      # @triangle = Triangle.new <<-NUMS
      #      3
      #     7 4
      #    2 4 6
      #   8 5 9 3
      # NUMS
    end
    
    class PathChooser
      def best_path(triangle)
        path = [0]
        rows = triangle.weighted
        
        (1...(rows.size)).each do |i|
          path << choose_idx_from_row(rows[i], path.last)
        end
        
        path
      end
      
      private
      
      def choose_idx_from_row(row, last_idx)
        scores = []
        
        row.each_with_index do |n, i|
          dist = [(last_idx - i).abs, (last_idx + 1 - i).abs].max
          scores << (n / dist.to_f)
        end
        
        scores.index(scores.max)
      end
    end
    
    def solve
      path = PathChooser.new.best_path(@triangle)
      @triangle.values_from_path(path).reduce(&:+)
    end
  end
end
