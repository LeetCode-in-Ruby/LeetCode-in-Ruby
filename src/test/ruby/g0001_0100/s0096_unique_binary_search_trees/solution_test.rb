require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0096_unique_binary_search_trees/solution'

class SolutionTest < Minitest::Test
  def test_num_trees
    assert_equal 5, num_trees(3)
  end

  def test_num_trees2
    assert_equal 1, num_trees(1)
  end
end
