# #Medium #Depth_First_Search #Tree #Binary_Tree #LeetCode_75_Binary_Tree/DFS #Level_2_Day_7_Tree
# #Big_O_Time_O(n)_Space_O(n) #2023_11_27_Time_205_ms_(61.54%)_Space_226.5_MB_(53.85%)

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
# @param {Integer} target_sum
# @return {Integer}
def path_sum(root, target_sum, sums = [])
  return 0 unless root
  sums = (sums + [0]).map {|s| s + root.val}
  count = sums.count(target_sum)
  return count + path_sum(root.left, target_sum, sums) + path_sum(root.right, target_sum, sums)
end
