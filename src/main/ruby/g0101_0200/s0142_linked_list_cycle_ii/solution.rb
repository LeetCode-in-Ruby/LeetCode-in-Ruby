# #Medium #Top_100_Liked_Questions #Hash_Table #Two_Pointers #Linked_List
# #Data_Structure_II_Day_10_Linked_List #Level_1_Day_4_Linked_List #Udemy_Linked_List
# #Big_O_Time_O(N)_Space_O(1) #2023_11_24_Time_62_ms_(93.94%)_Space_211.1_MB_(100.00%)

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def detectCycle(head)
  return nil if head.nil? || head.next.nil?

  slow = head
  fast = head

  while fast && fast.next
    fast = fast.next.next
    slow = slow.next

    # Intersected inside the loop.
    break if slow == fast
  end

  return nil if fast.nil? || fast.next.nil?

  slow = head
  while slow != fast
    slow = slow.next
    fast = fast.next
  end

  slow
end
