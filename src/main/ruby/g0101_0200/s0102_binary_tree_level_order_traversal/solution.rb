# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Breadth_First_Search #Tree
# #Binary_Tree #Data_Structure_I_Day_11_Tree #Level_1_Day_6_Tree #Udemy_Tree_Stack_Queue
# #Top_Interview_150_Binary_Tree_BFS #Big_O_Time_O(N)_Space_O(N)
# #2023_11_23_Time_66_ms_(76.43%)_Space_211.3_MB_(57.86%)

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
# @return {Integer[][]}
def level_order(root)
  result = []
  return result if root.nil?

  queue = [root, nil]
  level = []

  until queue.empty?
    current = queue.shift

    if current.nil?
      result << level.dup
      level.clear
      queue.push(nil) unless queue.empty?
    else
      level << current.val

      queue.push(current.left) if current.left
      queue.push(current.right) if current.right
    end
  end

  result
end
