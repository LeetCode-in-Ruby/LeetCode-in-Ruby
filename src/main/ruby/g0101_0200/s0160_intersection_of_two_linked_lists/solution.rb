# #Easy #Top_100_Liked_Questions #Top_Interview_Questions #Hash_Table #Two_Pointers #Linked_List
# #Data_Structure_II_Day_11_Linked_List #Udemy_Linked_List #Big_O_Time_O(M+N)_Space_O(1)
# #2023_11_24_Time_108_ms_(75.86%)_Space_215.4_MB_(55.17%)

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def getIntersectionNode(headA, headB)
  node1 = headA
  node2 = headB

  while node1 != node2
    node1 = node1.nil? ? headB : node1.next
    node2 = node2.nil? ? headA : node2.next
  end

  node1
end
