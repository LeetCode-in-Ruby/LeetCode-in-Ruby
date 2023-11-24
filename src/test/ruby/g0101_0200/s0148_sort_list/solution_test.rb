require_relative "../../../../main/ruby/com_github_leetcode/list_node"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0148_sort_list/solution'

class SolutionTest < Minitest::Test
  def test_sort_list
    list_node1 = ListNode.new(4)
    list_node1.next = ListNode.new(2)
    list_node1.next.next = ListNode.new(1)
    list_node1.next.next.next = ListNode.new(3)
    assert_equal [1, 2, 3, 4], sort_list(list_node1).to_a
  end

  def test_sort_list2
    list_node1 = ListNode.new(-1)
    list_node1.next = ListNode.new(5)
    list_node1.next.next = ListNode.new(3)
    list_node1.next.next.next = ListNode.new(4)
    list_node1.next.next.next.next = ListNode.new(0)
    assert_equal [-1, 0, 3, 4, 5], sort_list(list_node1).to_a
  end

  def test_sort_list3
    assert_nil sort_list(nil)
  end
end
