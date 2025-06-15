# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Two_Pointers #Linked_List
# #Algorithm_I_Day_5_Two_Pointers #Level_2_Day_3_Linked_List #Top_Interview_150_Linked_List
# #Big_O_Time_O(L)_Space_O(L) #2023_11_17_Time_51_ms_(95.27%)_Space_211_MB_(50.00%)

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  first = head
  second = head

  n.times {first = first.next}
  return head.next if first.nil?
  while first.next
    first = first.next
    second = second.next
  end

  second.next = second.next.next
  head
end
