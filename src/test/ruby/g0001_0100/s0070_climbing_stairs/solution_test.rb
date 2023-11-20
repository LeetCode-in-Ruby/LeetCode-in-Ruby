require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0070_climbing_stairs/solution'

class SolutionTest < Minitest::Test
  def test_climb_stairs
    expected = 2
    actual = climb_stairs(2)
    assert_equal expected, actual
  end

  def test_climb_stairs2
    expected = 3
    actual = climb_stairs(3)
    assert_equal expected, actual
  end
end
