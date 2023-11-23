# #Medium #Top_100_Liked_Questions #Depth_First_Search #Tree #Binary_Tree #Stack #Linked_List
# #Udemy_Linked_List #Big_O_Time_O(N)_Space_O(N)
# #2023_11_23_Time_47_ms_(100.00%)_Space_211_MB_(69.23%)

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
# @return {Void} Do not return anything, modify root in-place instead.
def flatten(root)
  return if root.nil?

  find_tail(root)
end

private

def find_tail(root)
  left = root.left
  right = root.right
  tail = nil

  # find the tail of the left subtree, tail means the most left leaf
  if left
    tail = find_tail(left)

    # stitch the right subtree below the tail
    root.left = nil
    root.right = left
    tail.right = right
  else
    tail = root
  end

  # find tail of the right subtree
  return tail if tail.right.nil?

  find_tail(tail.right)
end
