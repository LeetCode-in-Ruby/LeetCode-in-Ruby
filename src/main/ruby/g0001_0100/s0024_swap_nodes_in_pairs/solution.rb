# #Medium #Top_100_Liked_Questions #Linked_List #Recursion #Data_Structure_II_Day_12_Linked_List
# #Udemy_Linked_List #Big_O_Time_O(n)_Space_O(1)
# #2023_11_17_Time_59_ms_(76.00%)_Space_210.9_MB_(100.00%)

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
def swap_pairs(head)
  return nil if head.nil?
  len = get_length(head)
  reverse_pairs(head, len)
end

def get_length(curr)
  cnt = 0
  while curr
    cnt += 1
    curr = curr.next
  end
  cnt
end

# Recursive function to reverse in groups
def reverse_pairs(head, len)
  # base case
  return head if len < 2

  curr = head
  prev = nil
  next_node = nil

  2.times do
    # reverse linked list code
    next_node = curr.next
    curr.next = prev
    prev = curr
    curr = next_node
  end

  head.next = reverse_pairs(curr, len - 2)
  prev
end
