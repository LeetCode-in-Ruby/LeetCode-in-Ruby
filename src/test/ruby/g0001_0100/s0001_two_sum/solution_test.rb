require_relative '../../../../main/ruby/g0001_0100/s0001_two_sum/solution'
require 'minitest/autorun'

class TestTwoSum < Minitest::Test
  def test_two_sum
    assert_equal [0, 1], two_sum([2, 7, 11, 15], 9)
  end

  def test_two_sum2
    assert_equal [1, 2], two_sum([3, 2, 4], 6)
  end

  def test_two_sum3
    assert_equal [0, 1], two_sum([3, 3], 6)
  end

  def test_two_sum4
    assert_equal [-1, -1], two_sum([3, 3], 7)
  end
end
