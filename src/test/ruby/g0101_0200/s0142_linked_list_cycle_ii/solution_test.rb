require_relative "../../../../main/ruby/com_github_leetcode/list_node"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0142_linked_list_cycle_ii/solution'

class SolutionTest < Minitest::Test
  def test_detect_cycle
    list_node1 = ListNode.new(3)
    list_node1.next = ListNode.new(2)
    list_node1.next.next = ListNode.new(0)
    list_node1.next.next.next = ListNode.new(-4)
    list_node1.next.next.next.next = list_node1.next
    assert_equal true, detectCycle(list_node1) == list_node1.next
  end

  def test_detect_cycle_2
    list_node1 = ListNode.new(1)
    list_node1.next = ListNode.new(2)
    list_node1.next.next = list_node1
    assert_equal true, detectCycle(list_node1) == list_node1
  end

  def test_detect_cycle_3
    list_node1 = ListNode.new(1)
    assert_nil detectCycle(list_node1)
  end
end
