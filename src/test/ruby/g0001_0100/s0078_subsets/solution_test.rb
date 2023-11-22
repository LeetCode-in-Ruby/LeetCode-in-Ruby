require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0078_subsets/solution'

class SolutionTest < Minitest::Test
  def test_subsets
    expected = [[1, 2, 3], [1, 2], [1, 3], [1], [2, 3], [2], [3], []]
    assert_equal expected, subsets([1, 2, 3])
  end

  def test_subsets2
    expected = [
        [0],
        []
    ]
    assert_equal expected, subsets([0])
  end
end
