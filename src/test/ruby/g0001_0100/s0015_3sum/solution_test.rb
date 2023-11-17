require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0015_3sum/solution'

class SolutionTest < Minitest::Test
  def test_three_sum
    assert_equal [[-1, -1, 2], [-1, 0, 1]], three_sum([-1, 0, 1, 2, -1, -4])
  end

  def test_three_sum2
    assert_equal [], three_sum([])
  end

  def test_three_sum3
    assert_equal [], three_sum([0])
  end
end
