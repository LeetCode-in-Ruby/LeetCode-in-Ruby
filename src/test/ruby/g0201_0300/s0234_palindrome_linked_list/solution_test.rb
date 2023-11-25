require_relative "../../../../main/ruby/com_github_leetcode/list_node"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0201_0300/s0234_palindrome_linked_list/solution'

class SolutionTest < Minitest::Test
  def test_is_palindrome
    head_actual = ListNode.new(1, ListNode.new(2, ListNode.new(2, ListNode.new(1))))
    assert_equal true, is_palindrome2(head_actual)
  end

  def test_is_palindrome_2
    head_actual = ListNode.new(1, ListNode.new(2))
    assert_equal false, is_palindrome2(head_actual)
  end
end
