require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0031_next_permutation/solution'

class SolutionTest < Minitest::Test
  def test_next_permutation
    array = [1, 2, 3]
    next_permutation(array)
    assert_equal [1, 3, 2], array
  end

  def test_next_permutation2
    array = [3, 2, 1]
    next_permutation(array)
    assert_equal [1, 2, 3], array
  end

  def test_next_permutation3
    array = [1, 1, 5]
    next_permutation(array)
    assert_equal [1, 5, 1], array
  end
end
