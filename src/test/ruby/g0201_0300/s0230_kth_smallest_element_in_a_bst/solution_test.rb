require_relative "../../../../main/ruby/com_github_leetcode/tree_node"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0201_0300/s0230_kth_smallest_element_in_a_bst/solution'

class SolutionTest < Minitest::Test
  def test_kth_smallest
    root = TreeNode.create([3, 1, 4, nil, 2])
    assert_equal 1, kth_smallest(root, 1)
  end

  def test_kth_smallest_2
    root = TreeNode.create([5, 3, 6, 2, 4, nil, nil, 1])
    assert_equal 3, kth_smallest(root, 3)
  end
end
