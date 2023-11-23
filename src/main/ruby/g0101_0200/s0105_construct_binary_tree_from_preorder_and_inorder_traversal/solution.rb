# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Hash_Table #Tree #Binary_Tree
# #Divide_and_Conquer #Data_Structure_II_Day_15_Tree #Big_O_Time_O(N)_Space_O(N)
# #2023_11_23_Time_71_ms_(91.78%)_Space_212_MB_(79.45%)

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} preorder
# @param {Integer[]} inorder
# @return {TreeNode}
def build_tree(preorder, inorder)
  @j = 0
  @map = {}
  inorder.each_with_index {|val, index| @map[val] = index}
  answer(preorder, inorder, 0, preorder.length - 1)
end

private

def get(key)
  @map[key]
end

def answer(preorder, inorder, start, end_)
  return nil if start > end_ || @j > preorder.length

  value = preorder[@j]
  index = get(value)
  @j += 1
  node = TreeNode.new(value)
  node.left = answer(preorder, inorder, start, index - 1)
  node.right = answer(preorder, inorder, index + 1, end_)
  node
end
