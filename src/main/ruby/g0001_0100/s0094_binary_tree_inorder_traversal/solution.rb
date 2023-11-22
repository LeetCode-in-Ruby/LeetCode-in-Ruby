# #Easy #Top_100_Liked_Questions #Top_Interview_Questions #Depth_First_Search #Tree #Binary_Tree
# #Stack #Data_Structure_I_Day_10_Tree #Udemy_Tree_Stack_Queue #Big_O_Time_O(n)_Space_O(n)
# #2023_11_22_Time_56_ms_(84.00%)_Space_211.1_MB_(13.60%)

require_relative '../../com_github_leetcode/tree_node'

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
# @return {Integer[]}
def inorder_traversal(root)
  # puts "node = #{root&.val}"

  return [] if root.nil?

  nodes_visited = []

  unless root.left.nil?
    left_nodes = inorder_traversal(root.left)
    nodes_visited.concat(left_nodes)
  end

  nodes_visited << root.val

  unless root.right.nil?
    right_nodes = inorder_traversal(root.right)
    nodes_visited.concat(right_nodes)
  end

  nodes_visited
end
