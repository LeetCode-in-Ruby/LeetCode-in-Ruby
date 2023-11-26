require 'minitest/autorun'
require_relative '../../../../main/ruby/g0201_0300/s0236_lowest_common_ancestor_of_a_binary_tree/solution'

class SolutionTest < Minitest::Test
  def test_lowest_common_ancestor
    left_node_left_node = TreeNode.new(6)
    left_node_right_node = TreeNode.new(2, TreeNode.new(7), TreeNode.new(4))
    left_node = TreeNode.new(5, left_node_left_node, left_node_right_node)
    right_node = TreeNode.new(1, TreeNode.new(0), TreeNode.new(8))
    root = TreeNode.new(3, left_node, right_node)
    result = lowest_common_ancestor(root, TreeNode.new(5), TreeNode.new(1)).val
    assert_equal 3, result
  end

  def test_lowest_common_ancestor2
    left_node_left_node = TreeNode.new(6)
    left_node_right_node = TreeNode.new(2, TreeNode.new(7), TreeNode.new(4))
    left_node = TreeNode.new(5, left_node_left_node, left_node_right_node)
    right_node = TreeNode.new(1, TreeNode.new(0), TreeNode.new(8))
    root = TreeNode.new(3, left_node, right_node)
    result = lowest_common_ancestor(root, TreeNode.new(5), TreeNode.new(4)).val
    assert_equal 5, result
  end

  def test_lowest_common_ancestor3
    result = lowest_common_ancestor(TreeNode.new(2, TreeNode.new(1), nil), TreeNode.new(2), TreeNode.new(1)).val
    assert_equal 2, result
  end
end
