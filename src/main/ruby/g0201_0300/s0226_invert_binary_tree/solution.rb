# #Easy #Top_100_Liked_Questions #Depth_First_Search #Breadth_First_Search #Tree #Binary_Tree
# #Data_Structure_I_Day_12_Tree #Level_2_Day_6_Tree #Udemy_Tree_Stack_Queue
# #Big_O_Time_O(n)_Space_O(n) #2023_11_25_Time_54_ms_(89.43%)_Space_210.9_MB_(84.58%)

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
# @return {TreeNode}
def invert_tree(root)
  return nil if root.nil?

  temp = root.left
  root.left = invert_tree(root.right)
  root.right = invert_tree(temp)

  root
end
