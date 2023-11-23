require_relative "../../com_github_leetcode/tree_utils"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0114_flatten_binary_tree_to_linked_list/solution'

class SolutionTest < Minitest::Test
  def test_flatten
    root = TreeUtils.construct_binary_tree([1, 2, 5, 3, 4, nil, 6])
    flatten(root)
    assert_equal '1,null,2,null,3,null,4,null,5,null,6', root.to_s
  end

  def test_flatten2
    root = TreeUtils.construct_binary_tree([0])
    flatten(root)
    assert_equal '0', root.to_s
  end
end
