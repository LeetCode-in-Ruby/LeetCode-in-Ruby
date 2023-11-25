require 'minitest/autorun'
require_relative '../../../../main/ruby/g0201_0300/s0215_kth_largest_element_in_an_array/solution'

class SolutionTest < Minitest::Test
  def test_find_kth_largest
    assert_equal 5, find_kth_largest([3, 2, 1, 5, 6, 4], 2)
  end

  def test_find_kth_largest_2
    assert_equal 4, find_kth_largest([3, 2, 3, 1, 2, 4, 5, 5, 6], 4)
  end
end
