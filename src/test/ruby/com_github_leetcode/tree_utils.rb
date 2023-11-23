require_relative "../../../main/ruby/com_github_leetcode/tree_node"

class TreeUtils
  def self.construct_binary_tree(tree_values)
    root = TreeNode.new(tree_values[0])
    queue = [root]

    i = 1
    while i < tree_values.length
      curr = queue.shift
      if tree_values[i]
        curr.left = TreeNode.new(tree_values[i])
        queue.push(curr.left)
      end
      i += 1
      if i < tree_values.length && tree_values[i]
        curr.right = TreeNode.new(tree_values[i])
        queue.push(curr.right)
      end
      i += 1
    end

    root
  end
end
