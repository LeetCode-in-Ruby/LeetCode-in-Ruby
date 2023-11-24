require_relative "../../../../main/ruby/com_github_leetcode/list_node"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0160_intersection_of_two_linked_lists/solution'

class SolutionTest < Minitest::Test
  def test_get_intersection_node
    intersection_list_node = ListNode.new(8, ListNode.new(4, ListNode.new(5)))
    node_a = ListNode.new(4, ListNode.new(1, intersection_list_node))
    node_b = ListNode.new(5, ListNode.new(6, ListNode.new(1, intersection_list_node)))
    assert_equal(8, getIntersectionNode(node_a, node_b).val)
  end

  def test_get_intersection_node2
    node_a = ListNode.new(4, ListNode.new(1, ListNode.new(2)))
    node_b = ListNode.new(5, ListNode.new(6, ListNode.new(1, ListNode.new(2))))
    assert_nil getIntersectionNode(node_a, node_b)
  end
end
