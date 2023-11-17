# #Easy #Top_100_Liked_Questions #Top_Interview_Questions #Linked_List #Recursion
# #Data_Structure_I_Day_7_Linked_List #Algorithm_I_Day_10_Recursion_Backtracking
# #Level_1_Day_3_Linked_List #Udemy_Linked_List #Big_O_Time_O(m+n)_Space_O(m+n)
# #2023_11_17_Time_66_ms_(59.01%)_Space_210.9_MB_(88.79%)

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(l1, l2)
  list = ListNode.new(-1)
  head = list

  while l1 || l2
    if l1 && l2
      if l1.val <= l2.val
        list.next = ListNode.new(l1.val)
        l1 = l1.next
      else
        list.next = ListNode.new(l2.val)
        l2 = l2.next
      end
    elsif l1
      list.next = ListNode.new(l1.val)
      l1 = l1.next
    else
      list.next = ListNode.new(l2.val)
      l2 = l2.next
    end

    list = list.next
  end

  head.next
end
