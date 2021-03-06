require 'euler'
require 'test/unit'

class EulerTest < Test::Unit::TestCase
  def test_solution_1
    assert_equal 233168, Euler.solve(1)
  end
  
  def test_solution_2
    assert_equal 4613732, Euler.solve(2)
  end
  
  def test_solution_3
    assert_equal 6857, Euler.solve(3)
  end
  
  def test_solution_4
    assert_equal 906609, Euler.solve(4)
  end
  
  def test_solution_5
    assert_equal 232792560, Euler.solve(5)
  end
  
  def test_solution_6
    assert_equal 25164150, Euler.solve(6)
  end
  
  def test_solution_7
    assert_equal 104743, Euler.solve(7)
  end
  
  def test_solution_8
    assert_equal 40824, Euler.solve(8)
  end
  
  def test_solution_9
    assert_equal 31875000, Euler.solve(9)
  end
  
  def test_solution_10
    assert_equal 142913828922, Euler.solve(10)
  end
  
  def test_solution_11
    assert_equal 70600674, Euler.solve(11)
  end
  
  def test_solution_12
    assert_equal 76576500, Euler.solve(12)
  end
  
  def test_solution_13
    assert_equal 5537376230, Euler.solve(13)
  end
  
  def test_solution_14
    assert_equal 837799, Euler.solve(14)
  end
  
  def test_solution_15
    assert_equal 137846528820, Euler.solve(15)
  end
  
  def test_solution_16
    assert_equal 1366, Euler.solve(16)
  end
  
  def test_solution_17
    assert_equal 21124, Euler.solve(17)
  end
  
  def test_solution_18
    assert_equal 1074, Euler.solve(18)
  end
  
  def test_solution_19
    assert_equal 171, Euler.solve(19)
  end
  
  def test_solution_20
    assert_equal 648, Euler.solve(20)
  end
  
  def test_solution_21
    assert_equal 31626, Euler.solve(21)
  end
  
  def test_solution_22
    assert_equal 871198282, Euler.solve(22)
  end
  
  def test_solution_24
    assert_equal 2783915460, Euler.solve(24)
  end
  
  def test_solution_25
    assert_equal 4782, Euler.solve(25)
  end
  
  def test_solution_67
    assert_equal 7273, Euler.solve(67)
  end
end
