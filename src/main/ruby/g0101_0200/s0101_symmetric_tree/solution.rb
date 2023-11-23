# #Easy #Top_100_Liked_Questions #Top_Interview_Questions #Depth_First_Search #Breadth_First_Search
# #Tree #Binary_Tree #Data_Structure_I_Day_11_Tree #Level_2_Day_15_Tree
# #Big_O_Time_O(N)_Space_O(log(N)) #2023_11_23_Time_58_ms_(91.34%)_Space_211.1_MB_(48.82%)

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
# @return {Boolean}
def is_symmetric(root)
  return true if root.nil?

  helper_symmetric(root.left, root.right)
end

private

def helper_symmetric(left_node, right_node)
  return left_node.nil? && right_node.nil? if left_node.nil? || right_node.nil?

  return false if left_node.val != right_node.val

  helper_symmetric(left_node.left, right_node.right) && helper_symmetric(left_node.right, right_node.left)
end
