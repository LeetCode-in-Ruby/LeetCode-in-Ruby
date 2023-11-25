require_relative "../../../../main/ruby/com_github_leetcode/list_node"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0201_0300/s0206_reverse_linked_list/solution'

class SolutionTest < Minitest::Test
  def test_reverse_list
    head_actual = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4, ListNode.new(5)))))
    expected_result = ListNode.new(5, ListNode.new(4, ListNode.new(3, ListNode.new(2, ListNode.new(1)))))
    assert_equal expected_result.to_a, reverse_list(head_actual).to_a
  end

  def test_reverse_list2
    head_actual = ListNode.new(1, ListNode.new(2))
    expected_result = ListNode.new(2, ListNode.new(1))
    assert_equal expected_result.to_a, reverse_list(head_actual).to_a
  end

  def test_reverse_list3
    assert_nil reverse_list(nil)
  end
end
