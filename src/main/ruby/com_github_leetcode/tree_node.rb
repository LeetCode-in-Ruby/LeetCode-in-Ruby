# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end

  def self.create(tree_values)
    return nil if tree_values.empty?

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

  def to_s
    return val.to_s if left.nil? && right.nil?

    root = val.to_s
    left_value = 'null'
    right_value = 'null'

    left_value = left.to_s if left
    right_value = right.to_s if right

    "#{root},#{left_value},#{right_value}"
  end
end
