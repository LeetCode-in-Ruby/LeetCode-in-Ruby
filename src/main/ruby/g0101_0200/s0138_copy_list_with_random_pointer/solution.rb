# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Hash_Table #Linked_List
# #Programming_Skills_II_Day_14 #Udemy_Linked_List #Big_O_Time_O(N)_Space_O(N)
# #2023_11_27_Time_65_ms_(69.84%)_Space_211.3_MB_(52.38%)

require_relative '../../com_github_leetcode/random/node'

# Definition for Node.
# class Node
#     attr_accessor :val, :next, :random
#     def initialize(val = 0)
#         @val = val
#		  @next = nil
#		  @random = nil
#     end
# end

# @param {Node} node
# @return {Node}
def copy_random_list(head)
  return nil if head.nil?

  # First pass to create cloned nodes and insert them after the original nodes
  curr = head
  while curr
    cloned_node = Node.new(curr.val)
    cloned_node.next = curr.next
    curr.next = cloned_node
    curr = cloned_node.next
  end

  # Second pass to set the random pointers of the cloned nodes
  curr = head
  while curr
    curr.next.random = curr.random.next if curr.random
    curr = curr.next.next
  end

  # Third pass to separate the original and cloned nodes
  curr = head
  new_head = nil
  while curr
    cloned_node = curr.next
    new_head ||= cloned_node
    curr.next = cloned_node.next
    cloned_node.next = curr.next.next if curr.next
    curr = curr.next
  end

  new_head
end
