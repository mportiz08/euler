module Euler
  class Problem15
    class Grid
      attr_reader :vertices
      
      class Vertex
        attr_accessor :left, :right, :up, :down
      end
      
      def initialize(width, height)
        @w, @h    = width, height
        @vertices = []
        build_grid
        connect_vertices
      end
      
      def num_lattice_paths
        top_left  = @vertices[0][0]
        btm_right = @vertices[@h][@w]
        num_paths(top_left, btm_right)
      end
      
      private
      
      def build_grid
        0.upto(@h) do |i|
          @vertices << (0..@w).map { Vertex.new }
        end
      end
      
      def connect_vertices
        0.upto(@h) do |i|
          row = @vertices[i]
          row.each_with_index do |v, j|
            v.left  = row[j - 1] unless j == 0
            v.right = row[j + 1] unless j == @w
            v.up   = @vertices[i - 1][j] unless i == 0
            v.down = @vertices[i + 1][j] unless i == @h
          end
        end
      end
      
      def num_paths(current, target)
        return 1 if current == target
        
        num = 0
        num += num_paths(current.right, target) if current.right
        num += num_paths(current.down, target)  if current.down
        num
      end
    end
    
    def solve
      Grid.new(2, 2).num_lattice_paths
    end
  end
end
