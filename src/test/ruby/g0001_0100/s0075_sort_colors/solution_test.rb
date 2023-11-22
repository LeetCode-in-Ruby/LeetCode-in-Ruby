require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0075_sort_colors/solution'

class SolutionTest < Minitest::Test
  def test_sort_colors
    array = [2, 0, 2, 1, 1, 0]
    sort_colors(array)
    assert_equal array, [0, 0, 1, 1, 2, 2]
  end

  def test_sort_colors2
    array = [2, 0, 1]
    sort_colors(array)
    assert_equal array, [0, 1, 2]
  end
end
