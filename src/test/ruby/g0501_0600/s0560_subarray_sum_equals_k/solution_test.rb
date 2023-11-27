require 'minitest/autorun'
require_relative '../../../../main/ruby/g0501_0600/s0560_subarray_sum_equals_k/solution'

class SolutionTest < Minitest::Test
  def test_subarray_sum
    assert_equal 2, subarray_sum([1, 1, 1], 2)
  end

  def test_subarray_sum_2
    assert_equal 2, subarray_sum([1, 2, 3], 3)
  end
end
