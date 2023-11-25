# #Easy #Top_100_Liked_Questions #Top_Interview_Questions #Linked_List #Recursion
# #Data_Structure_I_Day_8_Linked_List #Algorithm_I_Day_10_Recursion_Backtracking
# #Level_1_Day_3_Linked_List #Udemy_Linked_List #Big_O_Time_O(N)_Space_O(1)
# #2023_11_25_Time_52_ms_(93.99%)_Space_211.1_MB_(64.56%)

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  prev = nil
  curr = head
  while curr
    next_node = curr.next
    curr.next = prev
    prev = curr
    curr = next_node
  end
  prev
end
