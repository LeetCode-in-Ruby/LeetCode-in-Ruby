require_relative "../../../../main/ruby/com_github_leetcode/tree_node"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0094_binary_tree_inorder_traversal/solution'

class SolutionTest < Minitest::Test
  def test_inorder_traversal
    tree_node = TreeNode.new(1)
    tree_node.right = TreeNode.new(2)
    tree_node.right.left = TreeNode.new(3)
    assert_equal "[1, 3, 2]", inorder_traversal(tree_node).to_s
  end

  def test_inorder_traversal2
    assert_equal "[]", inorder_traversal(nil).to_s
  end

  def test_inorder_traversal3
    assert_equal "[1]", inorder_traversal(TreeNode.new(1)).to_s
  end
end
