require_relative "../../com_github_leetcode/linked_list_utils"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0024_swap_nodes_in_pairs/solution'

class SolutionTest < Minitest::Test
  def test_swap_pairs
    head = LinkedListUtils.create_singly_linked_list([1, 2, 3, 4])
    expected_result = [2, 1, 4, 3]
    assert_equal expected_result, swap_pairs(head).to_a
  end

  def test_swap_pairs2
    head = LinkedListUtils.create_singly_linked_list([1])
    expected_result = [1]
    assert_equal expected_result, swap_pairs(head).to_a
  end
end
