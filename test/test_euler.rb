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
end
