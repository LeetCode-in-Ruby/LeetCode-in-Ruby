# #Easy #Top_100_Liked_Questions #Top_Interview_Questions #Linked_List #Recursion
# #Data_Structure_I_Day_7_Linked_List #Algorithm_I_Day_10_Recursion_Backtracking
# #Level_1_Day_3_Linked_List #Udemy_Linked_List #Top_Interview_150_Linked_List
# #Big_O_Time_O(m+n)_Space_O(m+n) #2023_11_17_Time_66_ms_(59.01%)_Space_210.9_MB_(88.79%)

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
def merge_two_lists(list1, list2)
  list = ListNode.new(-1)
  head = list

  while list1 || list2
    if list1 && list2
      if list1.val <= list2.val
        list.next = ListNode.new(list1.val)
        list1 = list1.next
      else
        list.next = ListNode.new(list2.val)
        list2 = list2.next
      end
    elsif list1
      list.next = ListNode.new(list1.val)
      list1 = list1.next
    else
      list.next = ListNode.new(list2.val)
      list2 = list2.next
    end

    list = list.next
  end

  head.next
end
