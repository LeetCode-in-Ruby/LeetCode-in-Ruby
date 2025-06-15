# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Depth_First_Search #Tree #Binary_Tree
# #Binary_Search_Tree #Data_Structure_I_Day_14_Tree #Level_1_Day_8_Binary_Search_Tree
# #Udemy_Tree_Stack_Queue #Top_Interview_150_Binary_Search_Tree #Big_O_Time_O(N)_Space_O(log(N))
# #2023_11_22_Time_68_ms_(70.23%)_Space_211.7_MB_(72.52%)

require_relative '../../com_github_leetcode/tree_node'

# @param {String} string
# @return {String}
def is_valid_bst(root)
  solve_bst(root, -Float::INFINITY, Float::INFINITY)
end

# We'll pass a valid range and check if the root lies within it,
# updating the range for the subtrees
def solve_bst(root, left, right)
  return true if root.nil?

  if root.val <= left || root.val >= right
    return false
  end

  solve_bst(root.left, left, root.val) && solve_bst(root.right, root.val, right)
end
