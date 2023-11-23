require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0128_longest_consecutive_sequence/solution'

class SolutionTest < Minitest::Test
  def test_longest_consecutive
    assert_equal 4, longest_consecutive([100, 4, 200, 1, 3, 2])
  end

  def test_longest_consecutive2
    assert_equal 9, longest_consecutive([0, 3, 7, 2, 5, 8, 4, 6, 0, 1])
  end
end
