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
end
