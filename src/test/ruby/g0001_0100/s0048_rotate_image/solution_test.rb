require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0048_rotate_image/solution'

class SolutionTest < Minitest::Test
  def test_rotate
    expected = [[7, 4, 1], [8, 5, 2], [9, 6, 3]]
    input = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    rotate(input)
    assert_equal expected, input
  end

  def test_rotate2
    expected = [[15, 13, 2, 5], [14, 3, 4, 1], [12, 6, 8, 9], [16, 7, 10, 11]]
    input = [[5, 1, 9, 11], [2, 4, 8, 10], [13, 3, 6, 7], [15, 14, 12, 16]]
    rotate(input)
    assert_equal expected, input
  end
end
