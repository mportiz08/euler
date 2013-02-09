module Euler
  class Problem17
    class EnglishNumeral
      CARDINAL_NUMBERS = {
        0  => 'zero',
        1  => 'one',
        2  => 'two',
        3  => 'three',
        4  => 'four',
        5  => 'five',
        6  => 'six',
        7  => 'seven',
        8  => 'eight',
        9  => 'nine',
        10 => 'ten',
        11 => 'eleven',
        12 => 'twelve',
        13 => 'thirteen',
        14 => 'fourteen',
        15 => 'fifteen',
        16 => 'sixteen',
        17 => 'seventeen',
        18 => 'eighteen',
        19 => 'nineteen',
        20 => 'twenty',
        30 => 'thirty',
        40 => 'forty',
        50 => 'fifty',
        60 => 'sixty',
        70 => 'seventy',
        80 => 'eighty',
        90 => 'ninety'
      }
      
      def initialize(num)
        raise ArgumentError unless num.kind_of? Integer
        raise ArgumentError unless (0..1000).include? num
        @num = num
      end
      
      def to_s
        str = ''
        
        if (0..19).include?(@num)
          str << cardinal(@num)
        elsif (20..99).include?(@num)
          str << str_for_two_digit(@num)
        elsif (100..999).include?(@num)
          str << cardinal(digit(0))
          str << ' hundred'
          
          unless (@num % 100).zero?
            subnum = [digit(1), digit(2)].join.to_i
            str << ' and '
            str << str_for_two_digit(subnum)
          end
        elsif @num == 1000
          str << 'one thousand'
        end
        
        str
      end
      
      def self.for(num)
        self.new(num).to_s
      end
      
      private
      
      def cardinal(num)
        CARDINAL_NUMBERS[num].clone
      end
      
      def digit(pos)
        digit_for_num(@num, pos)
      end
      
      def digit_for_num(num, pos)
        num.to_s.split('')[pos].to_i
      end
      
      def str_for_two_digit(num)
        str = ''
        
        if (0..19).include?(num)
          str << cardinal(num)
        else
          if (num % 10).zero?
            str << cardinal(num)
          else
            str << cardinal(digit_for_num(num, 0) * 10)
            str << '-'
            str << cardinal(digit_for_num(num, 1))
          end
        end
        
        str
      end
    end
    
    def solve
      numerals = (1..1000).map { |i| EnglishNumeral.for(i) }
      numerals.join.gsub(/[- ]/, '').size
    end
  end
end
