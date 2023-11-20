require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0064_minimum_path_sum/solution'

class SolutionTest < Minitest::Test
  def test_min_path_sum
    grid = [[1, 3, 1], [1, 5, 1], [4, 2, 1]]
    expected = 7
    actual = min_path_sum(grid)
    assert_equal expected, actual
  end

  def test_min_path_sum2
    grid = [[1, 2, 3], [4, 5, 6]]
    expected = 12
    actual = min_path_sum(grid)
    assert_equal expected, actual
  end
end
