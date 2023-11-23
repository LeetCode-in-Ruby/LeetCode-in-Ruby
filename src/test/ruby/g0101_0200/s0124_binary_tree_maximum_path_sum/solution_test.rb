require_relative "../../../../main/ruby/com_github_leetcode/tree_node"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0124_binary_tree_maximum_path_sum/solution'

class SolutionTest < Minitest::Test
  def test_max_path_sum
    tree_node = TreeNode.create([1, 2, 3])
    assert_equal 6, max_path_sum(tree_node)
  end

  def test_max_path_sum2
    tree_node = TreeNode.create([-10, 9, 20, nil, nil, 15, 7])
    assert_equal 42, max_path_sum(tree_node)
  end
end
