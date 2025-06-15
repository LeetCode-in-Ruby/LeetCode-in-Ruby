# #Medium #Top_100_Liked_Questions #Depth_First_Search #Tree #Binary_Tree
# #LeetCode_75_Binary_Tree/DFS #Data_Structure_II_Day_18_Tree #Udemy_Tree_Stack_Queue
# #Top_Interview_150_Binary_Tree_General #Big_O_Time_O(n)_Space_O(n)
# #2023_11_26_Time_75_ms_(86.57%)_Space_213.7_MB_(77.61%)

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  return nil if root.nil?

  return root if root.val == p.val || root.val == q.val

  left = lowest_common_ancestor(root.left, p, q)
  right = lowest_common_ancestor(root.right, p, q)

  return root if left && right
  return left if left
  right
end
