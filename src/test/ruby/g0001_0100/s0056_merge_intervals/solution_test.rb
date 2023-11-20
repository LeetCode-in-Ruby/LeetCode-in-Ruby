require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0056_merge_intervals/solution'

class SolutionTest < Minitest::Test
  def test_merge
    expected = [[1, 6], [8, 10], [15, 18]]
    actual = merge([[1, 3], [2, 6], [8, 10], [15, 18]])
    assert_equal expected, actual
  end

  def test_merge2
    expected = [[1, 5]]
    actual = merge([[1, 4], [4, 5]])
    assert_equal expected, actual
  end
end
