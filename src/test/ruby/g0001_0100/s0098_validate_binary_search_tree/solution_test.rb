require_relative "../../../../main/ruby/com_github_leetcode/tree_node"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0098_validate_binary_search_tree/solution'

class SolutionTest < Minitest::Test
  def test_is_valid_bst
    tree_node1 = TreeNode.new(2)
    tree_node1.left = TreeNode.new(1)
    tree_node1.right = TreeNode.new(3)
    assert_equal true, is_valid_bst(tree_node1)
  end

  def test_is_valid_bst2
    tree_node = TreeNode.new(5)
    tree_node.left = TreeNode.new(1)
    tree_node.right = TreeNode.new(4)
    tree_node.right.left = TreeNode.new(3)
    tree_node.right.right = TreeNode.new(6)
    assert_equal false, is_valid_bst(tree_node)
  end
end
