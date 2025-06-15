# #Hard #Top_100_Liked_Questions #Linked_List #Recursion #Data_Structure_II_Day_13_Linked_List
# #Udemy_Linked_List #Top_Interview_150_Linked_List #Big_O_Time_O(n)_Space_O(k)
# #2023_11_17_Time_62_ms_(91.67%)_Space_211.1_MB_(66.67%)

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def reverse_k_group(head, k)
  return head if head.nil? || head.next.nil? || k == 1

  j = 0
  len = head

  # Loop for checking the length of the linked list.
  # If the linked list is less than k, then return as it is.
  while j < k
    return head if len.nil?

    len = len.next
    j += 1
  end

  # Reverse linked list logic applied here.
  c = head
  n = nil
  prev = nil
  i = 0

  # Traverse the while loop for K times to reverse the node in K groups.
  while i != k
    n = c.next
    c.next = prev
    prev = c
    c = n
    i += 1
  end

  # head points to the first node of the reversed K group,
  # which is now going to point to the next K group linked list.
  # Recursion for further remaining linked list.
  head.next = reverse_k_group(n, k)
  prev
end
