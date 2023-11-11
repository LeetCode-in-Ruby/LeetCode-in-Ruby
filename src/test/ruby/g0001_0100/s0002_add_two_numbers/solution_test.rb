require_relative "../../../../main/ruby/com_github_leetcode/list_node"
require_relative "../../com_github_leetcode/linked_list_utils"
require_relative '../../../../main/ruby/g0001_0100/s0002_add_two_numbers/solution'
require 'minitest/autorun'

class SolutionTest < Minitest::Test
  def test_add_two_numbers
    list_node1 = LinkedListUtils.construct_linked_list([2, 4, 3])
    list_node2 = LinkedListUtils.construct_linked_list([5, 6, 4])
    result = Solution.new.add_two_numbers(list_node1, list_node2)
    assert_equal([7, 0, 8], result.to_a)
  end

  def test_add_two_numbers2
    result = Solution.new.add_two_numbers(ListNode.new(0), ListNode.new(0))
    assert_equal([0], result.to_a)
  end

  def test_add_two_numbers3
    list_node1 = LinkedListUtils.construct_linked_list([9, 9, 9, 9, 9, 9, 9])
    list_node2 = LinkedListUtils.construct_linked_list([9, 9, 9, 9])
    result = Solution.new.add_two_numbers(list_node1, list_node2)
    assert_equal([8, 9, 9, 9, 0, 0, 0, 1], result.to_a)
  end
end
