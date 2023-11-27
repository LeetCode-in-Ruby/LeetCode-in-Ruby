require 'minitest/autorun'
require_relative '../../../../main/ruby/g0501_0600/s0543_diameter_of_binary_tree/solution'

class SolutionTest < Minitest::Test
  def test_diameter_of_binary_tree
    root = TreeNode.create([1, 2, 3, 4, 5])
    assert_equal 3, diameter_of_binary_tree(root)
  end

  def test_diameter_of_binary_tree_2
    root = TreeNode.create([1, 2])
    assert_equal 1, diameter_of_binary_tree(root)
  end
end
