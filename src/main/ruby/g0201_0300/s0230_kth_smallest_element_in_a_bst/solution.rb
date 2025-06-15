# #Medium #Top_100_Liked_Questions #Depth_First_Search #Tree #Binary_Tree #Binary_Search_Tree
# #Data_Structure_II_Day_17_Tree #Level_2_Day_9_Binary_Search_Tree
# #Top_Interview_150_Binary_Search_Tree #Big_O_Time_O(n)_Space_O(n)
# #2023_11_25_Time_68_ms_(89.41%)_Space_212.6_MB_(57.65%)

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
# @param {Integer} k
# @return {Integer}
def kth_smallest(root, k)
  @k = k
  @count = 0
  @val = 0
  calculate(root)
  @val
end

private

def calculate(node)
  return unless node

  if node.left.nil? && node.right.nil?
    @count += 1
    @val = node.val if @count == @k
    return
  end

  calculate(node.left) if node.left
  @count += 1
  @val = node.val if @count == @k
  return if @count == @k

  calculate(node.right) if node.right
end
