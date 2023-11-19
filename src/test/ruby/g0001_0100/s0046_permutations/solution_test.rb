require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0046_permutations/solution'

class SolutionTest < Minitest::Test
  def test_permute
    expected = [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]
    assert_equal expected, permute([1, 2, 3])
  end

  def test_permute2
    expected = [[0, 1], [1, 0]]
    assert_equal expected, permute([0, 1])
  end

  def test_permute3
    expected = [[1]]
    assert_equal expected, permute([1])
  end
end
