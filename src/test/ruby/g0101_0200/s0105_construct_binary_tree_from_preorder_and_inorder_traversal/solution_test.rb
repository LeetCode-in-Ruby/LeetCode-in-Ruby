require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0105_construct_binary_tree_from_preorder_and_inorder_traversal/solution'

class SolutionTest < Minitest::Test
  def test_construct_binary_tree
    preorder = [3, 9, 20, 15, 7]
    inorder = [9, 3, 15, 20, 7]
    actual = build_tree(preorder, inorder)
    assert_equal '3,9,20,15,7', actual.to_s
  end

  def test_construct_binary_tree2
    preorder = [-1]
    inorder = [-1]
    actual = build_tree(preorder, inorder)
    assert_equal '-1', actual.to_s
  end
end
