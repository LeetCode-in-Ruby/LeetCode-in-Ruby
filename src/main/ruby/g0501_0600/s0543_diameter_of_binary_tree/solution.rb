# #Easy #Top_100_Liked_Questions #Depth_First_Search #Tree #Binary_Tree #Level_2_Day_7_Tree
# #Udemy_Tree_Stack_Queue #Big_O_Time_O(n)_Space_O(n)
# #2023_11_27_Time_64_ms_(86.54%)_Space_211.4_MB_(62.50%)

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
def diameter_of_binary_tree(root)
  @diameter = 0
  diameter_of_binary_tree_util(root)
  @diameter
end

private

def diameter_of_binary_tree_util(root)
  return 0 if root.nil?

  left_length = root.left ? 1 + diameter_of_binary_tree_util(root.left) : 0
  right_length = root.right ? 1 + diameter_of_binary_tree_util(root.right) : 0

  @diameter = [left_length + right_length, @diameter].max

  [left_length, right_length].max
end
