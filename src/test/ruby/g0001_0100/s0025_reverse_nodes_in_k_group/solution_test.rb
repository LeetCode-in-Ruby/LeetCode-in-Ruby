require_relative "../../com_github_leetcode/linked_list_utils"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0025_reverse_nodes_in_k_group/solution'

class SolutionTest < Minitest::Test
  def test_reverse_k_group
    head = LinkedListUtils.construct_linked_list([1, 2, 3, 4, 5])
    expected_result = [2, 1, 4, 3, 5]
    assert_equal expected_result, reverse_k_group(head, 2).to_a
  end

  def test_reverse_k_group2
    head = LinkedListUtils.construct_linked_list([1, 2, 3, 4, 5])
    expected_result = [3, 2, 1, 4, 5]
    assert_equal expected_result, reverse_k_group(head, 3).to_a
  end
end
