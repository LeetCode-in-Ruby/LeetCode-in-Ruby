# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Sorting #Two_Pointers #Linked_List
# #Divide_and_Conquer #Merge_Sort #Level_2_Day_4_Linked_List #Big_O_Time_O(log(N))_Space_O(log(N))
# #2023_11_24_Time_188_ms_(84.21%)_Space_224_MB_(21.05%)

require_relative '../../com_github_leetcode/list_node'

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
def sort_list(head)
  list = []
  new_head = ListNode.new

  while head
    list << head.val
    head = head.next
  end

  curr = new_head
  list.sort.each do |v|
    curr.next = ListNode.new(v)
    curr = curr.next
  end

  new_head.next
end
