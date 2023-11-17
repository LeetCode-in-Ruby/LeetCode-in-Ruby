require_relative "../../../../main/ruby/com_github_leetcode/list_node"
require_relative "../../com_github_leetcode/linked_list_utils"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0021_merge_two_sorted_lists/solution'

class SolutionTest < Minitest::Test
  def test_merge_two_lists
    l1 = LinkedListUtils.create_singly_linked_list([1, 2, 4])
    l2 = LinkedListUtils.create_singly_linked_list([1, 3, 4])
    assert_equal [1, 1, 2, 3, 4, 4], merge_two_lists(l1, l2).to_a
  end

  def test_merge_two_lists2
    assert_equal [0, 0], merge_two_lists(ListNode.new, ListNode.new).to_a
  end
end
