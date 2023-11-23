require_relative "../../com_github_leetcode/tree_utils"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0102_binary_tree_level_order_traversal/solution'

class SolutionTest < Minitest::Test
  def test_level_order
    root = TreeUtils.construct_binary_tree([3, 9, 20, nil, nil, 15, 7])
    expected_result = [[3], [9, 20], [15, 7]]
    assert_equal expected_result, level_order(root)
  end

  def test_level_order2
    root = TreeUtils.construct_binary_tree([1])
    expected_result = [[1]]
    assert_equal expected_result, level_order(root)
  end

  def test_level_order3
    assert_equal [], level_order(nil)
  end
end
