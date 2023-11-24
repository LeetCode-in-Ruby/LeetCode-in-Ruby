require_relative "../../../../main/ruby/com_github_leetcode/list_node"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0141_linked_list_cycle/solution'

class SolutionTest < Minitest::Test
  def test_has_cycle
    list_node1 = ListNode.new(3)
    list_node1.next = ListNode.new(2)
    list_node1.next.next = ListNode.new(0)
    list_node1.next.next.next = ListNode.new(-4)
    list_node1.next.next.next.next = list_node1.next
    assert_equal true, hasCycle(list_node1)
  end

  def test_has_cycle_2
    list_node1 = ListNode.new(1)
    list_node1.next = ListNode.new(2)
    list_node1.next.next = list_node1
    assert_equal true, hasCycle(list_node1)
  end

  def test_has_cycle_3
    list_node1 = ListNode.new(1)
    assert_equal false, hasCycle(list_node1)
  end
end
