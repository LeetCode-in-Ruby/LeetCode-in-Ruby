require 'minitest/autorun'
require_relative '../../../../main/ruby/g0401_0500/s0437_path_sum_iii/solution'

class SolutionTest < Minitest::Test
  def test_path_sum
    tree = TreeNode.create([10, 5, -3, 3, 2, nil, 11, 3, -2, nil, 1])
    assert_equal 3, path_sum(tree, 8)
  end

  def test_path_sum_2
    tree = TreeNode.create([5, 4, 8, 11, nil, 13, 4, 7, 2, nil, nil, 5, 1])
    assert_equal 3, path_sum(tree, 22)
  end
end
