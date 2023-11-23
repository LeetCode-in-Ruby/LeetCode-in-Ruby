# #Hard #Top_100_Liked_Questions #Top_Interview_Questions #Dynamic_Programming #Depth_First_Search
# #Tree #Binary_Tree #Udemy_Tree_Stack_Queue #Big_O_Time_O(N)_Space_O(N)
# #2023_11_23_Time_71_ms_(98.00%)_Space_213.4_MB_(74.00%)

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
def max_path_sum(root)
  @max = -Float::INFINITY
  helper_max(root)
  @max
end

private

def helper_max(root)
  return 0 if root.nil?

  # To avoid negative values on the left side, compare them with 0
  left = [0, helper_max(root.left)].max
  right = [0, helper_max(root.right)].max

  current = root.val + left + right
  @max = [current, @max].max

  root.val + [left, right].max
end
