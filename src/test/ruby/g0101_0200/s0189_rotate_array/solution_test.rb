require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0189_rotate_array/solution'

class SolutionTest < Minitest::Test
  def test_rotate
    array = [1, 2, 3, 4, 5, 6, 7]
    rotate(array, 3)
    assert_equal [5, 6, 7, 1, 2, 3, 4], array
  end

  def test_rotate2
    array = [-1, -100, 3, 99]
    rotate(array, 2)
    assert_equal [3, 99, -1, -100], array
  end
end
