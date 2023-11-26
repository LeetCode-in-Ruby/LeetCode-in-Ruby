require 'minitest/autorun'
require_relative '../../../../main/ruby/g0201_0300/s0300_longest_increasing_subsequence/solution'

class SolutionTest < Minitest::Test
  def test_length_of_lis
    assert_equal 4, length_of_lis([10, 9, 2, 5, 3, 7, 101, 18])
  end

  def test_length_of_lis2
    assert_equal 4, length_of_lis([0, 1, 0, 3, 2, 3])
  end

  def test_length_of_lis3
    assert_equal 1, length_of_lis([7, 7, 7, 7, 7, 7, 7])
  end
end
