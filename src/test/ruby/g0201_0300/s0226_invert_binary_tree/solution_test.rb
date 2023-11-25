require_relative "../../../../main/ruby/com_github_leetcode/tree_node"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0201_0300/s0226_invert_binary_tree/solution'

class SolutionTest < Minitest::Test
  def test_invert_tree
    root = TreeNode.new(4)
    root.left = TreeNode.new(2)
    root.right = TreeNode.new(7)
    root.left.left = TreeNode.new(1)
    root.left.right = TreeNode.new(3)
    root.right.left = TreeNode.new(6)
    root.right.right = TreeNode.new(9)

    inverted_root = invert_tree(root)
    assert_equal '4,7,9,6,2,3,1', inverted_root.to_s
  end

  def test_invert_tree_2
    root = TreeNode.new(2)
    root.left = TreeNode.new(1)
    root.right = TreeNode.new(3)

    inverted_root = invert_tree(root)
    assert_equal '2,3,1', inverted_root.to_s
  end
end
