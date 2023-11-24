# #Easy #Top_100_Liked_Questions #Top_Interview_Questions #Hash_Table #Two_Pointers #Linked_List
# #Data_Structure_I_Day_7_Linked_List #Udemy_Linked_List #Big_O_Time_O(N)_Space_O(1)
# #2023_11_24_Time_58_ms_(97.65%)_Space_211.4_MB_(74.12%)

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  return false if head.nil?

  fast = head.next
  slow = head

  while fast && fast.next
    return true if fast == slow

    fast = fast.next.next
    slow = slow.next
  end

  false
end
