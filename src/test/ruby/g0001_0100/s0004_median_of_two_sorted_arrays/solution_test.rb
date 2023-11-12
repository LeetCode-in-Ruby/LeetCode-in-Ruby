require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0004_median_of_two_sorted_arrays/solution'

class SolutionTest < Minitest::Test
  def test_find_median_sorted_arrays
    assert_equal 2.0, find_median_sorted_arrays([1, 3], [2])
  end

  def test_find_median_sorted_arrays_2
    assert_equal 2.5, find_median_sorted_arrays([1, 2], [3, 4])
  end
end
