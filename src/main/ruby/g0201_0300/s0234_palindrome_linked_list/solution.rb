# #Easy #Top_100_Liked_Questions #Top_Interview_Questions #Two_Pointers #Stack #Linked_List
# #Recursion #Level_2_Day_3_Linked_List #Udemy_Linked_List #Big_O_Time_O(n)_Space_O(1)
# #2023_11_25_Time_297_ms_(78.26%)_Space_219.7_MB_(94.57%)

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
# @return {Boolean}
def is_palindrome2(head)
    # find mid, reverse second half of list, compare the nodes of 'two' lists
    slow = fast = head
    while fast && fast.next do 
        slow = slow.next
        fast = fast.next.next
    end
    mid_head = slow

    curr = mid_head
    prev = nil
    while curr do 
        next_node = curr.next 
        curr.next = prev
        prev = curr
        curr = next_node
    end
    prev

    curr = head
    mid_curr= prev
    while curr && mid_curr do 
        if curr.val != mid_curr.val
            return false
        end
        
        curr = curr.next
        mid_curr = mid_curr.next
    end

    true
end
