require 'minitest/autorun'
require_relative '../../../../main/ruby/g0401_0500/s0494_target_sum/solution'

class SolutionTest < Minitest::Test
  def test_find_target_sum_ways
    assert_equal 5, find_target_sum_ways([1, 1, 1, 1, 1], 3)
  end

  def test_find_target_sum_ways_2
    assert_equal 1, find_target_sum_ways([1], 1)
  end
end
