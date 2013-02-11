module Euler
  module Utils
    class DataFile
      def self.path_for(filename)
        File.join(File.dirname(__FILE__), '..', 'data', filename)
      end
      
      def self.open(filename)
        File.open(self.path_for(filename)) { |file| yield(file) }
      end
      
      def self.read(filename)
        self.open(filename) { |file| file.read }
      end
    end
  end
end
