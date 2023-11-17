require_relative "../../com_github_leetcode/linked_list_utils"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0023_merge_k_sorted_lists/solution'

class SolutionTest < Minitest::Test
  def test_merge_k_lists
    head1 = LinkedListUtils.create_singly_linked_list([1, 4, 5])
    head2 = LinkedListUtils.create_singly_linked_list([1, 3, 4])
    head3 = LinkedListUtils.create_singly_linked_list([2, 6])
    expected_result = [1, 1, 2, 3, 4, 4, 5, 6]
    assert_equal expected_result, merge_k_lists([head1, head2, head3]).to_a
  end

  def test_merge_k_lists2
    head1 = LinkedListUtils.create_singly_linked_list([1, 3, 5, 7, 11])
    head2 = LinkedListUtils.create_singly_linked_list([2, 8, 12])
    head3 = LinkedListUtils.create_singly_linked_list([4, 6, 9, 10])
    expected_result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    assert_equal expected_result, merge_k_lists([head1, head2, head3]).to_a
  end
end
