# #Hard #Top_100_Liked_Questions #Top_Interview_Questions #Heap_Priority_Queue #Linked_List
# #Divide_and_Conquer #Merge_Sort #Big_O_Time_O(k*n*log(k))_Space_O(log(k))
# #2023_11_17_Time_76_ms_(87.95%)_Space_212.3_MB_(83.13%)

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
  return nil if lists.empty?
  merge_k_lists_helper(lists, 0, lists.length)
end

def merge_k_lists_helper(lists, left_index, right_index)
  if right_index > left_index + 1
    mid = (left_index + right_index) / 2
    left = merge_k_lists_helper(lists, left_index, mid)
    right = merge_k_lists_helper(lists, mid, right_index)
    merge_two_lists(left, right)
  else
    lists[left_index]
  end
end

def merge_two_lists(left, right)
  return right if left.nil?
  return left if right.nil?

  res = nil
  if left.val <= right.val
    res = left
    left = left.next
  else
    res = right
    right = right.next
  end

  node = res
  while left || right
    if left.nil?
      node.next = right
      right = right.next
    elsif right.nil?
      node.next = left
      left = left.next
    else
      if left.val <= right.val
        node.next = left
        left = left.next
      else
        node.next = right
        right = right.next
      end
    end
    node = node.next
  end

  res
end
