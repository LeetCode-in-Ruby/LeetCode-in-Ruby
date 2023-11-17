require_relative "../../../../main/ruby/com_github_leetcode/list_node"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0019_remove_nth_node_from_end_of_list/solution'

class SolutionTest < Minitest::Test
  def test_remove_nth_from_end
    node1 = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4, ListNode.new(5)))))
    expected_result = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(5))))
    assert_equal expected_result.to_a, remove_nth_from_end(node1, 2).to_a
  end

  def test_remove_nth_from_end2
    node1 = ListNode.new(1)
    assert_nil remove_nth_from_end(node1, 1)
  end
end
