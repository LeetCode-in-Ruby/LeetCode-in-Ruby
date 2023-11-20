require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0053_maximum_subarray/solution'

class SolutionTest < Minitest::Test
  def test_max_sub_array
    assert_equal 6, max_sub_array([-2, 1, -3, 4, -1, 2, 1, -5, 4])
  end

  def test_max_sub_array2
    assert_equal 1, max_sub_array([1])
  end

  def test_max_sub_array3
    assert_equal 23, max_sub_array([5, 4, -1, 7, 8])
  end
end
