# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Math #Linked_List #Recursion
# #Data_Structure_II_Day_10_Linked_List #Programming_Skills_II_Day_15
# #Big_O_Time_O(max(N,M))_Space_O(max(N,M))
# #2023_11_11_Time_68_ms_(97.48%)_Space_211.1_MB_(55.38%)

require_relative '../../com_github_leetcode/list_node'

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  dummy_head = ListNode.new(0)
  p = l1
  q = l2
  curr = dummy_head
  carry = 0

  while p || q
    x = p ? p.val : 0
    y = q ? q.val : 0
    sum = carry + x + y
    carry = sum / 10
    curr.next = ListNode.new(sum % 10)
    curr = curr.next

    p = p.next if p
    q = q.next if q
  end

  curr.next = ListNode.new(carry) if carry > 0

  dummy_head.next
end
