require 'minitest/autorun'
require_relative '../../../../main/ruby/g0301_0400/s0347_top_k_frequent_elements/solution'

class SolutionTest < Minitest::Test
  def test_top_k_frequent
    assert_equal [1, 2], top_k_frequent([1, 1, 1, 2, 2, 3], 2)
  end

  def test_top_k_frequent_2
    assert_equal [1], top_k_frequent([1], 1)
  end
end
