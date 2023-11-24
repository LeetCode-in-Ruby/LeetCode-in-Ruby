require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0153_find_minimum_in_rotated_sorted_array/solution'

class SolutionTest < Minitest::Test
  def test_find_min
    assert_equal 1, find_min([3, 4, 5, 1, 2])
  end

  def test_find_min2
    assert_equal 0, find_min([4, 5, 6, 7, 0, 1, 2])
  end

  def test_find_min3
    assert_equal 11, find_min([11, 13, 15, 17])
  end
end
