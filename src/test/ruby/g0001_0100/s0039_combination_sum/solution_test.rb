require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0039_combination_sum/solution'

class SolutionTest < Minitest::Test
  def test_combination_sum
    expected = [[7], [3, 2, 2]]
    actual = combination_sum([2, 3, 6, 7], 7)
    assert_equal expected, actual
  end

  def test_combination_sum2
    expected = [[5, 3], [3, 3, 2], [2, 2, 2, 2]]
    actual = combination_sum([2, 3, 5], 8)
    assert_equal expected, actual
  end

  def test_combination_sum3
    expected = []
    actual = combination_sum([2], 1)
    assert_equal expected, actual
  end
end
