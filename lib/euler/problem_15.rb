module Euler
  class Problem15
    class Grid
      attr_reader :vertices
      
      class Vertex
        attr_accessor :left, :right, :up, :down
        
        def to_s
          l = left.nil?  ? 0 : 1
          r = right.nil? ? 0 : 1
          u = up.nil?    ? 0 : 1
          d = down.nil?  ? 0 : 1
          "l:#{l} r:#{r}   u:#{u} d:#{d}"
        end
      end
      
      def initialize(width, height)
        @w, @h    = width, height
        @vertices = []
        build_grid
      end
      
      def lattice_paths
        # TODO
      end
      
      private
      
      def build_grid
        0.upto(@h) do |i|
          row = (0..@w).map { Vertex.new }
          row.each_with_index do |v, j|
            v.left  = row[j - 1] unless j == 0
            v.right = row[j + 1] unless j == @w
            v.up    = row[i - 1] unless i == 0
            v.down  = row[i + 1] unless i == @h
          end
          @vertices << row
        end
      end
    end
    
    def solve
      Grid.new(2, 2).vertices
    end
  end
end
