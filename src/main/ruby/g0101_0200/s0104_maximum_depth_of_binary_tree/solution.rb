# #Easy #Top_100_Liked_Questions #Top_Interview_Questions #Depth_First_Search #Breadth_First_Search
# #Tree #Binary_Tree #LeetCode_75_Binary_Tree/DFS #Data_Structure_I_Day_11_Tree
# #Programming_Skills_I_Day_10_Linked_List_and_Tree #Udemy_Tree_Stack_Queue
# #Top_Interview_150_Binary_Tree_General #Big_O_Time_O(N)_Space_O(H)
# #2023_11_23_Time_55_ms_(96.72%)_Space_211.3_MB_(37.23%)

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  find_depth(root, 0)
end

private

def find_depth(node, current_depth)
  return 0 if node.nil?

  current_depth += 1
  1 + [find_depth(node.left, current_depth), find_depth(node.right, current_depth)].max
end
