require_relative "../../com_github_leetcode/tree_utils"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0101_symmetric_tree/solution'

class SolutionTest < Minitest::Test
  def test_symmetric_tree
    root = TreeUtils.construct_binary_tree([1, 2, 2, 3, 4, 4, 3])
    assert_equal true, is_symmetric(root)
  end

  def test_symmetric_tree2
    root = TreeUtils.construct_binary_tree([1, 2, 2, nil, 3, nil, 3])
    assert_equal false, is_symmetric(root)
  end
end
