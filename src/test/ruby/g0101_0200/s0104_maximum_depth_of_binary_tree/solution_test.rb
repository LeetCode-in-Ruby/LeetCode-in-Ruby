require_relative "../../com_github_leetcode/tree_utils"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0104_maximum_depth_of_binary_tree/solution'

class SolutionTest < Minitest::Test
  def test_max_depth_binary_tree
    root = TreeUtils.construct_binary_tree([3, 9, 20, nil, nil, 15, 7])
    assert_equal 3, max_depth(root)
  end

  def test_max_depth_binary_tree2
    root = TreeUtils.construct_binary_tree([1, nil, 2])
    assert_equal 2, max_depth(root)
  end
end
