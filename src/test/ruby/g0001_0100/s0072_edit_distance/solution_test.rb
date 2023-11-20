require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0072_edit_distance/solution'

class SolutionTest < Minitest::Test
  def test_min_distance
    expected = 3
    actual = min_distance('horse', 'ros')
    assert_equal expected, actual
  end

  def test_min_distance2
    expected = 5
    actual = min_distance('intention', 'execution')
    assert_equal expected, actual
  end
end
