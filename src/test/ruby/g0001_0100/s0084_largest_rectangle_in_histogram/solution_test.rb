require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0084_largest_rectangle_in_histogram/solution'

class SolutionTest < Minitest::Test
  def test_largest_rectangle_area
    assert_equal 10, largest_rectangle_area([2, 1, 5, 6, 2, 3])
  end

  def test_largest_rectangle_area2
    assert_equal 4, largest_rectangle_area([2, 4])
  end
end
