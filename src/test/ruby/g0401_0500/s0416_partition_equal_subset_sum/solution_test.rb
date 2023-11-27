require 'minitest/autorun'
require_relative '../../../../main/ruby/g0401_0500/s0416_partition_equal_subset_sum/solution'

class SolutionTest < Minitest::Test
  def test_can_partition
    assert_equal true, can_partition([1, 5, 11, 5])
  end

  def test_can_partition_2
    assert_equal false, can_partition([1, 2, 3, 5])
  end
end
