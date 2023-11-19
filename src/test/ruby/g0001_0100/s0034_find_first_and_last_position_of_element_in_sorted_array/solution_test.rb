require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0034_find_first_and_last_position_of_element_in_sorted_array/solution'

class SolutionTest < Minitest::Test
  def test_search_range
    expected = [3, 4]
    actual = search_range([5, 7, 7, 8, 8, 10], 8)
    assert_equal expected, actual
  end

  def test_search_range2
    expected = [-1, -1]
    actual = search_range([5, 7, 7, 8, 8, 10], 6)
    assert_equal expected, actual
  end

  def test_search_range3
    expected = [-1, -1]
    actual = search_range([], 0)
    assert_equal expected, actual
  end
end
